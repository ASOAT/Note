%上题求得的稳定性因数
K = 2.355*10^(-3);
%车身长度
L = 3.048;
%速度区间设置在1-40m/s
u = 1:40;
%横摆角速度增益曲线
YawRateGain1 = (u/L)./(1+K*u.^2);
%设置K=0的情况作为对照
YawRateGain2 = u/L;
%绘图
plot(u,YawRateGain1);
axis([0 40 0 10]);
hold on
plot(u,YawRateGain2)