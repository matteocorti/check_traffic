#!perl

use 5.00800;

use strict;
use warnings;

use Test::More tests => 19;

our $VERSION = '2.2.5';

use_ok('Carp');

use_ok('English');

use_ok('File::Basename');
can_ok( 'File::Basename', 'dirname' );

use_ok('Monitoring::Plugin');
can_ok( 'Monitoring::Plugin', 'new' );
can_ok( 'Monitoring::Plugin', 'nagios_exit' );
can_ok( 'Monitoring::Plugin', 'add_perfdata' );

use_ok('Monitoring::Plugin::Range');
can_ok( 'Monitoring::Plugin::Range', 'parse_range_string' );

use_ok('Monitoring::Plugin::Getopt');
can_ok( 'Monitoring::Plugin::Getopt', 'new' );
can_ok( 'Monitoring::Plugin::Getopt', 'arg' );
can_ok( 'Monitoring::Plugin::Getopt', 'getopts' );
can_ok( 'Monitoring::Plugin::Getopt', 'get' );

use_ok('Monitoring::Plugin::Threshold');
can_ok( 'Monitoring::Plugin::Threshold', 'new' );
can_ok( 'Monitoring::Plugin::Threshold', 'set_thresholds' );

use_ok('Readonly');
