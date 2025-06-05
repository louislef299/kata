const { add } = require('./app');

test('adding an empty string returns 0', () => {
  expect(add("")).toBe(0);
});

test('adding one number just adds it twice', () => {
    expect(add("1")).toBe(2);
});

