%% --------------------------------
%% author:Fred
%% date: 20220602
%% fuction: 
%% note: ע���ȡ�����ߵ�˳��
% ��ȡ����������˳�����£�
% 1--------------3-------------5
% |              |             |
% 2--------------4-------------6
%% --------------------------------
clc;clear;close all;

% ���ؼ��ͼƬ��·������Ϊ��Ҫ���Ե�ͼƬ��·�� 
img = imread('./images/117-oldBoard-13M.png');
imshow(img);

% ��ȡ�����������
[x,y]=ginput(6);
a1 = y(2)-y(1);
b = y(4)-y(3);
a2 = y(6)-y(5);
a = (a1 + a2) / 2;
distortion = (a - b) / b * 100;
strDis = sprintf('TV distortion is: %f %s', distortion, '%');
disp(strDis);

