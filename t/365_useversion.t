# This file is encoded in Windows-1252.
die "This file is not encoded in Windows-1252.\n" if q{��} ne "\x82\xa0";

my $__FILE__ = __FILE__;

use 5.00503;
use Char::Windows1252;
print "1..1\n";

print "ok - 1 $^X $__FILE__\n";

__END__
