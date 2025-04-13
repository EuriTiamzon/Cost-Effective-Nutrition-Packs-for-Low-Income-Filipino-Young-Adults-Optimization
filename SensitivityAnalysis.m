%%  SENSITIVITY ANALYSIS
% Define tolerance values and price multipliers
tolerance_values = 0.10:0.05:0.30;
price_factors = [1.10, 1.20, 1.30];
base_prob = prob;


for f = 1:15
    for i = 1:length(price_factors)
        prob = base_prob;
        
        eval(sprintf('c%d_new = c%d * price_factors(i);', f, f));
        
        obj_expr = 'prob.Objective = ';
        for j = 1:15
            if j == f
                obj_expr = [obj_expr, sprintf('c%d_new*x%d + ', j, j)];
            else
                obj_expr = [obj_expr, sprintf('c%d*x%d + ', j, j)];
            end
        end
        obj_expr = [obj_expr(1:end-3), ';'];
        eval(obj_expr);

        try
            [~, fval] = solve(prob);
            costs_price(f, i) = fval;
        catch
            costs_price(f, i) = NaN;
        end
    end
end



figure('Name','Food Price Sensitivity','NumberTitle','off');
food_labels = {'Rice','Bread','MeatLoaf','Sardines','Egg','CornedBeef','LuncheonMeat', ...
               'PowderedMilk','Banana','Mango','IronSupp','ChocoMucho','C2','Piattos','Apple'};

for f = 1:15
    subplot(5,3,f);
    plot([10, 20, 30], costs_price(f,:), '-s', 'LineWidth', 2);
    title(sprintf('%s Price ↑', food_labels{f}));
    xlabel('Price Increase (%)');
    ylabel('Total Cost');
    grid on;
end


%% Shadow Prices
f = [c1; c2; c3; c4; c5; c6; c7; c8; c9; c10; c11; c12; c13; c14; c15];
A = [
    -E1  -E2  -E3  -E4  -E5  -E6  -E7  -E8  -E9  -E10  -E11  -E12  -E13  -E14  -E15;
    -P1  -P2  -P3  -P4  -P5  -P6  -P7  -P8  -P9  -P10  -P11  -P12  -P13  -P14  -P15;
    -D1  -D2  -D3  -D4  -D5  -D6  -D7  -D8  -D9  -D10  -D11  -D12  -D13  -D14  -D15;
    -A1  -A2  -A3  -A4  -A5  -A6  -A7  -A8  -A9  -A10  -A11  -A12  -A13  -A14  -A15;
    -B1  -B2  -B3  -B4  -B5  -B6  -B7  -B8  -B9  -B10  -B11  -B12  -B13  -B14  -B15;
    -C1  -C2  -C3  -C4  -C5  -C6  -C7  -C8  -C9  -C10  -C11  -C12  -C13  -C14  -C15;
    -I1  -I2  -I3  -I4  -I5  -I6  -I7  -I8  -I9  -I10  -I11  -I12  -I13  -I14  -I15;
    -Z1  -Z2  -Z3  -Z4  -Z5  -Z6  -Z7  -Z8  -Z9  -Z10  -Z11  -Z12  -Z13  -Z14  -Z15;
    -Ca1 -Ca2 -Ca3 -Ca4 -Ca5 -Ca6 -Ca7 -Ca8 -Ca9 -Ca10 -Ca11 -Ca12 -Ca13 -Ca14 -Ca15
];
b = -[E_week; P_week; D_week; A_week; B_week; C_week; I_week; Z_week; Ca_week];
lb = zeros(15,1);
ub = [Inf; Inf; 3; 3; 1; 3; 3; Inf; 2; Inf; Inf; 1; 1; 1; 2];

options = optimoptions('linprog','Display','off','Algorithm','dual-simplex');
[x, fval, exitflag, output, lambda] = linprog(f, A, b, [], [], lb, ub, options);

nutrients = {'Energy','Protein','Fiber','Vit A','Vit B6','Vit C','Iron','Zinc','Calcium'};
fprintf('\n--- Shadow Prices (Dual Values) ---\n');
for i = 1:length(nutrients)
    fprintf('%-10s: %.4f PHP per unit increase\n', nutrients{i}, lambda.ineqlin(i));
end
