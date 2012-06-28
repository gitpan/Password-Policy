package Password::Policy::Rule::Lowercase;
{
  $Password::Policy::Rule::Lowercase::VERSION = '0.02';
}

use strict;
use warnings;

use parent 'Password::Policy::Rule';

use String::Multibyte;

use Password::Policy::Exception::InsufficientLowercase;

sub check {
    my $self = shift;
    my $password = $self->prepare(shift);
    my @lowercase = ($password =~ m/[a-z]/g);
    my $count = scalar @lowercase;
    if($count < $self->arg) {
        Password::Policy::Exception::InsufficientLowercase->throw;
    }
    return 1;
}

1;



=pod

=head1 NAME

Password::Policy::Rule::Lowercase

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
