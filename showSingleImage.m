%��ʾ����ͼƬ��fdata�ĵ�i�ж�Ӧ��ͼƬ��ʾ
%ע��ģ�麯�����ܵ������У�Ҫ�������������вſ���
function showSingleImage(fdata,i)
    %����i�е�����ת��Ϊ32*32*3����ͨ��rgb��ֵ��������һ��
    imageSkew = reshape(fdata(i,:),32,32,3)./256;
    %����б��ͼƬ��ת90�Ƚ�
    image = imrotate(imageSkew,-90);
    %ʹ��imshow������ʾͼƬ
    imshow(image)
end