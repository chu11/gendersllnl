package Libgendersllnl;

use 5.006;
use strict;
use warnings;
use Carp;

require Exporter;
require DynaLoader;
use AutoLoader;

# Inherit from Libgenders
use Libgenders;
our @ISA = qw(Exporter DynaLoader Libgenders);

our $VERSION = '0.01';

bootstrap Libgendersllnl $VERSION;

1;

__END__

# Below is stub documentation for your module. You better edit it!
# What if I don't?

=head1 NAME

Libgendersllnl - Perl extension for libgendersllnl

=head1 SYNOPSIS

 use Libgendersllnl;

 Libgendersllnl::GENDERS_ALTNAME_ATTRIBUTE
 Libgendersllnl::GENDERS_CLUSTER_ATTRIBUTE
 Libgendersllnl::GENDERS_ALL_ATTRIBUTE

 $handle->gender_get_cluster([$node])
 $handle->genders_getaltnodes([$attr, [$val]])
 $handle->genders_getaltnodes_preserve([$attr, [$val]])   
 
 $handle->genders_isaltnode($altnode)
 $handle->genders_isnode_or_altnode($nodename)

 $handle->genders_to_gendname($altnode)   
 $handle->genders_to_gendname_preserve($altnode)
 $handle->genders_to_altname($node)
 $handle->genders_to_altname_preserve($node)

=head1 DESCRIPTION

This package provides a OO perl interface to the LLNL site specific
genders library (see libgendersllnl(3)).  This package inherits from
the Libgenders package, so please see Libgenders(3) for instructions
on creating and loading genders data.

=head2 LLNL Site Specific Parsing Functions

=over 4

=item B<$handle-E<gt>gender_get_cluster([$node])>

Returns the cluster name of the specified node.  If $node is not
specified, returns the cluster of the current node.  Returns undef
on error.

=item B<$handle-E<gt>genders_getaltnodes([$attr, [$val]])>

Returns a reference to a list of alternate node names that have the
specified attribute and value. If $val is not specified, only $attr is
considered.  If both $attr and $val are not specified, all alternate
named nodes are returned.  If a node does not have an alternate name,
will return an error.  Returns undef on error.

=item B<$handle-E<gt>genders_getaltnodes_preserve([$attr, [$val]])>

Returns a reference to a list of alternate node names that have the
specified attribute and value. If $val is not specified, only $attr is
considered.  If both $attr and $val are not specified, all alternate
named nodes are returned.  If a node does not have an alternate name,
the genders node will be returned instead.  Returns undef on error.

=item B<$handle-E<gt>genders_isaltnode($altnode)>

Tests if a the $altnode is listed as an alternate node name in the
genders file.  Returns 1 if the node is listed, 0 if it is not, -1 on
error.

=item B<$handle-E<gt>genders_isnode_or_altnode($nodename)>

Tests if a the nodename is listed as a node or alternate node name in
the genders file.  Returns 1 if the node is listed, 0 if it is not, -1
on error.

=back

=head2 LLNL Site Specific Conversion Functions

=over 4

=item B<$handle-E<gt>genders_to_gendname($altnode)>   

Converts the alternate node name to a genders node name.  If $altnode
is not found, will return an error.  Returns undef on error.

=item B<$handle-E<gt>genders_to_gendname_preserve($altnode)>

Converts the alternate node name to a genders node name.  If $altnode
is not found, $altnode will be returned.  Returns undef on error.

=item B<$handle-E<gt>genders_to_altname($node)>

Converts the alternate node name to a genders node name.  If $altnode
is not found, will return an error.  Returns undef on error.

=item B<$handle-E<gt>genders_to_altname_preserve($node)>

Converts the alternate node name to a genders node name.  If $altnode
is not found, $altnode will be returned.  Returns undef on error.

=back

=head2 Error Codes/Constants

The same error codes and constants listed in /usr/include/gendersllnl.h
can be accessed through the following:

 Libgendersllnl::GENDERS_ALTNAME_ATTRIBUTE
 Libgendersllnl::GENDERS_CLUSTER_ATTRIBUTE
 Libgendersllnl::GENDERS_ALL_ATTRIBUTE

=head1 AUTHOR

Albert Chu E<lt>chu11@llnl.govE<gt>

=head1 SEE ALSO

L<Libgenders>.

L<libgendersllnl>.

L<libgenders>.

=cut
