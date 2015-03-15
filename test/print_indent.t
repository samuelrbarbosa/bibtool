#!/usr/bin/perl -w
#==============================================================================
#  
#  This file is part of BibTool.
#  It is distributed under the GNU General Public License.
#  See the file COPYING for details.
#  
#  (c) 2011-2015 Gerd Neugebauer
#  
#  Net: gene@gerd-neugebauer.de
#  
#==============================================================================

=head1 NAME

print_indent.t - Test suite for BibTool print.indent.

=head1 SYNOPSIS

print_indent.t

=head1 DESCRIPTION

This module contains some test cases. Running this module as program
will run all test cases and print a summary for each. Optionally files
*.out and *.err are left if the expected result does not match the
actual result.

=head1 OPTIONS

none

=head1 AUTHOR

Gerd Neugebauer

=head1 BUGS

=over 4

=item *

...

=back

=cut

use strict;
use BUnit;


#------------------------------------------------------------------------------
BUnit::run(name         => 'print_indent_1',
	   resource	=> <<__EOF__ ,
print.indent = 0
__EOF__
	   bib 	        => <<__EOF__ ,
\@Misc{		  xxx,
  author	= "A. U. Thor"
}
__EOF__
           expected_err	=> '',
	   expected_out => <<__EOF__ );

\@Misc{		  xxx,
author		= "A. U. Thor"
}
__EOF__


#------------------------------------------------------------------------------
BUnit::run(name         => 'print_indent_2',
	   resource	=> <<__EOF__ ,
print.indent = 8
__EOF__
	   bib 	        => <<__EOF__ ,
\@Misc{		  xxx,
  author	= "A. U. Thor"
}
__EOF__
           expected_err	=> '',
	   expected_out => <<__EOF__ );

\@Misc{		  xxx,
	author	= "A. U. Thor"
}
__EOF__


#------------------------------------------------------------------------------
BUnit::run(name         => 'print_indent_3',
	   resource	=> <<__EOF__ ,
print.indent = 16
__EOF__
	   bib 	        => <<__EOF__ ,
\@Misc{		  xxx,
  author	= "A. U. Thor"
}
__EOF__
           expected_err	=> '',
	   expected_out => <<__EOF__ );

\@Misc{		  xxx,
		author="A. U. Thor"
}
__EOF__


1;
#------------------------------------------------------------------------------
# Local Variables: 
# mode: perl
# End: 