#include "xaxicdma.h"

XAxiCdma_Config XAxiCdma_ConfigTable[] __attribute__ ((section (".drvcfg_sec"))) = {

	{
		"xlnx,axi-cdma-4.1", /* compatible */
		0x7e200000, /* reg */
		0x0, /* xlnx,include-dre */
		0x0, /* xlnx,lite-mode */
		0x20, /* xlnx,datawidth */
		0x10, /* xlnx,max-burst-len */
		0x20, /* xlnx,addrwidth */
		0x401d, /* interrupts */
		0xf8f01000, /* interrupt-parent */
		0x0 /* xlnx,include-sg */
	},
	 {
		 NULL
	}
};