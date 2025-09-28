localparam IOCTL_COMPUTE = 8'h80;
localparam IOCTL_IO = 8'h00;

reg state;          // 0 - IO, 1 - COMPUTE // HLa
wire compute_busy;
reg [7:0] ioctl;
