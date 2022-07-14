t = 0:0.01:120*4;
len = length(t);
xn_set = zeros(len,2);xn_set(:,1)=t';
yn_set = zeros(len,2);yn_set(:,1)=t';
zn_set = zeros(len,2);zn_set(:,1)=t';
yaw_set = zeros(len,2);yaw_set(:,1)=t';
len_part = (len-1)/4;

% %前飞10m
 xn_set(1:len_part,2)=10*ones(len_part,1);
% %后飞3m
% xn_set(len_part+1:2*len_part,2)=zeros(len_part,1)
% %左飞10m
 yn_set(1:len_part,2)=10*ones(len_part,1);
% %右飞3m
% yn_set(3*len_part+1:4*len_part,2)=zeros(len_part,1);
%升高5m
zn_set(0*len_part+1:1*len_part,2)=5*ones(len_part,1);
%下降5m
%zn_set(1*len_part+1:2*len_part,2)=zeros(len_part,1);
%逆时针30度
yaw_set(1:len_part,2)=pi/6*ones(len_part,1);
%顺时针90度
%yaw_set(3*len_part+1:4*len_part,2)=zeros(len_part,1);
plot3(xn_set(:,2),yn_set(:,2),zn_set(:,2));
xlabel('x');
ylabel('y');