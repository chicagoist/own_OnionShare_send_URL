#!/usr/bin/perl

use 5.10.0;
use strict;
use warnings FATAL => 'all';
use POSIX;
use utf8;



system('touch ~/Dropbox/OnionShare.txt && chmod 775 ~/Dropbox/OnionShare.txt');
system('ttyrec -e \'onionshare --connect-timeout 150  --receive\'  ~/Dropbox/OnionShare.txt');
system('killall -9 onionshare & killall -9 tor &');
