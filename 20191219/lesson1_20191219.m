close all;
clear all;

basis8 = [1 -1 0 0 0 0 0 0 ];
basis7 = [0 0 1 -1 0 0 0 0 ];
basis6 = [0 0 0 0 1 -1 0 0 ];
basis5 = [0 0 0 0 0 0 1 -1];
basis4 = [1 1 -1 -1 0 0 0 0];
basis3 = [0 0 0 0 1 1 -1 -1];
basis2 = [1 1 1 1 -1 -1 -1 -1];
basis1 = [1 1 1 1 1 1 1 1];


x=[1 2 3 4 3 2 2 2];
%��X�T�����C�Ӥp�i�Y��X(k),k=1~8;
figure;stem(x);

%�̭�l�w�q:�Ĥ@�Ӫ���
%1.�ť߸��ഫ�jX���ʧ@ �N�O�p�i�D���n���L�{�A(�Y��)�C
%--���ˤ��n���G->X(k)=(basisk*(���n)x[n])/(basisk*(���n)basisk);
X(8) = (x*basis8')/(basis8*basis8');
X(7) = (x*basis7')/(basis7*basis7');
X(6) = (x*basis6')/(basis6*basis6');
X(5) = (x*basis5')/(basis5*basis5');
X(4) = (x*basis4')/(basis4*basis4');
X(3) = (x*basis3')/(basis3*basis3');
X(2) = (x*basis2')/(basis2*basis2');
X(1) = (x*basis1')/(basis1*basis1');

figure; stem(X);



%2.�p�i���ഫ->���jX��A�D�px���ʧ@�A�]�N�O�p�i�u�ʬۥ[�����G
%--x[n]=X(1)basis1+X(2)*basis2+X(3)*basis3+....+X(8)*basis8
%--��^�h�ݬݬO�_�P���x[n]�ۦP

x_new=X(1)*basis1+X(2)*basis2+X(3)*basis3+X(4)*basis4+
      X(5)*basis5+X(6)*basis6+X(7)*basis7+X(8)*basis8;

figure;stem(x_new);

error=sum(abs(x_new-x))

%�ĤG�Ӫ���:�ίx�}����
%1.�ন�jX
X_new  = zeros(8,1);

basis_array = zeros(8,8)
basis_array(1,:) = basis1;
basis_array(2,:) = basis2;
basis_array(3,:) = basis3;
basis_array(4,:) = basis4;
basis_array(5,:) = basis5;
basis_array(6,:) = basis6;
basis_array(7,:) = basis7;
basis_array(8,:) = basis8;


for i = 1:8

    self(i) = (basis_array(i,:)*basis_array(i,:)')

end

X_new = basis_array * x'
X_new = X_new./self'

%�ĤG�Ӫ���:�ίx�}����
%2.�ন�px
x_new = basis_array'*X'

%�ĤT�Ӫ���:�h�h���ֳt�p�i�ഫ(haar)
%1.�ন�jX

% X_newnew=zeros(1,16);
% for i = 1:8
% 
% X_newnew(1)=x(i)+X_newnew(1);   
% X_newnew(2)=
% end
% X_newnew(1)=X_newnew(1)/8;






