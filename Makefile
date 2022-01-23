NPM ?= `which npm`
MERMAID ?= `which mmdc`
RESOURCES_PATH ?= `pwd`/resources

.PHONY: build
build:
	@$(MERMAID) -w 10000 -i $(RESOURCES_PATH)/graph.mmd -o $(RESOURCES_PATH)/graph.png

.PHONY: setup
setup:
	@$(NPM) install -g mermaid.cli
