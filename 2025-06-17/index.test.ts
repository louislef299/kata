const { add } = require('./index');

test('empty string equals 0', () => {
  expect(add("")).toBe(0);
});

test('a single number returns the number', () => {
    expect(add("1")).toBe(1);
    expect(add("2,")).toBe(2);
});

test('two numbers returns the correct result', () => {
    expect(add("1,2")).toBe(3);
});
