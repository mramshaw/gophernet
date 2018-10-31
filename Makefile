GOOS		:= linux
GOARCH		:= amd64
GO111MODULE := on

MAIN		:= gophernet

.PHONY:		run, clean

all:		$(MAIN)
		@echo '$(MAIN)' has been built

$(MAIN):	build

# .go files are reformatted to conform to gofmt standards
fmt:
		GOOS=$(GOOS) GOARCH=$(GOARCH) gofmt -d -e -s -w *.go

lint:		fmt
		GOOS=$(GOOS) GOARCH=$(GOARCH) golint -set_exit_status *.go

vet:		lint
		GOOS=$(GOOS) GOARCH=$(GOARCH) GO111MODULE=$(GO111MODULE) go tool vet *.go

init:		vet
		@rm -f go.mod
		GOOS=$(GOOS) GOARCH=$(GOARCH) GO111MODULE=$(GO111MODULE) go mod init gophernet

build:		init
		GOOS=$(GOOS) GOARCH=$(GOARCH) GO111MODULE=$(GO111MODULE) go build -o $(MAIN) *.go

run:
		./$(MAIN)

clean:
		rm -f go.mod go.sum $(MAIN)
