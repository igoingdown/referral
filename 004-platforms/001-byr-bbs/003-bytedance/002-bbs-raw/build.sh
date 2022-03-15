#!/bin/bash

cd 003-bytedance-images
rm -rf *.png

ln -s ~/Downloads/ref_images/001-ref-result-bytedance.png 001-ref-result-bytedance.png 
ln -s ~/Downloads/ref_images/002-rush-referral.png 002-rush-referral.png 
ln -s ~/Downloads/ref_images/003-compus-referral.png 003-compus-referral.png 
ln -s ~/Downloads/ref_images/004-lightning-referral.png 004-lightning-referral.png 
ln -s ~/Downloads/ref_images/005-everyday-intern.png 005-everyday-intern.png 
ln -s ~/Downloads/ref_images/006-social-referral.png 006-social-referral.png 
ln -s ~/Downloads/ref_images/007-maizi.png 007-maizi.png 
ln -s ~/Downloads/ref_images/008-wechat-group-bytedance-001.png 008-wechat-group-bytedance-001.png 
ln -s ~/Downloads/ref_images/009-minglangwanwu.png 009-minglangwanwu.png 

cd ..


#todo: install gnu-sed first

touch oo.txt 
cat ./empty.txt >& oo.txt

gsed -i "1 r ./public-wechat-pic-pos.txt" oo.txt
gsed -i "1 r ../../../../common/wechat_public.txt" oo.txt 

gsed -i "1 r ./group-wechat-pic-pos.txt" oo.txt
gsed -i "1 r ./group-wechat.txt" oo.txt


gsed -i "1 r ./my-wechat-pic-pos.txt" oo.txt
gsed -i "1 r ../../../../common/my_addr.txt" oo.txt 


gsed -i "1 r ./social-ref-pic-pos.txt" oo.txt
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

cat ./oo.txt | tee >(pbcopy)
rm -rf oo.txt

