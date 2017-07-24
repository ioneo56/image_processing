# �ۑ�5���|�[�g
sample2.png�����摜�Ƃ���D

ORG=imread('sample2.png'); % ���摜�̓���  
ORG = rgb2gray(ORG); %�J���[����O���C�ւ̕ϊ�
imagesc(ORG); colormap('gray'); colorbar; % �摜�̕\��

�ɂ���āC���摜��ǂݍ��݁C�O���[�X�P�[���ɂ������ʂ�}�P�Ɏ����D

![���摜](https://github.com/ioneo56/image_processing/blob/master/imgsrc/5-1.png?raw=true)  
�}1 ���摜�i�O���[�X�P�[���j

���̉摜��2�l�������B
�܂��A�œK��臒l��T������

H = imhist(ORG); %�q�X�g�O�����̃f�[�^���x�N�g��E�Ɋi�[
myu_T = mean(H);
max_val = 0;
max_thres = 1;
for i=1:255
C1 = H(1:i); %�q�X�g�O������2�̃N���X�ɕ�����
C2 = H(i+1:256);
n1 = sum(C1); %��f���̎Z�o
n2 = sum(C2);
myu1 = mean(C1); %���ϒl�̎Z�o
myu2 = mean(C2);
sigma1 = var(C1); %���U�̎Z�o
sigma2 = var(C2);
sigma_w = (n1 *sigma1+n2*sigma2)/(n1+n2); %�N���X�����U�̎Z�o
sigma_B = (n1 *(myu1-myu_T)^2+n2*(myu2-myu_T)^2)/(n1+n2); %�N���X�ԕ��U�̎Z�o
if max_val<sigma_B/sigma_w
max_val = sigma_B/sigma_w;
max_thres =i;
end;
end;

���ɁA����臒l���g�p���ĉ摜���l������

IMG = ORG > max_thres;
imagesc(IMG); colormap(gray); colorbar;
pause;

��l���̌��ʂ�}�Q�Ɏ����D

![���摜](https://github.com/ioneo56/image_processing/blob/master/imgsrc/5-2.png?raw=true)  
�}2 �Q�l�������摜

���ʕ��͖@�ɂ��臒l��ݒ肵�ē�l���������߃I�u�W�F�N�g�����o���₷���摜�ƂȂ����B