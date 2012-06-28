package Password::Policy::Rule::Numbers;
{
  $Password::Policy::Rule::Numbers::VERSION = '0.02';
}

use strict;
use warnings;

use parent 'Password::Policy::Rule';

use String::Multibyte;

use Password::Policy::Exception::InsufficientNumbers;

sub check {
    my $self = shift;
    my $password = $self->prepare(shift);
    my @numbers = ($password =~ m/(\d)/g);
    my $count = scalar @numbers;
    if($count < $self->arg) {
        Password::Policy::Exception::InsufficientNumbers->throw;
    }
    return 1;
}

1;



=pod

=head1 NAME

Password::Policy::Rule::Numbers

=head1 VERSION

version 0.02

=head1 AUTHOR

Andrew Nelson <anelson@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2012 by Andrew Nelson.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut


__END__
