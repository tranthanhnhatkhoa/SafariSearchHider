ARCHS = armv7 arm64

include theos/makefiles/common.mk

TWEAK_NAME = SafariSearchHider
SafariSearchHider_FILES = Tweak.xm
SafariSearchHider_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
SUBPROJECTS += safarisearchhider
include $(THEOS_MAKE_PATH)/aggregate.mk
