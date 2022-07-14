function[output,z1,z2] = eso()

%步长
step = 5;
%运行次数
round_time = 5000;
%快速因子
r = 10;
%滤波因子
h0 = 0.1;
%时基
ts = 0.01;
%位置
pos = 1:1:round_time;
%时间轴
times = pos * ts;
%β0
beta_01 = 100;
beta_02 = 300;
beta_03 = 1000;
z1 = zeros(1,round_time);
z2 = zeros(1,round_time);
z3 = zeros(1,round_time);
input = zeros(1,round_time);
output = zeros(1,round_time);
sys = tf(1,[1,10,5]); %建立被控对象传递函数
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