#!/bin/bash

cd 008-anxianlianghua-images
rm -rf *.png

ln -s ~/Downloads/ref_images/001-ref-result-bytedance.png 001-ref-result-bytedance.png 
ln -s ~/Downloads/ref_images/weiguanboyi/004-leetcode.png          004-leetcode.png          
ln -s ~/Downloads/ref_images/007-maizi.png 002-maizi.png 
ln -s ~/Downloads/ref_images/009-minglangwanwu.png    003-minglangwanwu.png     
cd ..


#todo: install gnu-sed first
touch oo.txt 
cat ./empty.txt >& oo.txt

gsed -i "1 r ./public-wechat-pic-pos.txt" oo.txt
gsed -i "1 r ../../../../common/wechat_public.txt" oo.txt 

gsed -i "1 r ./my-wechat-pic-pos.txt" oo.txt
gsed -i "1 r ../../../../common/my_addr.txt" oo.txt 

gsed -i "1 r ./leetcode-activity-pic-pos.txt" oo.txt
gsed -i "1 r ./leetcode.txt" oo.txt

gsed -i "1 r ./compus-fte-and-intern.txt" oo.txt

gsed -i "1 r welfare.txt" oo.txt
gsed -i "1 r company.txt" oo.txt

gsed -i "1 r ../../../../common/ref-result-pic-pos.txt" oo.txt 
gsed -i "1 r ../../../../common/my_intro.txt" oo.txt 
gsed -i "1 r ../../../../common/header.txt" oo.txt 

cat ./oo.txt | tee >(pbcopy)
rm -rf oo.txt

