function v=randchoose(N,m)
%  ���ã��ӣ���������У����ѡ���������
%�� Example:
%   t =1 :100;
%   n =5;
%   randchoose(t,n)
%   ans =   6     2    14    99    74
%   randchoose(t,n)
%   ans =     63    89    10    97   100
    if length(m) >1
        error('m should be a number not a vector or matrix');
    end
    [row col]= size(N);
    len = row * col;
    if m > len
        m = len;  % m > len �Ƿ�������������������
    end
    a = rand(1,len);
    [b c]=sort(a);
    d = c(1:m);
    v = N(d);
end