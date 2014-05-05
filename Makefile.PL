# use inc::Module::Install;

# # Define metadata
# name			'Modules';
# version_from	'lib/Modules/Manager.pm';
# author 'Nuno Martins <nuno.martins@caixamagica.pt>';

# # Specific dependencies
# requires		'File::Spec'  =>  '0.80';
# test_requires	'Test::More'  =>  '0.42';
# recommends		'Text::CSV_XS' =>  '0.50';
# #no_index  'directory'  =>  'demos';
# #install_script  'myscript';
# license			'Perl';
# WriteAll;

use strict;
use warnings;
 
use ExtUtils::MakeMaker;
 
my %WriteMakefileArgs = (
	'ABSTRACT' => 'Perl Modules Information Extractor',
	'AUTHOR' => 'Nuno Martins <nuno.martins@caixamagica.pt>',
	# 'BUILD_REQUIRES' => {
	# 	'Benchmark' => '0',
	# 	'Test::More' => '0'
	# },
	'CONFIGURE_REQUIRES' => {
		'ExtUtils::MakeMaker' => '6.31'
	},
	'DISTNAME' => 'PMInfoExtr',
	'EXE_FILES' => [ 
		"bin/modules-extractor.pl",
	],
	'LICENSE' => 'Apache2',
	'NAME' => 'PMInfoExtr',
	'VERSION_FROM'  => 'lib/PMInfoExtr/Manager.pm',
	'PREREQ_PM' => {
		'JSON' => '0',
		'Moose' => '0',
		'UUID::Tiny' => '0',
		'MetaCPAN::API' => '0',
		'DPKG::Parse' => '0',
		'Devel::Modlist' => '0',
	},
	#'VERSION' => '0.1',
	'test' => {
		'TESTS' => 't/*.t'
	},
	'SIGN' => '1',
);
 
WriteMakefile(%WriteMakefileArgs)
