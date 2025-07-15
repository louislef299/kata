const std = @import("std");

pub fn add(num: []const u8) !i32 {
    std.debug.print("{s}\n", .{num});
    return 0;
}

test "simple add" {
    const test_case = [_]struct {
        description: []const u8,
        input: []const u8,
        output: i32,
    }{
        .{
            .description = "simple return of single int",
            .input = "0",
            .output = 0,
        },
    };

    for (test_case) |tc| {
        std.debug.print("{s}\n", .{tc.description});
        const got = try add(tc.input);
        try std.testing.expect(got == tc.output);
    }
}
