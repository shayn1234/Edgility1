#!/bin/bash
kubeless function deploy toyota-function --runtime python3.6 --from-file function.py --handler function.toyota --dependencies requirements.txt
kubeless trigger http create toyota --function-name toyota-function
