# 課題5レポート
sample2.pngを原画像とする．

ORG=imread('sample2.png'); % 原画像の入力  
ORG = rgb2gray(ORG); %カラーからグレイへの変換
imagesc(ORG); colormap('gray'); colorbar; % 画像の表示

によって，原画像を読み込み，グレースケールにした結果を図１に示す．

![原画像](https://github.com/ioneo56/image_processing/blob/master/imgsrc/5-1.png?raw=true)  
図1 原画像（グレースケール）

この画像を2値化した。
まず、最適な閾値を探索する

H = imhist(ORG); %ヒストグラムのデータを列ベクトルEに格納
myu_T = mean(H);
max_val = 0;
max_thres = 1;
for i=1:255
C1 = H(1:i); %ヒストグラムを2つのクラスに分ける
C2 = H(i+1:256);
n1 = sum(C1); %画素数の算出
n2 = sum(C2);
myu1 = mean(C1); %平均値の算出
myu2 = mean(C2);
sigma1 = var(C1); %分散の算出
sigma2 = var(C2);
sigma_w = (n1 *sigma1+n2*sigma2)/(n1+n2); %クラス内分散の算出
sigma_B = (n1 *(myu1-myu_T)^2+n2*(myu2-myu_T)^2)/(n1+n2); %クラス間分散の算出
if max_val<sigma_B/sigma_w
max_val = sigma_B/sigma_w;
max_thres =i;
end;
end;

次に、この閾値を使用して画像を二値化する

IMG = ORG > max_thres;
imagesc(IMG); colormap(gray); colorbar;
pause;

二値化の結果を図２に示す．

![原画像](https://github.com/ioneo56/image_processing/blob/master/imgsrc/5-2.png?raw=true)  
図2 ２値化した画像

判別分析法により閾値を設定して二値化したためオブジェクトが検出しやすい画像となった。