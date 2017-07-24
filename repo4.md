# 課題4レポート
sample.pngを原画像とする．

画像のエッジ抽出 
ORG=imread('sample.png'); % 原画像の入力  
ORG = rgb2gray(ORG); %カラーからグレイへの変換
imagesc(ORG); colormap('gray'); colorbar; % 画像の表示

によって，原画像を読み込み，グレースケールにした結果を図１に示す．

![原画像](https://github.com/ioneo56/image_processing/blob/master/imgsrc/4-1.png?raw=true)  
図1 原画像（グレースケール）

この画像のヒストグラムを表示する。
imhist(ORG); % ヒストグラムの表示
結果を図２に示す．

![原画像](https://github.com/ioneo56/image_processing/blob/master/imgsrc/4-2.png?raw=true) 
図2 ヒストグラム