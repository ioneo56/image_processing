# �ۑ�P���|�[�g
sample.png�����摜�Ƃ���D���̉摜�͏c800�摜�C��800��f�ɂ�鐳���`�̃f�B�W�^���J���[�摜�ł���D

ORG=imread('sample.png'); % ���摜�̓���  
imagesc(ORG); axis image; % �摜�̕\��

�ɂ���āC���摜��ǂݍ��݁C�\���������ʂ�}�P�Ɏ����D

![���摜](https://github.com/ioneo56/image_processing/blob/master/imgsrc/2-1.png?raw=true)  
�}1 ���摜

���摜��臒l128�łQ�l������D

IMG = ORG>128;
imagesc(IMG); colormap(gray); colorbar;  axis image;
���ʂ�}�Q�Ɏ����D

![���摜](https://github.com/ioneo56/image_processing/blob/master/imgsrc/2-2.png?raw=true)  
�}2 �Q�K���摜

4�K��������ɂ́C臒l64,128,192�łQ�l�������摜�����Z����΂悢.���Ȃ킿�C
IMG0 = ORG>64;
IMG1 = ORG>192;
IMG = IMG + IMG0 + IMG1;%�S�l�摜���i0~1000�j
imagesc(IMG); colormap(gray); colorbar;  axis image;
�Ƃ���D���ʂ�}�R�Ɏ����D

![���摜](https://github.com/ioneo56/image_processing/blob/master/imgsrc/2-3.png?raw=true)  
�}3 4�K���摜

���l��8�l�̏ꍇ��
IMG2 = ORG>32;
IMG3 = ORG>96;
IMG4 = ORG>160;
IMG5 = ORG>224;
IMG = IMG + IMG2 + IMG3 + IMG4 + IMG5;
imagesc(IMG); colormap(gray); colorbar;  axis image;
�Ƃ���B
���ʂ�}�S�Ɏ����D

![���摜](https://github.com/ioneo56/image_processing/blob/master/imgsrc/2-4.png?raw=true)   
�}4 8�K���摜

�����MATLB�̋@�\�ɂ��K�v���Ȃ����������ۂɎg���ꍇ�͉��Z��̐��K���������s�����ق����ǂ�.