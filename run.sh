#!/bin/bash

#SCOPE : bash scirpt to run the python script

#code to run python file
python3 ./index.py

#condition to check whether run is sucessfull or not
if [[ ${?} -ne 0 ]]
then 
    echo "bash - python script failed"
else
    echo "bash - python script sucess "
fi