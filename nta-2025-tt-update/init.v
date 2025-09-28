if (reset) begin
    state <= STATE_IO; // HLa
    ioctl <= IOCTL_IO;
    data_out <= 0;
    orbit_len <= 0;
    path_record_h16 <= 0;
end
