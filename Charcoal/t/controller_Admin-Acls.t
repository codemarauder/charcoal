use strict;
use warnings;
use Test::More;


use Catalyst::Test 'Charcoal';
use Charcoal::Controller::Admin::Acls;

ok( request('/admin/acls')->is_success, 'Request should succeed' );
done_testing();
