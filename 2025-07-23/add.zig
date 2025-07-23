const std = @import("std");

pub fn main() !void {
    std.debug.print("hello, world!", .{});
}

fn add(nums: []const u8) !u32 {
    std.debug.print("{s}\n", .{nums});
    return 0;
}

test "simple add" {
    const testCases = [_]struct {
        desc: []const u8,
        input: []const u8,
        expected: u32,
    }{ .{
        .desc = "empty input",
        .input = "",
        .expected = 0,
    }, .{
        .desc = "single integer",
        .input = "1",
        .expected = 1,
    } };

    for (testCases) |tc| {
        std.debug.print("{s}\n", .{tc.desc});
        const got = try add(tc.input);
        try std.testing.expect(got == tc.expected);
    }
}
