%{ 
1. �D�� 
��cameraman���k�}�ν����������ç�8�զ�100

%}

%{ 
2. �Ψ쪺����
(1)�e�ϧޥ�
(2)for�j��
(3)Ū�ϡB�B�ιϧ�
%}

%{
3. �ѵ�
(���D�ت��iŪ�ʤw�g�Q�P�H�ʦP�ǽT�{�L)

%}
%�W�A�����椣�঳�r


% �{���n�i����C
% ���h�Ӥp�D�n�L�b������������@�@�������@���A�]���[�������N��^
% ���X�p�D�A�N���X��S������


clear all;
close all;

X = double(imread("cameraman.tif"));
H = 1/9*[-1 -1 -1;-1 100 -1; -1 -1 -1]
%H = 1/9*[-1 1 -1 ;-1 1 -1 ; -1 1 -1];

for i=1:256-2
    for j=1:256-2

        if((j>62 && j<85) && (i>224 && i<255))
            
            Y(i,j)= sum(sum(X(i:i+2,j:j+2) .* H));
        else
            Y(i,j) = X(i,j);
            
        end
        
    end
end

figure;
imshow(uint8(Y))