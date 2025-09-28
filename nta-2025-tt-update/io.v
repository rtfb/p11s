case (state)
    STATE_IO: begin
        if (write_enable) begin // HLa
            iter[addr*8 +: 8] <= data_in; // HLa
        end else begin
            if (read_path_record) begin
                data_out <= path_record_h16[addr*8 +: 8];
            end else begin
                data_out <= orbit_len[addr*8 +: 8];
            end
        end
    end
    // ...
