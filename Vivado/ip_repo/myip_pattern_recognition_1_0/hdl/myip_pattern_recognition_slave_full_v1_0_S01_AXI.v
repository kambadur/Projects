
`timescale 1 ns / 1 ps

	module myip_pattern_recognition_slave_full_v1_0_S01_AXI #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line

		// Width of ID for for write address, write data, read address and read data
		parameter integer C_S_AXI_ID_WIDTH	= 1,
		// Width of S_AXI data bus
		parameter integer C_S_AXI_DATA_WIDTH	= 32,
		// Width of S_AXI address bus
		parameter integer C_S_AXI_ADDR_WIDTH	= 6,
		// Width of optional user defined signal in write address channel
		parameter integer C_S_AXI_AWUSER_WIDTH	= 0,
		// Width of optional user defined signal in read address channel
		parameter integer C_S_AXI_ARUSER_WIDTH	= 0,
		// Width of optional user defined signal in write data channel
		parameter integer C_S_AXI_WUSER_WIDTH	= 0,
		// Width of optional user defined signal in read data channel
		parameter integer C_S_AXI_RUSER_WIDTH	= 0,
		// Width of optional user defined signal in write response channel
		parameter integer C_S_AXI_BUSER_WIDTH	= 0
	)
	(
		// Users to add ports here

		// User ports ends
		// Do not modify the ports beyond this line

		// Global Clock Signal
		input wire  S_AXI_ACLK,
		// Global Reset Signal. This Signal is Active LOW
		input wire  S_AXI_ARESETN,
		// Write Address ID
		input wire [C_S_AXI_ID_WIDTH-1 : 0] S_AXI_AWID,
		// Write address
		input wire [C_S_AXI_ADDR_WIDTH-1 : 0] S_AXI_AWADDR,
		// Burst length. The burst length gives the exact number of transfers in a burst
		input wire [7 : 0] S_AXI_AWLEN,
		// Burst size. This signal indicates the size of each transfer in the burst
		input wire [2 : 0] S_AXI_AWSIZE,
		// Burst type. The burst type and the size information, 
    // determine how the address for each transfer within the burst is calculated.
		input wire [1 : 0] S_AXI_AWBURST,
		// Lock type. Provides additional information about the
    // atomic characteristics of the transfer.
		input wire  S_AXI_AWLOCK,
		// Memory type. This signal indicates how transactions
    // are required to progress through a system.
		input wire [3 : 0] S_AXI_AWCACHE,
		// Protection type. This signal indicates the privilege
    // and security level of the transaction, and whether
    // the transaction is a data access or an instruction access.
		input wire [2 : 0] S_AXI_AWPROT,
		// Quality of Service, QoS identifier sent for each
    // write transaction.
		input wire [3 : 0] S_AXI_AWQOS,
		// Region identifier. Permits a single physical interface
    // on a slave to be used for multiple logical interfaces.
		input wire [3 : 0] S_AXI_AWREGION,
		// Optional User-defined signal in the write address channel.
		input wire [C_S_AXI_AWUSER_WIDTH-1 : 0] S_AXI_AWUSER,
		// Write address valid. This signal indicates that
    // the channel is signaling valid write address and
    // control information.
		input wire  S_AXI_AWVALID,
		// Write address ready. This signal indicates that
    // the slave is ready to accept an address and associated
    // control signals.
		output wire  S_AXI_AWREADY,
		// Write Data
		input wire [C_S_AXI_DATA_WIDTH-1 : 0] S_AXI_WDATA,
		// Write strobes. This signal indicates which byte
    // lanes hold valid data. There is one write strobe
    // bit for each eight bits of the write data bus.
		input wire [(C_S_AXI_DATA_WIDTH/8)-1 : 0] S_AXI_WSTRB,
		// Write last. This signal indicates the last transfer
    // in a write burst.
		input wire  S_AXI_WLAST,
		// Optional User-defined signal in the write data channel.
		input wire [C_S_AXI_WUSER_WIDTH-1 : 0] S_AXI_WUSER,
		// Write valid. This signal indicates that valid write
    // data and strobes are available.
		input wire  S_AXI_WVALID,
		// Write ready. This signal indicates that the slave
    // can accept the write data.
		output wire  S_AXI_WREADY,
		// Response ID tag. This signal is the ID tag of the
    // write response.
		output wire [C_S_AXI_ID_WIDTH-1 : 0] S_AXI_BID,
		// Write response. This signal indicates the status
    // of the write transaction.
		output wire [1 : 0] S_AXI_BRESP,
		// Optional User-defined signal in the write response channel.
		output wire [C_S_AXI_BUSER_WIDTH-1 : 0] S_AXI_BUSER,
		// Write response valid. This signal indicates that the
    // channel is signaling a valid write response.
		output wire  S_AXI_BVALID,
		// Response ready. This signal indicates that the master
    // can accept a write response.
		input wire  S_AXI_BREADY,
		// Read address ID. This signal is the identification
    // tag for the read address group of signals.
		input wire [C_S_AXI_ID_WIDTH-1 : 0] S_AXI_ARID,
		// Read address. This signal indicates the initial
    // address of a read burst transaction.
		input wire [C_S_AXI_ADDR_WIDTH-1 : 0] S_AXI_ARADDR,
		// Burst length. The burst length gives the exact number of transfers in a burst
		input wire [7 : 0] S_AXI_ARLEN,
		// Burst size. This signal indicates the size of each transfer in the burst
		input wire [2 : 0] S_AXI_ARSIZE,
		// Burst type. The burst type and the size information, 
    // determine how the address for each transfer within the burst is calculated.
		input wire [1 : 0] S_AXI_ARBURST,
		// Lock type. Provides additional information about the
    // atomic characteristics of the transfer.
		input wire  S_AXI_ARLOCK,
		// Memory type. This signal indicates how transactions
    // are required to progress through a system.
		input wire [3 : 0] S_AXI_ARCACHE,
		// Protection type. This signal indicates the privilege
    // and security level of the transaction, and whether
    // the transaction is a data access or an instruction access.
		input wire [2 : 0] S_AXI_ARPROT,
		// Quality of Service, QoS identifier sent for each
    // read transaction.
		input wire [3 : 0] S_AXI_ARQOS,
		// Region identifier. Permits a single physical interface
    // on a slave to be used for multiple logical interfaces.
		input wire [3 : 0] S_AXI_ARREGION,
		// Optional User-defined signal in the read address channel.
		input wire [C_S_AXI_ARUSER_WIDTH-1 : 0] S_AXI_ARUSER,
		// Write address valid. This signal indicates that
    // the channel is signaling valid read address and
    // control information.
		input wire  S_AXI_ARVALID,
		// Read address ready. This signal indicates that
    // the slave is ready to accept an address and associated
    // control signals.
		output wire  S_AXI_ARREADY,
		// Read ID tag. This signal is the identification tag
    // for the read data group of signals generated by the slave.
		output wire [C_S_AXI_ID_WIDTH-1 : 0] S_AXI_RID,
		// Read Data
		output wire [C_S_AXI_DATA_WIDTH-1 : 0] S_AXI_RDATA,
		// Read response. This signal indicates the status of
    // the read transfer.
		output wire [1 : 0] S_AXI_RRESP,
		// Read last. This signal indicates the last transfer
    // in a read burst.
		output wire  S_AXI_RLAST,
		// Optional User-defined signal in the read address channel.
		output wire [C_S_AXI_RUSER_WIDTH-1 : 0] S_AXI_RUSER,
		// Read valid. This signal indicates that the channel
    // is signaling the required read data.
		output wire  S_AXI_RVALID,
		// Read ready. This signal indicates that the master can
    // accept the read data and response information.
		input wire  S_AXI_RREADY
	);

	// AXI4FULL signals
	reg [C_S_AXI_ADDR_WIDTH-1 : 0] 	axi_awaddr;
	reg  	axi_awready;
	reg  	axi_wready;
	reg [C_S_AXI_ID_WIDTH-1 : 0] 	axi_bid;
	reg [1 : 0] 	axi_bresp;
	reg [C_S_AXI_BUSER_WIDTH-1 : 0] 	axi_buser;
	reg  	axi_bvalid;
	reg [C_S_AXI_ADDR_WIDTH-1 : 0] 	axi_araddr;
	reg  	axi_arready;
	reg [C_S_AXI_ID_WIDTH-1 : 0] 	axi_rid;
	reg [1 : 0] 	axi_rresp;
	reg  	axi_rlast;
	reg [C_S_AXI_RUSER_WIDTH-1 : 0] 	axi_ruser;
	reg  	axi_rvalid;
	// aw_wrap_en determines wrap boundary and enables wrapping
	wire aw_wrap_en;
	// ar_wrap_en determines wrap boundary and enables wrapping
	wire ar_wrap_en;
	// aw_wrap_size is the size of the write transfer, the
	// write address wraps to a lower address if upper address
	// limit is reached
	wire [31:0]  aw_wrap_size ; 
	// ar_wrap_size is the size of the read transfer, the
	// read address wraps to a lower address if upper address
	// limit is reached
	wire [31:0]  ar_wrap_size ; 
	// The axi_awlen_cntr internal write address counter to keep track of beats in a burst transaction
	reg [7:0] axi_awlen_cntr;
	//The axi_arlen_cntr internal read address counter to keep track of beats in a burst transaction
	reg [7:0] axi_arlen_cntr;
	reg [1:0] axi_arburst;
	reg [1:0] axi_awburst;
	reg [7:0] axi_arlen;
	reg [7:0] axi_awlen;
	//local parameter for addressing 32 bit / 64 bit C_S_AXI_DATA_WIDTH
	//ADDR_LSB is used for addressing 32/64 bit registers/memories
	//ADDR_LSB = 2 for 32 bits (n downto 2) 
	//ADDR_LSB = 3 for 64 bits (n downto 3)

	//ADDR_LSB = 4 for 128 bits (n downto 4)

	localparam integer ADDR_LSB = (C_S_AXI_DATA_WIDTH/32)+ 1;
	localparam integer OPT_MEM_ADDR_BITS = 3;
	localparam integer USER_NUM_MEM = 1;

	//----------------------------------------------
	//-- Signals for user logic memory space example
	//------------------------------------------------
	wire [OPT_MEM_ADDR_BITS:0] mem_address_read;
	wire [OPT_MEM_ADDR_BITS:0] mem_address_write;
	wire [C_S_AXI_DATA_WIDTH-1:0] mem_data_out[0 : USER_NUM_MEM-1];

	genvar i;
	genvar mem_byte_index;

	// I/O Connections assignments

	assign S_AXI_AWREADY	= axi_awready;
	assign S_AXI_WREADY	= axi_wready;
	assign S_AXI_BRESP	= axi_bresp;
	assign S_AXI_BUSER	= axi_buser;
	assign S_AXI_BVALID	= axi_bvalid;
	assign S_AXI_ARREADY	= axi_arready;
	assign S_AXI_RRESP	= axi_rresp;
	assign S_AXI_RLAST	= axi_rlast;
	assign S_AXI_RUSER	= axi_ruser;
	assign S_AXI_RVALID	= axi_rvalid;
	assign S_AXI_BID = axi_bid;
	assign S_AXI_RID = axi_rid;
	assign S_AXI_RDATA = mem_data_out[0];
	assign  aw_wrap_size = (C_S_AXI_DATA_WIDTH/8 * (axi_awlen)); 
	assign  ar_wrap_size = (C_S_AXI_DATA_WIDTH/8 * (axi_arlen)); 
	assign  aw_wrap_en = ((axi_awaddr & aw_wrap_size) == aw_wrap_size)? 1'b1: 1'b0;
	assign  ar_wrap_en = ((axi_araddr & ar_wrap_size) == ar_wrap_size)? 1'b1: 1'b0;

	//Implement Write state machine
	//Outstanding write transactions are not supported by the slave i.e., master should assert bready to receive response on or before it starts sending the new transaction
	 //state machines local parameters  
	 localparam Idle = 2'b00,Raddr = 2'b10,Rdata = 2'b11 ,Waddr = 2'b10,Wdata = 2'b11; 
	 //state_machine variables 
	 reg [1:0] state_read; 
	 reg [1:0] state_write; 
	 always @(posedge S_AXI_ACLK)                                  
	   begin                                  
	     if (S_AXI_ARESETN == 1'b0)                                  
	       begin                                  
	        // asserting initial values to all 0's during reset                                  
	        axi_awready <= 0;                                  
	        axi_wready <= 0;                                  
	        axi_bvalid <= 0;                                  
	        axi_buser <= 0;                                  
	        axi_awburst <= 0;                                  
	        axi_bid <= 0;                                  
	        axi_awlen <= 0;                                  
	        axi_bresp <= 0;                                  
	        state_write <= Idle;                                  
	       end                                  
	     else                                   
	       begin                                  
	         case(state_write)                                  
	           Idle:     //Initial state inidicating reset is done and ready to receive read/write transactions                                  
	             begin                                  
	               if(S_AXI_ARESETN == 1'b1)                                   
	                 begin                                  
	                   axi_awready <= 1'b1;                                  
	                   axi_wready <= 1'b1;                                  
	                   state_write <= Waddr;                                  
	                 end                                  
	               else state_write <= state_write;                                  
	             end                                  
	           Waddr:        //At this state, slave is ready to receive address along with corresponding control signals and first data packet. Response valid is also handled at this state                                  
	             begin                                  
	               if (S_AXI_AWVALID && axi_awready)                                  
	                 begin                                          
	                   if (S_AXI_WVALID && S_AXI_WLAST)                                  
	                     begin                                  
	                       axi_bvalid <= 1'b1;                                  
	                       axi_awready <= 1'b1;                                  
	                       state_write <= Waddr;                                  
	                     end                                     
	                   else                                   
	                     begin                                  
	                       if (S_AXI_BREADY && axi_bvalid) axi_bvalid <= 1'b0;                                  
	                       state_write <= Wdata;                                  
	                       axi_awready <= 1'b0;                                  
	                      end                                  
	                    axi_awburst <= S_AXI_AWBURST;                                  
	                    axi_awlen <= S_AXI_AWLEN;                                  
	                    axi_bid <= S_AXI_AWID;                                  
	                 end                                  
	               else                                   
	                 begin                                  
	                  state_write <= state_write;                                  
	                  if (S_AXI_BREADY && axi_bvalid) axi_bvalid <= 1'b0;                                  
	                 end                                  
	             end                                  
	           Wdata:        //At this state, slave is ready to receive the data packets until the number of transfers is equal to burst length                                  
	             begin                                  
	               if (S_AXI_WVALID && S_AXI_WLAST)                                  
	                 begin                                  
	                   state_write <= Waddr;                                  
	                   axi_bvalid <= 1'b1;                                  
	                   axi_awready <= 1'b1;                                  
	                 end                                  
	               else state_write <= state_write;                                  
	             end                                  
	          endcase                                  
	        end                                  
	     end                                  
	//Implement Read state machine
	//Outstanding read transactions are not supported by the slave

	  always @(posedge S_AXI_ACLK)                                     
	    begin                                     
	      if (S_AXI_ARESETN == 1'b0)                                     
	        begin                                     
	       // asserting initial values to all 0's during reset                                     
	         axi_arready <= 1'b0;                                     
	         axi_arburst <= 1'b0;                                     
	         axi_arlen <= 1'b0;                                     
	         axi_rid <= 1'b0;                                     
	         axi_rlast <= 1'b0;                                     
	         axi_ruser <= 1'b0;                                     
	         axi_rvalid <= 1'b0;                                     
	         axi_rresp <= 1'b0;                                     
	         state_read <= Idle;                                     
	       end                                     
	     else                                     
	       begin                                     
	         case(state_read)                                     
	           Idle:     //Initial state inidicating reset is done and ready to receive read/write transactions                                     
	             begin                                     
	               if (S_AXI_ARESETN == 1'b1)                                      
	                 begin                                     
	                   state_read <= Raddr;                                     
	                   axi_arready <= 1'b1;                                     
	                 end                                     
	               else state_read <= state_read;                                     
	             end                                     
	           Raddr:        //At this state, slave is ready to receive address and corresponding control signals                                     
	             begin                                     
	               if (S_AXI_ARVALID && axi_arready)                                     
	                 begin                                     
	                   state_read <= Rdata;                                     
	                   axi_rvalid <= 1'b1;                                     
	                   axi_arready <= 1'b0;                                     
	                   axi_rid <= S_AXI_ARID;                                     
	                   if (S_AXI_ARLEN == 1'b0) axi_rlast <= 1'b1;                                     
	                   axi_arburst <= S_AXI_ARBURST;                                     
	                   axi_arlen <= S_AXI_ARLEN;                                     
	                 end                                     
	               else state_read <= state_read;                                     
	             end                                     
	           Rdata:        //At this state, slave is ready to send the data packets until the number of transfers is equal to burst length                                     
	             begin                                     
	              if ((axi_arlen_cntr == axi_arlen-1) && ~axi_rlast && S_AXI_RREADY) axi_rlast <= 1'b1;                                         
	              if (axi_rvalid && S_AXI_RREADY && axi_rlast)                                     
	                begin                                     
	                  axi_rvalid <= 1'b0;                                     
	                  axi_arready <= 1'b1;                                     
	                  axi_rlast <= 1'b0;                                     
	                  state_read <= Raddr;                                     
	                end                                     
	              else state_read <= state_read;                                     
	             end                                     
	           endcase                                     
	         end                                     
	    end                                     
	//This always block handles the write address increment
	  always @(posedge S_AXI_ACLK)                             
	    begin                             
	      if (S_AXI_ARESETN == 1'b0)                             
	        begin                             
	          //both axi_awlen_cntr and axi_awaddr will increment after each successfull data received until the number of the transfers is equal to burst length                             
	          axi_awlen_cntr <= 0;                             
	          axi_awaddr <= 0;                             
	        end                             
	      else                              
	        begin                             
	          if (S_AXI_AWVALID && axi_awready)                             
	            begin                             
	              if (S_AXI_WVALID)                             
	                begin                             
	                  axi_awlen_cntr <= 1;                             
	                  if ((S_AXI_AWBURST == 2'b01) || ((S_AXI_AWBURST == 2'b10) && (S_AXI_AWLEN != 0)) )                             
	                    begin                             
	                      axi_awaddr[C_S_AXI_ADDR_WIDTH - 1:ADDR_LSB] <= S_AXI_AWADDR[C_S_AXI_ADDR_WIDTH - 1:ADDR_LSB] + 1;                             
	                    end                             
	                  else                             
	                    begin                             
	                      axi_awaddr <= axi_awaddr;                             
	                    end                             
	                 end                             
	               else                             
	                 begin                             
	                   axi_awlen_cntr <= 0;                             
	                   axi_awaddr <= S_AXI_AWADDR[C_S_AXI_ADDR_WIDTH - 1:0];                             
	                 end                             
	              end                             
	        else if((axi_awlen_cntr < axi_awlen) && S_AXI_WVALID)                               
	          begin                             
	            axi_awlen_cntr <= axi_awlen_cntr + 1;                             
	            case (axi_awburst)                             
	              2'b00: // fixed burst                             
	                // The write address for all the beats in the transaction are fixed                             
	                begin                             
	                  axi_awaddr <= axi_awaddr;                                       
	                  //for awsize = 4 bytes (010)                             
	                end                                
	              2'b01: //incremental burst                             
	              // The write address for all the beats in the transaction are increments by awsize                             
	                begin                             
	                  axi_awaddr[C_S_AXI_ADDR_WIDTH - 1:ADDR_LSB] <= axi_awaddr[C_S_AXI_ADDR_WIDTH - 1:ADDR_LSB] + 1;                             
	                  //awaddr aligned to 4 byte boundary                             
	                  axi_awaddr[ADDR_LSB-1:0]  <= {ADDR_LSB{1'b0}};                                
	                  //for awsize = 4 bytes (010)                             
	                end                                
	              2'b10: //Wrapping burst                             
	                // The write address wraps when the address reaches wrap boundary                              
	                if (aw_wrap_en)                             
	                  begin                             
	                    axi_awaddr <= (axi_awaddr - aw_wrap_size);                             
	                  end                             
	                else                             
	                  begin                             
	                    axi_awaddr[C_S_AXI_ADDR_WIDTH - 1:ADDR_LSB] <= axi_awaddr[C_S_AXI_ADDR_WIDTH - 1:ADDR_LSB] + 1;                             
	                    axi_awaddr[ADDR_LSB-1:0]  <= {ADDR_LSB{1'b0}};                             
	                  end                             
	              default: //reserved (incremental burst for example)                             
	                begin                             
	                  axi_awaddr <= axi_awaddr[C_S_AXI_ADDR_WIDTH - 1:ADDR_LSB] + 1;                             
	                  //for awsize = 4 bytes (010)                             
	                end                             
	             endcase                                           
	           end                             
	         end                             
	     end                             
	//This always block handles the read address increment
	 always @(posedge S_AXI_ACLK)                                   
	   begin                                   
	     if (S_AXI_ARESETN == 1'b0)                                   
	       begin                                   
	        //both axi_arlen_cntr and axi_araddr will increment after each successfull data sent until the number of the transfers is equal to burst length                                   
	        axi_arlen_cntr <= 0;                                   
	        axi_araddr <= 0;                                   
	      end                                   
	    else                                   
	      begin                                   
	        if (S_AXI_ARVALID && axi_arready)                                   
	          begin                                   
	            axi_arlen_cntr <= 0;                                   
	            axi_araddr <= S_AXI_ARADDR[C_S_AXI_ADDR_WIDTH - 1:0];                                   
	          end                                   
	        else if((axi_arlen_cntr <= axi_arlen) && axi_rvalid && S_AXI_RREADY)                                    
	          begin                                   
	            axi_arlen_cntr <= axi_arlen_cntr + 1;                                       
	            case (axi_arburst)                                   
	               2'b00: // fixed burst                                   
	                // The read address for all the beats in the transaction are fixed                                   
	                 begin                                   
	                   axi_araddr       <= axi_araddr;                                           
	                   //for arsize = 4 bytes (010)                                   
	                 end                                      
	               2'b01: //incremental burst                                   
	                // The read address for all the beats in the transaction are increments by awsize                                   
	                 begin                                   
	                   axi_araddr[C_S_AXI_ADDR_WIDTH - 1:ADDR_LSB] <= axi_araddr[C_S_AXI_ADDR_WIDTH - 1:ADDR_LSB] + 1;                                   
	                   //araddr aligned to 4 byte boundary                                   
	                   axi_araddr[ADDR_LSB-1:0]  <= {ADDR_LSB{1'b0}};                                      
	                   //for awsize = 4 bytes (010)                                   
	                 end                                      
	               2'b10: //Wrapping burst                                   
	                // The read address wraps when the address reaches wrap boundary                                    
	                 if (ar_wrap_en)                                    
	                   begin                                   
	                     axi_araddr <= (axi_araddr - ar_wrap_size);                                   
	                   end                                   
	                 else                                    
	                   begin                                   
	                     axi_araddr[C_S_AXI_ADDR_WIDTH - 1:ADDR_LSB] <= axi_araddr[C_S_AXI_ADDR_WIDTH - 1:ADDR_LSB] + 1;                                    
	                     //araddr aligned to 4 byte boundary                                   
	                     axi_araddr[ADDR_LSB-1:0]  <= {ADDR_LSB{1'b0}};                                      
	                   end                                                         
	               default: //reserved (incremental burst for example)                                   
	                 begin                                   
	                   axi_araddr <= axi_araddr[C_S_AXI_ADDR_WIDTH - 1:ADDR_LSB]+1;                                   
	                   //for arsize = 4 bytes (010)                                   
	                 end                                   
	             endcase                                                 
	           end                                   
	       end                                   
	   end                                   
	//-- ------------------------------------------
	//-- -- Example code to access user logic memory region
	//-- ------------------------------------------
	 generate                                 
	    if (USER_NUM_MEM >= 1)                                 
	      begin                                 
	        assign mem_address_read = axi_araddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB];                                 
	        assign mem_address_write = (S_AXI_AWVALID && S_AXI_WVALID) ? S_AXI_AWADDR[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] : axi_awaddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB];                                 
	      end                                 
	 endgenerate                                 
	  // implement Block RAM(s)                                 
		generate                                  
	   for(i=0; i<= USER_NUM_MEM-1; i=i+1)                                 
	     begin:BRAM_GEN                                 
	       wire mem_wren;                                 
	       assign mem_wren = axi_wready && S_AXI_WVALID ;                                   
	       for(mem_byte_index=0; mem_byte_index<= (C_S_AXI_DATA_WIDTH/8-1); mem_byte_index=mem_byte_index+1)                                 
	         begin:BYTE_BRAM_GEN                                 
	           wire [8-1:0] data_in ;                                 
	           wire [8-1:0] data_out;                                 
	           reg  [8-1:0] byte_ram [0 : 15];                                   
	           //assigning 8 bit data                                 
	           assign data_in  = S_AXI_WDATA[(mem_byte_index*8+7) -: 8];                                 
	           assign data_out = byte_ram[mem_address_read];                                   
	           always @(posedge S_AXI_ACLK)                                 
	             begin                                 
	               if (mem_wren && S_AXI_WSTRB[mem_byte_index])                                 
	                 begin                                 
	                   byte_ram[mem_address_write] <= data_in;                                 
	                 end                                    
	             end                                    
	           assign mem_data_out[i][(mem_byte_index*8+7) -: 8] = data_out;                                  
	         end                                 
	       end                                        
	 endgenerate                                 
	// Add user logic here

 	// User logic ends 


	// Add user logic here

	// User logic ends

	endmodule
