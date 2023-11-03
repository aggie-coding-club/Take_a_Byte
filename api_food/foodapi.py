#access the USDA food database, for Take a Byte
#
#testing change

import requests #pip3 install requests
import json 

type = '/v1/foods/search'
key = '8Wd9vaf4eJdizRTosIiIDPce3jOOloEfQc9aiDM1'
#url: https://api.nal.usda.gov/fdc/v1/foods/search/?api_key=

params = {
    'key' : key,
    'query' : 'cheese',
    'pageSize' : 5,
    'pageNumber' : 1,
    'dataType' : 'Branded',
    'numberOfResultsPerPage' : 5,
    
}

fetch = requests.get(f"https://api.nal.usda.gov/fdc{type}/?api_key={params['key']}&query={params['query']}&dataType={params['dataType']}&pageSize={params['pageSize']}&pageNumber={params['pageNumber']}&numberOfResultsPerPage={params['numberOfResultsPerPage']}")
response = fetch.json() 
json_formatted_str = json.dumps(response, indent=2)

#saves response in a file (to mess around with formatting/parsing)
path = 'api_food/api_food_response/'
_file = open(f'{path}response_{params["query"]}', 'w')
_file.write(json_formatted_str)
_file.close()

#trying to isolate specific info
food_brand = [] # {food description : food brand}
for food in response.get('foods'):
    try:
         brand = food['brandName']
    except:
         brand = 'No brand'
    desc = food["description"]
    food_brand.append({desc : brand})


print(food_brand)
#print(json_formatted_str) returns too much info rn.
