% Definición de los parámetros
m1 = 5;
m2 = 2;
m3 = 3;
b = 0.3;
s = tf('s');
% Numerador y denominador
numerador = (m2 - m3) * s;
denominador = ((m1 + m2 + m3) * s^2 + b * s) * ((m2 + m3) * s + b) - (m2 - m3)^2 * s^3;
sistemaTF = numerador / denominador;
disp('num'),disp(numerador);
disp('den'),disp(denominador);
figure;
step(sistemaTF);
title('Respuesta al Escalón de la Función de Transferencia');
xlabel('Tiempo (s)');
ylabel('Amplitud');
sistemaSS = ss(sistemaTF);
%disp('Representación en Espacio de Estados:');
%disp(sistemaSS);
