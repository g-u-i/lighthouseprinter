const { Server } = require('node-osc');
const { exec } = require('child_process');
const fs = require('fs');

const oscServer = new Server(3333, '0.0.0.0');

oscServer.on('message', function (msg) {
  // console.log(`Message: ${msg}`);
  console.log(msg[2]);

  var currentPath = process.cwd();

  var dreamId = msg[2][1];
  var cache   = currentPath+"/cache/pdf/"
  var printer = "CUSTOM_Engineering_VKP80III"
  var pdf = cache+dreamId+'.pdf':

  // defaut page
  if (!fs.existsSync(pdf)) var pdf = cache+'null.pdf':

  var printOrder = 'lpr -P '+printer+' -#1 -o media=ZX80MMYRoll '+pdf;

  console.log("SENDING", dreamId, printer, printOrder);


  exec(printOrder, (err, stdout, stderr) => {
    if (err) {
      console.error(err);
    } else {
     //console.log(`stdout: ${stdout}`);
     //console.log(`error: ${stderr}`);
     console.log(dreamId,"SENT");
    }
  });
  // oscServer.close();
});
