# �ۑ�3���|�[�g
sample.png�����摜�Ƃ���D

ORG=imread('sample.png'); % ���摜�̓���  
ORG = rgb2gray(ORG); %�J���[����O���C�ւ̕ϊ�
imagesc(ORG); colormap('gray'); colorbar; % �摜�̕\��

�ɂ���āC���摜��ǂݍ��݁C�O���[�X�P�[���ɂ������ʂ�}�P�Ɏ����D

![���摜](https://github.com/ioneo56/image_processing/blob/master/imgsrc/3-1.png?raw=true)  
�}1 ���摜�i�O���[�X�P�[���j

���̉摜��2�l�������B
�܂�臒l��64�Ƃ��ē�l�������B
IMG = ORG > 64; % �P�x�l��64�ȏ�̉�f��1�C���̑���0�ɕϊ�
imagesc(IMG); colormap(gray); colorbar;
��l���̌��ʂ�}�Q�Ɏ����D

![���摜](https://github.com/ioneo56/image_processing/blob/master/imgsrc/3-2.png?raw=true)  
�}2 �Q�l�������摜(臒l64)

���l��臒l��96,128,192�Ƃ��ē�l�������B
���ʂ�}3�`5�Ɏ����D

![���摜](https://github.com/ioneo56/image_processing/blob/master/imgsrc/3-3.png?raw=true)   
�}3 �Q�l�������摜(臒l96)


![���摜](https://github.com/ioneo56/image_processing/blob/master/imgsrc/3-4.png?raw=true)  
�}4 �Q�l�������摜(臒l128)


![���摜](https://github.com/ioneo56/image_processing/blob/master/imgsrc/3-5.png?raw=true)  
�}5 �Q�l�������摜(臒l192)

臒l��ς��邱�ƂłԂ�Ă��܂��������ω����邽�߉摜��ړI�ɉ�����臒l�̐ݒ肪�d�v���Ƃ킩��B