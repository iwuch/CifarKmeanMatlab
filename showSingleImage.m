%显示单张图片，fdata的第i行对应的图片显示
%注意模块函数不能单独运行，要在上下文中运行才可以
function showSingleImage(fdata,i)
    %将第i行的向量转换为32*32*3的三通道rgb数值并且做归一化
    imageSkew = reshape(fdata(i,:),32,32,3)./256;
    %将歪斜的图片旋转90度角
    image = imrotate(imageSkew,-90);
    %使用imshow函数显示图片
    imshow(image)
end