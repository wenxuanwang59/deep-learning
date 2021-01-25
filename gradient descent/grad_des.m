
function [theta0,theta1,theta2] = grad_des(x_1,y_1,z_1,theta0,theta1,theta2,alpha,epochs)
    m = length(z_1)
    for z = 1 : epochs
        theta0_grad = 0;
        theta1_grad = 0;
        theta2_grad = 0;
        for i = 1 : length(z_1)
            theta0_grad = (theta0+theta1.*x_1 +theta2.*y_1-z_1);
            theta1_grad = (theta0+theta1.*x_1 +theta2.*y_1-z_1).*x_1
            theta2_grad = (theta0+theta1.*x_1 +theta2.*y_1-z_1).*y_1;
            theta0_grad = theta0_grad/m;
            theta1_grad = theta1_grad/m;
            theta2_grad = theta2_grad/m;
        end
    theta0 = theta0 - alpha*theta0_grad;
    theta1 = theta1 - alpha*theta1_grad;
    theta2 = theta2 - alpha*theta2_grad;
    end
end
