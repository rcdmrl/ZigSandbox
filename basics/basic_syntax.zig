//! Top level comments to document the entire module
const std = @import("std");

pub fn addNumbers(num1: u8, num2: u8) u16 {
    return num1 + num2;
}

// Dummy custom type definition
const Unsigned16BitInteger = u16;

/// Three slashes are doc comments
pub fn main() void {
    const n1: u8 = 5;
    var n2: u8 = 6;
    n2 = 10; // just to avoid a compiler error and showcase usage of var keyword
    const res1: Unsigned16BitInteger = addNumbers(n1, n2);
    std.debug.print("{}+{}={}\n", .{ n1, n2, res1 }); // .{} means a tuple
}
