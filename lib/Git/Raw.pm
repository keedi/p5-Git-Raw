package Git::Raw;

use strict;
use warnings;

require XSLoader;
XSLoader::load('Git::Raw', $Git::Raw::VERSION);

use Git::Raw::Repository;

=head1 NAME

Git::Raw - Perl bindings to the Git linkable library (libgit2)

=head1 DESCRIPTION

L<libgit2|http://libgit2.github.com> is a pure C implementation of the Git core
methods provided as a re-entrant linkable library designed to be fast and
portable with a solid API.  This module provides Perl bindings to the libgit2
API.

B<WARNING>: The API of this module is unstable and may change without warning.

=head1 AUTHOR

Alessandro Ghedini <alexbio@cpan.org>

=head1 LICENSE AND COPYRIGHT

Copyright 2012 Alessandro Ghedini.

This program is free software; you can redistribute it and/or modify it
under the terms of either: the GNU General Public License as published
by the Free Software Foundation; or the Artistic License.

See http://dev.perl.org/licenses/ for more information.

=cut

1; # End of Git::Raw
