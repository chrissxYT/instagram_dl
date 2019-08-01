#!/bin/bash
I=0
for i in $(cat temp_htmls/*.html | grep meta | grep cdn | sed 's/    <meta property="og:video:secure_url" content="//g' | sed 's/    <meta property="og:image" content="//g' | sed 's/">//g' | sed 's/    <meta property="og:video" content="//g' | sort | uniq) ; do curl -o "downloaded/private/$I" "$i" ; I=$(($I + 1)) ; done
