#!/bin/bash
BLACK="\033[30m"
RED="\033[31m"
GREEN="\033[32m"
YELLOW="\033[33m"
BLUE="\033[34m"
MAGENTA="\033[35m"
CYAN="\033[36m"
WHITE="\033[37m"
BOLD="\033[1m"
UNDERLINE="\033[4m"
BOLD_UNDERLINE="\033[1;4m"
RESET="\033[0m"

EXECUTE="./convert"

test () 
{
	printf $GREEN
	echo "$EXECUTE $1"
	printf $RESET
	bash -c "$EXECUTE $1"
}

title ()
{
	echo
	printf $MAGENTA
	echo "<$1 section>"
	printf $RESET
}

border ()
{
	printf $YELLOW
	echo "------------$1"
	printf $RESET
}

title char
test -129
border CHAR_MIN
test -128
test 0
test !
test a
test "\~"
test +127
border CHAR_MAX
test +128

title int
test -2147483649
echo INT_MIN
test -2147483648
test 300
test 2147483647
border INT_MAX
test +2147483648

title float
test -inff
border -FLOAT_MIN
test -340282346638528859811704183484516925440f
border INT_MIN
test -2147483648f
test 0.0f
test nanf
test 1.1754943508222875079687365372222456778186655567720875215087517062784172594547271728515625e-38f
border FLOAT_MIN
test 42.0f
test 2147483647f
border INT_MAX
test 340282346638528859811704183484516925440f
border FLOAT_MAX
test +inff

title double
test -inf
border -DOUBLE_MIN
test -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0
border FLOAT_MIN
test -340282346638528859811704183484516925440.0
test -0.1
test nan
border DOUBLE_MIN
test 2.225073858507201383090232717332404064219215980462331830553327416887204434813918195854283159012511020564067339731035811005152434161553460108856012385377718821130777993532002330479610147442583636071921565046942503734208375250806650616658158948720491179968591639648500635908770118304874799780887753749949451580451605050915399856582470818645113537935804992115981085766051992433352114352390148795699609591288891602992641511063466313393663477586513029371762047325631781485664350872122828637642044846811407613911477062801689853244110024161447421618567166150540154285084716752901903161322778896729707373123334086988983175067838846926092773977972858659654941091369095406136467568702398678315290680984617210924625396728515625e-308
test 42.0
test 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0
border DOUBLE_MAX
test +inf
