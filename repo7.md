# 課題７レポート
予め背景を白とした後ダイナミックレンジを小さくしたsample2.pngを原画像とする．

ORG=imread('sample2.png'); % 原画像の入力  
ORG = rgb2gray(ORG); %カラーからグレイへの変換
imagesc(ORG); colormap('gray'); colorbar; % 画像の表示

によって，原画像を読み込み，グレースケールにした結果を図１に示す．

![原画像](https://github.com/ioneo56/image_processing/blob/master/imgsrc/7-1.png?raw=true)  
図1 原画像（グレースケール）

また、この画像の濃度ヒストグラムを表示する
imhist(ORG); % 濃度ヒストグラムを生成、表示

![原画像](https://github.com/ioneo56/image_processing/blob/master/imgsrc/7-2.png?raw=true)  
図2 ヒストグラム

この画像にダイナミックレンジの拡大を適用した。
ORG = double(ORG);
mn = min(ORG(:)); % 濃度値の最小値を算出
mx = max(ORG(:)); % 濃度値の最大値を算出
ORG = (ORG-mn)/(mx-mn)*255;
imagesc(ORG); colormap(gray); colorbar; % 画像の表示
ダイナミックレンジ拡大の結果の結果を図3に示す．

![原画像](https://github.com/ioneo56/image_processing/blob/master/imgsrc/7-3.png?raw=true)  
図3 ダイナミックレンジ拡大後

また、この画像の濃度ヒストグラムを表示する
ORG = uint8(ORG); % 8 ビット符号なし整数への変換
imhist(ORG); % 濃度ヒストグラムを生成、表示
エッジ抽出の結果の結果を図４に示す．

![原画像](https://github.com/ioneo56/image_processing/blob/master/imgsrc/7-4.png?raw=true)
図4 ヒストグラム
画像を見てもあまり差異は認められないもののヒストグラムを見るとダイナミックレンジが拡大されていることを確認できる。
この方法では現画像を(ORG-mn)/(mx-mn)で0~1までの値に正規化し255倍しているため一度小数を扱える型に変換している
しかし、ヒストグラムでは個数を数えるため整数値に変換する必要がある。