x1 = input('\nEnter first X coordinate: ');
y1 = input('\nEnter first Y coordinate: ');
x2 = input('\nEnter second X coordinate: ');
y2 = input('\nEnter second Y coordinate: ');
x3 = input('\nEnter third X coordinate: ');
y3 = input('\nEnter third Y coordinate: ');


%% Get the coordinates of the center of the circle (x,y):

a = ((x1-x2)^2) + ((y1-y2)^2);
b =((x2-x3)^2) + ((y2-y3)^2);
c = ((x3-x1)^2) + ((y3-y1)^2);

eq = ((a*b + b*c + c*a)*2) - ((a^2) + (b^2) + (c^2));

h = (a*(b+c-a)*x3 + b*(c+a-b)*x1 + c*(a+b-c)*x2)/eq;
k = (a*(b+c-a)*y3 + b*(c+a-b)*y1 + c*(a+b-c)*y2)/eq;


%% Get the radius (r) of the circle:

r = sqrt(((x1-h)^2) + ((y1-k)^2));

%% Get D,E,F using determinants


A = [(((x1)^2)+((y1)^2)), y1, 1; (((x2)^2)+((y2)^2)), y2, 1; (((x3)^2)+((y3)^2)), y3, 1];
B = [(((x1)^2)+((y1)^2)), x1, 1; (((x2)^2)+((y2)^2)), x2, 1; (((x3)^2)+((y3)^2)), x3, 1];
C = [(((x1)^2)+((y1)^2)), x1, y1; (((x2)^2)+((y2)^2)),x2, y2; (((x3)^2)+((y3)^2)),x3,y3];
Z = [x1, y1, 1; x2, y2, 1; x3, y3, 1];

D = (-1*det(A))/det(Z);
E = (det(B))/det(Z);
F = (-1*det(C))/det(Z);

%% Out

fprintf('\nThe X coordinate of the circle is located at: %f',h);
fprintf('\nThe Y coordinate of the circle is located at: %f',k);
fprintf('\nIts radius is: %f',r);

fprintf('\nVector D is: %f',D);
fprintf('\nVector E is: %f',E);
fprintf('\nVector F is: %f \n\n',F);