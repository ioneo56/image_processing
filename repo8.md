# �ۑ�8���|�[�g
sample.png�����摜�Ƃ���D

ORG=imread('sample.png'); % ���摜�̓���  
ORG = rgb2gray(ORG); %�J���[����O���C�ւ̕ϊ�
imagesc(ORG); colormap('gray'); colorbar; % �摜�̕\��

�ɂ���āC���摜��ǂݍ��݁C�O���[�X�P�[���ɂ������ʂ�}�P�Ɏ����D

![���摜](https://github.com/ioneo56/image_processing/blob/master/imgsrc/8-1.png?raw=true)  
�}1 ���摜�i�O���[�X�P�[���j

���̉摜��2�l�������B
IMG = ORG > 128; % 臒l128�œ�l��
imagesc(IMG); colormap(gray); colorbar; % �摜�̕\��

��l���̌��ʂ�}�Q�Ɏ����D

![���摜](https://github.com/ioneo56/image_processing/blob/master/imgsrc/8-2.png?raw=true)  
�}2 �Q�l�������摜


���̉摜�Ƀ��x����t����.

IMG = bwlabeln(IMG);%�o�C�i�� �C���[�W���̘A���v�f�����x���t��
imagesc(IMG); colormap(jet); colorbar; % �摜�̕\��
���ʂ�}�Q�Ɏ����D

![���摜](https://github.com/ioneo56/image_processing/blob/master/imgsrc/8-3.png?raw=true) 
�}3 ���x���t������

8�A���I�u�W�F�N�g�����x���t�������B