// Reports filenames and rule names only; never prints matched credentials.
const fs = require('node:fs');
const path = require('node:path');
const root = path.resolve(process.argv[2] || '.');
const ignore = new Set(['.git', 'dist', 'build', 'node_modules', '.vs']);
const rules = [
  ['API credential', /\bsk-[A-Za-z0-9_-]{16,}\b/g],
  ['GitHub credential', /\b(?:gh[pousr]_[A-Za-z0-9]{20,}|github_pat_[A-Za-z0-9_]{20,})\b/g],
  ['private key', /-----BEGIN (?:RSA |EC |OPENSSH )?PRIVATE KEY-----/g],
  ['Windows personal path', /[A-Z]:[\\/]Users[\\/](?!Public\b)[^\s"'<>]+/gi],
];
let files = 0, failures = 0;
function walk(dir) {
  for (const e of fs.readdirSync(dir, {withFileTypes:true})) {
    const file = path.join(dir, e.name);
    if (e.isSymbolicLink()) throw new Error('Symlink not allowed: '+path.relative(root,file));
    if (e.isDirectory()) { if (!ignore.has(e.name)) walk(file); continue; }
    files++;
    const relative = path.relative(root,file);
    if (/^(?:settings(?:_store)?\.json|\.env(?:\..*)?|.*\.(?:pem|key|pfx|p12|log))$/i.test(e.name)) {
      console.error(relative+': forbidden private/configuration file'); failures++;
    }
    const bytes=fs.readFileSync(file);
    const texts=[bytes.toString('utf8'),bytes.toString('utf16le')];
    for (const [name, regex] of rules) {
      if (texts.some(text=>{regex.lastIndex=0;return regex.test(text);})) {
        console.error(relative+': '+name); failures++;
      }
    }
  }
}
walk(root);
console.log(`Audited ${files} files; ${failures} findings.`);
process.exitCode=failures?1:0;
