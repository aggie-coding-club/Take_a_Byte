#access the USDA food database, for Take a Byte
#

import os
os.system('pip3 install requests')
import requests
import json 
import os

type = '/v1/foods/search'
key = 'DEMO_KEY'
#url: https://api.nal.usda.gov/fdc/v1/foods/search/?api_key=

params = {
    key : 'DEMO_KEY',
    'query' : 'cheese',
    'pageSize' : 1,
    'pageNumber' : 1,
    
}

fetch = requests.get(f"https://api.nal.usda.gov/fdc{type}/?api_key={params[key]}&query={params['query']}")
response = fetch.json() 
json_formatted_str = json.dumps(response, indent=2)

print(json_formatted_str)
#this does not format well rn, just a mess of info