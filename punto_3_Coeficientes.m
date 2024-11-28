
A = 2;
B = 6;
C = 4;


s = tf('s'); %para tomar s como en Laplace

G1 = 3;
%G2 = (2*s + 1)/(s-2);
G2=2*s + 1;
%G3 = (s^2 + A*s + 12)/(s^2-4*s+4); % A = 2
G3 = s^2 + A*s + 12;
G4 = -C;             % C = 4
G5 = -0.1;
%G6 = (s)/(s-2);
G6= s;
%H1 = (s^2 + C*s + 5)/(s^2-4*s+4);  % C = 4
H1= s^2 + C*s + 5;
%H2 = (B*s - 1)/(s-2);        % B = 3
H2=B*s - 1;
num= (G1*G2*G3*G4+G6*G2*G3*G4+G1*G2*G5+G6*G2*G5);
den = (1+H1*G2*G3+H2*G1*G2*G3*G4+H2*G1*G2*G5);
disp('Numerador'),disp(num);
disp('Denomindador'),disp(den);

%disp('Funciones de transferencia:');
%disp('G1:'), disp(G1);
%disp('G2:'), disp(G2);
%disp('G3:'), disp(G3);
%disp('G4:'), disp(G4);
%disp('G5:'), disp(G5);
%disp('G6:'), disp(G6);
%disp('H1:'), disp(H1);
%disp('H2:'), disp(H2); 