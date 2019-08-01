#!/bin/sh
grep '<a' beautified | sed 's/        <div class="v1Nh3 kIKUG  _bz0w">//g' | sed 's/<a href="\/p\///g' | sed 's/\/">//g' > urls
