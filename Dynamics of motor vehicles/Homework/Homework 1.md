# Question #1
## a. 
**Question: Describe mechanics of rolling resistance of a pneumatic tire with an appropriate sketch.**
Answer:
- When entering the tire contact mark, the front section of the tire is compressed. When detached from the grounding mark, it returns to its original state. The tread, tires, as well as the ply and sidewall, all participate in this process and generate energy loss. This energy loss creates rolling resistance.
![[HW1 01.png|300]]
- When driving on soft roads, it is also necessary to consider the situation where the tires sink into the road surface to form wheel ruts, and the tire wall is subjected to additional friction.
![[HW1 03.png|300]]

## b. 
**Question: Discuss two factors that have the most influence on rolling resistance of a tire.**
Answer:
- Hysteresis in tire materials due to deflection of carcass (main factor).
	- When the tire is underinflated, its contact area with the road surface often becomes larger. This increased contact area leads to higher deformation and greater hysteresis loss, thereby increasing rolling resistance.
	- Tires with lower rolling resistance often have shallower and more symmetric tread patterns, which reduce the energy lost through tread deformation and hysteresis.
- Friction between tire-road due to sliding, air resistance, etc. (secondary)
	- Compared to square or non aerodynamic designed tires, streamlined and aerodynamic shaped tires often have lower resistance.
	- The tread pattern of a tire can affect air resistance, especially at high speeds. Tires with wider or more aggressive tread patterns often generate more turbulence and increase resistance. On the other hand, tires with smoother, lower profile tread designs can allow air to flow more smoothly around the tire, thereby helping to reduce air resistance.
![[HW1 02.png|300]]
## c. 
**Question：Laboratory tests on a tire (nominal diameter = 70 cm) under a 4000N load show that at a speed of 7 m/s, the normal pressure acts 1 cm ahead of vertical central axis when there is 6% slip. Similarly at 20 m/s, the normal pressure acts 1.8 cm ahead and when there is 10% slip. 
Determine $\alpha_1$ and $\alpha_2$ for the rolling resistance model, expressed as:**
$$f_1 = \alpha_1 + \alpha_2 V^2 \space for \space V \space in \space km/h$$
Answer:
$$
\begin{cases}
V_1 = 7 \times 3.6 = 25.2km/h \\
V_2 = 20 \times 3.6 = 72km/h
\end{cases}
$$
$$\begin{cases}
i_1 = 1- \frac{R_{e1}}{R} = 0.06,\qquad R_{e1} = 0.329m \\
i_2 = 1- \frac{R_{e2}}{R} = 0.1, \qquad R_{e2} = 0.315m
\end{cases}$$
$$\begin{cases}
f_{r1} = s/R_{e1} = 0.01/0.329 = \alpha_1+\alpha_2(25.2)^2\\
f_{r2} = s/R_{e2} = 0.018/0.315 = \alpha_1+\alpha_2(72)^2
\end{cases}$$
Thus:
$$
\begin{cases}
\alpha_1 = 0.01334\\
\alpha_2 = 5.87\times10^{-6}
\end{cases}
$$
---
# Question #2
**Question: A 20 KN vehicle with 4 identical tires is known to support 12 KN on its front axle. For the vehicle, compute and plot the power required to overcome the rolling resistance in the speed range 0 to 100 km/h. (Use rolling resistance model in Question #1).**
$$F_r = f_r \cdot F_z$$
$$P = F_r \cdot V/3.6$$
The rear tire's load is 4KN, which is applicable to the model in Question #1. But the front tire's load is 6KN, so the coefficient of rolling resistance must be smaller compared to the rear wheels. But the specific conditions were not clearly stated, so I'll simply set the rolling resistance coefficient of the front wheel is 0.75 times that of the rear wheel,  and compare it with unprocessed data.
![[Pasted image 20231127201633.png|500]]

Here is the Matlab code:
```Matlab
clear;

% set v from 1 to 100 km/h

v = 0:1:100;

% Set load

Fz_front = 12000;

Fz_rear = 8000;

% The rolling resistance coefficient under the load of 4KN

fr = 0.0267 + 5.87*10^(-6)*(v.^2);

% The rolling resistance coefficient under the load of 6KN

fr_front = 0.75 * fr;

% Data processed

Frp = fr_front * Fz_front + fr * Fz_rear;

% Unprocessed

Fr = (Fz_front + Fz_rear)*fr;

% Calculate power

Pp = Frp.*v/3.6;

P = Fr.*v/3.6;

% plot

plot(v,P);

legend('Unprocessed data')

hold on

plot(v,Pp);

legend('Processed data')
```

# Question #3
**A truck tire (Uniroyal Fleet Master) with vertical load 25kN has longitudinal stiffness of 195 kN/unit slip in traction and 240 kN/unit skid in braking. Using simplified approximate approach; obtain plots for the following on dry concrete (μp=0.74; μs=0.55)and wet concrete (μp=0.51; μs=0.38)pavement.** 

**a) Plot tractive effort vs. slip considering slip up to 30%**

**b) Plot braking effort vs. skid considering skid up to 30%**