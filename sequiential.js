/* Node.js script to give items sequential names starting from 1.
// (Overcome limitations of the `.bat` version.) */

const fs = require ("fs");
const dir = process.argv[2];

try {
  const files = fs.readdirSync (dir);

  files.sort ((a, b) => {
    const pa = a.lastIndexOf ('.');
    const pb = b.lastIndexOf ('.');

    const ea = a.substring (0, (pa === -1) ? a.length : pa);
    const eb = b.substring (0, (pb === -1) ? b.length : pb);

    const na = parseInt (ea, 10);
    const nb = parseInt (eb, 10);

    if (isNaN (na) && isNaN (nb)) return Number(ea > eb) - Number(ea < eb);
    if (isNaN (na)) return 1;
    if (isNaN (nb)) return -1;

    return Number(na > nb) - Number(na < nb);
  });

  let counter = 1;

  files.forEach (file => {
    const pos = file.lastIndexOf ('.');
    const ext = file.substring ((pos === -1) ? file.length : pos);
    fs.renameSync (dir + '/' + file, dir + '/' + counter + ext.toLowerCase());
    ++counter;
  });
} catch (err) {
  console.log (err);
}
