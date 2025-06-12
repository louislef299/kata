const sum = require('./add');

test('adds empty string is 0', () => {
  expect(add('0')).toBe(0);
});
