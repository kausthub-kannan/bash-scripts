#!/bin/bash

packages=(
    beautifulsoup4
    requests
    scrapy
    selenium
    lxml
    pyquery
    requests-html
    pandas
)

for package in "${packages[@]}"
do
    pip install "$package"
done