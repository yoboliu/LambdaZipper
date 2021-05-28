#!/bin/bash
mkdir temp
python3 -m pip install boto3 opencv-python -t temp
rm -f /package/opencv-python.zip

cd temp
zip -r /package/opencv-python.zip *
