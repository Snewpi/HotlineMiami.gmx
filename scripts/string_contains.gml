///string_contains(string, characters);
for (var i = 1; i < string_length(argument0); i++) {
    var test_string = string_copy(argument0, i, string_length(argument1));
    if (test_string == argument1) {
        return true;
    }
}

return false;
