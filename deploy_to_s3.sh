#!/bin/bash
echo "This script will deploy a Hugo site to AWS S3"

# Build Static Webiste
echo $PWD
hugo -D
