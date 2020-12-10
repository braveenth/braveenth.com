#!/bin/bash
echo "This script will deploy a Hugo site to AWS S3"

# Build Static Webiste
hugo -D

# Upload to S3
aws s3 cp ./public s3://braveenth-static-website/ --recursive
