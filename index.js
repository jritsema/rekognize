#!/usr/bin/env node

var fs = require('fs');
var AWS = require('aws-sdk');

var file = process.argv[2];
if (!file) {
  console.log('image file required');
  process.exit(-1);
}

var image = new Buffer(fs.readFileSync(file));

var params = {
  Image: {
    Bytes: image
  },
  MaxLabels: 10,
  MinConfidence: 50.0
};

AWS.config.update({
  region: 'us-east-1'
});

var rekognition = new AWS.Rekognition();

rekognition.detectLabels(params, function (err, data) {
  if (!err) {
    console.log(JSON.stringify(data, null, 2));
  }
  else
    console.log(err, err.stack);
});
