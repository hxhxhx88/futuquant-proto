PROTO_DIR=.

proto:
	for name in $(PROTO_DIR)/*.proto; do \
		protoc -I . --go_out=$(GOPATH)/src $$name; \
	done
