clear all;
close all;

s= [1 3 5 7 ];
t = s*2 %�C�Ӥ�������2
y = s+9 %�C�Ӥ������[�E
a = [2 4 6 8 ];
b = a.*s  %�I�� �� �@�Ӥ@�ӭ�
bb = a ./ s %�I��
c = [1 2 3 4]*[5 6 7 8]' %�S���I �N�O�x�}�ۭ� ex: 1x4 * 4x1
%--------------�}�C����--------
t = [3 7 9 11];
t(3)
t([1 3]) %���h�ƭ�


y = cos(0)
y = cos(pi*1)
y= cos(pi*2)
y = cos(pi*[1 2])
x = [1:0.1:4]
y = cos((pi/2)*x)
%figure;plot(x,y); grid on;
%figure;stem(x,y); grid on;
%------------����----------------

y = 2^3
y= 2.^[2 3]
y = exp(3)
y = exp([0:1:50])  %y => 1x51

%------------���----------------
x = 10
y = log(x) % ln(x) �He���� = log(x) in matlab
y = log10(x) %log�H10���� = log10(x) in matlab

%----------Convolution--------------

n = [1:0.1:5];
b = [1 2 3 4]
c = [5 6 7 8]
yy = exp(n)
xx = sin((pi/2) * n)
figure; plot(yy)
figure; plot(xx)
figure; plot(yy,xx)
figure; stem(yy,xx)

%---------���k�걵-------

c = [1 2 3 4];
b =[5 6 7 8];
d = [c b] %or-> d = [c,b]

%--------�e�ϧޥ�-------
figure; plot(sin(pi/2 * [1:0.1:4])); hold on
plot(cos(pi/2 * [1:0.1:4])); hold off

figure;
plot(sin(pi*[0:0.1:10]),'k:diamond');
hold on
plot(cos(pi*[0:0.1:10]),'r-square');
hold off
legend("�Ĥ@�ӰT��sin",'�ĤG�ӰT��cos')%�y�z���P�T������r

%------�e�n�X�ӵ���subplot--------

x = 0:0.1:4*pi;
figure;
subplot(2,2,1);plot(x,sin(x));
subplot(2,2,2);plot(x,cos(x));
subplot(2,2,3);plot(x,sin(x) .* exp(-x/5));
subplot(2,2,4);plot(x,x.^2);

%-------------BAR----------------
figure;bar(sin(x));
%--------------------------------

a = [1 2 3 4 ; 5 6 7 8 ; 9 10 11 12] 

a(2,3)
a(3,1:2)
a(end,1:2)
a(2:3,1)
a(2:3,1:4)
a(2:end,1:end)
a(:,:)
a([1 3],:)
a(2,3) = 5
a(:,2) = []
b = a(3,:)
%----------------��m---------------------

a = a'
d =[1 2 3 4 ; 9 10 11 12];
e = [1 6 9 4 ;5 6 7 8]
f =[d e] %���k�걵
g = [d;e]%�W�U�걵
h = [a [4 3 2]'] %�s�W��
i = [a;[4 3 2]] %�s�W�C

a = [1 2 3 4;5 6 7 8;9 10 11 12]
b = fliplr(a)  %���k�A��
c = flipud(a)  %�W�U�A��

%--------------�`�ίS��x�}------------------
%���v���B�z�A�i��n���Ť@�ӯx�}�X�� ->zeros / ones
a = zeros(5,5)

% .*�V�q�I�ۭ�   ./�V�q�I�۰�  ->�j�p�n�@��

%�[���C���I(�H��`�Ψ�)
for i =1:3
    for j =1:4
        A(i,j)
    end
end




 




