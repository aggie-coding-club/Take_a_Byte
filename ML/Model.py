import os
import numpy as np
import tensorflow as tf
import matplotlib.pyplot as plt
from tensorflow.keras.preprocessing.image import load_img, img_to_array
from tensorflow.keras import layers, models
from tensorflow.keras.preprocessing import image
from sklearn.metrics.pairwise import cosine_similarity
print(tf.version.VERSION)

# Get the current working directory
print("Current Working Directory:", os.getcwd())

# Define the path to your local dataset directory
dataset_dir = os.path.join(os.path.dirname(__file__), 'dataset')
print("Dataset Directory:", dataset_dir)

# Create a list to store images and labels
images = []
labels = []

# Loop through each image in the dataset folder
for filename in os.listdir(dataset_dir):
    if filename.endswith(".jpg"):
        img_path = os.path.join(dataset_dir, filename)
        print(f"Processing image: {img_path}")

        try:
            img = load_img(img_path, target_size=(28, 28))  # Adjust target_size if needed
            img_array = img_to_array(img)

            # Assuming the target size is (28, 28), the reshape should match that size
            img_array = img_array.reshape((28, 28, 3)) / 255.0  # Adjust the shape if needed

            images.append(img_array)
            labels.append(0)  # Treat each image as a separate class
        except Exception as e:
            print(f"Error processing image: {img_path}")
            print(e)

# Convert the lists to numpy arrays
images = np.array(images)
labels = np.array(labels)

# Split the dataset into training and testing sets, not sure if this is necessary for our dataset
split_ratio = 0.8
split_index = int(len(images) * split_ratio)

train_images, test_images = images[:split_index], images[split_index:]
train_labels, test_labels = labels[:split_index], labels[split_index:]

# Assuming images are successfully converted to 28x28 pixels with 3 color channels (RGB)
input_shape = (28, 28, 3)

# Define your neural network model
model = models.Sequential()
model.add(layers.Conv2D(32, (3, 3), activation='relu', input_shape=input_shape))
model.add(layers.MaxPooling2D((2, 2)))
model.add(layers.Conv2D(64, (3, 3), activation='relu'))
model.add(layers.MaxPooling2D((2, 2)))
model.add(layers.Conv2D(64, (3, 3), activation='relu'))
model.add(layers.Flatten())
model.add(layers.Dense(64, activation='relu'))
model.add(layers.Dense(1, activation='sigmoid'))  # Adjust the number of output nodes based on your task

# Compile the model
model.compile(optimizer='adam', loss='binary_crossentropy', metrics=['accuracy'])

# Display the model summary
model.summary()

# Train the model
history = model.fit(train_images, train_labels, epochs=10, validation_data=(test_images, test_labels))


# *|TEST IMAGES AND COMPARE TO A CLASS|* #

# # Load and preprocess the new image
# new_image_path = os.path.join(os.path.dirname(__file__), 'burger.jpg')
# print("Dataset Directory:", new_image_path)
#
# img = image.load_img(new_image_path, target_size=(28, 28))
# img_array = image.img_to_array(img)
# img_array = np.expand_dims(img_array, axis=0) / 255.0
#
# # Make predictions using the trained model
# predictions = model.predict(img_array)
#
# # Interpret the predictions
# class_labels = ["ClassA", "ClassB"]  # Replace with your actual class labels
# predicted_class_index = np.argmax(predictions)
# # predicted_class_label = class_labels[predicted_class_index]
# confidence = predictions[0][predicted_class_index]
#
# # Display the new image and predictions
# plt.imshow(img)
# plt.title(f"Predicted Class: {predicted_class_index}\nConfidence: {confidence:.2%}")
# plt.show()


# *|COMPARING TEST IMAGE WITH INDIVIDUAL IMAGES VIA COSINE SIMILARITY*| #

# Load and preprocess the input image
input_image_path = os.path.join(os.path.dirname(__file__), 'burger.jpg') # put test image here
input_img = image.load_img(input_image_path, target_size=(28, 28))
input_img_array = image.img_to_array(input_img)
input_img_array = np.expand_dims(input_img_array, axis=0) / 255.0

# Flatten the input image array to a 1D vector
input_vector = input_img_array.flatten()

# Calculate cosine similarity with each image in the dataset
similarities = []
dataset_dir = os.path.join(os.path.dirname(__file__), 'dataset')
for filename in os.listdir(dataset_dir):
    if filename.endswith(".jpg"):
        img_path = os.path.join(dataset_dir, filename)

        # Load and preprocess the dataset image
        dataset_img = image.load_img(img_path, target_size=(28, 28))
        dataset_img_array = image.img_to_array(dataset_img)
        dataset_img_array = dataset_img_array.flatten() / 255.0

        # Calculate cosine similarity
        similarity = cosine_similarity([input_vector], [dataset_img_array])[0][0]
        similarities.append((img_path, similarity))

# Find the image with the highest similarity
most_similar_image = max(similarities, key=lambda x: x[1])

# Display the input image and the most similar image
plt.subplot(1, 2, 1)
plt.imshow(input_img)
plt.title("Input Image")

plt.subplot(1, 2, 2)
most_similar_img = image.load_img(most_similar_image[0], target_size=(28, 28))
plt.imshow(most_similar_img)
plt.title(f"Most Similar Image\nSimilarity: {most_similar_image[1]:.2%}")
plt.show()