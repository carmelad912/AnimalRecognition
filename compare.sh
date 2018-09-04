#!/bin/bash
 
export file

compare -fuzz 5% test.jpg background.jpg -highlight-color transparent diffff.jpg

read -r file <<< $(convert  diffff.jpg -format "%[fx:mean]" info:)

echo $file > fileName