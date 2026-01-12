//! Common STD Lib Functions
const std = @import("std");

pub fn main() void {
    const number: u8 = 65;
    const print = @import("std").debug.print;

    // --- Debug Print ---
    // showcasing "specifiers" which are the things inside the placeholder {}
    print("Number: {}\n", .{number}); // default
    print("Number (d): {d}\n", .{number}); // decimal
    print("Number (x): {x}\n", .{number}); // hexa
    print("Number (o): {o}\n", .{number}); // octal
    print("Number (b): {b}\n", .{number}); // binary
    print("Number (c): {c}\n", .{number}); // the ASCII char with code 65
    print("Number (s): {s}\n", .{"number"}); //  for strings
    //print("Number (?): {?}\n", .{number}); // optional things - later in course
    print("Number (any): {any}\n", .{number}); // same as default format

    // --- Logging data to terminal ---
    print("----------\n", .{});
    const log = @import("std").log;
    log.info("Number (d): {d}", .{number});
    log.warn("Number (d): {d}", .{number});
    log.err("Number (d): {d}", .{number});

    // -- Comparing Arrays ---
    const a1: [3]u8 = [3]u8{ 2, 5, 7 };
    const a2: [3]u8 = [3]u8{ 2, 5, 7 };
    // can't use `a1 == a2`. eql needs type of data in array and mem address of arrays
    const arrays_equal: bool = std.mem.eql(u8, &a1, &a2);
    print("Arrays are equal: {}\n", .{arrays_equal});
}
