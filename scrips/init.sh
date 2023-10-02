#!/bin/bash

# rename to project specific values
NAME="lhc"
CONST="lhc"
STRUCT="lhc"
FN="lhc"

# will be replaced
lhc_NAME="lhc"
lhc_STRUCT="lhc"
lhc_CONST="lhc"
lhc_FN="lhc"

function replace() {
	echo "Replacing $1 with $2"
	find ./ -type f -name '*.c' -exec sed -i "s/$1/$2/g" {} \;
	find ./ -type f -name '*.h' -exec sed -i "s/$1/$2/g" {} \;
	find ./ -type f -name '*.md' -exec sed -i "s/$1/$2/g" {} \;
	find ./ -type f -name '*.lua' -exec sed -i "s/$1/$2/g" {} \;
	find ./ -type f -name '*.sh' -exec sed -i "s/$1/$2/g" {} \;
	find ./doc/ -type f -name '*' -exec sed -i "s/$1/$2/g" {} \;
}

replace $lhc_NAME $NAME
replace $lhc_CONST $CONST
replace $lhc_STRUCT $STRUCT
replace $lhc_FN $FN

mv "include/$lhc_NAME.h" "include/$NAME.h"
mv "src/$lhc_NAME.c" "src/$NAME.c"
mv "doc/$lhc_NAME" "doc/$NAME" 
