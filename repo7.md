# �ۑ�V���|�[�g
�\�ߔw�i�𔒂Ƃ�����_�C�i�~�b�N�����W������������sample2.png�����摜�Ƃ���D

ORG=imread('sample2.png'); % ���摜�̓���  
ORG = rgb2gray(ORG); %�J���[����O���C�ւ̕ϊ�
imagesc(ORG); colormap('gray'); colorbar; % �摜�̕\��

�ɂ���āC���摜��ǂݍ��݁C�O���[�X�P�[���ɂ������ʂ�}�P�Ɏ����D

![���摜](https://github.com/ioneo56/image_processing/blob/master/imgsrc/7-1.png?raw=true)  
�}1 ���摜�i�O���[�X�P�[���j

�܂��A���̉摜�̔Z�x�q�X�g�O������\������
imhist(ORG); % �Z�x�q�X�g�O�����𐶐��A�\��

![���摜](https://github.com/ioneo56/image_processing/blob/master/imgsrc/7-2.png?raw=true)  
�}2 �q�X�g�O����

���̉摜�Ƀ_�C�i�~�b�N�����W�̊g���K�p�����B
ORG = double(ORG);
mn = min(ORG(:)); % �Z�x�l�̍ŏ��l���Z�o
mx = max(ORG(:)); % �Z�x�l�̍ő�l���Z�o
ORG = (ORG-mn)/(mx-mn)*255;
imagesc(ORG); colormap(gray); colorbar; % �摜�̕\��
�_�C�i�~�b�N�����W�g��̌��ʂ̌��ʂ�}3�Ɏ����D

![���摜](https://github.com/ioneo56/image_processing/blob/master/imgsrc/7-3.png?raw=true)  
�}3 �_�C�i�~�b�N�����W�g���

�܂��A���̉摜�̔Z�x�q�X�g�O������\������
ORG = uint8(ORG); % 8 �r�b�g�����Ȃ������ւ̕ϊ�
imhist(ORG); % �Z�x�q�X�g�O�����𐶐��A�\��
�G�b�W���o�̌��ʂ̌��ʂ�}�S�Ɏ����D

![���摜](https://github.com/ioneo56/image_processing/blob/master/imgsrc/7-4.png?raw=true)
�}4 �q�X�g�O����
�摜�����Ă����܂荷�ق͔F�߂��Ȃ����̂̃q�X�g�O����������ƃ_�C�i�~�b�N�����W���g�傳��Ă��邱�Ƃ��m�F�ł���B
���̕��@�ł͌��摜��(ORG-mn)/(mx-mn)��0~1�܂ł̒l�ɐ��K����255�{���Ă��邽�߈�x������������^�ɕϊ����Ă���
�������A�q�X�g�O�����ł͌��𐔂��邽�ߐ����l�ɕϊ�����K�v������B