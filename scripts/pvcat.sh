#!/bin/bash
file=$1
actualsize=$(du -b "${file}" | cut -f 1)
cat ${file} | pv -s ${actualsize}
