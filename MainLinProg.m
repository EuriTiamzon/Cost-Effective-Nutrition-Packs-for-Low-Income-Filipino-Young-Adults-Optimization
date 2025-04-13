% Nutrition Pack Requirements (Daily)
E = 2145;    % Energy (kcal)
P = 66.5;    % Protein (g)
D = 22.5;    % Dietary Fiber (g)
A = 650;     % Vitamin A (mcg)
B = 1.4;     % Vitamin B6 (mg)
C = 65;      % Vitamin C (mg)
I = 20;      % Iron (mg)
Z = 5.55;    % Zinc (mg)
Ca = 750;    % Calcium (mg)

% Define the tolerance (5% above or below)
tol = 0.001;  

% Multiply by 7 for a weekly requirement
E_week = E * 7;
P_week = P * 7;
D_week = D * 7;
A_week = A * 7;
B_week = B * 7;
C_week = C * 7;
I_week = I * 7;
Z_week = Z * 7;
Ca_week = Ca * 7;



%Food Items Declaration


% Food Item 1: Rice, 1Kg
x1 = optimvar('x1','LowerBound', 0, 'UpperBound', Inf); 
c1 = 48.34;
E1 = 3600;  % Higher Energy
P1 = 47;   
D1 = 5;    
A1 = 0;   
B1 = 0.6;  
C1 = 0;    
I1 = 3.2;    
Z1 = 4.1;    
Ca1 = 110;  

% Food Item 2: Bread, 2 slices (12 slices in 1 loaf)
x2 = optimvar('x2', 'LowerBound', 0, 'UpperBound', Inf); 
c2 = 80;
E2 = 47*6; %nutritional value is equivalent to 2 slices, thus multiplied by 6 to complete 1 loaf.  
P2 = 6*6;   
D2 = 1*6;    
A2 = 245*6;  
B2 = 0*6;  
C2 = 2.8*6;    
I2 = 1.2*6;   
Z2 = 0*6;    
Ca2 = 105*6;  

% Food Item 3: Meat Loaf, 3 servings per can
x3 = optimvar('x3','LowerBound', 0, 'UpperBound', 3); 
c3 = 21.75;
E3 = 60*3;  
P3 = 2*3;    
D3 = 0;   
A3 = 0;  
B3 = 0;  
C3 = 0;   
I3 = 0;    
Z3 = 0;    
Ca3 = 0;  

% Food Item 4: Sardines, 3 servings per can
x4 = optimvar('x4', 'LowerBound', 0, 'UpperBound', 3); 
c4 = 19.75;
E4 = 50*3;  
P4 = 6*3;    
D4 = 0;   
A4 = 0;  
B4 = 0;  
C4 = 0;   
I4 = 0.9*3;    
Z4 = 1.1*3;    
Ca4 = 60*3;  

% Food Item 5: egg, 1 dozen 
x5 = optimvar('x5', 'LowerBound', 0, 'UpperBound', 1); 
c5 = 96.84;
E5 = 60*12; %values equivalent to 1 egg so it must be multiplied by 12  
P5 = 6*12;    
D5 = 0;   
A5 = 81*12;  
B5 = 0.075*12;  
C5 = 0;   
I5 = 0.3*12;    
Z5 = 0.6*12;    
Ca5 = 20*12;  

% Food Item 6: Corned Beef, 3 servings per can
x6 = optimvar('x6', 'LowerBound', 0, 'UpperBound', 3); 
c6 = 35.75;
E6 = 193*3;  
P6 = 22*3;    
D6 = 1*3;   
A6 = 0;  
B6 = 0;  
C6 = 0;   
I6 = 3.6*3;    
Z6 = 2.28*3;    
Ca6 = 0;  

% Food Item 7: luncheon meat, 3 servings per can
x7 = optimvar('x7', 'LowerBound', 0, 'UpperBound', 3); 
c7 = 39;
E7 = 120*3;  
P7 = 5*3;    
D7 = 2*3;   
A7 = 0;  
B7 = 0;  
C7 = 0;   
I7 = 0;    
Z7 = 0;    
Ca7 = 0;  

% Food Item 8: Powdered Milk, 135g (4 servings per pack)
x8 = optimvar('x8', 'LowerBound', 1, 'UpperBound', Inf); 
c8 = 50;
E8 = 153*4;  
P8 = 5*4;    
D8 = 0;   
A8 = 91*4;  
B8 = 0.6*4;  
C8 = 45*4;   
I8 = 3.9*4;    
Z8 = 2.4*4;    
Ca8 = 254*4;  

% Food Item 9: Banana, 1kg 7-10 pcs 
x9 = optimvar('x9','LowerBound', 0, 'UpperBound', 2); 
c9 = 105.23;
E9 = 110*7;  
P9 = 1.3*7;    
D9 = 3*7;   
A9 = 4*7;  
B9 = 0.43*7;  
C9 = 12*7;   
I9 = 0.3*7;    
Z9 = 0.2*7;    
Ca9 = 6*7;  

% Food Item 10: Mango, 1Kg3-4
x10 = optimvar('x10','LowerBound', 1, 'UpperBound', Inf); 
c10= 152.39;
E10 = 100*3;  
P10 = 1*3;    
D10 = 2*3;   
A10 = 80*3;  
B10 = 0.18*3;  
C10 = 38*3;   
I10 = 0.25*3;    
Z10 = 0.25*3;    
Ca10 = 16*3;  

% Food Item 11: Ferglobin FA Capsule
x11 = optimvar('x11', 'LowerBound', 1, 'UpperBound', Inf); 
c11= 3.75;
E11 = 0;  
P11 = 0;    
D11 = 0;   
A11 = 0;  
B11 = 0;  
C11 = 0;   
I11 = 60;    
Z11 = 0;    
Ca11 = 0;  

%Choco Mucho 1 bar
x12 = optimvar('x12', 'LowerBound', 1, 'UpperBound', 1); 
c12= 10;
E12 = 180;  % Calories
P12 = 3;    % Protein (g)
D12 = 2;    % Dietary Fiber (g)
A12 = 0;    % Vitamin A (µg)
B12 = 0;    % Vitamin B (mg)
C12 = 0;    % Vitamin C (mg)
I12 = 3;    % Iron (mg)
Z12 = 0;    % Zinc (mg)
Ca12 = 1;   % Calcium (mg)

%C2 na yellow 500ml
x13 = optimvar('x13', 'LowerBound', 1, 'UpperBound', 1); 
c13= 30;
E13 = 250;   % Calories (kcal)
P13 = 0;     % Protein (g)
D13 = 0;     % Dietary Fiber (g)
A13 = 0;     % Vitamin A (µg)
B13 = 0;     % Vitamin B (mg)
C13 = 0;     % Vitamin C (mg)
I13 = 0;     % Iron (mg)
Z13 = 0;     % Zinc (mg)
Ca13 = 0;    % Calcium (mg)


%%Piattos 40g
x14 = optimvar('x14', 'LowerBound', 1, 'UpperBound', 1); 
c14= 20;
E14 = 150;   % Calories (kcal)
P14 = 1;     % Protein (g)
D14 = 1;     % Dietary Fiber (g)
A14 = 0;     % Vitamin A (µg)
B14 = 0;     % Vitamin B (mg)
C14 = 0;     % Vitamin C (mg)
I14 = 0;     % Iron (mg)
Z14 = 0;     % Zinc (mg)
Ca14 = 0;    % Calcium (mg)

%%Apple
x15 = optimvar('x15', 'LowerBound', 1, 'UpperBound', 2); 
c15= 134;
E15 = 95*6;    % Calories (kcal)
P15 = 0.5*6;   % Protein (g)
D15 = 4.4*6;   % Dietary Fiber (g)
A15 = 3*6;     % Vitamin A (µg)
B15 = 0.05*6;  % Vitamin B6 (mg)
C15 = 8.4*6;   % Vitamin C (mg)
I15 = 0.22*6;  % Iron (mg)
Z15 = 0.07*6;  % Zinc (mg)
Ca15 = 11*6;   % Calcium (mg)


% Define the optimization problem
prob = optimproblem('Objective', c1*x1 + c2*x2 + c3*x3 + c4*x4 + c5*x5 + c6*x6 + c7*x7 + c8*x8 + c9*x9 + c10*x10 + c11*x11 + c12*x12 + c13*x13 + c14*x14 + c15*c15, 'ObjectiveSense', 'min');


% Constraints for each nutrient (Adjusted for weekly Requirement)
prob.Constraints.c1  = E1*x1 + E2*x2 + E3*x3 + E4*x4 + E5*x5 + E6*x6 + E7*x7 + E8*x8 + E9*x9 + E10*x10 + E11*x11 + E12*x12 + E13*x13 + E14*x14 + E15*x15 >= (1 - tol) * E_week;
prob.Constraints.c2  = P1*x1 + P2*x2 + P3*x3 + P4*x4 + P5*x5 + P6*x6 + P7*x7 + P8*x8 + P9*x9 + P10*x10 + P11*x11 + P12*x12 + P13*x13 + P14*x14 + P15*x15>= (1 - tol) * P_week;
prob.Constraints.c3  = D1*x1 + D2*x2 + D3*x3 + D4*x4 + D5*x5 + D6*x6 + D7*x7 + D8*x8 + D9*x9 + D10*x10 + D11*x11 + D12*x12 + D13*x13 + D14*x14 + D15*x15>= (1 - tol) * D_week;
prob.Constraints.c4  = A1*x1 + A2*x2 + A3*x3 + A4*x4 + A5*x5 + A6*x6 + A7*x7 + A8*x8 + A9*x9 + A10*x10 + A11*x11 + A12*x12 + A13*x13 + A14*x14 + A15*x15>= (1 - tol) * A_week;
prob.Constraints.c5  = B1*x1 + B2*x2 + B3*x3 + B4*x4 + B5*x5 + B6*x6 + B7*x7 + B8*x8 + B9*x9 + B10*x10 + B11*x11 + B12*x12 + B13*x13 + B14*x14 + B15*x15>= (1 - tol) * B_week;
prob.Constraints.c6 = C1*x1 + C2*x2 + C3*x3 + C4*x4 + C5*x5 + C6*x6 + C7*x7 + C8*x8 + C9*x9 + C10*x10 + C11*x11 + C12*x12 + C13*x13 + C14*x14 + C15*x15>= (1 - tol) * C_week;
prob.Constraints.c7 = I1*x1 + I2*x2 + I3*x3 + I4*x4 + I5*x5 + I6*x6 + I7*x7 + I8*x8 + I9*x9 + I10*x10 + I11*x11 + I12*x12 + I13*x13 + I14*x14 + I15*x15>= (1 - tol) * I_week;
prob.Constraints.c8 = Z1*x1 + Z2*x2 + Z3*x3 + Z4*x4 + Z5*x5 + Z6*x6 + Z7*x7 + Z8*x8 + Z9*x9 + Z10*x10 + Z11*x11 + Z12*x12 + Z13*x13 + Z14*x14 + Z15*x15>= (1 - tol) * Z_week;
prob.Constraints.c9 = Z1*x1 + Z2*x2 + Z3*x3 + Z4*x4 + Z5*x5 + Z6*x6 + Z7*x7 + Z8*x8 + Z9*x9 + Z10*x10 + Z11*x11 + Z12*x12 + Z13*x13 + Z14*x14 + Z15*x15<= 40;
prob.Constraints.c10 = Ca1*x1 + Ca2*x2 + Ca3*x3 + Ca4*x4 + Ca5*x5 + Ca6*x6 + Ca7*x7 + Ca8*x8 + Ca9*x9 + Ca10*x10 + Ca11*x11 + Ca12*x12 + Ca13*x13 + Ca14*x14 + Ca15*x15>= (1 - tol) * Ca_week;
prob.Constraints.c11 = c12*x12 + c13*x13 + c14*x14 <= 0.20*(c1*x1 + c2*x2 + c3*x3 + c4*x4 + c5*x5 + c6*x6 + c7*x7 + c8*x8 + c9*x9 + c10*x10 + c11*x11 + c12*x12 + c13*x13 + c14*x14 + c15*c15);

[sol, fval] = solve(prob);

sol

Cal = E1*sol.x1 + E2*sol.x2 + E3*sol.x3 + E4*sol.x4 + E5*sol.x5 + ...
     E6*sol.x6 + E7*sol.x7 + E8*sol.x8 + E9*sol.x9 + E10*sol.x10 + ...
     E11*sol.x11 + E12*sol.x12 + E13*sol.x13 + E14*sol.x14 + E15*sol.x15

Protein = P1*sol.x1 + P2*sol.x2 + P3*sol.x3 + P4*sol.x4 + P5*sol.x5 + ...
         P6*sol.x6 + P7*sol.x7 + P8*sol.x8 + P9*sol.x9 + P10*sol.x10 + ...
         P11*sol.x11 + P12*sol.x12 + P13*sol.x13 + P14*sol.x14 + P15*sol.x15

Dietary_Fiber = D1*sol.x1 + D2*sol.x2 + D3*sol.x3 + D4*sol.x4 + D5*sol.x5 + ...
               D6*sol.x6 + D7*sol.x7 + D8*sol.x8 + D9*sol.x9 + D10*sol.x10 + ...
               D11*sol.x11 + D12*sol.x12 + D13*sol.x13 + D14*sol.x14 + D15*sol.x15

VitA = A1*sol.x1 + A2*sol.x2 + A3*sol.x3 + A4*sol.x4 + A5*sol.x5 + ...
      A6*sol.x6 + A7*sol.x7 + A8*sol.x8 + A9*sol.x9 + A10*sol.x10 + ...
      A11*sol.x11 + A12*sol.x12 + A13*sol.x13 + A14*sol.x14 + A15*sol.x15

VitB = B1*sol.x1 + B2*sol.x2 + B3*sol.x3 + B4*sol.x4 + B5*sol.x5 + ...
      B6*sol.x6 + B7*sol.x7 + B8*sol.x8 + B9*sol.x9 + B10*sol.x10 + ...
      B11*sol.x11 + B12*sol.x12 + B13*sol.x13 + B14*sol.x14 + B15*sol.x15

VitC = C1*sol.x1 + C2*sol.x2 + C3*sol.x3 + C4*sol.x4 + C5*sol.x5 + ...
      C6*sol.x6 + C7*sol.x7 + C8*sol.x8 + C9*sol.x9 + C10*sol.x10 + ...
      C11*sol.x11 + C12*sol.x12 + C13*sol.x13 + C14*sol.x14 + C15*sol.x15

Iron = I1*sol.x1 + I2*sol.x2 + I3*sol.x3 + I4*sol.x4 + I5*sol.x5 + ...
      I6*sol.x6 + I7*sol.x7 + I8*sol.x8 + I9*sol.x9 + I10*sol.x10 + ...
      I11*sol.x11 + I12*sol.x12 + I13*sol.x13 + I14*sol.x14 + I15*sol.x15

Zinc = Z1*sol.x1 + Z2*sol.x2 + Z3*sol.x3 + Z4*sol.x4 + Z5*sol.x5 + ...
      Z6*sol.x6 + Z7*sol.x7 + Z8*sol.x8 + Z9*sol.x9 + Z10*sol.x10 + ...
      Z11*sol.x11 + Z12*sol.x12 + Z13*sol.x13 + Z14*sol.x14 + Z15*sol.x15

Calc = Ca1*sol.x1 + Ca2*sol.x2 + Ca3*sol.x3 + Ca4*sol.x4 + Ca5*sol.x5 + ...
      Ca6*sol.x6 + Ca7*sol.x7 + Ca8*sol.x8 + Ca9*sol.x9 + Ca10*sol.x10 + ...
      Ca11*sol.x11 + Ca12*sol.x12 + Ca13*sol.x13 + Ca14*sol.x14 + Ca15*sol.x15


Rice = ceil(sol.x1)
Bread = ceil(sol.x2)
MeatLoaf = ceil(sol.x3)
Sardines = ceil(sol.x4)
Egg = ceil(sol.x5)
CornedBeef = ceil(sol.x6)
LuncheonMeat = ceil(sol.x7)
PowderedMilk = ceil(sol.x8)
Banana = ceil(sol.x9)
Mango = ceil(sol.x10)
IronSupplement = ceil(sol.x11)
ChocoMucho = ceil(sol.x12)
C2nayellow = ceil(sol.x13)
Piattos = ceil(sol.x14)
Apple = ceil(sol.x15)

Cal = E1*Rice + E2*Bread + E3*MeatLoaf + E4*Sardines + E5*Egg + ...  
      E6*CornedBeef + E7*LuncheonMeat + E8*PowderedMilk + E9*Banana + ...  
      E10*Mango + E11*IronSupplement + E12*ChocoMucho + E13*C2nayellow + ...  
      E14*Piattos + E15*Apple;  

Protein = P1*Rice + P2*Bread + P3*MeatLoaf + P4*Sardines + P5*Egg + ...  
          P6*CornedBeef + P7*LuncheonMeat + P8*PowderedMilk + P9*Banana + ...  
          P10*Mango + P11*IronSupplement + P12*ChocoMucho + P13*C2nayellow + ...  
          P14*Piattos + P15*Apple;  

Dietary_Fiber = D1*Rice + D2*Bread + D3*MeatLoaf + D4*Sardines + D5*Egg + ...  
                D6*CornedBeef + D7*LuncheonMeat + D8*PowderedMilk + D9*Banana + ...  
                D10*Mango + D11*IronSupplement + D12*ChocoMucho + D13*C2nayellow + ...  
                D14*Piattos + D15*Apple;  

VitA = A1*Rice + A2*Bread + A3*MeatLoaf + A4*Sardines + A5*Egg + ...  
       A6*CornedBeef + A7*LuncheonMeat + A8*PowderedMilk + A9*Banana + ...  
       A10*Mango + A11*IronSupplement + A12*ChocoMucho + A13*C2nayellow + ...  
       A14*Piattos + A15*Apple;  

VitB = B1*Rice + B2*Bread + B3*MeatLoaf + B4*Sardines + B5*Egg + ...  
       B6*CornedBeef + B7*LuncheonMeat + B8*PowderedMilk + B9*Banana + ...  
       B10*Mango + B11*IronSupplement + B12*ChocoMucho + B13*C2nayellow + ...  
       B14*Piattos + B15*Apple;  

VitC = C1*Rice + C2*Bread + C3*MeatLoaf + C4*Sardines + C5*Egg + ...  
       C6*CornedBeef + C7*LuncheonMeat + C8*PowderedMilk + C9*Banana + ...  
       C10*Mango + C11*IronSupplement + C12*ChocoMucho + C13*C2nayellow + ...  
       C14*Piattos + C15*Apple;  

Iron = I1*Rice + I2*Bread + I3*MeatLoaf + I4*Sardines + I5*Egg + ...  
       I6*CornedBeef + I7*LuncheonMeat + I8*PowderedMilk + I9*Banana + ...  
       I10*Mango + I11*IronSupplement + I12*ChocoMucho + I13*C2nayellow + ...  
       I14*Piattos + I15*Apple;  

Zinc = Z1*Rice + Z2*Bread + Z3*MeatLoaf + Z4*Sardines + Z5*Egg + ...  
       Z6*CornedBeef + Z7*LuncheonMeat + Z8*PowderedMilk + Z9*Banana + ...  
       Z10*Mango + Z11*IronSupplement + Z12*ChocoMucho + Z13*C2nayellow + ...  
       Z14*Piattos + Z15*Apple;  

Calcium = Ca1*Rice + Ca2*Bread + Ca3*MeatLoaf + Ca4*Sardines + Ca5*Egg + ...  
          Ca6*CornedBeef + Ca7*LuncheonMeat + Ca8*PowderedMilk + Ca9*Banana + ...  
          Ca10*Mango + Ca11*IronSupplement + Ca12*ChocoMucho + Ca13*C2nayellow + ...  
          Ca14*Piattos + Ca15*Apple;

TotalPrice = c1*Rice + c2*Bread + c3*MeatLoaf + c4*Sardines + c5*Egg +...
c6*CornedBeef + c7*LuncheonMeat + c8*PowderedMilk + c9*Banana + ...
c10*Mango + c11*IronSupplement + c12*ChocoMucho + c13*C2nayellow + ...
c14*Piattos + c15*Apple
