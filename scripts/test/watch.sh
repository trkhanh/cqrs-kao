  
#!/bin/bash
bold=$(tput bold)
normal=$(tput sgr0)

set -e

echo -e "👻 💉 ${bold}[cqrs-kao / test]${normal} starting unit testing with jest (watch mode).."

node_modules/.bin/nodemon -e ts -w src -w tests \
 -x 'jest --config jest.config.js'