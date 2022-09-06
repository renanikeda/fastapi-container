from fastapi import FastAPI
from pymongo import MongoClient
import datetime

app = FastAPI()
client = MongoClient('mongodb://admin:admin@mongodb:27017/project?authSource=admin&retryWrites=true&w=majority')
#client = MongoClient()
db = client["project"]

@app.get('/')
async def home():
    return 'Hello world'

@app.get('/{name}')
async def message(name:str):
    name = name.title()
    col = db['acessos']
    now = datetime.datetime.now().isoformat()
    col.insert_one({"Nome" : name, "Acesso" : now })
    reqs = [req for req in col.find()]
    return f'{reqs}'

#uvicorn server:app --reload