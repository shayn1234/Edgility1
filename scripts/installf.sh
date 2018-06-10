#!/bin/bash
printf `pwd`
printf "%s" "Installing car function\n"

kubeless function deploy car-function --runtime python3.6 --from-file function.py --handler function.carfunction --dependencies requirements.txt

ctx instance runtime-properties function_address `kubectl get svc car-function | grep 10. | cut -d ' ' -f7`



