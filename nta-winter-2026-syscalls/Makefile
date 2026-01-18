
.PHONY: install
install:
	go get golang.org/x/tools/cmd/present
	go install golang.org/x/tools/cmd/present@latest

.PHONY: present
present: syscall.slide
	$(shell go env GOPATH)/bin/present \
    -base $(shell go env GOMODCACHE)/golang.org/x/tools@v0.37.0/cmd/present \
    -notes \
    -play syscall.slide
