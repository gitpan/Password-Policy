package Password::Policy::Encryption::Plaintext;
{
  $Password::Policy::Encryption::Plaintext::VERSION = '0.02';
}

use strict;
use warnings;

use parent 'Password::Policy::Encryption';

use String::Multibyte;

sub enc {
    my $self = shift;
    my $password = $self->prepare(shift);
    return $password;
}

1;



=pod

=head1 NAME

Password::Policy::Encryption::Plaintext

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


