use strict;
my $target = shift @ARGV;
my @nums = @ARGV;
my $index = binary_search(\@nums, $target);
if(defined $index){
    print "$target occurs at $index position\n";
}else {
    print "$target didn't occur\n";
}

sub binary_search{
    my ($nums, $target) = @_;
    my $low = 0;
    my $high = @$nums - 1;
    while( $low <= $high){
        my $mid = int (($low + $high) / 2);
        $low = $mid + 1, next if $nums->[$mid] < $target;
        $high = $mid - 1, next if $nums->[$mid] > $target;
        return $mid;
    }
    return undef;
}
