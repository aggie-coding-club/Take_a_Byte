#access the USDA food database, for Take a Byte
#

import json
import requests  # pip3 install requests

fdc_search = '/v1/foods/search'
api_key = '8Wd9vaf4eJdizRTosIiIDPce3jOOloEfQc9aiDM1'
# url: https://api.nal.usda.gov/fdc/v1/foods/search/?api_key=

params = {
    'key': api_key,
    'query': 'cheese',
    'pageSize': 5,
    'pageNumber': 1,
    'dataType': 'Branded',
    'numberOfResultsPerPage': 5,

}

fetch = requests.get(
    f"https://api.nal.usda.gov/fdc{fdc_search}/?api_key={params['key']}&query={params['query']}&dataType={params['dataType']}&pageSize={params['pageSize']}&pageNumber={params['pageNumber']}&numberOfResultsPerPage={params['numberOfResultsPerPage']}", timeout=10)
response = fetch.json()
json_formatted_str = json.dumps(response, indent=2)

#saves response in a file (to mess around with formatting/parsing)
path = 'api_food/api_food_response/'
_file = open(f'{path}response_{params["query"]}', 'w', encoding="utf-8")
_file.write(json_formatted_str)
_file.close()

# trying to isolate specific info
food_brand = []  # {food description : food brand}
for food in response.get('foods'):
    try:
        brand = food['brandName']
    except KeyError:
        brand = 'No brand'
    desc = food["description"]
    food_brand.append({desc: brand})


print(food_brand)

