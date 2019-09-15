const { Client } = require('node-osc');

const client = new Client('127.0.0.1', 3333);
client.send('/dream', 200, () => {
  client.close();
});
