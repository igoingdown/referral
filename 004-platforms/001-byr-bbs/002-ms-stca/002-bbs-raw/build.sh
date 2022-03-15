#!/bin/bash

cd 002-ms-stca-images
rm -rf *.png

ln -s ~/Downloads/ref_images/ms/001-jd-fte.png           001-jd-fte.png           
ln -s ~/Downloads/ref_images/ms/002-qr-code.png          002-qr-code.png          
ln -s ~/Downloads/ref_images/007-maizi.png            003-maizi.png            
ln -s ~/Downloads/ref_images/010-group-wechat-ms.png 004-wechat_group-001.png  
ln -s ~/Downloads/ref_images/009-minglangwanwu.png    005-minglangwanwu.png    
ln -s ~/Downloads/ref_images/ms/006-jd-daily.png         006-jd-daily.png         
cd ..


#todo: install gnu-sed first
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

cat ./oo.txt | tee >(pbcopy)
rm -rf oo.txt

