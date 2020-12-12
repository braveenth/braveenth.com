#!/bin/bash
echo "This script will deploy a Hugo site to AWS S3"

# Build Static Webiste
hugo -D

# Upload to S3
aws s3 cp ./public s3://braveenth-static-website/ --recursive --acl public-read
aws s3 cp ./public s3://braveenth.com/ --recursive --acl public-read
aws s3 cp ./public s3://www.braveenth.com/ --recursive --acl public-read
