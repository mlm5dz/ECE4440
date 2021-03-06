-- VHDL Entity Modic_Pipeline_lib.example.symbol
--
-- Created:
--          by - PC.UNKNOWN (PC-PC)
--          at - 09:59:24 03/ 4/2013
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY ramtag IS
   PORT( 
      addr : IN     std_logic_vector (2 DOWNTO 0);
      clk  : IN     std_logic;
      din  : IN     std_logic_vector (12 DOWNTO 0);
      we   : IN     std_logic;
      dout : OUT    std_logic_vector (12 DOWNTO 0)
   );

-- Declarations

END ramtag ;

--
-- VHDL Architecture Modic_Pipeline_lib.example.struct
--
-- Created:
--          by - PC.UNKNOWN (PC-PC)
--          at - 09:59:24 03/ 4/2013
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;


ARCHITECTURE struct OF ramtag IS

   -- Architecture declarations

   -- Internal signal declarations


   -- ModuleWare signal declarations(v1.9) for instance 'U_0' of 'ramsp'
   TYPE MW_U_0RAM_TYPE IS ARRAY (((2**3) -1) DOWNTO 0) OF std_logic_vector(12 DOWNTO 0);
   SIGNAL mw_U_0ram_table : MW_U_0RAM_TYPE ;--:= (OTHERS => "0000000000000");
   SIGNAL mw_U_0addr_reg: std_logic_vector(2 DOWNTO 0);


BEGIN

   -- ModuleWare code(v1.9) for instance 'U_0' of 'ramsp'
   --attribute block_ram : boolean;
   --attribute block_ram of mem : signal is false;
   u_0ram_p_proc: PROCESS (clk)
   BEGIN
      IF (clk'EVENT AND clk='1') THEN
         IF (we = '1') THEN
            mw_U_0ram_table(CONV_INTEGER(unsigned(addr))) <= din;
         END IF;
         mw_U_0addr_reg <= addr;
      END IF;
   END PROCESS u_0ram_p_proc;
   --dout <= mw_U_0ram_table(CONV_INTEGER(unsigned(mw_U_0addr_reg)));
   dout <= mw_U_0ram_table(CONV_INTEGER(unsigned(addr)));

   -- Instance port mappings.

END struct;
