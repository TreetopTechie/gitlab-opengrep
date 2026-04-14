.PHONY: test validate scan install

OPENGREP := opengrep
RULES_DIR := rules
TARGET ?= .

test:
	$(OPENGREP) --test $(RULES_DIR)/

validate:
	$(OPENGREP) validate $(RULES_DIR)/

scan:
	$(OPENGREP) scan --config $(RULES_DIR)/ $(TARGET)

install:
	@command -v $(OPENGREP) >/dev/null 2>&1 || \
		(echo "Installing opengrep..." && \
		 curl -fsSL https://raw.githubusercontent.com/opengrep/opengrep/main/install.sh | bash)
	@$(OPENGREP) --version
