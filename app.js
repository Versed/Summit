var express = require('express');
var app = express();
var config = require('./server/config/config');

require('./server/routes')(app);
require('./server/config/express')(app, config);

var port = process.env.PORT || 9000;
app.listen(port, function() {
  console.log('Listening on ' + port);
});
