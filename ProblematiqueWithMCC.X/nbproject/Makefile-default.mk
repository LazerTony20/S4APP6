#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/ProblematiqueWithMCC.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/ProblematiqueWithMCC.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=LibPack/btn.c LibPack/lcd.c LibPack/ssd.c LibPack/swt.c LibPack/utils.c mcc_generated_files/interrupt_manager.c mcc_generated_files/mcc.c mcc_generated_files/pin_manager.c mcc_generated_files/adc1.c mcc_generated_files/oc1.c mcc_generated_files/tmr2.c mcc_generated_files/tmr3.c S4-GE-APP6.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/LibPack/btn.o ${OBJECTDIR}/LibPack/lcd.o ${OBJECTDIR}/LibPack/ssd.o ${OBJECTDIR}/LibPack/swt.o ${OBJECTDIR}/LibPack/utils.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/mcc_generated_files/adc1.o ${OBJECTDIR}/mcc_generated_files/oc1.o ${OBJECTDIR}/mcc_generated_files/tmr2.o ${OBJECTDIR}/mcc_generated_files/tmr3.o ${OBJECTDIR}/S4-GE-APP6.o
POSSIBLE_DEPFILES=${OBJECTDIR}/LibPack/btn.o.d ${OBJECTDIR}/LibPack/lcd.o.d ${OBJECTDIR}/LibPack/ssd.o.d ${OBJECTDIR}/LibPack/swt.o.d ${OBJECTDIR}/LibPack/utils.o.d ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d ${OBJECTDIR}/mcc_generated_files/mcc.o.d ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d ${OBJECTDIR}/mcc_generated_files/adc1.o.d ${OBJECTDIR}/mcc_generated_files/oc1.o.d ${OBJECTDIR}/mcc_generated_files/tmr2.o.d ${OBJECTDIR}/mcc_generated_files/tmr3.o.d ${OBJECTDIR}/S4-GE-APP6.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/LibPack/btn.o ${OBJECTDIR}/LibPack/lcd.o ${OBJECTDIR}/LibPack/ssd.o ${OBJECTDIR}/LibPack/swt.o ${OBJECTDIR}/LibPack/utils.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/mcc_generated_files/adc1.o ${OBJECTDIR}/mcc_generated_files/oc1.o ${OBJECTDIR}/mcc_generated_files/tmr2.o ${OBJECTDIR}/mcc_generated_files/tmr3.o ${OBJECTDIR}/S4-GE-APP6.o

# Source Files
SOURCEFILES=LibPack/btn.c LibPack/lcd.c LibPack/ssd.c LibPack/swt.c LibPack/utils.c mcc_generated_files/interrupt_manager.c mcc_generated_files/mcc.c mcc_generated_files/pin_manager.c mcc_generated_files/adc1.c mcc_generated_files/oc1.c mcc_generated_files/tmr2.c mcc_generated_files/tmr3.c S4-GE-APP6.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/ProblematiqueWithMCC.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX370F512L
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/LibPack/btn.o: LibPack/btn.c  .generated_files/dcda2c3a2cfa70ccd0cc057489080688bf2aff87.flag .generated_files/799bdb535b77631559d2217fa606a08c5b295f6d.flag
	@${MKDIR} "${OBJECTDIR}/LibPack" 
	@${RM} ${OBJECTDIR}/LibPack/btn.o.d 
	@${RM} ${OBJECTDIR}/LibPack/btn.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/LibPack/btn.o.d" -o ${OBJECTDIR}/LibPack/btn.o LibPack/btn.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/LibPack/lcd.o: LibPack/lcd.c  .generated_files/4ead46fa49835b0efdb8d06856e720052f38f87c.flag .generated_files/799bdb535b77631559d2217fa606a08c5b295f6d.flag
	@${MKDIR} "${OBJECTDIR}/LibPack" 
	@${RM} ${OBJECTDIR}/LibPack/lcd.o.d 
	@${RM} ${OBJECTDIR}/LibPack/lcd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/LibPack/lcd.o.d" -o ${OBJECTDIR}/LibPack/lcd.o LibPack/lcd.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/LibPack/ssd.o: LibPack/ssd.c  .generated_files/9efd27aec868f3d9619c35a3b41aca0d173bf155.flag .generated_files/799bdb535b77631559d2217fa606a08c5b295f6d.flag
	@${MKDIR} "${OBJECTDIR}/LibPack" 
	@${RM} ${OBJECTDIR}/LibPack/ssd.o.d 
	@${RM} ${OBJECTDIR}/LibPack/ssd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/LibPack/ssd.o.d" -o ${OBJECTDIR}/LibPack/ssd.o LibPack/ssd.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/LibPack/swt.o: LibPack/swt.c  .generated_files/b89b476d1d8dd27d66c50a0c0913091dc9159d90.flag .generated_files/799bdb535b77631559d2217fa606a08c5b295f6d.flag
	@${MKDIR} "${OBJECTDIR}/LibPack" 
	@${RM} ${OBJECTDIR}/LibPack/swt.o.d 
	@${RM} ${OBJECTDIR}/LibPack/swt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/LibPack/swt.o.d" -o ${OBJECTDIR}/LibPack/swt.o LibPack/swt.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/LibPack/utils.o: LibPack/utils.c  .generated_files/622bd12efe797fa00ae139ffe6cb56e4b67756e3.flag .generated_files/799bdb535b77631559d2217fa606a08c5b295f6d.flag
	@${MKDIR} "${OBJECTDIR}/LibPack" 
	@${RM} ${OBJECTDIR}/LibPack/utils.o.d 
	@${RM} ${OBJECTDIR}/LibPack/utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/LibPack/utils.o.d" -o ${OBJECTDIR}/LibPack/utils.o LibPack/utils.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/28cd79b94512cc2cc9c7b9ce9374645105b4f044.flag .generated_files/799bdb535b77631559d2217fa606a08c5b295f6d.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d" -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o mcc_generated_files/interrupt_manager.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/622b2fdc4ec67883a8ed7dbaa1d54a868272a309.flag .generated_files/799bdb535b77631559d2217fa606a08c5b295f6d.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d" -o ${OBJECTDIR}/mcc_generated_files/mcc.o mcc_generated_files/mcc.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/9cb29ac8969063f2b15b65d4098ee1eb14a4977b.flag .generated_files/799bdb535b77631559d2217fa606a08c5b295f6d.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d" -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o mcc_generated_files/pin_manager.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/adc1.o: mcc_generated_files/adc1.c  .generated_files/7041219e9a8f841fd6572eec3393ddcb73eb91.flag .generated_files/799bdb535b77631559d2217fa606a08c5b295f6d.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/adc1.o.d" -o ${OBJECTDIR}/mcc_generated_files/adc1.o mcc_generated_files/adc1.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/oc1.o: mcc_generated_files/oc1.c  .generated_files/3a22c60b9ab91ca8848dbbf5e50ccc5ee1b629dc.flag .generated_files/799bdb535b77631559d2217fa606a08c5b295f6d.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/oc1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/oc1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/oc1.o.d" -o ${OBJECTDIR}/mcc_generated_files/oc1.o mcc_generated_files/oc1.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/tmr2.o: mcc_generated_files/tmr2.c  .generated_files/dda745b876a46b621fba8e8babf2e4b813655bdd.flag .generated_files/799bdb535b77631559d2217fa606a08c5b295f6d.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/tmr2.o.d" -o ${OBJECTDIR}/mcc_generated_files/tmr2.o mcc_generated_files/tmr2.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/tmr3.o: mcc_generated_files/tmr3.c  .generated_files/9110a77677c600d1dcdc42b0a9193af463458da.flag .generated_files/799bdb535b77631559d2217fa606a08c5b295f6d.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr3.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/tmr3.o.d" -o ${OBJECTDIR}/mcc_generated_files/tmr3.o mcc_generated_files/tmr3.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/S4-GE-APP6.o: S4-GE-APP6.c  .generated_files/700e89adfd59a1a253d37a8f6fc3d0c99ad74a06.flag .generated_files/799bdb535b77631559d2217fa606a08c5b295f6d.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/S4-GE-APP6.o.d 
	@${RM} ${OBJECTDIR}/S4-GE-APP6.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/S4-GE-APP6.o.d" -o ${OBJECTDIR}/S4-GE-APP6.o S4-GE-APP6.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/LibPack/btn.o: LibPack/btn.c  .generated_files/eef862a62f49c66045de442a9f59ca54ad08f879.flag .generated_files/799bdb535b77631559d2217fa606a08c5b295f6d.flag
	@${MKDIR} "${OBJECTDIR}/LibPack" 
	@${RM} ${OBJECTDIR}/LibPack/btn.o.d 
	@${RM} ${OBJECTDIR}/LibPack/btn.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/LibPack/btn.o.d" -o ${OBJECTDIR}/LibPack/btn.o LibPack/btn.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/LibPack/lcd.o: LibPack/lcd.c  .generated_files/eb8a606da77024ed14c607dadb5eaae030c28bec.flag .generated_files/799bdb535b77631559d2217fa606a08c5b295f6d.flag
	@${MKDIR} "${OBJECTDIR}/LibPack" 
	@${RM} ${OBJECTDIR}/LibPack/lcd.o.d 
	@${RM} ${OBJECTDIR}/LibPack/lcd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/LibPack/lcd.o.d" -o ${OBJECTDIR}/LibPack/lcd.o LibPack/lcd.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/LibPack/ssd.o: LibPack/ssd.c  .generated_files/dc8590897356dd6595c4560b97131c8fd5fc4c68.flag .generated_files/799bdb535b77631559d2217fa606a08c5b295f6d.flag
	@${MKDIR} "${OBJECTDIR}/LibPack" 
	@${RM} ${OBJECTDIR}/LibPack/ssd.o.d 
	@${RM} ${OBJECTDIR}/LibPack/ssd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/LibPack/ssd.o.d" -o ${OBJECTDIR}/LibPack/ssd.o LibPack/ssd.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/LibPack/swt.o: LibPack/swt.c  .generated_files/54e3b4231a055143dc6b2b890b2d541321dd9041.flag .generated_files/799bdb535b77631559d2217fa606a08c5b295f6d.flag
	@${MKDIR} "${OBJECTDIR}/LibPack" 
	@${RM} ${OBJECTDIR}/LibPack/swt.o.d 
	@${RM} ${OBJECTDIR}/LibPack/swt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/LibPack/swt.o.d" -o ${OBJECTDIR}/LibPack/swt.o LibPack/swt.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/LibPack/utils.o: LibPack/utils.c  .generated_files/af91b391c19fafd97f1e2ac0bf4dfdb31c797141.flag .generated_files/799bdb535b77631559d2217fa606a08c5b295f6d.flag
	@${MKDIR} "${OBJECTDIR}/LibPack" 
	@${RM} ${OBJECTDIR}/LibPack/utils.o.d 
	@${RM} ${OBJECTDIR}/LibPack/utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/LibPack/utils.o.d" -o ${OBJECTDIR}/LibPack/utils.o LibPack/utils.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/19fe1a6e56e6cd89a4249734ef9027931dc45b6.flag .generated_files/799bdb535b77631559d2217fa606a08c5b295f6d.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d" -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o mcc_generated_files/interrupt_manager.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/7dfb7f65bfc9483b9a88990f635015b85671d4c0.flag .generated_files/799bdb535b77631559d2217fa606a08c5b295f6d.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d" -o ${OBJECTDIR}/mcc_generated_files/mcc.o mcc_generated_files/mcc.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/9eed41903ee2f63ca64bc5443c19374ee27bbd31.flag .generated_files/799bdb535b77631559d2217fa606a08c5b295f6d.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d" -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o mcc_generated_files/pin_manager.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/adc1.o: mcc_generated_files/adc1.c  .generated_files/5391cb51786900c22da86a509c6653892998c217.flag .generated_files/799bdb535b77631559d2217fa606a08c5b295f6d.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/adc1.o.d" -o ${OBJECTDIR}/mcc_generated_files/adc1.o mcc_generated_files/adc1.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/oc1.o: mcc_generated_files/oc1.c  .generated_files/33199af9174e70f3254ab4609442b73ac89417d3.flag .generated_files/799bdb535b77631559d2217fa606a08c5b295f6d.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/oc1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/oc1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/oc1.o.d" -o ${OBJECTDIR}/mcc_generated_files/oc1.o mcc_generated_files/oc1.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/tmr2.o: mcc_generated_files/tmr2.c  .generated_files/a69e350584dac37b732d0ea03ffb9271e9fa231f.flag .generated_files/799bdb535b77631559d2217fa606a08c5b295f6d.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/tmr2.o.d" -o ${OBJECTDIR}/mcc_generated_files/tmr2.o mcc_generated_files/tmr2.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/tmr3.o: mcc_generated_files/tmr3.c  .generated_files/751d18423f12482988835d3d40a6a1091a88af06.flag .generated_files/799bdb535b77631559d2217fa606a08c5b295f6d.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr3.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/tmr3.o.d" -o ${OBJECTDIR}/mcc_generated_files/tmr3.o mcc_generated_files/tmr3.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/S4-GE-APP6.o: S4-GE-APP6.c  .generated_files/2b491aae0ed0e853fc721ae4cab0ab16acc6eaae.flag .generated_files/799bdb535b77631559d2217fa606a08c5b295f6d.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/S4-GE-APP6.o.d 
	@${RM} ${OBJECTDIR}/S4-GE-APP6.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/S4-GE-APP6.o.d" -o ${OBJECTDIR}/S4-GE-APP6.o S4-GE-APP6.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/ProblematiqueWithMCC.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_PK3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/ProblematiqueWithMCC.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x0:0x1FC -mreserve=boot@0x1FC02000:0x1FC02FEF -mreserve=boot@0x1FC02000:0x1FC0275F  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_PK3=1,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/ProblematiqueWithMCC.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/ProblematiqueWithMCC.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/ProblematiqueWithMCC.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
