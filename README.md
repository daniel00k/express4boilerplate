### Start Server

``npm start`` or ``coffee app.coffee``

### Run mocha tests 

``mocha --compilers coffee:coffee-script/register -u tdd -R spec test/crossPageTest.coffee 2>/dev/null``

### Install grunt and casperjs globally

``npm install -g grunt-cli``
``npm install -g casperjs``
```
 this version of casper is ^1.1.0-beta3, casper works for staging testing
```
### Run casper tests 

``casperjs test test/example-casper.coffee``