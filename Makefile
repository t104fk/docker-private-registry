.PHONY: develop install

develop:
		go get github.com/tools/godep
		go get github.com/mattn/goemon/cmd/goemon

install:
		godep restore
		go install

