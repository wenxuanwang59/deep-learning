clc
clear

%z = 2*x + y + 1
x = randi([-5,0],1,500);
    
y = randi([-5,0],1,500);
x_1 = sort(x);
y_1 = sort(y);


z_1 = 0.5*x_1 + 0.5*y_1 - 0.5;


figure(1)
plot3(x_1, y_1, z_1,'.', 'MarkerSize',15,'MarkerEdgeColor','m');

theta0 = 0;
theta1 = 0;
theta2 = 0;
epochs = 100;
alpha = 2;

loss =  cost_function(x_1,y_1,z_1,theta0,theta1,theta2);

[theta0,theta1,theta2] = grad_des(x_1,y_1,z_1,theta0,theta1,theta2,alpha,epochs);

hold on
b = mean(theta0(:));
w1 = mean(theta1(:));
w2 = mean(theta2(:));

z_2 = b + w1.*x_1 + w2.*y_1;
hold on 
fplot3(@(x_1)x_1, @(y_1)y_1, @(z_2)z_2,'Color','g');


x11 = xlabel('X') 
y11 = ylabel('Y') 
z11 = zlabel('Objective Function')
axis([-5,0,-5,0,-10,10])
tt = title(['The fitting line is f(x) = ', num2str(b), ' +', num2str(w1),'*x', ' +', num2str(w2),'*y']);


hold off

figure(2)
plot(loss);

