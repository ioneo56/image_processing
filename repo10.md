# �ۑ�10���|�[�g
sample.png�����摜�Ƃ���D���̉摜�͏c800�摜�C��800��f�ɂ�鐳���`�̃f�B�W�^���J���[�摜�ł���D

�摜�̃G�b�W���o 
ORG=imread('sample.png'); % ���摜�̓���  
ORG = rgb2gray(ORG); %�J���[����O���C�ւ̕ϊ�
imagesc(ORG); colormap('gray'); colorbar; % �摜�̕\��

�ɂ���āC���摜��ǂݍ��݁C�O���[�X�P�[���ɂ������ʂ�}�P�Ɏ����D

![���摜](https://github.com/ioneo56/image_processing/blob/master/imgsrc/1-10.png?raw=true)  
�}1 ���摜�i�O���[�X�P�[���j

���̉摜�Ɋe��̃G�b�W���o�A���S���Y����K�p�����B


�P�D�v���E�B�b�g�@
IMG = edge(ORG,'prewitt'); �G�b�W���o�i�v���E�B�b�g�@�j

�G�b�W���o�̌��ʂ̌��ʂ�}�Q�Ɏ����D

![���摜](https://github.com/ioneo56/image_processing/blob/master/imgsrc/10-2.png?raw=true)  
�}2 �v���E�B�b�g�@

2�D�\�x���@
IMG = edge(ORG,'sobel'); �G�b�W���o�i�\�x���@�j

�G�b�W���o�̌��ʂ̌��ʂ�}�Q�Ɏ����D

![���摜](https://github.com/ioneo56/image_processing/blob/master/imgsrc/10-3.png?raw=true)  
�}3 �\�x���@

3�D�L���j�[�@
IMG = edge(ORG,'canny'); �G�b�W���o�i�L���j�[�@�j

�G�b�W���o�̌��ʂ̌��ʂ�}�Q�Ɏ����D

![���摜](https://github.com/ioneo56/image_processing/blob/master/imgsrc/10-4.png?raw=true)
�}4 �L���j�[�@