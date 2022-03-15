#!/bin/bash

#todo: install gnu-sed first

# cat ./text.txt | pbcopy
touch oo.txt 
cat ./empty.txt >& oo.txt

gsed -i "1 r ./public-wechat-pic-pos.txt" oo.txt
gsed -i "1 r ../../../../common/wechat_public.txt" oo.txt 

gsed -i "1 r ./group-wechat-pic-pos.txt" oo.txt
gsed -i "1 r ./group-wechat.txt" oo.txt

gsed -i "1 r ./my-wechat-pic-pos.txt" oo.txt
gsed -i "1 r ../../../../common/shuang_addr.txt" oo.txt 

gsed -i "1 r ./fte-ref-pic-pos.txt" oo.txt
gsed -i "1 r ./fte-ref.txt" oo.txt

gsed -i "1 r ./compus-ref.txt" oo.txt

gsed -i "1 r ./daily-intern-ref-pic-pos.txt" oo.txt
gsed -i "1 r ./daily-intern-ref.txt" oo.txt


gsed -i "1 r ./routine.txt" oo.txt
gsed -i "1 r ./welfare.txt" oo.txt
gsed -i "1 r ./company.txt" oo.txt
gsed -i "1 r ../../../../common/header.txt" oo.txt 

touch text.txt && cat oo.txt >& text.txt
cat text.txt
cat ./oo.txt | pbcopy
rm -rf oo.txt

