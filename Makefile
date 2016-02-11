# Based on https://gist.github.com/rafecolton/6049826

REV_VAR = github.com/basbossink/psiw/cmd.commitHash
VERSION_VAR= github.com/basbossink/psiw/cmd.version
VERSION = 0.1.0
REPO_REV != git rev-parse HEAD
GOBUILD_VERSION_ARGS := -ldflags "-X $(REV_VAR)=$(REPO_REV) -X $(VERSION_VAR)=$(VERSION)"

# then, change your `go install` statement from something like this:

#go get -x $(TARGETS)
#go install -x $(TARGETS)

# to something like this:

#go get -x $(GOBUILD_VERSION_ARGS) $(TARGETS)
#go install -x $(GOBUILD_VERSION_ARGS) $(TARGETS)

build:
	go build -x $(GOBUILD_VERSION_ARGS) main.go
test: build
	go install -x $(GOBUILD_VERSION_ARGS) $(TARGETS)
	go test ./...
	cram acceptance-tests/
ver:
	@echo "Version: $(VERSION)"
	@echo "Git commit hash: $(REPO_REV)"
