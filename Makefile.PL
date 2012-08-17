use inc::Module::Install;
name 'P4U-Title-Maker';
all_from 'lib/P4U/Title/Maker.pm';

# requires '';

tests 't/*.t';
author_tests 'xt';

test_requires 'Test::More';
auto_set_repository;
auto_include;
WriteAll;
