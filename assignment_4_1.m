% M_1 is intended to imitate a finite automation from a lecture that accepts all strings with an even number of 1's and reject everything else.
function a = assignment_4_1(str)

% Always clear the command window.
clc;

% delta defines the movement rules: for 1, q_1 -> q_2 and q_2 -> q_1, for 0, q_1 -> q_1 and q_2 -> q_2.
delta = [ 2, 1; 1, 2; ];

% F defines accepted out values.
F = [ 1, 0 ];

% This is our start state a.k.a. q_1.
j = 1;

for i = 1 : length(str)
  s = string(i);
  j = delta(j, s);
end

a = F(j) == 1;
end