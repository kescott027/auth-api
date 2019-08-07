import * as crypto from 'crypto';

export const generateSalt = (keylen: number, fn: any): any => {
  try {
  crypto.randomBytes(keylen, fn);
  } catch (err) {
    console.log("error generating salt");
  }  
}
  
generateSalt(1024, function (err: string, buf: Buffer) {
  if (err) throw err;
  console.log(`${buf.length} bytes of random data: ${buf.toString('hex')}`
  )
});