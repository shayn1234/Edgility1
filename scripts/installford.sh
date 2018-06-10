#!/bin/bash

kubeless function deploy ford-function --runtime python3.6 --from-file function.py --handler function.ford --dependencies requirements.txt
kubeless trigger http create ford --function-name ford-function
