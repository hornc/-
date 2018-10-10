#!/bin/bash

result=0

ls ??-?.? | grep $(printf "\U0001338E\U00013402-\U000133CA.⎔") || {
  printf "Incorrect name for example file. Expected \U0001338E\U00013402-\U000133CA.⎔"
  result=1
}

grep $(printf "\U0001338E\U00013402") ??-?.? || {
  printf "Hieroglyphic 99 \U0001338E\U00013402 not found in string body."
  result=1
}

grep "$(printf "\U0001F12F \u27F2")" ??-?.? || {
  printf "expected 'share around' = \U0001F12F \u27F2."
  result=1
}

r=$(grep -c "$(printf "\U000133CA \u2316 \U00013285")" ??-?.?)
[ $r -eq 4 ] || {
  printf "Expected four instances of the string '\U000133CA \u2316 \U00013285', found $r."
  result=1
}
exit $result
