#!/usr/bin/env node

function printSquare(n) {
    const line = '#'.repeat(n);
    for (let i = 0; i < n; i++) console.log(line);
}

if (require.main === module) {
    const arg = process.argv[2];
    const size = parseInt(arg, 10);

if (!arg || Number.isNaN(size) || size < 1) {
    console.error('Usage: ./1-print_square.js <positive integer>');
    process.exit(1);
}
printSquare(size);
}