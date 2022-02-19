//IBMUSERS   JOB (ASMDRA),'ASMDRA',                                     
//            CLASS=A,MSGCLASS=H,NOTIFY=&SYSUID
//ASM EXEC PGM=ASMA90,
//       PARM='DECK,NOOBJECT,LIST,XREF(SHORT),ALIGN',
//       REGION=4096K
//SYSLIB DD DSN=DFSF10.OPTIONS,DISP=SHR
//       DD DSN=DFSF10.SDFSMAC,DISP=SHR
//       DD DSN=SYS1.MACLIB,DISP=SHR
//*
//SYSUT1 DD UNIT=SYSDA,SPACE=(1700,(400,400))
//SYSUT2 DD UNIT=SYSDA,SPACE=(1700,(400,400))
//SYSUT3 DD UNIT=SYSDA,SPACE=(1700,(400,400))
//SYSPUNCH DD DSN=&&OBJMOD,
//       DISP=(,PASS),UNIT=SYSDA,
//       DCB=(RECFM=FB,LRECL=80,BLKSIZE=400),
//       SPACE=(400,(100,100))
//SYSPRINT DD SYSOUT=*
//SYSIN DD *
PZP      TITLE 'DATABASE RESOURCE ADAPTER STARTUP PARAMETER TABLE'
DFSPZP00 CSECT
**********************************************************************
*        MODULE NAME: DFSPZP00                                       *
*                                                                    *
*        DESCRIPTIVE NAME: DATABASE RESOURCE ADAPTER (DRA)           *
*                  STARTUP PARAMETER TABLE.                          *
*                                                                    *
*        FUNCTION: TO PROVIDE THE VARIOUS DEFINITIONAL PARAMETERS    *
*                  FOR THE COORDINATOR CONTROL REGION. THIS          *
*                  MODULE MAY BE ASSEMBLED BY A USER SPECIFYING      *
*                  THEIR PARTICULAR NAMES, ETC. AND LINKEDITED       *
*                  INTO THE USER RESLIB AS DFSPZPXX.  WHERE XX       *
*                  IS EITHER 00 FOR THE DEFAULT, OR ANY OTHER ALPHA- *
*                  NUMERIC CHARACTERS.                               *
*                                                                    *
**********************************************************************
         EJECT
         DFSPRP DSECT=NO,                                              X
               DBCTLID=IVP1,                                           X
               DDNAME=CCTLDD,                                          X
               DSNAME=DFSF10.SDFSRESL,                                 X
               MAXTHRD=99,                                             X
               MINTHRD=10,                                             X
               TIMER=60,                                               X
               USERID=,                                                X
               CNBA=10,                                                X
               FPBUF=,                                                 X
               FPBOF=,                                                 X
               TIMEOUT=60,                                             X
               SOD=A,                                                  X
               AGN=
         END
/*
//LNKEDT EXEC PGM=IEWL,
//       PARM='LIST,XREF,LET,NCAL'
//SYSUT1 DD UNIT=SYSDA,SPACE=(1024,(100,50))
//SYSPRINT DD SYSOUT=*
//SYSLMOD  DD DSN=DFSF10.SDFSRESL,DISP=SHR
//SYSLIN   DD DISP=(OLD,DELETE),DSN=&&OBJMOD
//         DD DDNAME=SYSIN
//SYSIN    DD *
   NAME  DFSPZP01(R)
/*
