# �ۑ�6���|�[�g
sample.png�����摜�Ƃ���D

ORG=imread('sample.png'); % ���摜�̓���  
ORG = rgb2gray(ORG); %�J���[����O���C�ւ̕ϊ�
imagesc(ORG); colormap('gray'); colorbar; % �摜�̕\��

�ɂ���āC���摜��ǂݍ��݁C�O���[�X�P�[���ɂ������ʂ�}�P�Ɏ����D

![���摜](https://github.com/ioneo56/image_processing/blob/master/imgsrc/6-1.png?raw=true)  
�}1 ���摜�i�O���[�X�P�[���j

���̉摜��2�l�������B
IMG = ORG > 128; % 臒l128�œ�l��
imagesc(IMG); colormap(gray); colorbar; % �摜�̕\��

��l���̌��ʂ�}�Q�Ɏ����D

![���摜](https://github.com/ioneo56/image_processing/blob/master/imgsrc/6-2.png?raw=true)  
�}2 �Q�l�������摜


�܂��A�f�B�U�@�ɂ���l������.

IMG = dither(ORG); % �f�B�U�@�ɂ���l��
imagesc(IMG); colormap(gray); colorbar; % �摜�̕\��
���ʂ�}3�Ɏ����D

![���摜](https://github.com/ioneo56/image_processing/blob/master/imgsrc/6-3.png?raw=true) 
�}3 �f�B�U�@�ɂ���l��

