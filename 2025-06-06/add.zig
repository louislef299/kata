const std = @import("std");
const expect = std.testing.expect;

fn add(nums: []u8) !u32 {
    std.debug.print("{s}\n", .{nums});
    return 0;
}

test "add with empty should return 0" {
    const string = [_]u8{ 'a', 'b', 'c' };

    for (string, 0..) |character, index| {
        _ = character;
        _ = index;
    }

    const r = try add("");
    try expect(r == 0);
}
