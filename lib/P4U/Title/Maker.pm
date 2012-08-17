package P4U::Title::Maker;
use strict;
use warnings;
use utf8;
our $VERSION = '0.01';

sub new {
    my ($class,%args) = @_;
    my $self = {
        num => ( defined $args{num} && $args{num} =~ /^[0-9]+$/ ) ? $args{num} : 3,
    };
    bless $self,$class;
    return $self;
}

sub make {
    my $self = shift;
    my $dict = $self->DICT();
    my @words = map { @{$dict->{$_}} } keys %$dict;
    my $num_words = scalar @words;
    return join( '', map { $words[int(rand($num_words-1))] } 1..$self->{num} );
}

# http://w.livedoor.jp/p4u_matome/d/%b2%c8%c4%ed%cd%d1%a1%a1%be%ce%b9%e6
sub DICT {
    return +{
        あ => [qw(
        )],
        い => [qw(
        )],
        う => [qw(
        )],
        え => [qw(
        )],
        お => [qw(
        )],
        か => [qw(
        )],
        き => [qw(
        )],
        く => [qw(
        )],
        け => [qw(
        )],
        こ => [qw(
        )],
        さ => [qw(
        )],
        し => [qw(
        )],
        す => [qw(
        )],
        せ => [qw(
        )],
        そ => [qw(
        )],
        た => [qw(
        )],
        ち => [qw(
        )],
        つ => [qw(
        )],
        て => [qw(
        )],
        と => [qw(
        )],
        な => [qw(
        )],
        に => [qw(
        )],
        ぬ => [qw(
        )],
        ね => [qw(
        )],
        の => [qw(
        )],
        は => [qw(
        )],
        ひ => [qw(
        )],
        ふ => [qw(
        )],
        へ => [qw(
        )],
        ほ => [qw(
        )],
        ま => [qw(
        )],
        み => [qw(
        )],
        む => [qw(
        )],
        め => [qw(
        )],
        も => [qw(
        )],
        や => [qw(
        )],
        ゆ => [qw(
        )],
        よ => [qw(
        )],
        ら => [qw(
        )],
        り => [qw(
        )],
        る => [qw(
        )],
        れ => [qw(
        )],
        ろ => [qw(
        )],
        わ => [qw(
        )],
        を => [qw(
        )],
        英語 => [qw(
        )],
        数字 => [qw(
            ０  零  
            Ⅰ  一  壱
            ２  二  Ⅱ
            弐  ３  三
            Ⅲ  参  
            四  Ⅳ  
            五  Ｖ  ６
            六  Ⅵ  ７
            ８
            八  Ⅷ  ９
            九  Ⅸ  
            十      １００点
            １０位以内      
            ２年    ３年    
            億  参号    千
            兆      
            四号
        )],
        記号 => [qw(
        )],
    };
}


1;
__END__

=head1 NAME

P4U::Title::Maker -

=head1 SYNOPSIS

  use P4U::Title::Maker;

=head1 DESCRIPTION

P4U::Title::Maker is

=head1 AUTHOR

dameninngenn E<lt>dameninngenn.owata {at} gmail.comE<gt>

=head1 SEE ALSO

=head1 LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
