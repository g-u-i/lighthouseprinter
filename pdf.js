var page = require('webpage').create();
var system = require('system');

console.log("rendering",system.args[1]);

page.open(system.args[1], function() {
  page.paperSize = { width: '8cm', height:'500cm', margin: '0.5cm' }
  page.render(system.args[2]+'.pdf');
  phantom.exit();
});
