
use strict;
use warnings;

use 5.006000;

use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  'ABSTRACT' => 'Perl module of Thrift',
  'AUTHOR' => 'Developers Mailing List <thrift-dev@incubator.apache.org>',
  'BUILD_REQUIRES' => {
    'Module::Build' => '0.3601',
    'Test::More' => '0'
  },
  'CONFIGURE_REQUIRES' => {
    'ExtUtils::MakeMaker' => '6.30',
    'Module::Build' => '0.3601'
  },
  'DISTNAME' => 'Thrift',
  'EXE_FILES' => [],
  'LICENSE' => 'apache',
  'NAME' => 'Thrift',
  'PREREQ_PM' => {
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
  'VERSION' => '0.6.1',
  'test' => {
    'TESTS' => 't/*.t'
  }
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.56) } ) {
  my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
  my $pp = $WriteMakefileArgs{PREREQ_PM};
  for my $mod ( keys %$br ) {
    if ( exists $pp->{$mod} ) {
      $pp->{$mod} = $br->{$mod} if $br->{$mod} > $pp->{$mod};
    }
    else {
      $pp->{$mod} = $br->{$mod};
    }
  }
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



