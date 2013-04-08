
all: install build test

install:
	npm install

build:
	NODE_PATH=.:../ebnf-parser/ node ./node_modules/.bin/jison lex.y lex.l
	mv lex.js lex-parser.js

test:
	node tests/all-tests.js

node_modules:
	ln -s ../ebnf-parser/node_modules
