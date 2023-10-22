Performance Measures：
- Ride (Tire)
- Handling/Turning(Fy,Fx)
- Traction/Braking(Fx)
- Road holding(Tire,surface)
- Yaw stability
- Roll stability
- Load Transfer

![[TireMechanic01.png]]

Except for gravitational and aerodynamic forces,all other forces affecting performance measures and thus the vehicle dynamics are generated at the tire-ground interface.

![[TireMechanic02.png]]

# Primary functions of tires
- support vehicle weight
- Cushion vehicle over surface irregularities
- Privide sufficient traction for driving

# Tire Constraction
- A pneumatic tire is a toroid-shaped flexible structure filled with compressed air;
- The most important structural element of the tire is the carcass which is made up a number of layers of low modulus rubber compounds containing flexible cords of high modulus of dlasticity(Nylon);
- In road vehicles, majority of vehicle load is supported by the air column, while the carcass supprts majority of load in off-road vehicles;

85% load is supported by air.

When the vehicle is driving on soft road(like soil), high tire pressure will make the tire sink into the road.

![[TireMechanic03.png]]

![[TireMechanic04.png]]
![[TireMechanic05.png]]

To increase rigidity,use Nylon/steel;

Crown angle: Angle between the cords and circumferential center line of tire plays a significant role in ride and cornering properties of tire.
![[TireMechanic06.png]]
Radial: Vertically-soft.Longitudinally/laterally-stiff

## Bias-Ply tires
- Crown angle:25 to 40 degrees.
- Reinforcing cord extend diagonally from bead to bead, and run in opposite directions in successive plies. The cords in successive plies thus overlap in a diamond-shaped pattern.
- Diamon-shaped elements flex and elongate during rolling causing a wiping motion.
- Higher rolling resistance and rapid tire wear.
- Belts with lower crown angle --> high stiffness
- Used in Motorcycles,agricultural construction and military vehicles.
- Two plies(light load) to twenty plies(heavy load).

Low crown angle:
- Good cornering
- Harsh riding
- Energy loss.

## Radial-Ply tires
- Crown angle：90 degrees
- Reinforcing cords in carcass plies and disposed in a radial direction.
- Soft side wall: Good ride but relatively poor cornering.
- Stiffened by a belt of several plies with high modulus fiber or steel cords at a low crown angle in the order of 20 degrees, which improves cornering property.
- Flexing of carcass during rolling involves relatively small motion of cords in the belts.
- Lower rolling resistance;reduces wear.
- More uniform ground pressure; lower noise
- Power dissipated may ve as low as 60% of that of bias-ply tire.

High(90 degrees) crown angle:
Belts with low crown improved
- Cornering
- Good ride

# Tire Forces and Moments
- Tires are complex composite structures involvinng various rubber compounds, plies, bonding layers, etc.
- Directional force generation still depends on friction forces at the tire-ground interface.
- Lateral forces mainly depend on slip angle and load, and to a lesser extent on camber.
- Longitudinal forces mainly depend on longitudinal slip and vertical load(Sheer).

## Tire Deflection
Define a deformation function $f(x,\phi)$ to represent the radius at an angle $\phi(-\theta < \phi < \theta)$
![[TireMechanic07.png]]
$$
\begin{cases}
cos\phi = \frac{R^*}{f(x,\phi)}\\
cos\theta = \frac{R^*}{R}
\end{cases}
\qquad f(x,\phi) = R\frac{cos\theta}{cos\phi}
$$
Therefore, the displacement function , $\delta_r$, is
$$\delta_r = R-f(x,\phi)=R(1-\frac{cos\theta}{cos\phi})\qquad -\theta<\phi<\theta$$
Contact patch length = $2Rcos\theta$
Maximum deflection = $R-Rcos\theta=R_e$

![[TireMechanic08.png]]

## Rolling resistance
- Hysteresis in tire materials due to deflection of carcass (main factor).
	 ![[TireMechanic09.png]]
- Friction between tire-road due to sliding, air resistance, etc. (secondary)
- Performance measure: coefficient of rolling resistance.

	An Example of energy loss (Truck tire)
	- Hysteresis (tread region including belts): ~73%
	- Sidewall ~13%
	- Shoulder region: ~ 12%
	- Beads: ~ 2%

Ratio of rolling resistance to the normal load; dimensionless.
Rolling Resistance Coefficient: --> $f_r = F_r/F_z$

![[TireMechanic10.png]]
strain = $\epsilon$.
On the other side: extension stretching.
The maximum contact pressure will not in the middle of the tire because of the compression, but near to it (ahead).

Rolling resistance moments: $s\times F_z = F_r\times R_e$
Rolling resistance coefficient: $f_r = F_r/F_z=s/R_e$, related to $V^2$.
Bias-ply is very sensitive to the speed.

## Tire slip and Effective Wheel radius
Under application of a driving torque, tire tread in front and within the contact patch is compressed along with the associated shear deformation of tire sidewall. Thus the distance travelled by tire will differ from that of a free rolling tire. This process is known as tire longitudinal slip i:
$$
\begin{aligned}
V &= R_e\omega<R\omega\\
i &= (\frac{R\omega-V}{R\omega})\times 100\% = (1-\frac{R_e}{R})\times 100\%
\end{aligned}
$$

## Measurement of Rolling Resistance(Laboratory Measurement)
Under different speed ,measure the shift and calculate fr. Thus we can fitting to the:$$f_r =\alpha_1+\alpha_2V^2$$
To avoid the effect of aerodynamic Force, use a track to drag the car to measure Fr.
![[TireMechanic11.png]]
## Factors Affecting Rolling resistance
Tire construction & material; Inflation pressure; Speed; Road surface condition; Temperature, ...
![[TireMechanic12.png]]![[TireMechanic13.png]]
Lager contact area --> Less pressure.
![[TireMechanic14.png]]
![[TireMechanic15.png]]

# Non-Pneumatic Wheels
Substantially lower rolling resistance, ...


%%It was mentioned that the camber angle will have an impact on rolling resistance. May I ask if the toe angle also affects rolling resistance?%%
# Traction/Braking Force & Longitudinal slip
Under application of a driving torque, tire tread in front and within the contact patch is compressed along with the associated shear deformation of tire sidewall. Thus the distance travelled by tire will differ from that a free rolling tire. This process is known as tire longitudinal slip i:
$$\begin{aligned}
V &= R_e\omega < R\omega\\
i &=(\frac{R\omega-V}{R\omega}) \times 100\% = (1-\frac{R_e}{R}) \times 100\%
\end{aligned}$$
$R\omega$ is theoretical speed. $V$ is actual speed. $\epsilon$ --> $i$.

Traction coefficient

$$
\begin{align}
\mu_t &= (\frac{F_x}{F_z})\\
i &=(\frac{R\omega-V}{R\omega}) \times 100\% = (1-\frac{R_e}{R}) \times 100\%
\end{align}
$$
![[TireMechanic16.png]]
# Standing Wave
A standing wave is formed at speeds above the threshold speed, which causes substantially higher energy loss and heat buildup leading to tire failure.
$$
V_{th} = \sqrt{\frac{F_t}{\rho_t}}=\mu_p\quad at\quad Max, \qquad V>V_{th}
$$

$F_t$ = Circumferential 
$\rho_t$ = Density of tread material per unit area

# Longitudinal force slip modeling
Juliens's Elastic Band model

Extra Contents on PPT, worth looking

# Longitudinal force-slip relationship
$F_X$ = force developed due to shear( pure adhension) + force developed during sliding.

**Partial sliding**: $$F_x = F_{xa} + F_{xs}$$
## 1. Total adhesion (No sliding)sliding
For $i \le i_c$ --> $F_x = C_i i$
$C_i$ is longitudinal stiffness of tire, defined as slope of force-slip curve near zero slip and is: 
$$C_i = \frac{\partial F_x}{\partial i}\big{|}_{i=0} = tan\theta$$
$$i_c = \frac{\mu_pW}{2C_i}$$
For $i =i_c,F_x = F_{xc}$ --> $F_{xc} = C_ii_c = \frac{\mu_pW}{2}$

## 2. Adhesion + sliding
For$i > i_C$ --> $F_x = F_{xs}+F_{xa}=\mu_pW(1-\frac{\mu_pW}{4C_i i_c})$
$F_x = heas + [\mu_pW, engine\space power]$

# Traction/Braking Force & longitudinal slip
- Longitudinal skid i: ($V>R\omega$)
$$i_s = (1-\frac{R_\omega}{V})\times 100\%$$
- Longitudinal property of tire in braking is very similar to that in traction.
$$|i| = |{\frac{i_s}{1-i_s}}|$$
- For no sliding: $F_x = C_i i$
$$F_x = C_si_s/(1-i_s)\qquad C_s=\frac{\partial F_x}{\partial i_s}|_{i_s = 0}$$
- Critical skid, $i_{sc}$
$$i_{sc}=\frac{\mu_pW}{2C_s+\mu_pW}$$
$$F_{xc}=\frac{C_si_{sc}}{1-i_{sc}}=\frac{\mu_pW}{2}$$
- sliding, $i_s>i_{sc}$
$$F_x=\mu_pW[1-\frac{\mu_pW(1-i_s)}{4C_si_s}]$$

If front wheel lock-up --> Loss of steering control
If rear wheel lock-up --> spin

# Factors Affecting Traction/braking
- Inflation pressure
- Road roughness
- Temperature
- Water depth
- Tread design

# Hydroplaning of tires
Braking on a flooded surface causes buildup op hydrodynamic pressure on the tire.

Magnitude of lifyt component of hydrodynamic force is related to contact area A, fluid density $\rho$ and speed:
$$F_h = \rho A V^2$$
Hydroplaning:$$F_h \geq F_z$$
Hydroplaning speed:$$V_p \rightarrow\sqrt{\frac{W}{\rho A}}\approx 6.34\sqrt{p}, p \space in \space psi$$
# Cornering Properties of tires

![[TireMechanic17.png]]
![[TireMechanic18.png]]

- A tire rolls in a direction coinciding with the wheel plane in absence of side disturbances.
- If a side force $F_s$ is applied, tire deformation yields alateral force at the contact patch, and the tire moves along a path at angle $\alpha$ with the wheel plane.
- The angle $\alpha$ is referred to as the side-slip or slip angle; lateral force is known as the cornering force.
- The lateral tire deformation also conreibutes to a moment, denoted as self-aligning moment, which attempts to realign the wheel in the direction of rolling.
![[TireMechanic19.png]]
# Self-Aligning Moment 
- Lateral tire developed by the tire is not collinear with side force $F_s$ applied at the wheel center. It is normally behind $F_s$. The distance between $F_s$ and $F_{y\alpha}$ is denoted as pneumatic trail $t_p$. These two forces contribute to a moment $M_z$, denoted as self-aligning moment, which attempts to realign the wheel in the direction of rolling. 

# Cornering Force vs Side-Slip Angle
![[TireMechanic20.png]]

- Cornering stiffness: (the slope near zero slip angle) $$C_{\alpha}=\frac{\partial F_{y\alpha}}{\partial\alpha}|_{\alpha = 0}$$
- Cornering force (linear range)
Valid only prior to **Tire Saturation**:
$$F_{y\alpha} = C_{\alpha}\alpha$$
$$F_{y\alpha}\leq\frac{\mu_pF_z}{2}$$
- Cornering coefficient (or cornering stiffness coefficient): cornering stiffness per unit normal load describes the effect of normal load on tire cornering capacity
$$\eta = \frac{C_\alpha}{F_z}$$
$$F_x = F_{xs}+F_{xa}=\mu_pW(1-\frac{\mu_pW}{4C_i i })$$
$$F_{y\alpha}=\mu_pF_Z(1-\frac{\mu_pF_z}{4C\alpha\alpha});F_{y\alpha}>\frac{\mu_pF_z}{2}$$
# Wheel Camber and Camber Force
![[TireMechanic21.png]]

# Factors Affecting Cornering Property 
Nomal load, tire type and inflation pressure
- Cornering coefficient decreases with increasing normal load
- Higher inflation pressure leads to a larger cornering coefficient
![[TireMechanic22.png]]

## Lateral load shift - Vehicle roll motion
- During turning the normal load on inside tires $F_{zi}$ decreasesand that on outside tires $F_{zo}$ increases. The resulting cornering force
$$F_{y\alpha i}+F_{y\alpha o}<2F_{y\alpha}$$
## Braking/Traction Forces
![[TireMechanic23.png]]
- Friction ellipse concept
- Applying braking or traction tends to reduce the cornering capacity
