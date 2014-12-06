'use strict';

var Hapi = require('hapi');
var server = new Hapi.Server('localhost', 9000);

require('./config/hapi')(server);
require('./routes')(server);

server.route({
  method: 'GET',
  path: '/{path*}',
  handler: function(request, reply) {
    reply('Hello');
  }
});

server.start();
