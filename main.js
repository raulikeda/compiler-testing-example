const { spawnSync } = require('child_process');

if (process.argv.length !== 3) {
    console.log('Usage: node main.js <filename>');
    process.exit(1);
}

const filename = process.argv[2];

// Run the Python file using a child process
const result = spawnSync('python3', [filename], { encoding: 'utf8' });

if (result.error) {
    console.error('Error running Python file:', result.error.message);
    process.exit(1);
}

if (result.stderr) {
    process.stderr.write(result.stderr);
}
if (result.stdout) {
    process.stdout.write(result.stdout);
}

process.exit(result.status); 