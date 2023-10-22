clear;
clc;

% 设置房间参数
Lx = 3;
Ly = 3;
Lwall = 0.2;
time = 3;

% 设置空间步长和时间步长
dx = 0.05;
dy = 0.05;
dt = 0.0001;

% 矩阵设置
x = 0:dx:Lx+2*Lwall+0.05;
y = 0:dy:Ly+2*Lwall+0.05;
t = 0:dt:time;
wall = 0:dx:Lwall;

lengthx = Lx/dx;
lengthy = Ly/dy;

%设置系数矩阵
Ax = (-2*eye(lengthx)+diag(ones(1,lengthx-1),1) + diag(ones(1,lengthx-1),-1));
Ay = (-2*eye(lengthy)+diag(ones(1,lengthy-1),1) + diag(ones(1,lengthy-1),-1));

% 设置初始条件
t0 = 10;    % 初始室温
T0 = t0*ones(length(x),length(y));


% 设置边界条件
top = 10; % 第一类边界条件,开空调
bottom = 10;
left = 10;
right = 10;

alpha = 2.26;   % 空气热扩散系数
Tset = 25;

% 考虑开空调情况下的房间温度
T = T0;

q2 = 18;

% 设置室内温度
indoor = T(length(wall):length(x)-length(wall)-1,length(wall)+1:length(y)-length(wall));
indoor_before = indoor;

indoorx = 0.05:dx:Lx;
indoory = 0.05:dy:Ly;

% 生成网格采样点
[Y,X] = meshgrid(indoory,indoorx);

i = 1;
k = 1;

for n = 1:length(t)-1

    % 边界条件
    T(:,1) = left;
    T(:,length(x)) = right;
    T(1,:) = top;
    T(length(y),:) = bottom;
    
    % 热源

    % 空调扫风
%     if mod(n,3) == 1
%         if (i < lengthx) && (i > 1) 
%             i = i + k;        
%         else
%             k = -k;
%             i = i + k;
%         end
%     end
% 
%     if i == 0 
%        i = 1;
%     end
%     
%     indoor(i,:) = Tset;
    
    % 地暖
    indoor(lengthx,:) = indoor_before(lengthx - 1,:) + q2*dx;


    % 室内热传导
    indoor = indoor + alpha*(1/dx^2*Ax*indoor + 1/dy^2*indoor*Ay)*dt;

    % 墙壁隔热
    q = (left - indoor(:,1))/Lwall;
    indoor(:,1) = indoor_before(:,2) + q*dx;

    q = (right - indoor(:,lengthx))/Lwall;
    indoor(:,lengthx) = indoor_before(:,lengthx-1) + q*dx;

    q = (bottom - indoor(lengthy,:))/Lwall;
    indoor(lengthy,:) = indoor_before(lengthy-1,:) + q*dx;

     q = (top - indoor(1,:))/Lwall + 9 ;
    indoor(1,:) = indoor_before(2,:) + q*dx;


    indoor_before = indoor;

    T(length(wall):length(x)-length(wall)-1,length(wall)+1:length(y)-length(wall)) = indoor;

%    生成实时图像
%     surf(X,Y,indoor)
%     axis([x(1) x(end) y(1) y(end) 0 40])
%     getframe;
     
end
    
    surf(X,Y,indoor),view(0,90)
    axis([x(1) indoorx(end) y(1) indoory(end) 0 40])

