.PHONY: tests

TEST_DIR=tests
TEST_INCLUDES="-Fu./document -Fu../src/core/document"
TEST_OUTPUT=plain

tests:
	cd $(TEST_DIR) && instantfpc $(TEST_INCLUDES) runtests.pas --all --format=$(TEST_OUTPUT)