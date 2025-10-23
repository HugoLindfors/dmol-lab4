% M_2 is intended to imitate a finite automation from a lecture that accepts all strings that ends with 0 and reject everything else.
function current_state = M_2(input_string)

START_STATE = false; % q_1 = 0

current_state = START_STATE;

for i = 1 : length(input_string)
  symbol = str2double(input_string(i));
  if ~symbol
    current_state = true;
  else
    current_state = false;
  end
end
end