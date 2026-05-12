clc;
clear;

% Datos
x = [1.5 1.9 2.1 2.4 2.6 3.1];
y = [1.0628 1.3961 1.5432 1.7349 1.8423 2.0397];
% Punto donde evaluar
x0 = 2.25;
% Polinomio interpolante
% Coeficientes del polinomio
p = polyfit(x,y,length(x)-1);s
disp('Polinomio interpolante:')
disp(p)
% Primera derivada
% Derivada del polinomio
dp = polyder(p);
% Evaluar primera derivada
fp = polyval(dp,x0);
% Segunda derivada
ddp = polyder(dp);
% Evaluar segunda derivada
fpp = polyval(ddp,x0);
% Resultados
fprintf('\nRESULTADOS:\n');
fprintf('f''(2.25)  = %.10f\n',fp);
fprintf('f''''(2.25) = %.10f\n',fpp);