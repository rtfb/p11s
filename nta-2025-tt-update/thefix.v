wire is_even = !iter[0];
assign next_iter = is_even ?
                   iter >> 1 :
                   (iter << 1) + iter + 1;
switch_to_io = state == STATE_COMPUTE && next_iter == 1; // HLa
