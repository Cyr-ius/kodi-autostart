all:
	@echo "For build package , please type make package"

package:
	dpkg-buildpackage -us -uc -B -aarmhf

reset:
	debclean