#!/usr/bin/perl

use 5.10.0;
use strict;
use warnings FATAL => 'all';
use POSIX;
use utf8;



system('mkdir OnionShare && touch OnionShare/OnionShare.txt && chmod 775 OnionShare/OnionShare.txt');
system('ttyrec -e \'onionshare --connect-timeout 150  --receive\'  OnionShare/OnionShare.txt');
system('killall -9 recivefiles.pl & killall -9 onionshare & killall -9 tor &');
