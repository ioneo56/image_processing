% �ۑ�Q�@�K�����Ƌ^���֊s
% �Q�K���C�S�K���C�W�K���̉摜�𐶐�����D
% ���L�̓T���v���v���O�����ł���D
% �ۑ�쐬�ɂ������ẮuLenna�v�ȊO�̉摜��p����D

clear; % �ϐ��̃I�[���N���A

ORG=imread('sample.png'); % ���摜�̓���
ORG = rgb2gray(ORG); colormap(gray); colorbar;
imagesc(ORG); axis image; % �摜�̕\��
pause; % �ꎞ��~

% �Q�K���摜�̐���
IMG = ORG>128;
imagesc(IMG); colormap(gray); colorbar;  axis image;
pause;

% �S�K���摜�̐���
IMG0 = ORG>64;
IMG1 = ORG>192;
IMG = IMG + IMG0 + IMG1;
imagesc(IMG); colormap(gray); colorbar;  axis image;
pause;
% �W�K���摜�̐���

IMG2 = ORG>32;
IMG3 = ORG>96;
IMG4 = ORG>160;
IMG5 = ORG>224;
IMG = IMG + IMG2 + IMG3 + IMG4 + IMG5;
imagesc(IMG); colormap(gray); colorbar;  axis image;
pause;