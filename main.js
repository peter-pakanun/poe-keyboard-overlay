const fs = require('fs');
const async = require('async');
const split2 = require('split2');
const spawn = require('child_process').spawn;

const app = require('http').createServer(httpHandler);
const io = require('socket.io')(app);

function httpHandler (req, res) {
  fs.readFile(__dirname + '/index.html', function (err, data) {
    if (err) {
      res.writeHead(500);
      return res.end('Error loading index.html');
    }

    res.writeHead(200);
    res.end(data);
  });
}

app.listen(3737, function () {
  console.log('listening on http://127.0.0.1:3737');
});

async.detect([
  "C:/Program Files/AutoHotkey/AutoHotkey.exe",
  "C:/Program Files (x86)/AutoHotkey/AutoHotkey.exe",
  __dirname + "/AutoHotkey.exe"
], function (item, done) {
  fs.stat(item, (err) => done(null, !err));
}, function (err, ahkPath) {
  if (!ahkPath) throw new Error('AutoHotkey not found!');

  var hookAhk = spawn(ahkPath, ["hook.ahk"]);
  hookAhk.stdout.pipe(split2()).on('data', function (data) {
    var cmds = data.trim().split(" ");
    var char = cmds[0];
    var direction = cmds[1];

    io.emit('key' + direction, { char, direction });
  });
});
