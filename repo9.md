# 課題9レポート
sample.pngを原画像とする．
 
ORG=imread('sample.png'); % 原画像の入力  
ORG = rgb2gray(ORG); %カラーからグレイへの変換
imagesc(ORG); colormap('gray'); colorbar; % 画像の表示

によって，原画像を読み込み，グレースケールにした結果を図１に示す．

![原画像](https://github.com/ioneo56/image_processing/blob/master/imgsrc/9-1.png?raw=true)  
図1 原画像（グレースケール）

この画像にノイズを追加した。
ORG = imnoise(ORG,'salt & pepper',0.02); % ノイズ添付
imagesc(ORG); colormap(gray); colorbar; % 画像の表示

結果を図２に示す．

![原画像](https://github.com/ioneo56/image_processing/blob/master/imgsrc/9-2.png?raw=true)  
図2 ノイズ入り画像


この画像にノイズ除去を行った.

1.平滑化フィルタ

IMG = filter2(fspecial('average',3),ORG); % 平滑化フィルタで雑音除去
imagesc(IMG); colormap(gray); colorbar; % 画像の表示
結果を図3に示す．

![原画像](https://github.com/ioneo56/image_processing/blob/master/imgsrc/9-3.png?raw=true) 
図3 平滑化フィルタ

2.メディアンフィルタ
IMG = medfilt2(ORG,[3 3]); % メディアンフィルタで雑音除去
imagesc(IMG); colormap(gray); colorbar; % 画像の表示
結果を図4に示す．

![原画像](https://github.com/ioneo56/image_processing/blob/master/imgsrc/9-4.png?raw=true) 
図4 メディアンフィルタ

今回の画像では平滑化フィルタではノイズが薄くなるが全体的に色がノイズの色によって明るくなっている.
メディアンフィルタではノイズがほとんど目立たず全体の色の変化も小さい。
メディアンフィルタはこのような粒子の小さいノイズに対して有効であることがわかる。