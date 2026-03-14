`timescale 1ns/1ps

// Testbench for top_pynqz1 (user referred to top_zynq1.v).
// Goal: expose end-to-end and intermediate flow visibility:
//   AXIS instruction input -> Transmission -> TCU -> AXI4 DRAM0/DRAM1
module top_pynqz1_tb;
  // ---------------------------------------------------------------------------
  // Clock / Reset
  // ---------------------------------------------------------------------------
  reg clock = 1'b0;
  always #5 clock = ~clock; // 100 MHz

  // NOTE: In top_pynqz1 internal TCU reset is driven by ~reset.
  // So reset=0 keeps TCU in reset, reset=1 releases TCU.
  reg reset;

  integer cycle;
  localparam integer TRACE_ON = 1;


   integer k;
   
   
  // Aliases for easy waveform selection in GUI tools.
  // If you add `tb_clk` and `tb_reset` to the wave window, you can directly
  // observe testbench clock/reset activity even when browsing deep DUT signals.
  wire tb_clk   = clock;
  wire tb_reset = reset;

  // ---------------------------------------------------------------------------
  // AXIS instruction interface
  // ---------------------------------------------------------------------------
  reg  [63:0] instruction_tdata;
  reg         instruction_tvalid;
  wire        instruction_tready;
  reg         instruction_tlast;

  // ---------------------------------------------------------------------------
  // AXI DRAM0 (UUT master -> TB slave)
  // ---------------------------------------------------------------------------
  reg         m_axi_dram0_awready;
  wire        m_axi_dram0_awvalid;
  wire [5:0]  m_axi_dram0_awid;
  wire [31:0] m_axi_dram0_awaddr;
  wire [7:0]  m_axi_dram0_awlen;
  wire [2:0]  m_axi_dram0_awsize;
  wire [1:0]  m_axi_dram0_awburst;
  wire [1:0]  m_axi_dram0_awlock;
  wire [3:0]  m_axi_dram0_awcache;
  wire [2:0]  m_axi_dram0_awprot;
  wire [3:0]  m_axi_dram0_awqos;

  reg         m_axi_dram0_wready;
  wire        m_axi_dram0_wvalid;
  wire [5:0]  m_axi_dram0_wid;
  wire [63:0] m_axi_dram0_wdata;
  wire [7:0]  m_axi_dram0_wstrb;
  wire        m_axi_dram0_wlast;

  wire        m_axi_dram0_bready;
  reg         m_axi_dram0_bvalid;
  reg  [5:0]  m_axi_dram0_bid;
  reg  [1:0]  m_axi_dram0_bresp;

  reg         m_axi_dram0_arready;
  wire        m_axi_dram0_arvalid;
  wire [5:0]  m_axi_dram0_arid;
  wire [31:0] m_axi_dram0_araddr;
  wire [7:0]  m_axi_dram0_arlen;
  wire [2:0]  m_axi_dram0_arsize;
  wire [1:0]  m_axi_dram0_arburst;
  wire [1:0]  m_axi_dram0_arlock;
  wire [3:0]  m_axi_dram0_arcache;
  wire [2:0]  m_axi_dram0_arprot;
  wire [3:0]  m_axi_dram0_arqos;

  wire        m_axi_dram0_rready;
  reg         m_axi_dram0_rvalid;
  reg  [5:0]  m_axi_dram0_rid;
  reg  [63:0] m_axi_dram0_rdata;
  reg  [1:0]  m_axi_dram0_rresp;
  reg         m_axi_dram0_rlast;

  // ---------------------------------------------------------------------------
  // AXI DRAM1 (UUT master -> TB slave)
  // ---------------------------------------------------------------------------
  reg         m_axi_dram1_awready;
  wire        m_axi_dram1_awvalid;
  wire [5:0]  m_axi_dram1_awid;
  wire [31:0] m_axi_dram1_awaddr;
  wire [7:0]  m_axi_dram1_awlen;
  wire [2:0]  m_axi_dram1_awsize;
  wire [1:0]  m_axi_dram1_awburst;
  wire [1:0]  m_axi_dram1_awlock;
  wire [3:0]  m_axi_dram1_awcache;
  wire [2:0]  m_axi_dram1_awprot;
  wire [3:0]  m_axi_dram1_awqos;

  reg         m_axi_dram1_wready;
  wire        m_axi_dram1_wvalid;
  wire [5:0]  m_axi_dram1_wid;
  wire [63:0] m_axi_dram1_wdata;
  wire [7:0]  m_axi_dram1_wstrb;
  wire        m_axi_dram1_wlast;

  wire        m_axi_dram1_bready;
  reg         m_axi_dram1_bvalid;
  reg  [5:0]  m_axi_dram1_bid;
  reg  [1:0]  m_axi_dram1_bresp;

  reg         m_axi_dram1_arready;
  wire        m_axi_dram1_arvalid;
  wire [5:0]  m_axi_dram1_arid;
  wire [31:0] m_axi_dram1_araddr;
  wire [7:0]  m_axi_dram1_arlen;
  wire [2:0]  m_axi_dram1_arsize;
  wire [1:0]  m_axi_dram1_arburst;
  wire [1:0]  m_axi_dram1_arlock;
  wire [3:0]  m_axi_dram1_arcache;
  wire [2:0]  m_axi_dram1_arprot;
  wire [3:0]  m_axi_dram1_arqos;

  wire        m_axi_dram1_rready;
  reg         m_axi_dram1_rvalid;
  reg  [5:0]  m_axi_dram1_rid;
  reg  [63:0] m_axi_dram1_rdata;
  reg  [1:0]  m_axi_dram1_rresp;
  reg         m_axi_dram1_rlast;

  // ---------------------------------------------------------------------------
  // UUT
  // ---------------------------------------------------------------------------
  top_pynqz1 dut (
    .clock(clock),
    .reset(reset),
    .instruction_tdata(instruction_tdata),
    .instruction_tvalid(instruction_tvalid),
    .instruction_tready(instruction_tready),
    .instruction_tlast(instruction_tlast),

    .m_axi_dram0_awready(m_axi_dram0_awready),
    .m_axi_dram0_awvalid(m_axi_dram0_awvalid),
    .m_axi_dram0_awid(m_axi_dram0_awid),
    .m_axi_dram0_awaddr(m_axi_dram0_awaddr),
    .m_axi_dram0_awlen(m_axi_dram0_awlen),
    .m_axi_dram0_awsize(m_axi_dram0_awsize),
    .m_axi_dram0_awburst(m_axi_dram0_awburst),
    .m_axi_dram0_awlock(m_axi_dram0_awlock),
    .m_axi_dram0_awcache(m_axi_dram0_awcache),
    .m_axi_dram0_awprot(m_axi_dram0_awprot),
    .m_axi_dram0_awqos(m_axi_dram0_awqos),
    .m_axi_dram0_wready(m_axi_dram0_wready),
    .m_axi_dram0_wvalid(m_axi_dram0_wvalid),
    .m_axi_dram0_wid(m_axi_dram0_wid),
    .m_axi_dram0_wdata(m_axi_dram0_wdata),
    .m_axi_dram0_wstrb(m_axi_dram0_wstrb),
    .m_axi_dram0_wlast(m_axi_dram0_wlast),
    .m_axi_dram0_bready(m_axi_dram0_bready),
    .m_axi_dram0_bvalid(m_axi_dram0_bvalid),
    .m_axi_dram0_bid(m_axi_dram0_bid),
    .m_axi_dram0_bresp(m_axi_dram0_bresp),
    .m_axi_dram0_arready(m_axi_dram0_arready),
    .m_axi_dram0_arvalid(m_axi_dram0_arvalid),
    .m_axi_dram0_arid(m_axi_dram0_arid),
    .m_axi_dram0_araddr(m_axi_dram0_araddr),
    .m_axi_dram0_arlen(m_axi_dram0_arlen),
    .m_axi_dram0_arsize(m_axi_dram0_arsize),
    .m_axi_dram0_arburst(m_axi_dram0_arburst),
    .m_axi_dram0_arlock(m_axi_dram0_arlock),
    .m_axi_dram0_arcache(m_axi_dram0_arcache),
    .m_axi_dram0_arprot(m_axi_dram0_arprot),
    .m_axi_dram0_arqos(m_axi_dram0_arqos),
    .m_axi_dram0_rready(m_axi_dram0_rready),
    .m_axi_dram0_rvalid(m_axi_dram0_rvalid),
    .m_axi_dram0_rid(m_axi_dram0_rid),
    .m_axi_dram0_rdata(m_axi_dram0_rdata),
    .m_axi_dram0_rresp(m_axi_dram0_rresp),
    .m_axi_dram0_rlast(m_axi_dram0_rlast),

    .m_axi_dram1_awready(m_axi_dram1_awready),
    .m_axi_dram1_awvalid(m_axi_dram1_awvalid),
    .m_axi_dram1_awid(m_axi_dram1_awid),
    .m_axi_dram1_awaddr(m_axi_dram1_awaddr),
    .m_axi_dram1_awlen(m_axi_dram1_awlen),
    .m_axi_dram1_awsize(m_axi_dram1_awsize),
    .m_axi_dram1_awburst(m_axi_dram1_awburst),
    .m_axi_dram1_awlock(m_axi_dram1_awlock),
    .m_axi_dram1_awcache(m_axi_dram1_awcache),
    .m_axi_dram1_awprot(m_axi_dram1_awprot),
    .m_axi_dram1_awqos(m_axi_dram1_awqos),
    .m_axi_dram1_wready(m_axi_dram1_wready),
    .m_axi_dram1_wvalid(m_axi_dram1_wvalid),
    .m_axi_dram1_wid(m_axi_dram1_wid),
    .m_axi_dram1_wdata(m_axi_dram1_wdata),
    .m_axi_dram1_wstrb(m_axi_dram1_wstrb),
    .m_axi_dram1_wlast(m_axi_dram1_wlast),
    .m_axi_dram1_bready(m_axi_dram1_bready),
    .m_axi_dram1_bvalid(m_axi_dram1_bvalid),
    .m_axi_dram1_bid(m_axi_dram1_bid),
    .m_axi_dram1_bresp(m_axi_dram1_bresp),
    .m_axi_dram1_arready(m_axi_dram1_arready),
    .m_axi_dram1_arvalid(m_axi_dram1_arvalid),
    .m_axi_dram1_arid(m_axi_dram1_arid),
    .m_axi_dram1_araddr(m_axi_dram1_araddr),
    .m_axi_dram1_arlen(m_axi_dram1_arlen),
    .m_axi_dram1_arsize(m_axi_dram1_arsize),
    .m_axi_dram1_arburst(m_axi_dram1_arburst),
    .m_axi_dram1_arlock(m_axi_dram1_arlock),
    .m_axi_dram1_arcache(m_axi_dram1_arcache),
    .m_axi_dram1_arprot(m_axi_dram1_arprot),
    .m_axi_dram1_arqos(m_axi_dram1_arqos),
    .m_axi_dram1_rready(m_axi_dram1_rready),
    .m_axi_dram1_rvalid(m_axi_dram1_rvalid),
    .m_axi_dram1_rid(m_axi_dram1_rid),
    .m_axi_dram1_rdata(m_axi_dram1_rdata),
    .m_axi_dram1_rresp(m_axi_dram1_rresp),
    .m_axi_dram1_rlast(m_axi_dram1_rlast)
  );

  // ---------------------------------------------------------------------------
  // Scoreboard / Counters
  // ---------------------------------------------------------------------------
  integer instr_sent;
  integer aw0_cnt, w0_cnt, b0_cnt, ar0_cnt, r0_cnt;
  integer aw1_cnt, w1_cnt, b1_cnt, ar1_cnt, r1_cnt;
  reg saw_dram0;
  reg saw_dram1;
  integer b0_delay, b1_delay, r0_delay, r1_delay;

  // ---------------------------------------------------------------------------
  // Trace helpers
  // ---------------------------------------------------------------------------
  task automatic trace(input [8*40-1:0] msg);
    begin
      if (TRACE_ON) $display("[%0t][C%0d] %0s", $time, cycle, msg);
    end
  endtask

  task automatic dump_top_summary;
    begin
      $display("\n================ FINAL FLOW SUMMARY ================");
      $display("Instructions accepted : %0d", instr_sent);
      $display("DRAM0: AW=%0d W=%0d B=%0d AR=%0d R=%0d", aw0_cnt, w0_cnt, b0_cnt, ar0_cnt, r0_cnt);
      $display("DRAM1: AW=%0d W=%0d B=%0d AR=%0d R=%0d", aw1_cnt, w1_cnt, b1_cnt, ar1_cnt, r1_cnt);
      $display("====================================================\n");
    end
  endtask

  // ---------------------------------------------------------------------------
  // Utility tasks
  // ---------------------------------------------------------------------------
  task automatic do_reset;
    begin
      trace("RESET assert (reset=0)");
      reset = 1'b0;
      instruction_tvalid = 1'b0;
      instruction_tdata  = 64'h0;
      instruction_tlast  = 1'b0;
      repeat (10) @(posedge clock);

      trace("RESET deassert (reset=1, TCU released)");
      reset = 1'b1;
      repeat (10) @(posedge clock);
    end
  endtask

  task automatic send_instruction(input [3:0] opcode, input [3:0] flags, input [55:0] args, input last);
    reg [63:0] payload;
    integer timeout;
    begin
      payload = {opcode, flags, args};
      if (TRACE_ON) $display("[%0t][C%0d] AXIS_PUSH req opcode=%0h flags=%0h args=%014h last=%0b",
                             $time, cycle, opcode, flags, args, last);
      instruction_tdata  <= payload;
      instruction_tlast  <= last;
      instruction_tvalid <= 1'b1;

      timeout = 0;
      while (!instruction_tready) begin
        @(posedge clock);
        timeout = timeout + 1;
        if (timeout > 5000) begin
          $fatal(1, "Timeout waiting instruction_tready");
        end
      end

      @(posedge clock); // handshake cycle
      instr_sent = instr_sent + 1;
      if (TRACE_ON) $display("[%0t][C%0d] AXIS_PUSH ack  payload=%016h", $time, cycle, payload);
      instruction_tvalid <= 1'b0;
      instruction_tlast  <= 1'b0;
      instruction_tdata  <= 64'h0;
    end
  endtask

  task automatic wait_cycles(input integer n);
    integer i;
    begin
      for (i = 0; i < n; i = i + 1) @(posedge clock);
    end
  endtask

  // ---------------------------------------------------------------------------
  // Cycle counter
  // ---------------------------------------------------------------------------
  always @(posedge clock) begin
    cycle <= cycle + 1;
  end

  // ---------------------------------------------------------------------------
  // AXI memory-side behavior models (lightweight responder)
  // ---------------------------------------------------------------------------
  always @(posedge clock) begin
    if (!reset) begin
      m_axi_dram0_bvalid <= 1'b0;
      m_axi_dram1_bvalid <= 1'b0;
      m_axi_dram0_rvalid <= 1'b0;
      m_axi_dram1_rvalid <= 1'b0;
      m_axi_dram0_rlast  <= 1'b0;
      m_axi_dram1_rlast  <= 1'b0;
      b0_delay <= 0;
      b1_delay <= 0;
      r0_delay <= 0;
      r1_delay <= 0;
    end else begin
      // DRAM0 write response
      if (m_axi_dram0_wvalid && m_axi_dram0_wready && m_axi_dram0_wlast) begin
        b0_delay <= 2;
        m_axi_dram0_bid   <= m_axi_dram0_wid;
        m_axi_dram0_bresp <= 2'b00;
      end
      if (b0_delay > 0) begin
        b0_delay <= b0_delay - 1;
        if (b0_delay == 1) m_axi_dram0_bvalid <= 1'b1;
      end else if (m_axi_dram0_bvalid && m_axi_dram0_bready) begin
        m_axi_dram0_bvalid <= 1'b0;
      end

      // DRAM1 write response
      if (m_axi_dram1_wvalid && m_axi_dram1_wready && m_axi_dram1_wlast) begin
        b1_delay <= 3;
        m_axi_dram1_bid   <= m_axi_dram1_wid;
        m_axi_dram1_bresp <= 2'b00;
      end
      if (b1_delay > 0) begin
        b1_delay <= b1_delay - 1;
        if (b1_delay == 1) m_axi_dram1_bvalid <= 1'b1;
      end else if (m_axi_dram1_bvalid && m_axi_dram1_bready) begin
        m_axi_dram1_bvalid <= 1'b0;
      end

      // DRAM0 read response
      if (m_axi_dram0_arvalid && m_axi_dram0_arready) begin
        r0_delay <= 2;
        m_axi_dram0_rid   <= m_axi_dram0_arid;
        m_axi_dram0_rdata <= {32'hD000_0000, m_axi_dram0_araddr};
        m_axi_dram0_rresp <= 2'b00;
      end
      if (r0_delay > 0) begin
        r0_delay <= r0_delay - 1;
        if (r0_delay == 1) begin
          m_axi_dram0_rvalid <= 1'b1;
          m_axi_dram0_rlast  <= 1'b1;
        end
      end else if (m_axi_dram0_rvalid && m_axi_dram0_rready) begin
        m_axi_dram0_rvalid <= 1'b0;
        m_axi_dram0_rlast  <= 1'b0;
      end

      // DRAM1 read response
      if (m_axi_dram1_arvalid && m_axi_dram1_arready) begin
        r1_delay <= 4;
        m_axi_dram1_rid   <= m_axi_dram1_arid;
        m_axi_dram1_rdata <= {32'hD100_0000, m_axi_dram1_araddr};
        m_axi_dram1_rresp <= 2'b00;
      end
      if (r1_delay > 0) begin
        r1_delay <= r1_delay - 1;
        if (r1_delay == 1) begin
          m_axi_dram1_rvalid <= 1'b1;
          m_axi_dram1_rlast  <= 1'b1;
        end
      end else if (m_axi_dram1_rvalid && m_axi_dram1_rready) begin
        m_axi_dram1_rvalid <= 1'b0;
        m_axi_dram1_rlast  <= 1'b0;
      end
    end
  end

  // Ready/backpressure generation controls
  reg deterministic_mode;
  always @(posedge clock) begin
    if (!reset) begin
      m_axi_dram0_awready <= 1'b0;
      m_axi_dram0_wready  <= 1'b0;
      m_axi_dram0_arready <= 1'b0;
      m_axi_dram1_awready <= 1'b0;
      m_axi_dram1_wready  <= 1'b0;
      m_axi_dram1_arready <= 1'b0;
    end else if (deterministic_mode) begin
      m_axi_dram0_awready <= 1'b1;
      m_axi_dram0_wready  <= 1'b1;
      m_axi_dram0_arready <= 1'b1;
      m_axi_dram1_awready <= 1'b1;
      m_axi_dram1_wready  <= 1'b1;
      m_axi_dram1_arready <= 1'b1;
    end else begin
      // pseudo-random stalls to stress handshake handling
      m_axi_dram0_awready <= ($random & 32'h3) != 0;
      m_axi_dram0_wready  <= ($random & 32'h1) == 0;
      m_axi_dram0_arready <= ($random & 32'h3) != 1;
      m_axi_dram1_awready <= ($random & 32'h7) != 0;
      m_axi_dram1_wready  <= ($random & 32'h3) != 2;
      m_axi_dram1_arready <= ($random & 32'h7) != 3;
    end
  end

  // ---------------------------------------------------------------------------
  // Detailed event tracing for every intermediate handshake
  // ---------------------------------------------------------------------------
  always @(posedge clock) begin
    if (reset && TRACE_ON) begin
      if (instruction_tvalid && instruction_tready) begin
        $display("[%0t][C%0d] AXIS_HS  tdata=%016h opcode=%0h flags=%0h args=%014h tlast=%0b",
                 $time, cycle, instruction_tdata,
                 instruction_tdata[63:60], instruction_tdata[59:56], instruction_tdata[55:0], instruction_tlast);
      end

      if (m_axi_dram0_awvalid && m_axi_dram0_awready)
        $display("[%0t][C%0d] DRAM0_AW id=%0d addr=%08h len=%0d size=%0d burst=%0d",
                 $time, cycle, m_axi_dram0_awid, m_axi_dram0_awaddr, m_axi_dram0_awlen, m_axi_dram0_awsize, m_axi_dram0_awburst);
      if (m_axi_dram0_wvalid && m_axi_dram0_wready)
        $display("[%0t][C%0d] DRAM0_W  id=%0d data=%016h strb=%02h last=%0b",
                 $time, cycle, m_axi_dram0_wid, m_axi_dram0_wdata, m_axi_dram0_wstrb, m_axi_dram0_wlast);
      if (m_axi_dram0_bvalid && m_axi_dram0_bready)
        $display("[%0t][C%0d] DRAM0_B  id=%0d resp=%0b",
                 $time, cycle, m_axi_dram0_bid, m_axi_dram0_bresp);
      if (m_axi_dram0_arvalid && m_axi_dram0_arready)
        $display("[%0t][C%0d] DRAM0_AR id=%0d addr=%08h len=%0d size=%0d burst=%0d",
                 $time, cycle, m_axi_dram0_arid, m_axi_dram0_araddr, m_axi_dram0_arlen, m_axi_dram0_arsize, m_axi_dram0_arburst);
      if (m_axi_dram0_rvalid && m_axi_dram0_rready)
        $display("[%0t][C%0d] DRAM0_R  id=%0d data=%016h resp=%0b last=%0b",
                 $time, cycle, m_axi_dram0_rid, m_axi_dram0_rdata, m_axi_dram0_rresp, m_axi_dram0_rlast);

      if (m_axi_dram1_awvalid && m_axi_dram1_awready)
        $display("[%0t][C%0d] DRAM1_AW id=%0d addr=%08h len=%0d size=%0d burst=%0d",
                 $time, cycle, m_axi_dram1_awid, m_axi_dram1_awaddr, m_axi_dram1_awlen, m_axi_dram1_awsize, m_axi_dram1_awburst);
      if (m_axi_dram1_wvalid && m_axi_dram1_wready)
        $display("[%0t][C%0d] DRAM1_W  id=%0d data=%016h strb=%02h last=%0b",
                 $time, cycle, m_axi_dram1_wid, m_axi_dram1_wdata, m_axi_dram1_wstrb, m_axi_dram1_wlast);
      if (m_axi_dram1_bvalid && m_axi_dram1_bready)
        $display("[%0t][C%0d] DRAM1_B  id=%0d resp=%0b",
                 $time, cycle, m_axi_dram1_bid, m_axi_dram1_bresp);
      if (m_axi_dram1_arvalid && m_axi_dram1_arready)
        $display("[%0t][C%0d] DRAM1_AR id=%0d addr=%08h len=%0d size=%0d burst=%0d",
                 $time, cycle, m_axi_dram1_arid, m_axi_dram1_araddr, m_axi_dram1_arlen, m_axi_dram1_arsize, m_axi_dram1_arburst);
      if (m_axi_dram1_rvalid && m_axi_dram1_rready)
        $display("[%0t][C%0d] DRAM1_R  id=%0d data=%016h resp=%0b last=%0b",
                 $time, cycle, m_axi_dram1_rid, m_axi_dram1_rdata, m_axi_dram1_rresp, m_axi_dram1_rlast);
    end
  end

  // ---------------------------------------------------------------------------
  // Event counters
  // ---------------------------------------------------------------------------
  always @(posedge clock) begin
    if (!reset) begin
      instr_sent <= 0;
      aw0_cnt <= 0; w0_cnt <= 0; b0_cnt <= 0; ar0_cnt <= 0; r0_cnt <= 0;
      aw1_cnt <= 0; w1_cnt <= 0; b1_cnt <= 0; ar1_cnt <= 0; r1_cnt <= 0;
      saw_dram0 <= 1'b0;
      saw_dram1 <= 1'b0;
    end else begin
      if (m_axi_dram0_awvalid && m_axi_dram0_awready) begin aw0_cnt <= aw0_cnt + 1; saw_dram0 <= 1'b1; end
      if (m_axi_dram0_wvalid  && m_axi_dram0_wready)  begin w0_cnt  <= w0_cnt  + 1; saw_dram0 <= 1'b1; end
      if (m_axi_dram0_bvalid  && m_axi_dram0_bready)  b0_cnt <= b0_cnt + 1;
      if (m_axi_dram0_arvalid && m_axi_dram0_arready) begin ar0_cnt <= ar0_cnt + 1; saw_dram0 <= 1'b1; end
      if (m_axi_dram0_rvalid  && m_axi_dram0_rready)  r0_cnt <= r0_cnt + 1;

      if (m_axi_dram1_awvalid && m_axi_dram1_awready) begin aw1_cnt <= aw1_cnt + 1; saw_dram1 <= 1'b1; end
      if (m_axi_dram1_wvalid  && m_axi_dram1_wready)  begin w1_cnt  <= w1_cnt  + 1; saw_dram1 <= 1'b1; end
      if (m_axi_dram1_bvalid  && m_axi_dram1_bready)  b1_cnt <= b1_cnt + 1;
      if (m_axi_dram1_arvalid && m_axi_dram1_arready) begin ar1_cnt <= ar1_cnt + 1; saw_dram1 <= 1'b1; end
      if (m_axi_dram1_rvalid  && m_axi_dram1_rready)  r1_cnt <= r1_cnt + 1;
    end
  end

  // ---------------------------------------------------------------------------
  // Test cases
  // ---------------------------------------------------------------------------
  initial begin
 

    // Default drives
    cycle = 0;
    deterministic_mode = 1'b1;
    reset = 1'b0;
    instruction_tdata = 64'h0;
    instruction_tvalid = 1'b0;
    instruction_tlast = 1'b0;

    m_axi_dram0_awready = 1'b0;
    m_axi_dram0_wready  = 1'b0;
    m_axi_dram0_arready = 1'b0;
    m_axi_dram0_bvalid  = 1'b0;
    m_axi_dram0_bid     = 6'h0;
    m_axi_dram0_bresp   = 2'b00;
    m_axi_dram0_rvalid  = 1'b0;
    m_axi_dram0_rid     = 6'h0;
    m_axi_dram0_rdata   = 64'h0;
    m_axi_dram0_rresp   = 2'b00;
    m_axi_dram0_rlast   = 1'b0;

    m_axi_dram1_awready = 1'b0;
    m_axi_dram1_wready  = 1'b0;
    m_axi_dram1_arready = 1'b0;
    m_axi_dram1_bvalid  = 1'b0;
    m_axi_dram1_bid     = 6'h0;
    m_axi_dram1_bresp   = 2'b00;
    m_axi_dram1_rvalid  = 1'b0;
    m_axi_dram1_rid     = 6'h0;
    m_axi_dram1_rdata   = 64'h0;
    m_axi_dram1_rresp   = 2'b00;
    m_axi_dram1_rlast   = 1'b0;

    // Waveform dump for step-by-step offline observation
    $dumpfile("tb/top_pynqz1_tb.vcd");
    $dumpvars(0, top_pynqz1_tb);

    $display("NOTE: Simulate module top_pynqz1_tb (not wrapper-level inout shell).");
    $display("NOTE: tb_clk/tb_reset are the active testbench timing/reset signals.");
    $display("NOTE: DDR/FIXED_IO pins are from wrapper/PS shell and can appear Z in pure RTL sim.");

    // TC0: reset/bring-up
    trace("TC0 BEGIN: reset and bring-up");
    do_reset();
    trace("TC0 END");

    // TC1: deterministic, easy-to-follow traffic
    trace("TC1 BEGIN: deterministic instruction stream");
    deterministic_mode = 1'b1;
    send_instruction(4'h1, 4'h0, 56'h0000_0000_000001, 1'b0);
    send_instruction(4'h2, 4'h1, 56'h0000_0000_000010, 1'b0);
    send_instruction(4'h3, 4'h2, 56'h0000_0000_000100, 1'b1);
    wait_cycles(300);
    trace("TC1 END");

    // TC2: stress with heavy backpressure and longer burst
    trace("TC2 BEGIN: randomized backpressure stress");
    deterministic_mode = 1'b0;
    for (k = 0; k < 32; k = k + 1) begin
      send_instruction(k[3:0], ((~k) & 32'hF), {24'h0, k[31:0]}, (k == 31));
    end
    wait_cycles(2500);
    trace("TC2 END");

    // TC3: idle gap then tail command
    trace("TC3 BEGIN: idle gap + tail instruction");
    wait_cycles(100);
    send_instruction(4'hF, 4'hA, 56'h00DE_ADBE_EF12_34, 1'b1);
    wait_cycles(1200);
    trace("TC3 END");

    // Final checks
    dump_top_summary();

    if (instr_sent < 10)
      $fatal(1, "Too few instructions accepted. Expected stream to move.");

    if (!(saw_dram0 || saw_dram1))
      $fatal(1, "No DRAM traffic observed. Instruction->memory flow not exercised.");

    trace("PASS: top_pynqz1 intermediate + end-to-end flow exercised.");
    $finish;
  end

  // Safety timeout so a wrong top-module selection / stuck simulation does not
  // silently run forever.
  initial begin
    #2_000_000;
    $fatal(1, "Timeout: simulation did not finish. Ensure top module is top_pynqz1_tb.");
  end

endmodule

