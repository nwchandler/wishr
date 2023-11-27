build:
	cargo build
.PHONY: build

test-integration: clean build
	# Copy to `wish` to avoid changing all of the tests; it's not super important what the file is called.
	cp ./target/debug/wishr ./tester/wish
	cd ./tester && ./test-wishr.sh
.PHONY: build
 
clean:
	cargo clean
	rm -rf ./tester/tests-out
	rm -rf ./tester/wish
.PHONY: clean
