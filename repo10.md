# 課題10レポート
sample.pngを原画像とする．この画像は縦800画像，横800画素による正方形のディジタルカラー画像である．

画像のエッジ抽出 
ORG=imread('sample.png'); % 原画像の入力  
ORG = rgb2gray(ORG); %カラーからグレイへの変換
imagesc(ORG); colormap('gray'); colorbar; % 画像の表示

によって，原画像を読み込み，グレースケールにした結果を図１に示す．

![原画像](https://github.com/ioneo56/image_processing/blob/master/imgsrc/1-10.png?raw=true)  
図1 原画像（グレースケール）

この画像に各種のエッジ抽出アルゴリズムを適用した。


１．プレウィット法
IMG = edge(ORG,'prewitt'); エッジ抽出（プレウィット法）

エッジ抽出の結果の結果を図２に示す．

![原画像](https://github.com/ioneo56/image_processing/blob/master/imgsrc/10-2.png?raw=true)  
図2 プレウィット法

2．ソベル法
IMG = edge(ORG,'sobel'); エッジ抽出（ソベル法）

エッジ抽出の結果の結果を図２に示す．

![原画像](https://github.com/ioneo56/image_processing/blob/master/imgsrc/10-3.png?raw=true)  
図3 ソベル法

3．キャニー法
IMG = edge(ORG,'canny'); エッジ抽出（キャニー法）

エッジ抽出の結果の結果を図２に示す．

![原画像](https://github.com/ioneo56/image_processing/blob/master/imgsrc/10-4.png?raw=true)
図4 キャニー法