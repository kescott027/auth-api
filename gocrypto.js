"use strict";
exports.__esModule = true;
var crypto = require("crypto");
exports.generateSalt = function (keylen, fn) {
    try {
        crypto.randomBytes(keylen, fn);
    }
    catch (err) {
        console.log("error generating salt");
    }
};
exports.generateSalt(1024, function (err, buf) {
    if (err)
        throw err;
    console.log(buf.length + " bytes of random data: " + buf.toString('hex'));
});
