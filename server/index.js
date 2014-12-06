var Hapi = require('hapi');
var server = new Hapi.server();

require('./config/hapi')(server);
require('./routes')(server);

server.start();
