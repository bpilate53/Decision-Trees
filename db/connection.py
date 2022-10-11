import pymongo
from config import MONGO_URL

class Database:

    def get_database(self):
        db_client = pymongo.MongoClient(MONGO_URL)
        return db_client.irisdb
