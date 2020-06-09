clc
%加载数据集
load('.\CifarData\test_batch.mat')
%将数据集中的特征数据读出来并且转换为double型
fdata = double(data);
