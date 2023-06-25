function [o] = solver(x,F)
o = zeros(size(x,2),1);
nsize = size(x,2);
% global stiffness at master dof
k = [nsize sum(x(2,:)) -sum(x(1,:));
     sum(x(2,:)) sum(x(2,:).^2) -sum(x(1,:).*x(2,:));
     -sum(x(1,:)) -sum(x(1,:).*x(2,:)) sum(x(1,:).^2)];
u = k\F;
% compute spring reaction
for i = 1:size(x,2)
  o(i) = [1 x(2,i) -x(1,i)]*u;  
    
end
end