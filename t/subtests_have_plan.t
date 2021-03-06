use strict;
use warnings;
use utf8;
use Test::More;
use t::Util;

my $tap = run_test('t/plx/subtests_have_plan.plx');
exit_status_is(0);

my $result = parse_tap($tap);
is($result->passed, $result->plan);
ok(!$result->has_problems, 'has no problems');

done_testing;

