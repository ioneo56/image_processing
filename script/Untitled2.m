% ‰Û‘è‚Q@ŠK’²”‚Æ‹^Ž——ÖŠs
% ‚QŠK’²C‚SŠK’²C‚WŠK’²‚Ì‰æ‘œ‚ð¶¬‚¹‚æD
% ‰º‹L‚ÍƒTƒ“ƒvƒ‹ƒvƒƒOƒ‰ƒ€‚Å‚ ‚éD
% ‰Û‘èì¬‚É‚ ‚½‚Á‚Ä‚ÍuLennavˆÈŠO‚Ì‰æ‘œ‚ð—p‚¢‚æD

clear; % •Ï”‚ÌƒI[ƒ‹ƒNƒŠƒA

ORG=imread('sample.png'); % Œ´‰æ‘œ‚Ì“ü—Í
ORG = rgb2gray(ORG); colormap(gray); colorbar;
imagesc(ORG); axis image; % ‰æ‘œ‚Ì•\Ž¦
pause; % ˆêŽž’âŽ~

% ‚QŠK’²‰æ‘œ‚Ì¶¬
IMG = ORG>128;
imagesc(IMG); colormap(gray); colorbar;  axis image;
pause;

% ‚SŠK’²‰æ‘œ‚Ì¶¬
IMG0 = ORG>64;
IMG1 = ORG>192;
IMG = IMG + IMG0 + IMG1;
imagesc(IMG); colormap(gray); colorbar;  axis image;
pause;
% ‚WŠK’²‰æ‘œ‚Ì¶¬

IMG2 = ORG>32;
IMG3 = ORG>96;
IMG4 = ORG>160;
IMG5 = ORG>224;
IMG = IMG + IMG2 + IMG3 + IMG4 + IMG5;
imagesc(IMG); colormap(gray); colorbar;  axis image;
pause;