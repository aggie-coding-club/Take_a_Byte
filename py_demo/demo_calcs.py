userProfile = {
    "calorie"   : 3670,     #calorie intake         (kcal)
    "protein"   : 200,      #protein intake         (Grams)
    "sugar"     : 40,       #sugar intake           (Grams)
    "sat fat"   : 30,       #saturated fat intake   (Grams)
    "unsat fat" : 40,       #unsaturated fat intake (Grams)
    "fiber"     : 30,       #fiber intake           (Grams)
    "meals day" : 3,        #desired meals daily
    "opt arg"   : "calorie" #argument to optimize around and prioritize       
}  

userTrackers = {
    "calorie"   : 950,      #current calories for the day         (kcal)
    "protein"   : 43,       #current protein for the day          (Grams)
    "sugar"     : 23,       #current sugar for the day            (Grams)
    "sat fat"   : 15,       #current saturated fat for the day    (Grams)
    "unsat fat" : 12,       #current unsaturated fat for the day  (Grams)
    "fiber"     : 17,       #current fiber for the day            (Grams)
    "meals day" : 1,        #how many meals for the day 
}

mealNutrition = {           #scanned meal data before calculating portion size
    "portion"   : 400,      #inputted portion size into api
    "calorie"   : 1200,     #calories in meal         (kcal)
    "protein"   : 50,       #protein in meal          (Grams)
    "sugar"     : 12,       #sugar in meal            (Grams)
    "sat fat"   : 13,       #saturated fat in meal    (Grams)
    "unsat fat" : 20,       #unsaturated fat in meal  (Grams)
    "fiber"     : 20,       #fiber in meal            (Grams)
}

scaledNutrition = {        #based on recommended portion
    "portion"   : 0,       #recommended portion
    "calorie"   : 0,       #calories in meal         (kcal)
    "protein"   : 0,       #protein in meal          (Grams)
    "sugar"     : 0,       #sugar in meal            (Grams)
    "sat fat"   : 0,       #saturated fat in meal    (Grams)
    "unsat fat" : 0,       #unsaturated fat in meal  (Grams)
    "fiber"     : 0,       #fiber in meal            (Grams)
}

portionSize = 0             #initialized portion size, will be in grams

def getPortionRatio():

    mealsLeft     = userProfile["meals day"] - userTrackers["meals day"]
    optStatLeft   = userProfile[userProfile["opt arg"]] - userTrackers[userProfile["opt arg"]]
    recPerMeal    = optStatLeft / mealsLeft
    portionRatio  = recPerMeal / mealNutrition[userProfile["opt arg"]]

    return portionRatio

def scaleNutrients(ratio):

    for key in scaledNutrition:
        scaledNutrition[key] = int(mealNutrition[key] * ratio)

    return

def updateTrackers():       #void function to update the nutrients based on portion size



    return

ratioed = getPortionRatio()
scaleNutrients(ratioed)
print(scaledNutrition)