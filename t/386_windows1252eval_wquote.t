# This file is encoded in Windows-1252.
die "This file is not encoded in Windows-1252.\n" if q{��} ne "\x82\xa0";

use Char::Windows1252;

print "1..12\n";

# Char::Windows1252::eval "..." has Char::Windows1252::eval "..."
if (Char::Windows1252::eval " Char::Windows1252::eval \" if ('��' =~ /[��]/i) { return 1 } else { return 0 } \" ") {
    print qq{ok - 1 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 1 $^X @{[__FILE__]}\n};
}

# Char::Windows1252::eval "..." has Char::Windows1252::eval qq{...}
if (Char::Windows1252::eval " Char::Windows1252::eval qq{ if ('��' =~ /[��]/i) { return 1 } else { return 0 } } ") {
    print qq{ok - 2 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 2 $^X @{[__FILE__]}\n};
}

# Char::Windows1252::eval "..." has Char::Windows1252::eval '...'
if (Char::Windows1252::eval " Char::Windows1252::eval ' if (qq{��} =~ /[��]/i) { return 1 } else { return 0 } ' ") {
    print qq{ok - 3 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 3 $^X @{[__FILE__]}\n};
}

# Char::Windows1252::eval "..." has Char::Windows1252::eval q{...}
if (Char::Windows1252::eval " Char::Windows1252::eval q{ if ('��' =~ /[��]/i) { return 1 } else { return 0 } } ") {
    print qq{ok - 4 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 4 $^X @{[__FILE__]}\n};
}

# Char::Windows1252::eval "..." has Char::Windows1252::eval $var
my $var = q{q{ if ('��' =~ /[��]/i) { return 1 } else { return 0 } }};
if (Char::Windows1252::eval " Char::Windows1252::eval $var ") {
    print qq{ok - 5 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 5 $^X @{[__FILE__]}\n};
}

# Char::Windows1252::eval "..." has Char::Windows1252::eval (omit)
$_ = "if ('��' =~ /[��]/i) { return 1 } else { return 0 }";
if (Char::Windows1252::eval " Char::Windows1252::eval ") {
    print qq{ok - 6 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 6 $^X @{[__FILE__]}\n};
}

# Char::Windows1252::eval "..." has Char::Windows1252::eval {...}
if (Char::Windows1252::eval " Char::Windows1252::eval { if ('��' =~ /[��]/i) { return 1 } else { return 0 } } ") {
    print qq{ok - 7 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 7 $^X @{[__FILE__]}\n};
}

# Char::Windows1252::eval "..." has "..."
if (Char::Windows1252::eval " if ('��' =~ /[��]/i) { return \"1\" } else { return \"0\" } ") {
    print qq{ok - 8 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 8 $^X @{[__FILE__]}\n};
}

# Char::Windows1252::eval "..." has qq{...}
if (Char::Windows1252::eval " if ('��' =~ /[��]/i) { return qq{1} } else { return qq{0} } ") {
    print qq{ok - 9 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 9 $^X @{[__FILE__]}\n};
}

# Char::Windows1252::eval "..." has '...'
if (Char::Windows1252::eval " if ('��' =~ /[��]/i) { return '1' } else { return '0' } ") {
    print qq{ok - 10 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 10 $^X @{[__FILE__]}\n};
}

# Char::Windows1252::eval "..." has q{...}
if (Char::Windows1252::eval " if ('��' =~ /[��]/i) { return q{1} } else { return q{0} } ") {
    print qq{ok - 11 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 11 $^X @{[__FILE__]}\n};
}

# Char::Windows1252::eval "..." has $var
my $var1 = 1;
my $var0 = 0;
if (Char::Windows1252::eval " if ('��' =~ /[��]/i) { return $var1 } else { return $var0 } ") {
    print qq{ok - 12 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 12 $^X @{[__FILE__]}\n};
}

__END__
