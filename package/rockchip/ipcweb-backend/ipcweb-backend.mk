# Rockchip's MPP(Multimedia Processing Platform)
IPCWEB_BACKEND_SITE = $(TOPDIR)/../app/ipcweb-backend
IPCWEB_BACKEND_VERSION = release
IPCWEB_BACKEND_SITE_METHOD = local

IPCWEB_BACKEND_DEPENDENCIES = libcgicc openssl libIPCProtocol
IPCWEB_BACKEND_CONF_OPTS += -DIPCWEBBACKEND_BUILD_TESTS=OFF

ifeq ($(BR2_PACKAGE_RK_OEM), y)
IPCWEB_BACKEND_INSTALL_TARGET_OPTS = DESTDIR=$(BR2_PACKAGE_RK_OEM_INSTALL_TARGET_DIR) install/fast
IPCWEB_BACKEND_DEPENDENCIES += rk_oem
IPCWEB_BACKEND_CONF_OPTS += -DIPCWEBBACKEND_INSTALL_ON_OEM_PARTITION=ON
endif

$(eval $(cmake-package))
