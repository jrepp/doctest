
#sed -e "s:^!\[\]\./\([:alnum:]+\/)\([:alnum:]+\)//media/\(.*)$:![]./\2/media/\3:" \
#-e "s:^height.*$::" \
#< 048_Unit_Selection_Events.md > 048_Unit_Selection_Events-sed.md

 #\./\([[:alnum:]]+\)/\([[:alnum:]]+\)//media/\(.*\)$:![]./\2/media/\3:" \

# Working, breaks up img line path 
#sed -e "s:^!\[\](./\([0-9_A-Za-z]*\)/\([0-9_A-Za-z]*\)//media/\([0-9_A-Za-z.]*\))\(.*\):\1 \2 \3 \4:" \
#-e "s:^height.*$::" \
#< 048_Unit_Selection_Events.md # > 048_Unit_Selection_Events-sed.md

# Collapses the height attribute, re-writes the image path
sed -e '/^!\[\]/{ N ; s/\n/ / ; H }' \
    -e 's:^!\[\](./\([0-9_A-Za-z]*\)/\([0-9_A-Za-z]*\)//media/\([0-9_A-Za-z.]*\))\(.*\):![Image](./\2/\3)\4:' \
    < 048_Unit_Selection_Events.md # > 048_Unit_Selection_Events-sed.md

#diff -u 048_Unit_Selection_Events.md 048_Unit_Selection_Events-sed.md
