package Password::Policy::Exception::InvalidRule;
{
  $Password::Policy::Exception::InvalidRule::VERSION = '0.02';
}

use strict;
use warnings;

use parent 'Password::Policy::Exception';

sub error { return "You specified a rule that is not available"; }

1;



=pod

=head1 NAME

Password::Policy::Exception::InvalidRule

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
