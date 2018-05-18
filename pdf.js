var page = require('webpage').create();
var system = require('system');

console.log("rendering …",system.args[1]);

page.open(system.args[1], function() {

  var height= page.evaluate(function(){
    return document.body.offsetHeight
  });

  var max = 120;
  var size = Math.round(height/18);

  sheets = Math.ceil(size/max);
  sizeCm = size/sheets+"cm";
  console.log('max:',max, "size:", size, "sizeCm:",sizeCm, "sheets:", sheets);
  
  sizeCm = 120+"cm";

  page.paperSize = { width: '8cm', height:sizeCm, margin: '0.4cm' }
  page.render(system.args[2]+'.pdf'); 
  phantom.exit();

});
