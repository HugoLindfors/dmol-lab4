% M_1 is intended to imitate a finite automation from a lecture that accepts all strings with an even number of 1's and reject everything else.
function current_state = M_1(input_string)

START_STATE = true;

current_state = START_STATE;

for i = 1 : length(input_string)
  symbol = str2double(input_string(i));
  if symbol, current_state = ~current_state;
  end
end
end