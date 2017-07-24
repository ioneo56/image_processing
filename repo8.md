# 課題8レポート
sample.pngを原画像とする．

ORG=imread('sample.png'); % 原画像の入力  
ORG = rgb2gray(ORG); %カラーからグレイへの変換
imagesc(ORG); colormap('gray'); colorbar; % 画像の表示

によって，原画像を読み込み，グレースケールにした結果を図１に示す．

![原画像](https://github.com/ioneo56/image_processing/blob/master/imgsrc/8-1.png?raw=true)  
図1 原画像（グレースケール）

この画像を2値化した。
IMG = ORG > 128; % 閾値128で二値化
imagesc(IMG); colormap(gray); colorbar; % 画像の表示

二値化の結果を図２に示す．

![原画像](https://github.com/ioneo56/image_processing/blob/master/imgsrc/8-2.png?raw=true)  
図2 ２値化した画像


この画像にラベルを付けた.

IMG = bwlabeln(IMG);%バイナリ イメージ内の連結要素をラベル付け
imagesc(IMG); colormap(jet); colorbar; % 画像の表示
結果を図２に示す．

![原画像](https://github.com/ioneo56/image_processing/blob/master/imgsrc/8-3.png?raw=true) 
図3 ラベル付け結果

8連結オブジェクトをラベル付けした。