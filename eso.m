function[output,z1,z2] = eso()

%����
step = 5;
%���д���
round_time = 5000;
%��������
r = 10;
%�˲�����
h0 = 0.1;
%ʱ��
ts = 0.01;
%λ��
pos = 1:1:round_time;
%ʱ����
times = pos * ts;
%��0
beta_01 = 100;
beta_02 = 300;
beta_03 = 1000;
z1 = zeros(1,round_time);
z2 = zeros(1,round_time);
z3 = zeros(1,round_time);
input = zeros(1,round_time);
output = zeros(1,round_time);
sys = tf(1,[1,10,5]); %�������ض��󴫵ݺ���
dsys = c2d(sys,ts,'z')
[num,den] = tfdata(dsys,'v');
input = sin(times) + rand(1,round_time) / 100;
for i = pos
    if i > 2
        output(i) = -den(2) * output(i - 1) - den(3) * output(i - 2) + num(2) * input(i) + num(3) * input(i - 1);
    end
end

z1_start = 0;
z2_start = 0;
z3_start = 0;
for i = pos
end


end