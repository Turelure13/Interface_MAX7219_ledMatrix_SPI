/* Quartus Prime Version 18.1.0 Build 625 09/12/2018 SJ Standard Edition */
JedecChain;
	FileRevision(JESD32A);
	DefaultMfr(6E);

	P ActionCode(Ign)
		Device PartName(SOCVHPS) MfrSpec(OpMask(0));
	P ActionCode(Cfg)
		Device PartName(5CSEMA4U23) Path("C:/Users/Semi/Desktop/Projet_MA1_Arthur_Julien/FINAL/output_files/") File("spi_master.sof") MfrSpec(OpMask(1));

ChainEnd;

AlteraBegin;
	ChainType(JTAG);
AlteraEnd;
