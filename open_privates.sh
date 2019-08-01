#!/bin/sh
I=0
for i in $(for i in $(cat private) ; do grep "$i" beautified ; done | sed 's/        <div class="v1Nh3 kIKUG  _bz0w"><a href="/https:\/\/instagram.com/g' | sed 's/">//g' | sort | uniq) ; do echo "$i" ; echo $I ; I=$(($I + 1)) ; brave-browser "$i" ; done
