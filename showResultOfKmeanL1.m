clc
% %�������ݼ�
% load test_batch
% %�����ݼ��е��������ݶ���������ת��Ϊdouble��
% fdata = double(data);
% %ʹ��kmeans������fdata���о��࣬��������Ϊ10
% %�����Distance��������Ϊ'cityblock'�������L1����������������
% clsVectorL1 = kmeans(fdata,10,'Distance','cityblock')
%����CΪDBIָ���е������ĵ�
C = zeros(10,3072)
for j = 1:10
    %��ʾclsVectorL1��j���еĵ�5��ͼƬ
    %ȡ������Ϊj��ͼƬ��index
    clsIndex = find(clsVectorL1==j);
    % ��clsIndex�����ѡȡ5��indexֵ
    randIndex = randchoose(clsIndex,5);
    for i = 1:5
    %��j=6��ʱ���´�һ��figure��ÿ��figure��ʾ5*5=25��СͼƬʹ����Э��        
        if j == 6
            figure(2)
        end
        if j<=5
           subplot(5,5,5*j+i-5);
           %�����Լ�д��showSingleImage������ʾͼƬ
           showSingleImage(fdata,randIndex(i));
        else
           subplot(5,5,5*j+i-30);
           showSingleImage(fdata,randIndex(i));
        end
    end
end


