#!/bin/bash

echo "Check duplicate rows"
sort produk-lama.csv | uniq -d

echo "Total rows"
wc -l produk-lama.csv
