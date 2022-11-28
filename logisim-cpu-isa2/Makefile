
# Install present with this command:
# $ go get golang.org/x/tools/cmd/present
# go install golang.org/x/tools/cmd/present@latest

.PHONY: present
present: isa2.slide
	present -base ~/go/pkg/mod/golang.org/x/tools@v0.0.0-20201116002733-ac45abd4c88c/cmd/present -play isa2.slide
	# GO111MODULE=off present -play isa2.slide



.PHONY: present2
present2: isa2.slide
	present -base ~/sw/gopkgs/pkg/mod/golang.org/x/tools@v0.3.0/cmd/present -play isa2.slide
	# GO111MODULE=off present -play isa2.slide
