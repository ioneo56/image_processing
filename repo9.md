# �ۑ�9���|�[�g
sample.png�����摜�Ƃ���D
 
ORG=imread('sample.png'); % ���摜�̓���  
ORG = rgb2gray(ORG); %�J���[����O���C�ւ̕ϊ�
imagesc(ORG); colormap('gray'); colorbar; % �摜�̕\��

�ɂ���āC���摜��ǂݍ��݁C�O���[�X�P�[���ɂ������ʂ�}�P�Ɏ����D

![���摜](https://github.com/ioneo56/image_processing/blob/master/imgsrc/9-1.png?raw=true)  
�}1 ���摜�i�O���[�X�P�[���j

���̉摜�Ƀm�C�Y��ǉ������B
ORG = imnoise(ORG,'salt & pepper',0.02); % �m�C�Y�Y�t
imagesc(ORG); colormap(gray); colorbar; % �摜�̕\��

���ʂ�}�Q�Ɏ����D

![���摜](https://github.com/ioneo56/image_processing/blob/master/imgsrc/9-2.png?raw=true)  
�}2 �m�C�Y����摜


���̉摜�Ƀm�C�Y�������s����.

1.�������t�B���^

IMG = filter2(fspecial('average',3),ORG); % �������t�B���^�ŎG������
imagesc(IMG); colormap(gray); colorbar; % �摜�̕\��
���ʂ�}3�Ɏ����D

![���摜](https://github.com/ioneo56/image_processing/blob/master/imgsrc/9-3.png?raw=true) 
�}3 �������t�B���^

2.���f�B�A���t�B���^
IMG = medfilt2(ORG,[3 3]); % ���f�B�A���t�B���^�ŎG������
imagesc(IMG); colormap(gray); colorbar; % �摜�̕\��
���ʂ�}4�Ɏ����D

![���摜](https://github.com/ioneo56/image_processing/blob/master/imgsrc/9-4.png?raw=true) 
�}4 ���f�B�A���t�B���^

����̉摜�ł͕������t�B���^�ł̓m�C�Y�������Ȃ邪�S�̓I�ɐF���m�C�Y�̐F�ɂ���Ė��邭�Ȃ��Ă���.
���f�B�A���t�B���^�ł̓m�C�Y���قƂ�ǖڗ������S�̂̐F�̕ω����������B
���f�B�A���t�B���^�͂��̂悤�ȗ��q�̏������m�C�Y�ɑ΂��ėL���ł��邱�Ƃ��킩��B