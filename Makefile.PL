# Load the Module::Install bundled in ./inc/
use lib '.'; # added since from Perl 5.26 '.' is no more in @INC
use inc::Module::Install;

##############################################################################
# Define metadata (we read it from the binary)

name              'check_traffic';
version_from      'check_traffic';
perl_version_from 'check_traffic';
all_from          'check_traffic.pod';

##############################################################################
# Specific dependencies

include 'version';

requires 'Carp'                          => 0;
requires 'English'                       => 0;
requires 'File::Basename'                => 0;
requires 'Monitoring::Plugin'            => 0;
requires 'Monitoring::Plugin::Range'     => 0;
requires 'Monitoring::Plugin::Threshold' => 0;
requires 'Params::Validate'              => 0;
requires 'Readonly'                      => 0;
requires 'version'                       => 0;

install_script  'check_traffic';

tests 't/*.t';
test_requires 'Test::More'           => 0;

WriteMakefile(
    INSTALLSCRIPT        => '/usr/lib/nagios/plugins/contrib',
    INSTALLSITESCRIPT    => '/usr/lib/nagios/plugins/contrib',
    MAN1PODS             => { 'check_traffic.pod' => 'blib/man1/check_traffic.1', },
    MAN3PODS             => { },
);
