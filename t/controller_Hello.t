use strict;
use warnings;
use Test::More;


use Catalyst::Test 'PerlForums::App';
use PerlForums::App::Controller::Hello;

ok( request('/hello')->is_success, 'Request should succeed' );
done_testing();
