
m = 2;       % Masa (kg)
R = 0.5;     % Radio (m)
J = 0.1;     % Momento de inercia (kg·m^2)
beta = 0.05; % Coeficiente de fricción
K = 1;       % Constante de rigidez
k_2 = 0.2;   % Constante adicional
a = m*R^2 + J;        
b = beta;             
c = -(K*R^2 + k_2*R^2/R^2); 
num = [R];           
den = [a, b, c];     
G = tf(num, den);
disp('Función de transferencia:');
disp(G);
step(G);
title('Respuesta al escalón de la función de transferencia');
xlabel('Tiempo (s)');
ylabel('\theta(t)');

% Generar el diagrama de Bode
figure;
bode(G);
grid on;
title('Diagrama de Bode de la función de transferencia');