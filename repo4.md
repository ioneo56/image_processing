# �ۑ�4���|�[�g
sample.png�����摜�Ƃ���D

�摜�̃G�b�W���o 
ORG=imread('sample.png'); % ���摜�̓���  
ORG = rgb2gray(ORG); %�J���[����O���C�ւ̕ϊ�
imagesc(ORG); colormap('gray'); colorbar; % �摜�̕\��

�ɂ���āC���摜��ǂݍ��݁C�O���[�X�P�[���ɂ������ʂ�}�P�Ɏ����D

![���摜](https://github.com/ioneo56/image_processing/blob/master/imgsrc/4-1.png?raw=true)  
�}1 ���摜�i�O���[�X�P�[���j

���̉摜�̃q�X�g�O������\������B
imhist(ORG); % �q�X�g�O�����̕\��
���ʂ�}�Q�Ɏ����D

![���摜](https://github.com/ioneo56/image_processing/blob/master/imgsrc/4-2.png?raw=true) 
�}2 �q�X�g�O����

����PNG�̂��ߓǂݍ��ݎ��ɔw�i�����ƂȂ�q�X�g�O������0�̐��������ɑ����Ȃ����B
�܂��A�C���X�g�Ȃ̂Ŋ��S�Ȕ��̕������������Ƃ��킩��B