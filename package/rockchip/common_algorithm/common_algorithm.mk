COMMON_ALGORITHM_SITE = $(TOPDIR)/../external/common_algorithm
COMMON_ALGORITHM_SITE_METHOD = local

COMMON_ALGORITHM_INSTALL_STAGING = YES

ifeq ($(BR2_PACKAGE_COMMON_ALGORITHM_AEC_ANR_AGC),y)
COMMON_ALGORITHM_CONF_OPTS += -DAEC_ANR_AGC_ENABLE=TRUE
endif

ifeq ($(BR2_PACKAGE_COMMON_ALGORITHM_ANR),y)
COMMON_ALGORITHM_CONF_OPTS += -DANR_ENABLE=TRUE
endif

ifeq ($(BR2_PACKAGE_COMMON_ALGORITHM_TWO_MIC_BEAMFORM),y)
COMMON_ALGORITHM_CONF_OPTS += -DTWO_MIC_BEAMFORM_ENABLE=TRUE
endif


ifeq ($(BR2_PACKAGE_COMMON_ALGORITHM_MOVE_DETECT),y)
COMMON_ALGORITHM_CONF_OPTS += -DMOVE_DETECT_ENABLE=TRUE
endif

$(eval $(cmake-package))