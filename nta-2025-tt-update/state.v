always @(posedge clk)
begin
    if (switch_to_compute) begin
        ioctl <= IOCTL_COMPUTE;
        state <= STATE_COMPUTE; // HLa
        path_record_h16 <= iter[BITS_IDX -: OLEN_BITS];
    end
    if (switch_to_io) begin
        ioctl <= IOCTL_IO;
        state <= STATE_IO; // HLa
    end
    //... 
