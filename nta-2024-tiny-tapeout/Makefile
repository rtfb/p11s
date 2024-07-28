
.PHONY: install
install:
	go get golang.org/x/tools/cmd/present
	go install golang.org/x/tools/cmd/present@latest

.PHONY: present
present: tt.slide
	$(shell go env GOPATH)/bin/present \
    -base $(shell go env GOMODCACHE)/golang.org/x/tools@v0.17.0/cmd/present \
    -play tt.slide
