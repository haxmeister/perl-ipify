package Acme::Free::API::Ipify;

use v5.38;
use HTTP::Tiny;
use Exporter 'import';
our @EXPORT_OK = qw(get_ipv4 get_ipv6 get_ip);

our $VERSION = '1.0';

sub get_ip(){
    return get('https://api64.ipify.org');
}

sub get_ipv4(){
    return get('https://api.ipify.org');
}

sub get_ipv6(){
    return get('https://api6.ipify.org');
}

sub get($url){
    my $response = HTTP::Tiny->new->get($url);
    return  HTTP::Tiny->new->get($url);
}

1;
__END__

=head1 NAME

Acme::Free::API::Ipify - Lookup your IP address using Ipify.org

=head1 SYNOPSIS

  use Acme::Free::API::Ipify qw( get_ipv4 get_ipv6 get_ip );

  # Universal: IPv4/IPv6
  say get_ip();

  # IPv4
  say get_ipv4();

  # IPv6
  say get_ipv6();


=head1 DESCRIPTION

This module looks up your external IP address through a public API, see L<https://www.freepublicapis.com/ipify-api> or L<https://www.ipify.org/>.

It returns a reference to a hash provided by HTTP::Tiny which makes it possible to handle errors .

=head1 SEE ALSO

=over 3

=item Call for API implementations on PerlMonks: L<https://perlmonks.org/?node_id=11161472>

=item Listed at  freepublicapis.com: L<https://www.freepublicapis.com/ipify-api>

=item Official api webpage: L<https://www.ipify.org/>

=back

=head1 AUTHOR

Joshua Day, E<lt>hax@cpan.orgE<gt>

=head1 SOURCECODE

Source code is available on my mercurial repo: L<https://cavac.at/public/mercurial/Acme-Free-API-Geodata-GeoIP/>

And no, i do NOT use GitHub for my projects, so don't ask.

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2024 by Joshua Day

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
