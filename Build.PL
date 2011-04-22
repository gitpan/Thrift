
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  'build_requires' => {
    'Module::Build' => '0.3601',
    'Test::More' => '0'
  },
  'configure_requires' => {
    'ExtUtils::MakeMaker' => '6.31',
    'Module::Build' => '0.3601'
  },
  'dist_abstract' => 'Perl module of Thrift',
  'dist_author' => [
    'Developers Mailing List <thrift-dev@incubator.apache.org>'
  ],
  'dist_name' => 'Thrift',
  'dist_version' => '0.6.0_01',
  'license' => 'apache',
  'module_name' => 'Thrift',
  'recommends' => {},
  'recursive_test_files' => 1,
  'requires' => {
    'Bit::Vector' => '0',
    'Encode' => '0',
    'HTTP::Request' => '0',
    'IO::Select' => '0',
    'IO::Socket::INET' => '0',
    'IO::String' => '0',
    'LWP::UserAgent' => '0',
    'POSIX' => '0',
    'constant' => '0',
    'utf8' => '0'
  },
  'script_files' => []
);


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
