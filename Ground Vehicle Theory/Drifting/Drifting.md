# Paper Reproduction
## 1 Reference Path Generation
X vs. Y:
![[Pasted image 20231201203830.png|300]]
Curvature($\kappa_{ref}$) vs. Path Distance
![[Pasted image 20231203195644.png|300]]
Sideslip$(\beta_{ref})$ vs. Path Distance（这个是依照论文里的数据依葫芦画瓢造的beta，基本原理应该是在漂移的时候需要最大的beta，但因为后续计算需要用到$\dot{\beta}$所以不能阶跃式变化）
![[Pasted image 20231203195702.png|300]]
论文中使用计算的方法（使用Force-Based Bicycle Model计算的，这里弄得不是很明白，应该是使用实车上的数据了，咱也没有这条件）来获得$V_{ref}$
纠结了很久最终还是使用人工绘制$V_{ref}$的方法，标准是让$\phi_{ref}$($\phi_{ref} = \kappa_{ref}V_{ref}$)在漂移的路段下尽可能线性（属于是面向答案出题了）。
V vs. s
![[Pasted image 20231203200445.png|300]]
再通过V-s-t之间的关系，将上述的reference数据全部转化为时域。

Beta vs. t
![[Pasted image 20231203200727.png|300]]
V vs. t
![[Pasted image 20231203200809.png|300]]
Phi_ref vs. t
![[Pasted image 20231203200852.png|300]]
然后建立simulink模型，代入上述数据
![[Pasted image 20231203201128.png]]
论文中实现漂移控制的基本原理：
- 获得所有参考参数
- 获取当前位置误差（1.与预期轨迹的最小误差 2.质心侧偏角误差 3.航向角误差）
- 通过公式获得修正到正确轨迹所需的航向角、横摆角速度
![[Pasted image 20231203204351.png]]
![[Pasted image 20231203205040.png]]
![[Pasted image 20231203205053.png]]
![[Pasted image 20231203205107.png]]
最终得到实现漂移所需的$\beta, \phi, r$
beta
![[Pasted image 20231204114225.png]]
Phi
![[Pasted image 20231204114322.png]]
r
![[Pasted image 20231204114252.png]]

最终效果
![[Pasted image 20231204114358.png]]

但问题是上述过程只是数理上的实现，并没有涉及车辆模型和轮胎模型，对此遭遇了较大的困难。。。

![[Pasted image 20231201204513.png]]
