const std = @import("std");
const expect = std.testing.expect;

fn add(numbers: []const u8) !i32 {
    if (std.mem.eql(u8, numbers, "")) {
        return 0;
    }

    var it = std.mem.splitScalar(u8, numbers, ',');
    var retNum: i32 = 0;
    while (it.next()) |n| {
        const p = std.fmt.parseInt(i32, n, 10) catch |err| switch (err) {
            error.InvalidCharacter => continue,
            else => return err,
        };
        retNum += p;
    }
    return retNum;
}

test "add function" {
    try expect(try add("") == 0);
    try expect(try add("1") == 1);
    try expect(try add("1,2") == 3);
    try expect(try add("1,,") == 1);
    try expect(try add("1,2,3,4") == 10);
}
