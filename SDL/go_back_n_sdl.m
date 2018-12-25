# makefile for System: go_back_n_sdl

sctAUTOCFGDEP =
sctCOMPFLAGS = -DXUSE_GENERIC_FUNC

!include $(SCTDIR)\make.opt

default: go_back_n_sdl$(sctEXTENSION)

go_back_n_sdl$(sctEXTENSION): \
  go_back_n_sdl$(sctOEXTENSION) \
  $(sctLINKKERNELDEP)
	$(sctLD) @&&!
	$(sctLDFLAGS) \
	-ego_back_n_sdl$(sctEXTENSION) \
	 go_back_n_sdl$(sctOEXTENSION) $(sctLINKKERNEL)
!

go_back_n_sdl$(sctOEXTENSION): \
  go_back_n_sdl.c
	$(sctCC) @&&!
	$(sctCPPFLAGS) $(sctCCFLAGS) \
	$(sctIFDEF) \
	-ogo_back_n_sdl$(sctOEXTENSION) \
	go_back_n_sdl.c
!
