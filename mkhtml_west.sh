#! /bin/bash

cd "$(dirname $0)"

DATE=`date '+%y%m%d' -d '-1 day'`
ruby ../save_timeline/format_html.rb ../tw-west/${DATE}.default
./makeindex.sh

git add .
git commit -m ${DATE}
git push

