# This file is encoded in Windows-1252.
die "This file is not encoded in Windows-1252.\n" if q{あ} ne "\x82\xa0";

use Char::Windows1252;
print "1..1\n";

my $__FILE__ = __FILE__;

if ('あ-' =~ /(あ[い-])/) {
    if ("$1" eq "あ-") {
        print "ok - 1 $^X $__FILE__ ('あ-' =~ /あ[い-]/).\n";
    }
    else {
        print "not ok - 1 $^X $__FILE__ ('あ-' =~ /あ[い-]/).\n";
    }
}
else {
    print "not ok - 1 $^X $__FILE__ ('あ-' =~ /あ[い-]/).\n";
}

__END__
