clear all %�M���O����workspace
close all%�����Ҧ���(����)


x=87;
y=2;

for z=1:3
   b=y^z;
   disp(b)
end

a =[ 1 2 3 4 5 6 7 8];
b = [1:100]
c = 1:100 %���_�����άA��
d =1:0.5:10 %�H0.5�����t
e = 100:-1:1  ;
length(e)
size(e)
mean(e)
var(e)  %�ܲ���(��0 = �̭����@��)
[k g] = min(e)%��Xe�}�C�̳̤p���ȥᵹk �̤p���Ȫ���m�ᵹg
[kk gg] = max(e)
a(1,2)
%%%
matrix = [5 2 7 8 9];
%[sort_matrix sort_matrix_index] = sort(matrix) %�q�p�ƨ�j
[sort_matrix sort_matrix_index] = sort(matrix,'descend') %�q�j�ƨ�p

%practice------------------------
figure; %�j�����e�@�i�ϥX��
plot (matrix)
figure; %�j�����e�@�i�ϥX��
stem(matrix)

x = [1.5 3.5 5.5 7.5]
y = [2 4 6 8]
figure;
plot(x,y)
grid on;
xlabel('�}�C')
ylabel('�j�p')
title('�m��plot�\��')
axis([1 4 2 8])


%�e�X�@�i�ϡAx�b�O 2,4,6,8,10 y�b���ȫh�Ox�b���T���� �åB�e�X��������(xlabel = age,ylabel = candy_account,title = candy_distribution)





