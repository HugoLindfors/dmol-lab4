% M_1 is intended to imitate a finite automation from a lecture that accepts all strings with an even number of 1's and reject everything else.
function a = M_1(str)

% Always clear the command window.
clc;

% delta defines the movement rules: for 1, q₁ -> q₂ and q₂ -> q₁, for 0, q₁ -> q₁ and q₂ -> q₂.
delta = [ 1, 2; 2, 1; ];

% F defines accepted out values. We require the final state to be q₁ because then there are an even number of 1's.
F = [ 1, 0 ];

% This is our start state a.k.a. q₁.
j = 1;

for i = 1 : length(str)
  s = str2num(string(i)); %#ok<ST2NM>
  j = delta(j, s);
end

a = F(j) == 1;
end