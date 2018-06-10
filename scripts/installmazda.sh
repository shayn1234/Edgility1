#!/bin/bash
kubeless function deploy mazda-function --runtime python3.6 --from-file function.py --handler function.mazda --dependencies requirements.txt
kubeless trigger http create mazda --function-name mazda-function 
