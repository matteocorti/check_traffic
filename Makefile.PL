# Load the Module::Install bundled in ./inc/
use inc::Module::Install;

##############################################################################
# Define metadata (we read it from the binary)

name              'check_tcptraffic';
version_from      'check_tcptraffic';
perl_version_from 'check_tcptraffic';
all_from          'check_tcptraffic.pod';

##############################################################################
# Specific dependencies

include 'version';

requires 'Carp'                          => 0;
requires 'English'                       => 0;
requires 'File::Basename'                => 0;
requires 'Monitoring::Plugin'            => 0;
requires 'Monitoring::Plugin::Range'     => 0;
requires 'Monitoring::Plugin::Threshold' => 0;
requires 'Readonly'                      => 0;
requires 'version'                       => 0;

install_script  'check_tcptraffic';


tests 't/*.t';
test_requires 'Test::More'           => 0;

WriteMakefile(
    INSTALLSCRIPT        => '/usr/lib/nagios/plugins/contrib',
    INSTALLSITESCRIPT    => '/usr/lib/nagios/plugins/contrib',
    MAN1PODS             => { 'check_tcptraffic.pod' => 'blib/man1/check_tcptraffic.1', },
    MAN3PODS             => { },
);
