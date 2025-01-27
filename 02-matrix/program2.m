% ������� ���������� ����
clc

% ����� ���� �������� � ������� 2X2
v = [8 3]
w = [4; 1]
m = [29 -2; -44 22]

% ������� ������� 2�� �������
m0 = zeros(2)
% ������� � ���������� ���������� 2�� �������
m1 = ones(2)
% ������� � ����������, �������� ��������� �������� 2-�� �������
mr = randn(2)
% ��������� ������� 2-�� �������
me = eye(2)

% ���������� ������� M �� ������� �� �������
M = m*mr + w*v

% ����� ���������� ����� � �������� ������� M
str = size(M,1);
stolb = size(M,2);
disp(['���������� ����� ������� M: ', num2str(str), ', ��������: ', num2str(stolb)])

% ����� ������������� �������� � ������� M
MaxElem = max(max(M));
disp(['������������ ������� ������� M: ', num2str(MaxElem)])

% ����� ������������ �������� � ������� M
MinElem = min(min(M));
disp(['����������� ������� ������� M: ', num2str(MinElem)])

% ����� ����� ��������� ������� M
Summa = sum(sum(M));
disp(['����� ��������� ������� M: ', num2str(Summa)])

% ����� ������������ ��������� ������� M
Mult = prod(prod(M));
disp(['������������ ��������� ������� M: ', num2str(Mult)])

% ����� ������� A
A = [0.6934 3.4302 3.2723 0.0546 12.2107 8.9556 8.7879;
    1.6332 1.5901 2.4343 4.1119 9.1181 0.5733 5.2615;
    0.5854 1.4918 2.3426 2.7809 13.4954 29.4956 7.2479;
    1.6579 4.3528 0.3552 1.3945 11.7359 3.1786 2.3811;
    5.794 1.3223 1.567 4.8091 4.6988 3.6736 0.3824;
    6.6318 4.5172 1.8277 3.8735 1.4285 2.5523 6.4176;
    4.1101 9.5744 0.8614 10.58 7.615 6.961 3.4473]

% ������� �� A ���������� B

% �������� �����������, �� ��������� ������� B �� �������� �������������
% ������� A, �� ������ �������������� ����������. ������� � ������
% ��������� ���������� �� ������� A, �� ��� ���� ����������� ������� B.

% ������������ SizeB �������� ������� ������� B
SizeB = 4;
% ��������� �� ������� A ������� ������� ������ ����������� 4x4
NewA = A(end-SizeB+1:end, end-SizeB+1:end)

% ������������� ������� B
B = [1.8133 0.367 0.5402 0.7032;
    0.5723 0.7815 1.6952 0.6011;
    1.3739 1.2599 0.945 0.913;
    0.7403 0.8517 1.2088 2.1394]

% ������������� ������� C
C = [0.8762 0.7726 0.7582 0.8002 0.7962;
    0.3556 0.6205 0.9317 0.8679 0.871;
    0.906 0.9906 0.9514 0.9894 0.964]

% ������� ��������� ������:
disp('������� ��������� ����������, ��� ���')
disp('���������� �������� ������� A �� ��������� � ����������� ����� ������� B')
% BC1 = B*C
disp('\\\\\\\\\\\')
disp('������������ ��������� ����������, ��� ������� ������� �������')
% BC2 = B.*C

% ������� ������� ������:
disp('\\\\\\\\\\\')
disp('������� ����� ������� ����������, ��� ������� ������� �������')
% BC3 = B\C
disp('\\\\\\\\\\\')
disp('������������ ����� ������� ����������, ��� ������� ������� �������')
% BC3 = B\C

% ���������������� ������� A
TranspA = A.'