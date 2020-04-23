all: help

.PHONY: help
help:
	@sed -ne '/@sed/!s/## //p' $(MAKEFILE_LIST)

.PHONY: test
test: ## Execute the tests
	mvn -DtestSourceDirectory=src/test/java/com/example/BaseTest.java clean test