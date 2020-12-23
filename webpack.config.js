const path = require('path');

module.exports = {
    entry: './Game.js',
    output: {
        filename: 'Game.js',
        path: path.resolve(__dirname, 'public'),
    },
};
