# 課題3レポート
sample.pngを原画像とする．

ORG=imread('sample.png'); % 原画像の入力  
ORG = rgb2gray(ORG); %カラーからグレイへの変換
imagesc(ORG); colormap('gray'); colorbar; % 画像の表示

によって，原画像を読み込み，グレースケールにした結果を図１に示す．

![原画像](https://github.com/ioneo56/image_processing/blob/master/imgsrc/3-1.png?raw=true)  
図1 原画像（グレースケール）

この画像を2値化した。
まず閾値を64として二値化した。
IMG = ORG > 64; % 輝度値が64以上の画素を1，その他を0に変換
imagesc(IMG); colormap(gray); colorbar;
二値化の結果を図２に示す．

![原画像](https://github.com/ioneo56/image_processing/blob/master/imgsrc/3-2.png?raw=true)  
図2 ２値化した画像(閾値64)

同様に閾値を96,128,192として二値化した。
結果を図3～5に示す．

![原画像](https://github.com/ioneo56/image_processing/blob/master/imgsrc/3-3.png?raw=true)   
図3 ２値化した画像(閾値96)


![原画像](https://github.com/ioneo56/image_processing/blob/master/imgsrc/3-4.png?raw=true)  
図4 ２値化した画像(閾値128)


![原画像](https://github.com/ioneo56/image_processing/blob/master/imgsrc/3-5.png?raw=true)  
図5 ２値化した画像(閾値192)

閾値を変えることでつぶれてしまう部分が変化するため画像や目的に応じた閾値の設定が重要だとわかる。