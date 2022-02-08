https://help.ubuntu.com/community/MiniDLNA

root@macbook:/etc# lspci -k | grep Net
02:00.0 Network controller: Broadcom Inc. and subsidiaries BCM43224 802.11a/b/g/n (rev 01)
root@macbook:/etc# lspci -vv -s 02:00.0
02:00.0 Network controller: Broadcom Inc. and subsidiaries BCM43224 802.11a/b/g/n (rev 01)
	Subsystem: Apple Inc. AirPort Extreme
	Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx-
	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 0, Cache Line Size: 256 bytes
	Interrupt: pin A routed to IRQ 17
	Region 0: Memory at a0400000 (64-bit, non-prefetchable) [size=16K]
	Capabilities: [40] Power Management version 3
		Flags: PMEClk- DSI- D1+ D2+ AuxCurrent=0mA PME(D0+,D1-,D2-,D3hot+,D3cold+)
		Status: D0 NoSoftRst+ PME-Enable- DSel=0 DScale=2 PME-
	Capabilities: [58] Vendor Specific Information: Len=78 <?>
	Capabilities: [48] MSI: Enable- Count=1/1 Maskable- 64bit+
		Address: 0000000000000000  Data: 0000
	Capabilities: [d0] Express (v1) Endpoint, MSI 00
		DevCap:	MaxPayload 128 bytes, PhantFunc 0, Latency L0s <4us, L1 unlimited
			ExtTag+ AttnBtn- AttnInd- PwrInd- RBE+ FLReset- SlotPowerLimit 10.000W
		DevCtl:	CorrErr- NonFatalErr- FatalErr- UnsupReq-
			RlxdOrd- ExtTag+ PhantFunc- AuxPwr- NoSnoop-
			MaxPayload 128 bytes, MaxReadReq 128 bytes
		DevSta:	CorrErr- NonFatalErr- FatalErr- UnsupReq- AuxPwr+ TransPend-
		LnkCap:	Port #0, Speed 2.5GT/s, Width x1, ASPM L0s L1, Exit Latency L0s <4us, L1 <64us
			ClockPM+ Surprise- LLActRep+ BwNot- ASPMOptComp-
		LnkCtl:	ASPM L0s L1 Enabled; RCB 64 bytes Disabled- CommClk+
			ExtSynch- ClockPM+ AutWidDis- BWInt- AutBWInt-
		LnkSta:	Speed 2.5GT/s (ok), Width x1 (ok)
			TrErr- Train- SlotClk+ DLActive+ BWMgmt- ABWMgmt-
	Capabilities: [100 v1] Advanced Error Reporting
		UESta:	DLP- SDES- TLP- FCP- CmpltTO- CmpltAbrt- UnxCmplt- RxOF- MalfTLP- ECRC- UnsupReq- ACSViol-
		UEMsk:	DLP- SDES- TLP- FCP- CmpltTO- CmpltAbrt- UnxCmplt- RxOF- MalfTLP- ECRC- UnsupReq- ACSViol-
		UESvrt:	DLP+ SDES- TLP- FCP+ CmpltTO- CmpltAbrt- UnxCmplt- RxOF+ MalfTLP+ ECRC- UnsupReq- ACSViol-
		CESta:	RxErr- BadTLP- BadDLLP- Rollover- Timeout- AdvNonFatalErr-
		CEMsk:	RxErr- BadTLP- BadDLLP- Rollover- Timeout- AdvNonFatalErr+
		AERCap:	First Error Pointer: 14, ECRCGenCap+ ECRCGenEn- ECRCChkCap+ ECRCChkEn-
			MultHdrRecCap- MultHdrRecEn- TLPPfxPres- HdrLogCap-
		HeaderLog: 00000000 00000000 00000000 00000000
	Capabilities: [13c v1] Virtual Channel
		Caps:	LPEVC=0 RefClk=100ns PATEntryBits=1
		Arb:	Fixed- WRR32- WRR64- WRR128-
		Ctrl:	ArbSelect=Fixed
		Status:	InProgress-
		VC0:	Caps:	PATOffset=00 MaxTimeSlots=1 RejSnoopTrans-
			Arb:	Fixed- WRR32- WRR64- WRR128- TWRR128- WRR256-
			Ctrl:	Enable+ ID=0 ArbSelect=Fixed TC/VC=ff
			Status:	NegoPending- InProgress-
	Capabilities: [160 v1] Device Serial Number 63-50-37-ff-ff-1d-28-37
	Capabilities: [16c v1] Power Budgeting <?>
	Kernel driver in use: wl
	Kernel modules: bcma, wl

root@macbook:/etc# 

root@macbook:/etc# modinfo wl
filename:       /lib/modules/5.4.0-96-generic/updates/wl.ko
license:        MIXED/Proprietary
srcversion:     3B8080B31F75BC3630B3D70
alias:          pci:v*d*sv*sd*bc02sc80i*
depends:        cfg80211
retpoline:      Y
name:           wl
vermagic:       5.4.0-96-generic SMP mod_unload modversions 
sig_id:         PKCS#7
signer:         mint Secure Boot Module Signature key
sig_key:        2D:41:71:9F:3A:6E:ED:FF:BC:59:42:45:5C:17:2D:CE:06:1D:B8:DD
sig_hashalgo:   sha512
signature:      4B:BC:A9:AD:F0:32:AA:B8:01:58:66:26:44:7D:27:EF:FD:00:A0:06:
		A9:72:61:68:DF:4B:D8:35:A8:01:55:A1:A9:B0:7B:85:98:3D:6A:CF:
		D7:3D:DE:A7:3B:1F:17:B5:C1:5B:AE:14:FD:79:2C:40:9D:95:19:09:
		7F:B3:CB:BF:25:E3:F3:E6:F4:0C:AC:D6:FB:31:86:4D:CE:B3:BA:FC:
		56:6D:BA:EF:11:B2:9A:52:B3:C5:8C:0F:98:8D:51:61:B9:C1:DC:1B:
		AA:03:0C:7D:95:80:3C:B4:87:B0:61:1C:C4:48:47:E0:EF:E3:7D:87:
		21:6B:B3:12:4D:A9:73:04:97:10:4C:D8:43:7E:F9:85:D5:71:6E:4A:
		B1:32:2C:D7:10:E7:C9:5B:42:51:40:00:74:84:0C:BB:D0:D7:EE:2D:
		90:1B:BD:7E:C5:0F:BB:96:A2:53:05:5F:0C:69:C6:76:78:D4:5D:4C:
		5B:C9:26:69:8A:81:53:CA:41:51:0E:40:66:A8:FC:AC:3B:0A:00:9F:
		89:D5:72:69:8F:E3:E4:CB:4A:54:60:B3:19:A3:C2:AE:E8:17:0E:74:
		4E:9E:5A:4D:89:C1:95:97:7F:61:DF:4E:D7:F7:12:28:C1:21:42:41:
		83:59:B0:4B:5B:67:E4:1A:F0:88:74:A4:40:6B:0C:AE
parm:           passivemode:int
parm:           wl_txq_thresh:int
parm:           oneonly:int
parm:           piomode:int
parm:           instance_base:int
parm:           nompc:int
parm:           intf_name:string


root@macbook:/etc# lspci -n -s 02:00.0
02:00.0 0280: 14e4:4353 (rev 01)

root@macbook:/etc# lspci -nn -s 02:00.0
02:00.0 Network controller [0280]: Broadcom Inc. and subsidiaries BCM43224 802.11a/b/g/n [14e4:4353] (rev 01)
root@macbook:/etc# 


