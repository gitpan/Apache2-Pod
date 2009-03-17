#!perl -T

use Test::More tests => 5;

BEGIN {
    use_ok( 'Apache2::Pod' );
    use_ok( 'Apache2::Pod::HTML' );
    use_ok( 'Apache2::Pod::Text' );
}

APACHE_POD_HTML: {
    can_ok( 'Apache2::Pod::HTML', 'handler' );
}

APACHE_POD_TEXT: {
    can_ok( 'Apache2::Pod::Text', 'handler' );
}

=for comment

# this doesn't make any sense and makes smoke tests fail 

MY_POD_SIMPLE_HTML: {
    my $psh = My::Pod::Simple::HTML->new;
    isa_ok( $psh, 'My::Pod::Simple::HTML' );
    isa_ok( $psh, 'Pod::Simple::HTML' );
}

=cut
