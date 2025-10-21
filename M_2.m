% M_2 is intended to imitate a finite automation from a lecture that accepts all strings that ends with 0 and reject everything else.
function a = M_2(str)

% Always clear the command window.
clc;

% delta defines the movement rules: for 1, q₁ -> q₂ and q₂ -> q₁, for 0, q₁ -> q₁ and q₂ -> q₂.
delta = [ 2, 1; 1, 1; ];

% F defines accepted out values.
F = [ 1, 0 ];

% This is our start state a.k.a. q₁.
j = 1;

for i = 1 : length(str)
  s = string(i);
  j = delta(j, s);
end

a = F(j) == 1;
end