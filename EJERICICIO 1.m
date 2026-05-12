clc;
clear;
% Funcion
f = @(x) exp(x);
% Punto de evaluacion
x = 2;
% Valores de h
h_values = [0.5 0.1 0.05 0.01 0.005 0.001];
% Valor exacto
exacto = exp(2);
fprintf('VALOR EXACTO = %.15f\n\n', exacto);
%  TABLA CON 6 DIGITOS
fprintf('PRECISION 6 DIGITOS\n');
fprintf('\n');
fprintf(' h\t\tf''(2)\t\t\tError\t\t\tf''''(2)\t\tError\n');
for h = h_values
    % Aproximacion de primera derivada
    fp = (f(x+h) - f(x-h)) / (2*h);
    % Aproximacion de segunda derivada
    fpp = (f(x+h) - 2*f(x) + f(x-h)) / (h^2);
    % Simular precision de 6 digitos
    fp6  = vpa(fp,6);
    fpp6 = vpa(fpp,6);
    % Error absoluto
    err1 = abs(double(fp6) - exacto);
    err2 = abs(double(fpp6) - exacto);

    fprintf(' %.3f\t\t%.6f\t\t%.6e\t%.6f\t\t%.6e\n',...
        h,double(fp6),err1,double(fpp6),err2);
end
%  TABLA CON 8 DIGITOS
fprintf('\n\nPRECISION 8 DIGITOS \n');
fprintf('\n');
fprintf(' h\t\tf''(2)\t\t\tError\t\t\tf''''(2)\t\tError\n');
for h = h_values
    % Aproximacion
    fp = (f(x+h) - f(x-h)) / (2*h);
    fpp = (f(x+h) - 2*f(x) + f(x-h)) / (h^2);
    % Simular precision de 8 digitos
    fp8  = vpa(fp,8);
    fpp8 = vpa(fpp,8);
    % Error absoluto
    err1 = abs(double(fp8) - exacto);
    err2 = abs(double(fpp8) - exacto);
    fprintf(' %.3f\t\t%.8f\t%.8e\t%.8f\t%.8e\n',...
        h,double(fp8),err1,double(fpp8),err2);
end