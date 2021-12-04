#!/usr/bin/perl -T

use 5.10.0;
use strict;
use warnings FATAL => 'all';
use diagnostics;
use open qw(:std :encoding(UTF-8));
use Encode qw(decode_utf8);
BEGIN{@ARGV = map decode_utf8(, 1), @ARGV;}
binmode(STDIN, ':utf8');
binmode(STDOUT, ':utf8');
use utf8::all 'GLOBAL'; 
use Encode::Locale;
#use CGI;
#use POSIX;
#use utf8;




