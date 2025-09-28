wire is_even = !iter[0];
assign next_iter = is_even ?
                   iter >> 1 :
                   (iter << 1) + iter + 1;
switch_to_io = next_iter == 1; // HLa

// ...

case (state)
    // ...
    STATE_COMPUTE: begin
        iter <= next_iter;
        orbit_len <= next_orbit_len;
        path_record_h16 <= next_path_record;
    end
