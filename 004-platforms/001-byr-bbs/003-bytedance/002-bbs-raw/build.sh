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
gsed -i "1 r ../../../../common/my_addr.txt" oo.txt 


gsed -i "1 r ./social-ref-pic-pos.txt.txt" oo.txt
gsed -i "1 r ./social-ref.txt" oo.txt


gsed -i "1 r ./daily-inter-ref-pic-pos.txt" oo.txt
gsed -i "1 r ./daily-inter-ref.txt" oo.txt


gsed -i "1 r ./compus-ref-pic-pos.txt" oo.txt
gsed -i "1 r ./compus-ref.txt" oo.txt


gsed -i "1 r ./rush-ref-pic-pos.txt" oo.txt
gsed -i "1 r ./rush-ref.txt" oo.txt


gsed -i "1 r ./lightning-inter-ref-pic-pos.txt" oo.txt
gsed -i "1 r ./lightning-inter-ref.txt" oo.txt


gsed -i "1 r welfare.txt" oo.txt


gsed -i "1 r ../../../../common/ref-result-pic-pos.txt" oo.txt
gsed -i "1 r ../../../../common/my_intro.txt" oo.txt 
gsed -i "1 r ../../../../common/header.txt" oo.txt 

touch text.txt && cat oo.txt >& text.txt
cat text.txt
cat ./oo.txt | pbcopy
rm -rf oo.txt

