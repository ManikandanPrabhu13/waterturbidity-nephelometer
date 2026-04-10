clc; clear;

data = load('turbb.txt');

figure;
plot(data, 'LineWidth', 2);
xlabel('Sample Number');
ylabel('ADC Value');
title('Turbidity Analysis');
grid on;

for i = 1:length(data)
    val = data(i);

    if val < 30
        status = "Clear Water";
    elseif val < 60
        status = "Medium Turbidity";
    else
        status = "High Turbidity";
    end

    disp("Value: " + val + " --> " + status);
end
