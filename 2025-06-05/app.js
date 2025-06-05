"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.add = add;
function add(numbers) {
    if (numbers == "") {
        return 0;
    }
    const num = parseInt(numbers, 10);
    return num + num;
}
