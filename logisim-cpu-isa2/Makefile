
.PHONY: install
install:
	go get golang.org/x/tools/cmd/present
	go install golang.org/x/tools/cmd/present@latest

.PHONY: present
present: isa2.slide
	$(shell go env GOPATH)/bin/present \
    -base $(shell go env GOMODCACHE)/golang.org/x/tools@v0.11.0/cmd/present \
    -play isa2.slide
