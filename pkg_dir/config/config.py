## CONFIGURATION FILE TO MANAGE PROJECT PATHS





"----------------------------------------------------------------------------------------------------------------------"
############################################# Imports ##################################################################
"----------------------------------------------------------------------------------------------------------------------"


## Standard library imports
import os

## Third party imports
from pytz import timezone

## Local application imports





"----------------------------------------------------------------------------------------------------------------------"
############################## Project path ############################################################################
"----------------------------------------------------------------------------------------------------------------------"


## Package directory
package_dir = os.path.dirname(os.path.dirname(__file__))

## Local credentials
creds_file_path = os.path.join(package_dir, "config", "local", "credentials.yaml")



"----------------------------------------------------------------------------------------------------------------------"
############################## Data files paths ########################################################################
"----------------------------------------------------------------------------------------------------------------------"


"-------------- Data files base path --------------"

## Data base file location
data_dir_path = os.path.join(package_dir, "data")





"----------------------------------------------------------------------------------------------------------------------"
############################## Useful parameters #######################################################################
"----------------------------------------------------------------------------------------------------------------------"


## Translation of keywords from english to spanish
word_translation = {

    "months": {

        'April': "Abril",
        'August': "Agosto",
        'December': "Diciembre",
        'February': "Febrero",
        'January': "Enero",
        'July': "Julio",
        'June': "Junio",
        'March': "Marzo",
        'May': "Mayo",
        'November': "Noviembre",
        'October': "Octubre",
        'September': "Septiembre",

    },

}





"----------------------------------------------------------------------------------------------------------------------"
############################## Time zone parameters ####################################################################
"----------------------------------------------------------------------------------------------------------------------"


## Relevant time zones
utc_tz = timezone('UTC')
mexico_tz = timezone('Mexico/General')





"----------------------------------------------------------------------------------------------------------------------"
"----------------------------------------------------------------------------------------------------------------------"
############################################# END OF FILE ##############################################################
"----------------------------------------------------------------------------------------------------------------------"
"----------------------------------------------------------------------------------------------------------------------"
