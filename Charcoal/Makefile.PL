#!/usr/bin/env perl
# IMPORTANT: if you delete this file your app will not work as
# expected.  You have been warned.
use inc::Module::Install 1.02;
use Module::Install::Catalyst; # Complain loudly if you don't have
                               # Catalyst::Devel installed or haven't said
                               # 'make dist' to create a standalone tarball.

name 'Charcoal';
all_from 'lib/Charcoal.pm';

requires 'Catalyst::Runtime' => '5.90079';
requires 'Catalyst::Plugin::ConfigLoader';
requires 'Catalyst::Plugin::Static::Simple';
requires 'Catalyst::Action::RenderView';
requires 'Catalyst::Plugin::Cache::FastMmap';
requires 'Catalyst::Plugin::Authentication';
requires 'Catalyst::Plugin::Session::State::Cookie';
requires 'Catalyst::Plugin::Session::Store::Memcached::Fast';
requires 'Catalyst::View::Email::Template';
requires 'Moose';
requires 'namespace::autoclean';
requires 'Config::General'; # This should reflect the config file format you've chosen
# See Catalyst::Plugin::ConfigLoader for supported formats
requires 'Plack';
requires 'Starman';

requires 'JSON::XS';
requires 'Data::Validate::IP';
requires 'Email::Valid';
requires 'Net::DNS';
requires 'Crypt::JWT';
requires 'UUID';

test_requires 'Test::More' => '0.88';
catalyst;

install_script glob('script/*.pl');
auto_install;
WriteAll;
