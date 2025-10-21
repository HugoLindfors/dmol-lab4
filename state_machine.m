function state_machine()

RED = 1;
GREEN = 2;
YELLOW = 3;
START_STATE = RED;

state = START_STATE;

num_cycles = 5;

for i = 1 : num_cycles
  switch state
    case RED
      disp("RED");
      pause(2);
      state = GREEN;
    case GREEN
      disp("GREEN");
      pause(3);
      state = YELLOW;
    case YELLOW
      disp("YELLOW");
      pause(1);
      state = RED;
  end
end
end