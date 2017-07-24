# 課題１レポート
sample.pngを原画像とする．この画像は縦800画像，横800画素による正方形のディジタルカラー画像である．

ORG=imread('sample.png'); % 原画像の入力  
imagesc(ORG); axis image; % 画像の表示

によって，原画像を読み込み，表示した結果を図１に示す．

![原画像](https://github.com/ioneo56/image_processing/blob/master/imgsrc/2-1.png?raw=true)  
図1 原画像

原画像を閾値128で２値化する．

IMG = ORG>128;
imagesc(IMG); colormap(gray); colorbar;  axis image;
結果を図２に示す．

![原画像](https://github.com/ioneo56/image_processing/blob/master/imgsrc/2-2.png?raw=true)  
図2 ２階調画像

4階調化するには，閾値64,128,192で２値化した画像を加算すればよい.すなわち，
IMG0 = ORG>64;
IMG1 = ORG>192;
IMG = IMG + IMG0 + IMG1;%４値画像化（0~1000）
imagesc(IMG); colormap(gray); colorbar;  axis image;
とする．結果を図３に示す．

![原画像](https://github.com/ioneo56/image_processing/blob/master/imgsrc/2-3.png?raw=true)  
図3 4階調画像

同様に8値の場合も
IMG2 = ORG>32;
IMG3 = ORG>96;
IMG4 = ORG>160;
IMG5 = ORG>224;
IMG = IMG + IMG2 + IMG3 + IMG4 + IMG5;
imagesc(IMG); colormap(gray); colorbar;  axis image;
とする。
結果を図４に示す．

![原画像](https://github.com/ioneo56/image_processing/blob/master/imgsrc/2-4.png?raw=true)   
図4 8階調画像

今回はMATLBの機能により必要がなかったが実際に使う場合は加算後の正規化処理を行ったほうが良い.