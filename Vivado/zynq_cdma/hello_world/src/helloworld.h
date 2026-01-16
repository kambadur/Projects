#include "xparameters.h"
/*Address Offsets to Base Address
18h  SA     Source Address
20h  DA     Destination Address
28h  BTT    Bytes To Transfer 
*/
#define XPAR_AXI_CDMA_0_SRCADDR     (XPAR_AXI_CDMA_0_BASEADDR + 0x18U)
#define XPAR_AXI_CDMA_0_DESTADDR    (XPAR_AXI_CDMA_0_BASEADDR + 0x20U)
#define XPAR_AXI_CDMA_0_BTTADDR     (XPAR_AXI_CDMA_0_BASEADDR + 0x28U)