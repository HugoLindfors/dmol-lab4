% assignment_3 is intended to imitate a finite automation that accepts all strings with an alternating sequence of 1's and 2's and rejects everything else.
function valid = assignment_3(input_string)

valid = true;

previous_symbol = 0;

for i = 1 : length(input_string)

  symbol = str2int(input_string(i));

  % If symbol isn't 1 or 2 it's meaningless to continue.
  if symbol ~= 1 && symbol ~= 2
    valid = false;
    break;
  end

  if previous_symbol ~= 0

    % If a digit is repeated it's meaningless to continue.
    if symbol == previous_symbol
      valid = false;
      break;
    end

  end

  previous_symbol = symbol;

end
end

% Splitting out str2int as a separate function seemed like a good idea.
function result = str2int(string)
result = floor(str2double(string));
end