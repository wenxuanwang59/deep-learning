
function loss =  cost_function(x_1,y_1,z_1,theta0,theta1,theta2)
    loss = 0;
    m = length(z_1);
    
    for i = 1:length(z_1)
        loss = loss+ (theta0+theta1.*x_1+theta2.*y_1-z_1).^2
    loss = loss/(2.*m);
    %return loss;
    end
end