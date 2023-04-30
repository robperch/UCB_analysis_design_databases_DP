## MODULE WITH UTIL FUNCTIONS - MONGO-DB





"----------------------------------------------------------------------------------------------------------------------"
####################################################### Imports ########################################################
"----------------------------------------------------------------------------------------------------------------------"


"--------------- Standard library imports ---------------"

"--------------- Third party imports ---------------"
from pymongo.mongo_client import MongoClient
from pymongo.server_api import ServerApi
#import pandas as pd

"--------------- Local application imports ---------------"
from pkg_dir.config.config import creds_file_path as crds_loc
from pkg_dir.src.utils.general_utils import read_yaml





"----------------------------------------------------------------------------------------------------------------------"
############################## Ancillary functions #####################################################################
"----------------------------------------------------------------------------------------------------------------------"





"----------------------------------------------------------------------------------------------------------------------"
############################## Configuration functions #################################################################
"----------------------------------------------------------------------------------------------------------------------"


## Get bd credentials
def get_db_crds(db_crds):
    """
    Get credentials to connect to database

    :param db_crds (string): Specification of the database the user wants to connect to
    :return db_crds_data (json): db credentials in json format
    """

    ## Reading file with crds
    crds = read_yaml(crds_loc)

    ## Selecting the right credentials
    db_crds_data = crds[db_crds]


    return db_crds_data





## Create new client and confirm successful connection
def create_and_test_mongodb_conn():
    """
    Create new client and confirm successful connection

    :param db_crds (string): specification of the database the user wants to connect to
    :return client (rdbms connection): connection to MongoDB database
    """


    ## Creating connection string based on credentials
    db_creds = get_db_crds(db_crds)


    ## Create a new client and connect to the server
    uri = "mongodb+srv://" + db_creds[user] + ":" + db_creds[password] + "@" + db_creds[cluster] + ".hcgca2r.mongodb.net/?retryWrites=true&w=majority"

    client = MongoClient(uri, server_api=ServerApi('1'))

    ## Send a ping to confirm a successful connection
    try:
        client.admin.command('ping')
        print("Pinged your deployment. You successfully connected to MongoDB!")
    except Exception as e:
        print(e)
    

    return client



"----------------------------------------------------------------------------------------------------------------------"
############################## Execution functions #####################################################################
"----------------------------------------------------------------------------------------------------------------------"





"----------------------------------------------------------------------------------------------------------------------"
"----------------------------------------------------------------------------------------------------------------------"
####################################################### END OF FILE ####################################################
"----------------------------------------------------------------------------------------------------------------------"
"----------------------------------------------------------------------------------------------------------------------"
