.PHONY: tests

TEST_DIR=tests

tests:
	cd $(TEST_DIR) && ./runtests.pas --all --format=plain