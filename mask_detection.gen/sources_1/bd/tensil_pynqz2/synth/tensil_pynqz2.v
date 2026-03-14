//Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2.2 (lin64) Build 3788238 Tue Feb 21 19:59:23 MST 2023
//Date        : Thu Feb 26 19:37:20 2026
//Host        : likhith-Inspiron-3593 running 64-bit Ubuntu 22.04.2 LTS
//Command     : generate_target tensil_pynqz2.bd
//Design      : tensil_pynqz2
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "tensil_pynqz2,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=tensil_pynqz2,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=8,numReposBlks=8,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,da_clkrst_cnt=6,da_ps7_cnt=1,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "tensil_pynqz2.hwdef" *) 
module tensil_pynqz2
   (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb);
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DDR, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250" *) inout [14:0]DDR_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR BA" *) inout [2:0]DDR_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CAS_N" *) inout DDR_cas_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_N" *) inout DDR_ck_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_P" *) inout DDR_ck_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CKE" *) inout DDR_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CS_N" *) inout DDR_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DM" *) inout [3:0]DDR_dm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQ" *) inout [31:0]DDR_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_N" *) inout [3:0]DDR_dqs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_P" *) inout [3:0]DDR_dqs_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ODT" *) inout DDR_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RAS_N" *) inout DDR_ras_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RESET_N" *) inout DDR_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR WE_N" *) inout DDR_we_n;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRN" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME FIXED_IO, CAN_DEBUG false" *) inout FIXED_IO_ddr_vrn;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRP" *) inout FIXED_IO_ddr_vrp;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO MIO" *) inout [53:0]FIXED_IO_mio;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_CLK" *) inout FIXED_IO_ps_clk;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_PORB" *) inout FIXED_IO_ps_porb;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_SRSTB" *) inout FIXED_IO_ps_srstb;

  wire [63:0]axi_dma_0_M_AXIS_MM2S_TDATA;
  wire axi_dma_0_M_AXIS_MM2S_TLAST;
  wire axi_dma_0_M_AXIS_MM2S_TREADY;
  wire axi_dma_0_M_AXIS_MM2S_TVALID;
  wire [31:0]axi_dma_0_M_AXI_MM2S_ARADDR;
  wire [1:0]axi_dma_0_M_AXI_MM2S_ARBURST;
  wire [3:0]axi_dma_0_M_AXI_MM2S_ARCACHE;
  wire [7:0]axi_dma_0_M_AXI_MM2S_ARLEN;
  wire [2:0]axi_dma_0_M_AXI_MM2S_ARPROT;
  wire axi_dma_0_M_AXI_MM2S_ARREADY;
  wire [2:0]axi_dma_0_M_AXI_MM2S_ARSIZE;
  wire axi_dma_0_M_AXI_MM2S_ARVALID;
  wire [63:0]axi_dma_0_M_AXI_MM2S_RDATA;
  wire axi_dma_0_M_AXI_MM2S_RLAST;
  wire axi_dma_0_M_AXI_MM2S_RREADY;
  wire [1:0]axi_dma_0_M_AXI_MM2S_RRESP;
  wire axi_dma_0_M_AXI_MM2S_RVALID;
  wire [14:0]processing_system7_0_DDR_ADDR;
  wire [2:0]processing_system7_0_DDR_BA;
  wire processing_system7_0_DDR_CAS_N;
  wire processing_system7_0_DDR_CKE;
  wire processing_system7_0_DDR_CK_N;
  wire processing_system7_0_DDR_CK_P;
  wire processing_system7_0_DDR_CS_N;
  wire [3:0]processing_system7_0_DDR_DM;
  wire [31:0]processing_system7_0_DDR_DQ;
  wire [3:0]processing_system7_0_DDR_DQS_N;
  wire [3:0]processing_system7_0_DDR_DQS_P;
  wire processing_system7_0_DDR_ODT;
  wire processing_system7_0_DDR_RAS_N;
  wire processing_system7_0_DDR_RESET_N;
  wire processing_system7_0_DDR_WE_N;
  wire processing_system7_0_FCLK_CLK0;
  wire processing_system7_0_FCLK_RESET0_N;
  wire processing_system7_0_FIXED_IO_DDR_VRN;
  wire processing_system7_0_FIXED_IO_DDR_VRP;
  wire [53:0]processing_system7_0_FIXED_IO_MIO;
  wire processing_system7_0_FIXED_IO_PS_CLK;
  wire processing_system7_0_FIXED_IO_PS_PORB;
  wire processing_system7_0_FIXED_IO_PS_SRSTB;
  wire [31:0]processing_system7_0_M_AXI_GP0_ARADDR;
  wire [1:0]processing_system7_0_M_AXI_GP0_ARBURST;
  wire [3:0]processing_system7_0_M_AXI_GP0_ARCACHE;
  wire [11:0]processing_system7_0_M_AXI_GP0_ARID;
  wire [3:0]processing_system7_0_M_AXI_GP0_ARLEN;
  wire [1:0]processing_system7_0_M_AXI_GP0_ARLOCK;
  wire [2:0]processing_system7_0_M_AXI_GP0_ARPROT;
  wire [3:0]processing_system7_0_M_AXI_GP0_ARQOS;
  wire processing_system7_0_M_AXI_GP0_ARREADY;
  wire [2:0]processing_system7_0_M_AXI_GP0_ARSIZE;
  wire processing_system7_0_M_AXI_GP0_ARVALID;
  wire [31:0]processing_system7_0_M_AXI_GP0_AWADDR;
  wire [1:0]processing_system7_0_M_AXI_GP0_AWBURST;
  wire [3:0]processing_system7_0_M_AXI_GP0_AWCACHE;
  wire [11:0]processing_system7_0_M_AXI_GP0_AWID;
  wire [3:0]processing_system7_0_M_AXI_GP0_AWLEN;
  wire [1:0]processing_system7_0_M_AXI_GP0_AWLOCK;
  wire [2:0]processing_system7_0_M_AXI_GP0_AWPROT;
  wire [3:0]processing_system7_0_M_AXI_GP0_AWQOS;
  wire processing_system7_0_M_AXI_GP0_AWREADY;
  wire [2:0]processing_system7_0_M_AXI_GP0_AWSIZE;
  wire processing_system7_0_M_AXI_GP0_AWVALID;
  wire [11:0]processing_system7_0_M_AXI_GP0_BID;
  wire processing_system7_0_M_AXI_GP0_BREADY;
  wire [1:0]processing_system7_0_M_AXI_GP0_BRESP;
  wire processing_system7_0_M_AXI_GP0_BVALID;
  wire [31:0]processing_system7_0_M_AXI_GP0_RDATA;
  wire [11:0]processing_system7_0_M_AXI_GP0_RID;
  wire processing_system7_0_M_AXI_GP0_RLAST;
  wire processing_system7_0_M_AXI_GP0_RREADY;
  wire [1:0]processing_system7_0_M_AXI_GP0_RRESP;
  wire processing_system7_0_M_AXI_GP0_RVALID;
  wire [31:0]processing_system7_0_M_AXI_GP0_WDATA;
  wire [11:0]processing_system7_0_M_AXI_GP0_WID;
  wire processing_system7_0_M_AXI_GP0_WLAST;
  wire processing_system7_0_M_AXI_GP0_WREADY;
  wire [3:0]processing_system7_0_M_AXI_GP0_WSTRB;
  wire processing_system7_0_M_AXI_GP0_WVALID;
  wire [0:0]rst_ps7_0_50M_peripheral_aresetn;
  wire [31:0]smartconnect_0_M00_AXI_ARADDR;
  wire [1:0]smartconnect_0_M00_AXI_ARBURST;
  wire [3:0]smartconnect_0_M00_AXI_ARCACHE;
  wire [3:0]smartconnect_0_M00_AXI_ARLEN;
  wire [1:0]smartconnect_0_M00_AXI_ARLOCK;
  wire [2:0]smartconnect_0_M00_AXI_ARPROT;
  wire [3:0]smartconnect_0_M00_AXI_ARQOS;
  wire smartconnect_0_M00_AXI_ARREADY;
  wire [2:0]smartconnect_0_M00_AXI_ARSIZE;
  wire smartconnect_0_M00_AXI_ARVALID;
  wire [31:0]smartconnect_0_M00_AXI_AWADDR;
  wire [1:0]smartconnect_0_M00_AXI_AWBURST;
  wire [3:0]smartconnect_0_M00_AXI_AWCACHE;
  wire [3:0]smartconnect_0_M00_AXI_AWLEN;
  wire [1:0]smartconnect_0_M00_AXI_AWLOCK;
  wire [2:0]smartconnect_0_M00_AXI_AWPROT;
  wire [3:0]smartconnect_0_M00_AXI_AWQOS;
  wire smartconnect_0_M00_AXI_AWREADY;
  wire [2:0]smartconnect_0_M00_AXI_AWSIZE;
  wire smartconnect_0_M00_AXI_AWVALID;
  wire smartconnect_0_M00_AXI_BREADY;
  wire [1:0]smartconnect_0_M00_AXI_BRESP;
  wire smartconnect_0_M00_AXI_BVALID;
  wire [63:0]smartconnect_0_M00_AXI_RDATA;
  wire smartconnect_0_M00_AXI_RLAST;
  wire smartconnect_0_M00_AXI_RREADY;
  wire [1:0]smartconnect_0_M00_AXI_RRESP;
  wire smartconnect_0_M00_AXI_RVALID;
  wire [63:0]smartconnect_0_M00_AXI_WDATA;
  wire smartconnect_0_M00_AXI_WLAST;
  wire smartconnect_0_M00_AXI_WREADY;
  wire [7:0]smartconnect_0_M00_AXI_WSTRB;
  wire smartconnect_0_M00_AXI_WVALID;
  wire [31:0]smartconnect_1_M00_AXI_ARADDR;
  wire [1:0]smartconnect_1_M00_AXI_ARBURST;
  wire [3:0]smartconnect_1_M00_AXI_ARCACHE;
  wire [3:0]smartconnect_1_M00_AXI_ARLEN;
  wire [1:0]smartconnect_1_M00_AXI_ARLOCK;
  wire [2:0]smartconnect_1_M00_AXI_ARPROT;
  wire [3:0]smartconnect_1_M00_AXI_ARQOS;
  wire smartconnect_1_M00_AXI_ARREADY;
  wire [2:0]smartconnect_1_M00_AXI_ARSIZE;
  wire smartconnect_1_M00_AXI_ARVALID;
  wire [31:0]smartconnect_1_M00_AXI_AWADDR;
  wire [1:0]smartconnect_1_M00_AXI_AWBURST;
  wire [3:0]smartconnect_1_M00_AXI_AWCACHE;
  wire [3:0]smartconnect_1_M00_AXI_AWLEN;
  wire [1:0]smartconnect_1_M00_AXI_AWLOCK;
  wire [2:0]smartconnect_1_M00_AXI_AWPROT;
  wire [3:0]smartconnect_1_M00_AXI_AWQOS;
  wire smartconnect_1_M00_AXI_AWREADY;
  wire [2:0]smartconnect_1_M00_AXI_AWSIZE;
  wire smartconnect_1_M00_AXI_AWVALID;
  wire smartconnect_1_M00_AXI_BREADY;
  wire [1:0]smartconnect_1_M00_AXI_BRESP;
  wire smartconnect_1_M00_AXI_BVALID;
  wire [63:0]smartconnect_1_M00_AXI_RDATA;
  wire smartconnect_1_M00_AXI_RLAST;
  wire smartconnect_1_M00_AXI_RREADY;
  wire [1:0]smartconnect_1_M00_AXI_RRESP;
  wire smartconnect_1_M00_AXI_RVALID;
  wire [63:0]smartconnect_1_M00_AXI_WDATA;
  wire smartconnect_1_M00_AXI_WLAST;
  wire smartconnect_1_M00_AXI_WREADY;
  wire [7:0]smartconnect_1_M00_AXI_WSTRB;
  wire smartconnect_1_M00_AXI_WVALID;
  wire [31:0]smartconnect_2_M00_AXI_ARADDR;
  wire [1:0]smartconnect_2_M00_AXI_ARBURST;
  wire [3:0]smartconnect_2_M00_AXI_ARCACHE;
  wire [3:0]smartconnect_2_M00_AXI_ARLEN;
  wire [1:0]smartconnect_2_M00_AXI_ARLOCK;
  wire [2:0]smartconnect_2_M00_AXI_ARPROT;
  wire [3:0]smartconnect_2_M00_AXI_ARQOS;
  wire smartconnect_2_M00_AXI_ARREADY;
  wire [2:0]smartconnect_2_M00_AXI_ARSIZE;
  wire smartconnect_2_M00_AXI_ARVALID;
  wire [63:0]smartconnect_2_M00_AXI_RDATA;
  wire smartconnect_2_M00_AXI_RLAST;
  wire smartconnect_2_M00_AXI_RREADY;
  wire [1:0]smartconnect_2_M00_AXI_RRESP;
  wire smartconnect_2_M00_AXI_RVALID;
  wire [9:0]smartconnect_3_M00_AXI_ARADDR;
  wire smartconnect_3_M00_AXI_ARREADY;
  wire smartconnect_3_M00_AXI_ARVALID;
  wire [9:0]smartconnect_3_M00_AXI_AWADDR;
  wire smartconnect_3_M00_AXI_AWREADY;
  wire smartconnect_3_M00_AXI_AWVALID;
  wire smartconnect_3_M00_AXI_BREADY;
  wire [1:0]smartconnect_3_M00_AXI_BRESP;
  wire smartconnect_3_M00_AXI_BVALID;
  wire [31:0]smartconnect_3_M00_AXI_RDATA;
  wire smartconnect_3_M00_AXI_RREADY;
  wire [1:0]smartconnect_3_M00_AXI_RRESP;
  wire smartconnect_3_M00_AXI_RVALID;
  wire [31:0]smartconnect_3_M00_AXI_WDATA;
  wire smartconnect_3_M00_AXI_WREADY;
  wire smartconnect_3_M00_AXI_WVALID;
  wire [31:0]top_pynqz1_0_m_axi_dram0_ARADDR;
  wire [1:0]top_pynqz1_0_m_axi_dram0_ARBURST;
  wire [3:0]top_pynqz1_0_m_axi_dram0_ARCACHE;
  wire [5:0]top_pynqz1_0_m_axi_dram0_ARID;
  wire [7:0]top_pynqz1_0_m_axi_dram0_ARLEN;
  wire [1:0]top_pynqz1_0_m_axi_dram0_ARLOCK;
  wire [2:0]top_pynqz1_0_m_axi_dram0_ARPROT;
  wire [3:0]top_pynqz1_0_m_axi_dram0_ARQOS;
  wire top_pynqz1_0_m_axi_dram0_ARREADY;
  wire [2:0]top_pynqz1_0_m_axi_dram0_ARSIZE;
  wire top_pynqz1_0_m_axi_dram0_ARVALID;
  wire [31:0]top_pynqz1_0_m_axi_dram0_AWADDR;
  wire [1:0]top_pynqz1_0_m_axi_dram0_AWBURST;
  wire [3:0]top_pynqz1_0_m_axi_dram0_AWCACHE;
  wire [5:0]top_pynqz1_0_m_axi_dram0_AWID;
  wire [7:0]top_pynqz1_0_m_axi_dram0_AWLEN;
  wire [1:0]top_pynqz1_0_m_axi_dram0_AWLOCK;
  wire [2:0]top_pynqz1_0_m_axi_dram0_AWPROT;
  wire [3:0]top_pynqz1_0_m_axi_dram0_AWQOS;
  wire top_pynqz1_0_m_axi_dram0_AWREADY;
  wire [2:0]top_pynqz1_0_m_axi_dram0_AWSIZE;
  wire top_pynqz1_0_m_axi_dram0_AWVALID;
  wire [5:0]top_pynqz1_0_m_axi_dram0_BID;
  wire top_pynqz1_0_m_axi_dram0_BREADY;
  wire [1:0]top_pynqz1_0_m_axi_dram0_BRESP;
  wire top_pynqz1_0_m_axi_dram0_BVALID;
  wire [63:0]top_pynqz1_0_m_axi_dram0_RDATA;
  wire [5:0]top_pynqz1_0_m_axi_dram0_RID;
  wire top_pynqz1_0_m_axi_dram0_RLAST;
  wire top_pynqz1_0_m_axi_dram0_RREADY;
  wire [1:0]top_pynqz1_0_m_axi_dram0_RRESP;
  wire top_pynqz1_0_m_axi_dram0_RVALID;
  wire [63:0]top_pynqz1_0_m_axi_dram0_WDATA;
  wire top_pynqz1_0_m_axi_dram0_WLAST;
  wire top_pynqz1_0_m_axi_dram0_WREADY;
  wire [7:0]top_pynqz1_0_m_axi_dram0_WSTRB;
  wire top_pynqz1_0_m_axi_dram0_WVALID;
  wire [31:0]top_pynqz1_0_m_axi_dram1_ARADDR;
  wire [1:0]top_pynqz1_0_m_axi_dram1_ARBURST;
  wire [3:0]top_pynqz1_0_m_axi_dram1_ARCACHE;
  wire [5:0]top_pynqz1_0_m_axi_dram1_ARID;
  wire [7:0]top_pynqz1_0_m_axi_dram1_ARLEN;
  wire [1:0]top_pynqz1_0_m_axi_dram1_ARLOCK;
  wire [2:0]top_pynqz1_0_m_axi_dram1_ARPROT;
  wire [3:0]top_pynqz1_0_m_axi_dram1_ARQOS;
  wire top_pynqz1_0_m_axi_dram1_ARREADY;
  wire [2:0]top_pynqz1_0_m_axi_dram1_ARSIZE;
  wire top_pynqz1_0_m_axi_dram1_ARVALID;
  wire [31:0]top_pynqz1_0_m_axi_dram1_AWADDR;
  wire [1:0]top_pynqz1_0_m_axi_dram1_AWBURST;
  wire [3:0]top_pynqz1_0_m_axi_dram1_AWCACHE;
  wire [5:0]top_pynqz1_0_m_axi_dram1_AWID;
  wire [7:0]top_pynqz1_0_m_axi_dram1_AWLEN;
  wire [1:0]top_pynqz1_0_m_axi_dram1_AWLOCK;
  wire [2:0]top_pynqz1_0_m_axi_dram1_AWPROT;
  wire [3:0]top_pynqz1_0_m_axi_dram1_AWQOS;
  wire top_pynqz1_0_m_axi_dram1_AWREADY;
  wire [2:0]top_pynqz1_0_m_axi_dram1_AWSIZE;
  wire top_pynqz1_0_m_axi_dram1_AWVALID;
  wire [5:0]top_pynqz1_0_m_axi_dram1_BID;
  wire top_pynqz1_0_m_axi_dram1_BREADY;
  wire [1:0]top_pynqz1_0_m_axi_dram1_BRESP;
  wire top_pynqz1_0_m_axi_dram1_BVALID;
  wire [63:0]top_pynqz1_0_m_axi_dram1_RDATA;
  wire [5:0]top_pynqz1_0_m_axi_dram1_RID;
  wire top_pynqz1_0_m_axi_dram1_RLAST;
  wire top_pynqz1_0_m_axi_dram1_RREADY;
  wire [1:0]top_pynqz1_0_m_axi_dram1_RRESP;
  wire top_pynqz1_0_m_axi_dram1_RVALID;
  wire [63:0]top_pynqz1_0_m_axi_dram1_WDATA;
  wire top_pynqz1_0_m_axi_dram1_WLAST;
  wire top_pynqz1_0_m_axi_dram1_WREADY;
  wire [7:0]top_pynqz1_0_m_axi_dram1_WSTRB;
  wire top_pynqz1_0_m_axi_dram1_WVALID;

  tensil_pynqz2_axi_dma_0_0 axi_dma_0
       (.axi_resetn(rst_ps7_0_50M_peripheral_aresetn),
        .m_axi_mm2s_aclk(processing_system7_0_FCLK_CLK0),
        .m_axi_mm2s_araddr(axi_dma_0_M_AXI_MM2S_ARADDR),
        .m_axi_mm2s_arburst(axi_dma_0_M_AXI_MM2S_ARBURST),
        .m_axi_mm2s_arcache(axi_dma_0_M_AXI_MM2S_ARCACHE),
        .m_axi_mm2s_arlen(axi_dma_0_M_AXI_MM2S_ARLEN),
        .m_axi_mm2s_arprot(axi_dma_0_M_AXI_MM2S_ARPROT),
        .m_axi_mm2s_arready(axi_dma_0_M_AXI_MM2S_ARREADY),
        .m_axi_mm2s_arsize(axi_dma_0_M_AXI_MM2S_ARSIZE),
        .m_axi_mm2s_arvalid(axi_dma_0_M_AXI_MM2S_ARVALID),
        .m_axi_mm2s_rdata(axi_dma_0_M_AXI_MM2S_RDATA),
        .m_axi_mm2s_rlast(axi_dma_0_M_AXI_MM2S_RLAST),
        .m_axi_mm2s_rready(axi_dma_0_M_AXI_MM2S_RREADY),
        .m_axi_mm2s_rresp(axi_dma_0_M_AXI_MM2S_RRESP),
        .m_axi_mm2s_rvalid(axi_dma_0_M_AXI_MM2S_RVALID),
        .m_axis_mm2s_tdata(axi_dma_0_M_AXIS_MM2S_TDATA),
        .m_axis_mm2s_tlast(axi_dma_0_M_AXIS_MM2S_TLAST),
        .m_axis_mm2s_tready(axi_dma_0_M_AXIS_MM2S_TREADY),
        .m_axis_mm2s_tvalid(axi_dma_0_M_AXIS_MM2S_TVALID),
        .s_axi_lite_aclk(processing_system7_0_FCLK_CLK0),
        .s_axi_lite_araddr(smartconnect_3_M00_AXI_ARADDR),
        .s_axi_lite_arready(smartconnect_3_M00_AXI_ARREADY),
        .s_axi_lite_arvalid(smartconnect_3_M00_AXI_ARVALID),
        .s_axi_lite_awaddr(smartconnect_3_M00_AXI_AWADDR),
        .s_axi_lite_awready(smartconnect_3_M00_AXI_AWREADY),
        .s_axi_lite_awvalid(smartconnect_3_M00_AXI_AWVALID),
        .s_axi_lite_bready(smartconnect_3_M00_AXI_BREADY),
        .s_axi_lite_bresp(smartconnect_3_M00_AXI_BRESP),
        .s_axi_lite_bvalid(smartconnect_3_M00_AXI_BVALID),
        .s_axi_lite_rdata(smartconnect_3_M00_AXI_RDATA),
        .s_axi_lite_rready(smartconnect_3_M00_AXI_RREADY),
        .s_axi_lite_rresp(smartconnect_3_M00_AXI_RRESP),
        .s_axi_lite_rvalid(smartconnect_3_M00_AXI_RVALID),
        .s_axi_lite_wdata(smartconnect_3_M00_AXI_WDATA),
        .s_axi_lite_wready(smartconnect_3_M00_AXI_WREADY),
        .s_axi_lite_wvalid(smartconnect_3_M00_AXI_WVALID));
  tensil_pynqz2_processing_system7_0_0 processing_system7_0
       (.DDR_Addr(DDR_addr[14:0]),
        .DDR_BankAddr(DDR_ba[2:0]),
        .DDR_CAS_n(DDR_cas_n),
        .DDR_CKE(DDR_cke),
        .DDR_CS_n(DDR_cs_n),
        .DDR_Clk(DDR_ck_p),
        .DDR_Clk_n(DDR_ck_n),
        .DDR_DM(DDR_dm[3:0]),
        .DDR_DQ(DDR_dq[31:0]),
        .DDR_DQS(DDR_dqs_p[3:0]),
        .DDR_DQS_n(DDR_dqs_n[3:0]),
        .DDR_DRSTB(DDR_reset_n),
        .DDR_ODT(DDR_odt),
        .DDR_RAS_n(DDR_ras_n),
        .DDR_VRN(FIXED_IO_ddr_vrn),
        .DDR_VRP(FIXED_IO_ddr_vrp),
        .DDR_WEB(DDR_we_n),
        .FCLK_CLK0(processing_system7_0_FCLK_CLK0),
        .FCLK_RESET0_N(processing_system7_0_FCLK_RESET0_N),
        .MIO(FIXED_IO_mio[53:0]),
        .M_AXI_GP0_ACLK(processing_system7_0_FCLK_CLK0),
        .M_AXI_GP0_ARADDR(processing_system7_0_M_AXI_GP0_ARADDR),
        .M_AXI_GP0_ARBURST(processing_system7_0_M_AXI_GP0_ARBURST),
        .M_AXI_GP0_ARCACHE(processing_system7_0_M_AXI_GP0_ARCACHE),
        .M_AXI_GP0_ARID(processing_system7_0_M_AXI_GP0_ARID),
        .M_AXI_GP0_ARLEN(processing_system7_0_M_AXI_GP0_ARLEN),
        .M_AXI_GP0_ARLOCK(processing_system7_0_M_AXI_GP0_ARLOCK),
        .M_AXI_GP0_ARPROT(processing_system7_0_M_AXI_GP0_ARPROT),
        .M_AXI_GP0_ARQOS(processing_system7_0_M_AXI_GP0_ARQOS),
        .M_AXI_GP0_ARREADY(processing_system7_0_M_AXI_GP0_ARREADY),
        .M_AXI_GP0_ARSIZE(processing_system7_0_M_AXI_GP0_ARSIZE),
        .M_AXI_GP0_ARVALID(processing_system7_0_M_AXI_GP0_ARVALID),
        .M_AXI_GP0_AWADDR(processing_system7_0_M_AXI_GP0_AWADDR),
        .M_AXI_GP0_AWBURST(processing_system7_0_M_AXI_GP0_AWBURST),
        .M_AXI_GP0_AWCACHE(processing_system7_0_M_AXI_GP0_AWCACHE),
        .M_AXI_GP0_AWID(processing_system7_0_M_AXI_GP0_AWID),
        .M_AXI_GP0_AWLEN(processing_system7_0_M_AXI_GP0_AWLEN),
        .M_AXI_GP0_AWLOCK(processing_system7_0_M_AXI_GP0_AWLOCK),
        .M_AXI_GP0_AWPROT(processing_system7_0_M_AXI_GP0_AWPROT),
        .M_AXI_GP0_AWQOS(processing_system7_0_M_AXI_GP0_AWQOS),
        .M_AXI_GP0_AWREADY(processing_system7_0_M_AXI_GP0_AWREADY),
        .M_AXI_GP0_AWSIZE(processing_system7_0_M_AXI_GP0_AWSIZE),
        .M_AXI_GP0_AWVALID(processing_system7_0_M_AXI_GP0_AWVALID),
        .M_AXI_GP0_BID(processing_system7_0_M_AXI_GP0_BID),
        .M_AXI_GP0_BREADY(processing_system7_0_M_AXI_GP0_BREADY),
        .M_AXI_GP0_BRESP(processing_system7_0_M_AXI_GP0_BRESP),
        .M_AXI_GP0_BVALID(processing_system7_0_M_AXI_GP0_BVALID),
        .M_AXI_GP0_RDATA(processing_system7_0_M_AXI_GP0_RDATA),
        .M_AXI_GP0_RID(processing_system7_0_M_AXI_GP0_RID),
        .M_AXI_GP0_RLAST(processing_system7_0_M_AXI_GP0_RLAST),
        .M_AXI_GP0_RREADY(processing_system7_0_M_AXI_GP0_RREADY),
        .M_AXI_GP0_RRESP(processing_system7_0_M_AXI_GP0_RRESP),
        .M_AXI_GP0_RVALID(processing_system7_0_M_AXI_GP0_RVALID),
        .M_AXI_GP0_WDATA(processing_system7_0_M_AXI_GP0_WDATA),
        .M_AXI_GP0_WID(processing_system7_0_M_AXI_GP0_WID),
        .M_AXI_GP0_WLAST(processing_system7_0_M_AXI_GP0_WLAST),
        .M_AXI_GP0_WREADY(processing_system7_0_M_AXI_GP0_WREADY),
        .M_AXI_GP0_WSTRB(processing_system7_0_M_AXI_GP0_WSTRB),
        .M_AXI_GP0_WVALID(processing_system7_0_M_AXI_GP0_WVALID),
        .PS_CLK(FIXED_IO_ps_clk),
        .PS_PORB(FIXED_IO_ps_porb),
        .PS_SRSTB(FIXED_IO_ps_srstb),
        .S_AXI_HP0_ACLK(processing_system7_0_FCLK_CLK0),
        .S_AXI_HP0_ARADDR(smartconnect_0_M00_AXI_ARADDR),
        .S_AXI_HP0_ARBURST(smartconnect_0_M00_AXI_ARBURST),
        .S_AXI_HP0_ARCACHE(smartconnect_0_M00_AXI_ARCACHE),
        .S_AXI_HP0_ARID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP0_ARLEN(smartconnect_0_M00_AXI_ARLEN),
        .S_AXI_HP0_ARLOCK(smartconnect_0_M00_AXI_ARLOCK),
        .S_AXI_HP0_ARPROT(smartconnect_0_M00_AXI_ARPROT),
        .S_AXI_HP0_ARQOS(smartconnect_0_M00_AXI_ARQOS),
        .S_AXI_HP0_ARREADY(smartconnect_0_M00_AXI_ARREADY),
        .S_AXI_HP0_ARSIZE(smartconnect_0_M00_AXI_ARSIZE),
        .S_AXI_HP0_ARVALID(smartconnect_0_M00_AXI_ARVALID),
        .S_AXI_HP0_AWADDR(smartconnect_0_M00_AXI_AWADDR),
        .S_AXI_HP0_AWBURST(smartconnect_0_M00_AXI_AWBURST),
        .S_AXI_HP0_AWCACHE(smartconnect_0_M00_AXI_AWCACHE),
        .S_AXI_HP0_AWID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP0_AWLEN(smartconnect_0_M00_AXI_AWLEN),
        .S_AXI_HP0_AWLOCK(smartconnect_0_M00_AXI_AWLOCK),
        .S_AXI_HP0_AWPROT(smartconnect_0_M00_AXI_AWPROT),
        .S_AXI_HP0_AWQOS(smartconnect_0_M00_AXI_AWQOS),
        .S_AXI_HP0_AWREADY(smartconnect_0_M00_AXI_AWREADY),
        .S_AXI_HP0_AWSIZE(smartconnect_0_M00_AXI_AWSIZE),
        .S_AXI_HP0_AWVALID(smartconnect_0_M00_AXI_AWVALID),
        .S_AXI_HP0_BREADY(smartconnect_0_M00_AXI_BREADY),
        .S_AXI_HP0_BRESP(smartconnect_0_M00_AXI_BRESP),
        .S_AXI_HP0_BVALID(smartconnect_0_M00_AXI_BVALID),
        .S_AXI_HP0_RDATA(smartconnect_0_M00_AXI_RDATA),
        .S_AXI_HP0_RDISSUECAP1_EN(1'b0),
        .S_AXI_HP0_RLAST(smartconnect_0_M00_AXI_RLAST),
        .S_AXI_HP0_RREADY(smartconnect_0_M00_AXI_RREADY),
        .S_AXI_HP0_RRESP(smartconnect_0_M00_AXI_RRESP),
        .S_AXI_HP0_RVALID(smartconnect_0_M00_AXI_RVALID),
        .S_AXI_HP0_WDATA(smartconnect_0_M00_AXI_WDATA),
        .S_AXI_HP0_WID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP0_WLAST(smartconnect_0_M00_AXI_WLAST),
        .S_AXI_HP0_WREADY(smartconnect_0_M00_AXI_WREADY),
        .S_AXI_HP0_WRISSUECAP1_EN(1'b0),
        .S_AXI_HP0_WSTRB(smartconnect_0_M00_AXI_WSTRB),
        .S_AXI_HP0_WVALID(smartconnect_0_M00_AXI_WVALID),
        .S_AXI_HP1_ACLK(processing_system7_0_FCLK_CLK0),
        .S_AXI_HP1_ARADDR(smartconnect_2_M00_AXI_ARADDR),
        .S_AXI_HP1_ARBURST(smartconnect_2_M00_AXI_ARBURST),
        .S_AXI_HP1_ARCACHE(smartconnect_2_M00_AXI_ARCACHE),
        .S_AXI_HP1_ARID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP1_ARLEN(smartconnect_2_M00_AXI_ARLEN),
        .S_AXI_HP1_ARLOCK(smartconnect_2_M00_AXI_ARLOCK),
        .S_AXI_HP1_ARPROT(smartconnect_2_M00_AXI_ARPROT),
        .S_AXI_HP1_ARQOS(smartconnect_2_M00_AXI_ARQOS),
        .S_AXI_HP1_ARREADY(smartconnect_2_M00_AXI_ARREADY),
        .S_AXI_HP1_ARSIZE(smartconnect_2_M00_AXI_ARSIZE),
        .S_AXI_HP1_ARVALID(smartconnect_2_M00_AXI_ARVALID),
        .S_AXI_HP1_AWADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP1_AWBURST({1'b0,1'b1}),
        .S_AXI_HP1_AWCACHE({1'b0,1'b0,1'b1,1'b1}),
        .S_AXI_HP1_AWID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP1_AWLEN({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP1_AWLOCK({1'b0,1'b0}),
        .S_AXI_HP1_AWPROT({1'b0,1'b0,1'b0}),
        .S_AXI_HP1_AWQOS({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP1_AWSIZE({1'b0,1'b1,1'b1}),
        .S_AXI_HP1_AWVALID(1'b0),
        .S_AXI_HP1_BREADY(1'b0),
        .S_AXI_HP1_RDATA(smartconnect_2_M00_AXI_RDATA),
        .S_AXI_HP1_RDISSUECAP1_EN(1'b0),
        .S_AXI_HP1_RLAST(smartconnect_2_M00_AXI_RLAST),
        .S_AXI_HP1_RREADY(smartconnect_2_M00_AXI_RREADY),
        .S_AXI_HP1_RRESP(smartconnect_2_M00_AXI_RRESP),
        .S_AXI_HP1_RVALID(smartconnect_2_M00_AXI_RVALID),
        .S_AXI_HP1_WDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP1_WID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP1_WLAST(1'b0),
        .S_AXI_HP1_WRISSUECAP1_EN(1'b0),
        .S_AXI_HP1_WSTRB({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .S_AXI_HP1_WVALID(1'b0),
        .S_AXI_HP2_ACLK(processing_system7_0_FCLK_CLK0),
        .S_AXI_HP2_ARADDR(smartconnect_1_M00_AXI_ARADDR),
        .S_AXI_HP2_ARBURST(smartconnect_1_M00_AXI_ARBURST),
        .S_AXI_HP2_ARCACHE(smartconnect_1_M00_AXI_ARCACHE),
        .S_AXI_HP2_ARID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP2_ARLEN(smartconnect_1_M00_AXI_ARLEN),
        .S_AXI_HP2_ARLOCK(smartconnect_1_M00_AXI_ARLOCK),
        .S_AXI_HP2_ARPROT(smartconnect_1_M00_AXI_ARPROT),
        .S_AXI_HP2_ARQOS(smartconnect_1_M00_AXI_ARQOS),
        .S_AXI_HP2_ARREADY(smartconnect_1_M00_AXI_ARREADY),
        .S_AXI_HP2_ARSIZE(smartconnect_1_M00_AXI_ARSIZE),
        .S_AXI_HP2_ARVALID(smartconnect_1_M00_AXI_ARVALID),
        .S_AXI_HP2_AWADDR(smartconnect_1_M00_AXI_AWADDR),
        .S_AXI_HP2_AWBURST(smartconnect_1_M00_AXI_AWBURST),
        .S_AXI_HP2_AWCACHE(smartconnect_1_M00_AXI_AWCACHE),
        .S_AXI_HP2_AWID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP2_AWLEN(smartconnect_1_M00_AXI_AWLEN),
        .S_AXI_HP2_AWLOCK(smartconnect_1_M00_AXI_AWLOCK),
        .S_AXI_HP2_AWPROT(smartconnect_1_M00_AXI_AWPROT),
        .S_AXI_HP2_AWQOS(smartconnect_1_M00_AXI_AWQOS),
        .S_AXI_HP2_AWREADY(smartconnect_1_M00_AXI_AWREADY),
        .S_AXI_HP2_AWSIZE(smartconnect_1_M00_AXI_AWSIZE),
        .S_AXI_HP2_AWVALID(smartconnect_1_M00_AXI_AWVALID),
        .S_AXI_HP2_BREADY(smartconnect_1_M00_AXI_BREADY),
        .S_AXI_HP2_BRESP(smartconnect_1_M00_AXI_BRESP),
        .S_AXI_HP2_BVALID(smartconnect_1_M00_AXI_BVALID),
        .S_AXI_HP2_RDATA(smartconnect_1_M00_AXI_RDATA),
        .S_AXI_HP2_RDISSUECAP1_EN(1'b0),
        .S_AXI_HP2_RLAST(smartconnect_1_M00_AXI_RLAST),
        .S_AXI_HP2_RREADY(smartconnect_1_M00_AXI_RREADY),
        .S_AXI_HP2_RRESP(smartconnect_1_M00_AXI_RRESP),
        .S_AXI_HP2_RVALID(smartconnect_1_M00_AXI_RVALID),
        .S_AXI_HP2_WDATA(smartconnect_1_M00_AXI_WDATA),
        .S_AXI_HP2_WID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP2_WLAST(smartconnect_1_M00_AXI_WLAST),
        .S_AXI_HP2_WREADY(smartconnect_1_M00_AXI_WREADY),
        .S_AXI_HP2_WRISSUECAP1_EN(1'b0),
        .S_AXI_HP2_WSTRB(smartconnect_1_M00_AXI_WSTRB),
        .S_AXI_HP2_WVALID(smartconnect_1_M00_AXI_WVALID),
        .USB0_VBUS_PWRFAULT(1'b0));
  tensil_pynqz2_rst_ps7_0_50M_0 rst_ps7_0_50M
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(processing_system7_0_FCLK_RESET0_N),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_ps7_0_50M_peripheral_aresetn),
        .slowest_sync_clk(processing_system7_0_FCLK_CLK0));
  tensil_pynqz2_smartconnect_0_0 smartconnect_0
       (.M00_AXI_araddr(smartconnect_0_M00_AXI_ARADDR),
        .M00_AXI_arburst(smartconnect_0_M00_AXI_ARBURST),
        .M00_AXI_arcache(smartconnect_0_M00_AXI_ARCACHE),
        .M00_AXI_arlen(smartconnect_0_M00_AXI_ARLEN),
        .M00_AXI_arlock(smartconnect_0_M00_AXI_ARLOCK),
        .M00_AXI_arprot(smartconnect_0_M00_AXI_ARPROT),
        .M00_AXI_arqos(smartconnect_0_M00_AXI_ARQOS),
        .M00_AXI_arready(smartconnect_0_M00_AXI_ARREADY),
        .M00_AXI_arsize(smartconnect_0_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(smartconnect_0_M00_AXI_ARVALID),
        .M00_AXI_awaddr(smartconnect_0_M00_AXI_AWADDR),
        .M00_AXI_awburst(smartconnect_0_M00_AXI_AWBURST),
        .M00_AXI_awcache(smartconnect_0_M00_AXI_AWCACHE),
        .M00_AXI_awlen(smartconnect_0_M00_AXI_AWLEN),
        .M00_AXI_awlock(smartconnect_0_M00_AXI_AWLOCK),
        .M00_AXI_awprot(smartconnect_0_M00_AXI_AWPROT),
        .M00_AXI_awqos(smartconnect_0_M00_AXI_AWQOS),
        .M00_AXI_awready(smartconnect_0_M00_AXI_AWREADY),
        .M00_AXI_awsize(smartconnect_0_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(smartconnect_0_M00_AXI_AWVALID),
        .M00_AXI_bready(smartconnect_0_M00_AXI_BREADY),
        .M00_AXI_bresp(smartconnect_0_M00_AXI_BRESP),
        .M00_AXI_bvalid(smartconnect_0_M00_AXI_BVALID),
        .M00_AXI_rdata(smartconnect_0_M00_AXI_RDATA),
        .M00_AXI_rlast(smartconnect_0_M00_AXI_RLAST),
        .M00_AXI_rready(smartconnect_0_M00_AXI_RREADY),
        .M00_AXI_rresp(smartconnect_0_M00_AXI_RRESP),
        .M00_AXI_rvalid(smartconnect_0_M00_AXI_RVALID),
        .M00_AXI_wdata(smartconnect_0_M00_AXI_WDATA),
        .M00_AXI_wlast(smartconnect_0_M00_AXI_WLAST),
        .M00_AXI_wready(smartconnect_0_M00_AXI_WREADY),
        .M00_AXI_wstrb(smartconnect_0_M00_AXI_WSTRB),
        .M00_AXI_wvalid(smartconnect_0_M00_AXI_WVALID),
        .S00_AXI_araddr(top_pynqz1_0_m_axi_dram0_ARADDR),
        .S00_AXI_arburst(top_pynqz1_0_m_axi_dram0_ARBURST),
        .S00_AXI_arcache(top_pynqz1_0_m_axi_dram0_ARCACHE),
        .S00_AXI_arid(top_pynqz1_0_m_axi_dram0_ARID),
        .S00_AXI_arlen(top_pynqz1_0_m_axi_dram0_ARLEN),
        .S00_AXI_arlock(top_pynqz1_0_m_axi_dram0_ARLOCK[0]),
        .S00_AXI_arprot(top_pynqz1_0_m_axi_dram0_ARPROT),
        .S00_AXI_arqos(top_pynqz1_0_m_axi_dram0_ARQOS),
        .S00_AXI_arready(top_pynqz1_0_m_axi_dram0_ARREADY),
        .S00_AXI_arsize(top_pynqz1_0_m_axi_dram0_ARSIZE),
        .S00_AXI_arvalid(top_pynqz1_0_m_axi_dram0_ARVALID),
        .S00_AXI_awaddr(top_pynqz1_0_m_axi_dram0_AWADDR),
        .S00_AXI_awburst(top_pynqz1_0_m_axi_dram0_AWBURST),
        .S00_AXI_awcache(top_pynqz1_0_m_axi_dram0_AWCACHE),
        .S00_AXI_awid(top_pynqz1_0_m_axi_dram0_AWID),
        .S00_AXI_awlen(top_pynqz1_0_m_axi_dram0_AWLEN),
        .S00_AXI_awlock(top_pynqz1_0_m_axi_dram0_AWLOCK[0]),
        .S00_AXI_awprot(top_pynqz1_0_m_axi_dram0_AWPROT),
        .S00_AXI_awqos(top_pynqz1_0_m_axi_dram0_AWQOS),
        .S00_AXI_awready(top_pynqz1_0_m_axi_dram0_AWREADY),
        .S00_AXI_awsize(top_pynqz1_0_m_axi_dram0_AWSIZE),
        .S00_AXI_awvalid(top_pynqz1_0_m_axi_dram0_AWVALID),
        .S00_AXI_bid(top_pynqz1_0_m_axi_dram0_BID),
        .S00_AXI_bready(top_pynqz1_0_m_axi_dram0_BREADY),
        .S00_AXI_bresp(top_pynqz1_0_m_axi_dram0_BRESP),
        .S00_AXI_bvalid(top_pynqz1_0_m_axi_dram0_BVALID),
        .S00_AXI_rdata(top_pynqz1_0_m_axi_dram0_RDATA),
        .S00_AXI_rid(top_pynqz1_0_m_axi_dram0_RID),
        .S00_AXI_rlast(top_pynqz1_0_m_axi_dram0_RLAST),
        .S00_AXI_rready(top_pynqz1_0_m_axi_dram0_RREADY),
        .S00_AXI_rresp(top_pynqz1_0_m_axi_dram0_RRESP),
        .S00_AXI_rvalid(top_pynqz1_0_m_axi_dram0_RVALID),
        .S00_AXI_wdata(top_pynqz1_0_m_axi_dram0_WDATA),
        .S00_AXI_wlast(top_pynqz1_0_m_axi_dram0_WLAST),
        .S00_AXI_wready(top_pynqz1_0_m_axi_dram0_WREADY),
        .S00_AXI_wstrb(top_pynqz1_0_m_axi_dram0_WSTRB),
        .S00_AXI_wvalid(top_pynqz1_0_m_axi_dram0_WVALID),
        .aclk(processing_system7_0_FCLK_CLK0),
        .aresetn(1'b1));
  tensil_pynqz2_smartconnect_1_0 smartconnect_1
       (.M00_AXI_araddr(smartconnect_1_M00_AXI_ARADDR),
        .M00_AXI_arburst(smartconnect_1_M00_AXI_ARBURST),
        .M00_AXI_arcache(smartconnect_1_M00_AXI_ARCACHE),
        .M00_AXI_arlen(smartconnect_1_M00_AXI_ARLEN),
        .M00_AXI_arlock(smartconnect_1_M00_AXI_ARLOCK),
        .M00_AXI_arprot(smartconnect_1_M00_AXI_ARPROT),
        .M00_AXI_arqos(smartconnect_1_M00_AXI_ARQOS),
        .M00_AXI_arready(smartconnect_1_M00_AXI_ARREADY),
        .M00_AXI_arsize(smartconnect_1_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(smartconnect_1_M00_AXI_ARVALID),
        .M00_AXI_awaddr(smartconnect_1_M00_AXI_AWADDR),
        .M00_AXI_awburst(smartconnect_1_M00_AXI_AWBURST),
        .M00_AXI_awcache(smartconnect_1_M00_AXI_AWCACHE),
        .M00_AXI_awlen(smartconnect_1_M00_AXI_AWLEN),
        .M00_AXI_awlock(smartconnect_1_M00_AXI_AWLOCK),
        .M00_AXI_awprot(smartconnect_1_M00_AXI_AWPROT),
        .M00_AXI_awqos(smartconnect_1_M00_AXI_AWQOS),
        .M00_AXI_awready(smartconnect_1_M00_AXI_AWREADY),
        .M00_AXI_awsize(smartconnect_1_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(smartconnect_1_M00_AXI_AWVALID),
        .M00_AXI_bready(smartconnect_1_M00_AXI_BREADY),
        .M00_AXI_bresp(smartconnect_1_M00_AXI_BRESP),
        .M00_AXI_bvalid(smartconnect_1_M00_AXI_BVALID),
        .M00_AXI_rdata(smartconnect_1_M00_AXI_RDATA),
        .M00_AXI_rlast(smartconnect_1_M00_AXI_RLAST),
        .M00_AXI_rready(smartconnect_1_M00_AXI_RREADY),
        .M00_AXI_rresp(smartconnect_1_M00_AXI_RRESP),
        .M00_AXI_rvalid(smartconnect_1_M00_AXI_RVALID),
        .M00_AXI_wdata(smartconnect_1_M00_AXI_WDATA),
        .M00_AXI_wlast(smartconnect_1_M00_AXI_WLAST),
        .M00_AXI_wready(smartconnect_1_M00_AXI_WREADY),
        .M00_AXI_wstrb(smartconnect_1_M00_AXI_WSTRB),
        .M00_AXI_wvalid(smartconnect_1_M00_AXI_WVALID),
        .S00_AXI_araddr(top_pynqz1_0_m_axi_dram1_ARADDR),
        .S00_AXI_arburst(top_pynqz1_0_m_axi_dram1_ARBURST),
        .S00_AXI_arcache(top_pynqz1_0_m_axi_dram1_ARCACHE),
        .S00_AXI_arid(top_pynqz1_0_m_axi_dram1_ARID),
        .S00_AXI_arlen(top_pynqz1_0_m_axi_dram1_ARLEN),
        .S00_AXI_arlock(top_pynqz1_0_m_axi_dram1_ARLOCK[0]),
        .S00_AXI_arprot(top_pynqz1_0_m_axi_dram1_ARPROT),
        .S00_AXI_arqos(top_pynqz1_0_m_axi_dram1_ARQOS),
        .S00_AXI_arready(top_pynqz1_0_m_axi_dram1_ARREADY),
        .S00_AXI_arsize(top_pynqz1_0_m_axi_dram1_ARSIZE),
        .S00_AXI_arvalid(top_pynqz1_0_m_axi_dram1_ARVALID),
        .S00_AXI_awaddr(top_pynqz1_0_m_axi_dram1_AWADDR),
        .S00_AXI_awburst(top_pynqz1_0_m_axi_dram1_AWBURST),
        .S00_AXI_awcache(top_pynqz1_0_m_axi_dram1_AWCACHE),
        .S00_AXI_awid(top_pynqz1_0_m_axi_dram1_AWID),
        .S00_AXI_awlen(top_pynqz1_0_m_axi_dram1_AWLEN),
        .S00_AXI_awlock(top_pynqz1_0_m_axi_dram1_AWLOCK[0]),
        .S00_AXI_awprot(top_pynqz1_0_m_axi_dram1_AWPROT),
        .S00_AXI_awqos(top_pynqz1_0_m_axi_dram1_AWQOS),
        .S00_AXI_awready(top_pynqz1_0_m_axi_dram1_AWREADY),
        .S00_AXI_awsize(top_pynqz1_0_m_axi_dram1_AWSIZE),
        .S00_AXI_awvalid(top_pynqz1_0_m_axi_dram1_AWVALID),
        .S00_AXI_bid(top_pynqz1_0_m_axi_dram1_BID),
        .S00_AXI_bready(top_pynqz1_0_m_axi_dram1_BREADY),
        .S00_AXI_bresp(top_pynqz1_0_m_axi_dram1_BRESP),
        .S00_AXI_bvalid(top_pynqz1_0_m_axi_dram1_BVALID),
        .S00_AXI_rdata(top_pynqz1_0_m_axi_dram1_RDATA),
        .S00_AXI_rid(top_pynqz1_0_m_axi_dram1_RID),
        .S00_AXI_rlast(top_pynqz1_0_m_axi_dram1_RLAST),
        .S00_AXI_rready(top_pynqz1_0_m_axi_dram1_RREADY),
        .S00_AXI_rresp(top_pynqz1_0_m_axi_dram1_RRESP),
        .S00_AXI_rvalid(top_pynqz1_0_m_axi_dram1_RVALID),
        .S00_AXI_wdata(top_pynqz1_0_m_axi_dram1_WDATA),
        .S00_AXI_wlast(top_pynqz1_0_m_axi_dram1_WLAST),
        .S00_AXI_wready(top_pynqz1_0_m_axi_dram1_WREADY),
        .S00_AXI_wstrb(top_pynqz1_0_m_axi_dram1_WSTRB),
        .S00_AXI_wvalid(top_pynqz1_0_m_axi_dram1_WVALID),
        .aclk(processing_system7_0_FCLK_CLK0),
        .aresetn(1'b1));
  tensil_pynqz2_smartconnect_2_0 smartconnect_2
       (.M00_AXI_araddr(smartconnect_2_M00_AXI_ARADDR),
        .M00_AXI_arburst(smartconnect_2_M00_AXI_ARBURST),
        .M00_AXI_arcache(smartconnect_2_M00_AXI_ARCACHE),
        .M00_AXI_arlen(smartconnect_2_M00_AXI_ARLEN),
        .M00_AXI_arlock(smartconnect_2_M00_AXI_ARLOCK),
        .M00_AXI_arprot(smartconnect_2_M00_AXI_ARPROT),
        .M00_AXI_arqos(smartconnect_2_M00_AXI_ARQOS),
        .M00_AXI_arready(smartconnect_2_M00_AXI_ARREADY),
        .M00_AXI_arsize(smartconnect_2_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(smartconnect_2_M00_AXI_ARVALID),
        .M00_AXI_rdata(smartconnect_2_M00_AXI_RDATA),
        .M00_AXI_rlast(smartconnect_2_M00_AXI_RLAST),
        .M00_AXI_rready(smartconnect_2_M00_AXI_RREADY),
        .M00_AXI_rresp(smartconnect_2_M00_AXI_RRESP),
        .M00_AXI_rvalid(smartconnect_2_M00_AXI_RVALID),
        .S00_AXI_araddr(axi_dma_0_M_AXI_MM2S_ARADDR),
        .S00_AXI_arburst(axi_dma_0_M_AXI_MM2S_ARBURST),
        .S00_AXI_arcache(axi_dma_0_M_AXI_MM2S_ARCACHE),
        .S00_AXI_arlen(axi_dma_0_M_AXI_MM2S_ARLEN),
        .S00_AXI_arlock(1'b0),
        .S00_AXI_arprot(axi_dma_0_M_AXI_MM2S_ARPROT),
        .S00_AXI_arqos({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_arready(axi_dma_0_M_AXI_MM2S_ARREADY),
        .S00_AXI_arsize(axi_dma_0_M_AXI_MM2S_ARSIZE),
        .S00_AXI_arvalid(axi_dma_0_M_AXI_MM2S_ARVALID),
        .S00_AXI_rdata(axi_dma_0_M_AXI_MM2S_RDATA),
        .S00_AXI_rlast(axi_dma_0_M_AXI_MM2S_RLAST),
        .S00_AXI_rready(axi_dma_0_M_AXI_MM2S_RREADY),
        .S00_AXI_rresp(axi_dma_0_M_AXI_MM2S_RRESP),
        .S00_AXI_rvalid(axi_dma_0_M_AXI_MM2S_RVALID),
        .aclk(processing_system7_0_FCLK_CLK0),
        .aresetn(1'b1));
  tensil_pynqz2_smartconnect_3_0 smartconnect_3
       (.M00_AXI_araddr(smartconnect_3_M00_AXI_ARADDR),
        .M00_AXI_arready(smartconnect_3_M00_AXI_ARREADY),
        .M00_AXI_arvalid(smartconnect_3_M00_AXI_ARVALID),
        .M00_AXI_awaddr(smartconnect_3_M00_AXI_AWADDR),
        .M00_AXI_awready(smartconnect_3_M00_AXI_AWREADY),
        .M00_AXI_awvalid(smartconnect_3_M00_AXI_AWVALID),
        .M00_AXI_bready(smartconnect_3_M00_AXI_BREADY),
        .M00_AXI_bresp(smartconnect_3_M00_AXI_BRESP),
        .M00_AXI_bvalid(smartconnect_3_M00_AXI_BVALID),
        .M00_AXI_rdata(smartconnect_3_M00_AXI_RDATA),
        .M00_AXI_rready(smartconnect_3_M00_AXI_RREADY),
        .M00_AXI_rresp(smartconnect_3_M00_AXI_RRESP),
        .M00_AXI_rvalid(smartconnect_3_M00_AXI_RVALID),
        .M00_AXI_wdata(smartconnect_3_M00_AXI_WDATA),
        .M00_AXI_wready(smartconnect_3_M00_AXI_WREADY),
        .M00_AXI_wvalid(smartconnect_3_M00_AXI_WVALID),
        .S00_AXI_araddr(processing_system7_0_M_AXI_GP0_ARADDR),
        .S00_AXI_arburst(processing_system7_0_M_AXI_GP0_ARBURST),
        .S00_AXI_arcache(processing_system7_0_M_AXI_GP0_ARCACHE),
        .S00_AXI_arid(processing_system7_0_M_AXI_GP0_ARID),
        .S00_AXI_arlen(processing_system7_0_M_AXI_GP0_ARLEN),
        .S00_AXI_arlock(processing_system7_0_M_AXI_GP0_ARLOCK),
        .S00_AXI_arprot(processing_system7_0_M_AXI_GP0_ARPROT),
        .S00_AXI_arqos(processing_system7_0_M_AXI_GP0_ARQOS),
        .S00_AXI_arready(processing_system7_0_M_AXI_GP0_ARREADY),
        .S00_AXI_arsize(processing_system7_0_M_AXI_GP0_ARSIZE),
        .S00_AXI_arvalid(processing_system7_0_M_AXI_GP0_ARVALID),
        .S00_AXI_awaddr(processing_system7_0_M_AXI_GP0_AWADDR),
        .S00_AXI_awburst(processing_system7_0_M_AXI_GP0_AWBURST),
        .S00_AXI_awcache(processing_system7_0_M_AXI_GP0_AWCACHE),
        .S00_AXI_awid(processing_system7_0_M_AXI_GP0_AWID),
        .S00_AXI_awlen(processing_system7_0_M_AXI_GP0_AWLEN),
        .S00_AXI_awlock(processing_system7_0_M_AXI_GP0_AWLOCK),
        .S00_AXI_awprot(processing_system7_0_M_AXI_GP0_AWPROT),
        .S00_AXI_awqos(processing_system7_0_M_AXI_GP0_AWQOS),
        .S00_AXI_awready(processing_system7_0_M_AXI_GP0_AWREADY),
        .S00_AXI_awsize(processing_system7_0_M_AXI_GP0_AWSIZE),
        .S00_AXI_awvalid(processing_system7_0_M_AXI_GP0_AWVALID),
        .S00_AXI_bid(processing_system7_0_M_AXI_GP0_BID),
        .S00_AXI_bready(processing_system7_0_M_AXI_GP0_BREADY),
        .S00_AXI_bresp(processing_system7_0_M_AXI_GP0_BRESP),
        .S00_AXI_bvalid(processing_system7_0_M_AXI_GP0_BVALID),
        .S00_AXI_rdata(processing_system7_0_M_AXI_GP0_RDATA),
        .S00_AXI_rid(processing_system7_0_M_AXI_GP0_RID),
        .S00_AXI_rlast(processing_system7_0_M_AXI_GP0_RLAST),
        .S00_AXI_rready(processing_system7_0_M_AXI_GP0_RREADY),
        .S00_AXI_rresp(processing_system7_0_M_AXI_GP0_RRESP),
        .S00_AXI_rvalid(processing_system7_0_M_AXI_GP0_RVALID),
        .S00_AXI_wdata(processing_system7_0_M_AXI_GP0_WDATA),
        .S00_AXI_wid(processing_system7_0_M_AXI_GP0_WID),
        .S00_AXI_wlast(processing_system7_0_M_AXI_GP0_WLAST),
        .S00_AXI_wready(processing_system7_0_M_AXI_GP0_WREADY),
        .S00_AXI_wstrb(processing_system7_0_M_AXI_GP0_WSTRB),
        .S00_AXI_wvalid(processing_system7_0_M_AXI_GP0_WVALID),
        .aclk(processing_system7_0_FCLK_CLK0),
        .aresetn(1'b1));
  tensil_pynqz2_top_pynqz1_0_0 top_pynqz1_0
       (.clock(processing_system7_0_FCLK_CLK0),
        .instruction_tdata(axi_dma_0_M_AXIS_MM2S_TDATA),
        .instruction_tlast(axi_dma_0_M_AXIS_MM2S_TLAST),
        .instruction_tready(axi_dma_0_M_AXIS_MM2S_TREADY),
        .instruction_tvalid(axi_dma_0_M_AXIS_MM2S_TVALID),
        .m_axi_dram0_araddr(top_pynqz1_0_m_axi_dram0_ARADDR),
        .m_axi_dram0_arburst(top_pynqz1_0_m_axi_dram0_ARBURST),
        .m_axi_dram0_arcache(top_pynqz1_0_m_axi_dram0_ARCACHE),
        .m_axi_dram0_arid(top_pynqz1_0_m_axi_dram0_ARID),
        .m_axi_dram0_arlen(top_pynqz1_0_m_axi_dram0_ARLEN),
        .m_axi_dram0_arlock(top_pynqz1_0_m_axi_dram0_ARLOCK),
        .m_axi_dram0_arprot(top_pynqz1_0_m_axi_dram0_ARPROT),
        .m_axi_dram0_arqos(top_pynqz1_0_m_axi_dram0_ARQOS),
        .m_axi_dram0_arready(top_pynqz1_0_m_axi_dram0_ARREADY),
        .m_axi_dram0_arsize(top_pynqz1_0_m_axi_dram0_ARSIZE),
        .m_axi_dram0_arvalid(top_pynqz1_0_m_axi_dram0_ARVALID),
        .m_axi_dram0_awaddr(top_pynqz1_0_m_axi_dram0_AWADDR),
        .m_axi_dram0_awburst(top_pynqz1_0_m_axi_dram0_AWBURST),
        .m_axi_dram0_awcache(top_pynqz1_0_m_axi_dram0_AWCACHE),
        .m_axi_dram0_awid(top_pynqz1_0_m_axi_dram0_AWID),
        .m_axi_dram0_awlen(top_pynqz1_0_m_axi_dram0_AWLEN),
        .m_axi_dram0_awlock(top_pynqz1_0_m_axi_dram0_AWLOCK),
        .m_axi_dram0_awprot(top_pynqz1_0_m_axi_dram0_AWPROT),
        .m_axi_dram0_awqos(top_pynqz1_0_m_axi_dram0_AWQOS),
        .m_axi_dram0_awready(top_pynqz1_0_m_axi_dram0_AWREADY),
        .m_axi_dram0_awsize(top_pynqz1_0_m_axi_dram0_AWSIZE),
        .m_axi_dram0_awvalid(top_pynqz1_0_m_axi_dram0_AWVALID),
        .m_axi_dram0_bid(top_pynqz1_0_m_axi_dram0_BID),
        .m_axi_dram0_bready(top_pynqz1_0_m_axi_dram0_BREADY),
        .m_axi_dram0_bresp(top_pynqz1_0_m_axi_dram0_BRESP),
        .m_axi_dram0_bvalid(top_pynqz1_0_m_axi_dram0_BVALID),
        .m_axi_dram0_rdata(top_pynqz1_0_m_axi_dram0_RDATA),
        .m_axi_dram0_rid(top_pynqz1_0_m_axi_dram0_RID),
        .m_axi_dram0_rlast(top_pynqz1_0_m_axi_dram0_RLAST),
        .m_axi_dram0_rready(top_pynqz1_0_m_axi_dram0_RREADY),
        .m_axi_dram0_rresp(top_pynqz1_0_m_axi_dram0_RRESP),
        .m_axi_dram0_rvalid(top_pynqz1_0_m_axi_dram0_RVALID),
        .m_axi_dram0_wdata(top_pynqz1_0_m_axi_dram0_WDATA),
        .m_axi_dram0_wlast(top_pynqz1_0_m_axi_dram0_WLAST),
        .m_axi_dram0_wready(top_pynqz1_0_m_axi_dram0_WREADY),
        .m_axi_dram0_wstrb(top_pynqz1_0_m_axi_dram0_WSTRB),
        .m_axi_dram0_wvalid(top_pynqz1_0_m_axi_dram0_WVALID),
        .m_axi_dram1_araddr(top_pynqz1_0_m_axi_dram1_ARADDR),
        .m_axi_dram1_arburst(top_pynqz1_0_m_axi_dram1_ARBURST),
        .m_axi_dram1_arcache(top_pynqz1_0_m_axi_dram1_ARCACHE),
        .m_axi_dram1_arid(top_pynqz1_0_m_axi_dram1_ARID),
        .m_axi_dram1_arlen(top_pynqz1_0_m_axi_dram1_ARLEN),
        .m_axi_dram1_arlock(top_pynqz1_0_m_axi_dram1_ARLOCK),
        .m_axi_dram1_arprot(top_pynqz1_0_m_axi_dram1_ARPROT),
        .m_axi_dram1_arqos(top_pynqz1_0_m_axi_dram1_ARQOS),
        .m_axi_dram1_arready(top_pynqz1_0_m_axi_dram1_ARREADY),
        .m_axi_dram1_arsize(top_pynqz1_0_m_axi_dram1_ARSIZE),
        .m_axi_dram1_arvalid(top_pynqz1_0_m_axi_dram1_ARVALID),
        .m_axi_dram1_awaddr(top_pynqz1_0_m_axi_dram1_AWADDR),
        .m_axi_dram1_awburst(top_pynqz1_0_m_axi_dram1_AWBURST),
        .m_axi_dram1_awcache(top_pynqz1_0_m_axi_dram1_AWCACHE),
        .m_axi_dram1_awid(top_pynqz1_0_m_axi_dram1_AWID),
        .m_axi_dram1_awlen(top_pynqz1_0_m_axi_dram1_AWLEN),
        .m_axi_dram1_awlock(top_pynqz1_0_m_axi_dram1_AWLOCK),
        .m_axi_dram1_awprot(top_pynqz1_0_m_axi_dram1_AWPROT),
        .m_axi_dram1_awqos(top_pynqz1_0_m_axi_dram1_AWQOS),
        .m_axi_dram1_awready(top_pynqz1_0_m_axi_dram1_AWREADY),
        .m_axi_dram1_awsize(top_pynqz1_0_m_axi_dram1_AWSIZE),
        .m_axi_dram1_awvalid(top_pynqz1_0_m_axi_dram1_AWVALID),
        .m_axi_dram1_bid(top_pynqz1_0_m_axi_dram1_BID),
        .m_axi_dram1_bready(top_pynqz1_0_m_axi_dram1_BREADY),
        .m_axi_dram1_bresp(top_pynqz1_0_m_axi_dram1_BRESP),
        .m_axi_dram1_bvalid(top_pynqz1_0_m_axi_dram1_BVALID),
        .m_axi_dram1_rdata(top_pynqz1_0_m_axi_dram1_RDATA),
        .m_axi_dram1_rid(top_pynqz1_0_m_axi_dram1_RID),
        .m_axi_dram1_rlast(top_pynqz1_0_m_axi_dram1_RLAST),
        .m_axi_dram1_rready(top_pynqz1_0_m_axi_dram1_RREADY),
        .m_axi_dram1_rresp(top_pynqz1_0_m_axi_dram1_RRESP),
        .m_axi_dram1_rvalid(top_pynqz1_0_m_axi_dram1_RVALID),
        .m_axi_dram1_wdata(top_pynqz1_0_m_axi_dram1_WDATA),
        .m_axi_dram1_wlast(top_pynqz1_0_m_axi_dram1_WLAST),
        .m_axi_dram1_wready(top_pynqz1_0_m_axi_dram1_WREADY),
        .m_axi_dram1_wstrb(top_pynqz1_0_m_axi_dram1_WSTRB),
        .m_axi_dram1_wvalid(top_pynqz1_0_m_axi_dram1_WVALID),
        .reset(rst_ps7_0_50M_peripheral_aresetn));
endmodule
