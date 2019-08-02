const { Server } = require('node-osc');
const { exec } = require('child_process');

const oscServer = new Server(3333, '0.0.0.0');

oscServer.on('message', function (msg) {
  // console.log(`Message: ${msg}`);
  console.log(msg[2]);

  var currentPath = process.cwd();

  var dreamId = msg[2][1];
  var cache   = currentPath+"/cache/pdf/"
  var printer = "CUSTOM_Engineering_VKP80III"

  var printOrder = 'lpr -P '+printer+' -#3 -o media=ZX80MMYRoll '+cache+dreamId+'.pdf';

  console.log("SENDING", dreamId, printer);

  exec(printOrder, (err, stdout, stderr) => {
    if (err) {
      console.error(err);
    } else {
     // console.log(`stdout: ${stdout}`);
     // console.log(`error: ${stderr}`);
     console.log(dreamId,"SENT");
    }
  });

  // oscServer.close();
});
