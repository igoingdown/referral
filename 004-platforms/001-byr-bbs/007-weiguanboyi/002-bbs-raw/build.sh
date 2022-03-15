#!/bin/bash

cd 007-weiguanboyi-images
rm -rf *.png

ln -s ~/Downloads/ref_images/001-ref-result-bytedance.png 001-ref-result-bytedance.png 
ln -s ~/Downloads/ref_images/weiguanboyi/002-intern-op.png        002-intern-op.png        
ln -s ~/Downloads/ref_images/weiguanboyi/003-cpp-dev.png          003-cpp-dev.png          
ln -s ~/Downloads/ref_images/weiguanboyi/004-dba-dev.png          004-dba-dev.png          
ln -s ~/Downloads/ref_images/weiguanboyi/005-quant-researcher.png 005-quant-researcher.png 
ln -s ~/Downloads/ref_images/007-maizi.png 007-maizi.png 
ln -s ~/Downloads/ref_images/009-minglangwanwu.png    009-minglangwanwu.png     
cd ..


#todo: install gnu-sed first
touch oo.txt 
cat ./empty.txt >& oo.txt

gsed -i "1 r ./public-wechat-pic-pos.txt" oo.txt
gsed -i "1 r ../../../../common/wechat_public.txt" oo.txt 

gsed -i "1 r ./my-wechat-pic-pos.txt" oo.txt
gsed -i "1 r ../../../../common/my_addr.txt" oo.txt 

gsed -i "1 r ./fte-ref-pic-pos.txt" oo.txt
gsed -i "1 r ./fte-ref.txt" oo.txt

gsed -i "1 r ./inter-ref-pic-pos.txt" oo.txt
gsed -i "1 r ./inter-ref.txt" oo.txt

gsed -i "1 r welfare.txt" oo.txt
gsed -i "1 r company.txt" oo.txt


gsed -i "1 r ../../../../common/ref-result-pic-pos.txt" oo.txt 
gsed -i "1 r ../../../../common/my_intro.txt" oo.txt 
gsed -i "1 r ../../../../common/header.txt" oo.txt 

cat ./oo.txt | tee >(pbcopy)
rm -rf oo.txt

