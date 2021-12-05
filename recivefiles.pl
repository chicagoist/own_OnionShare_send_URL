#!/usr/bin/perl

use 5.10.0;
use strict;
use warnings FATAL => 'all';
# use diagnostics;
# use open qw(:std :encoding(UTF-8));
# use Encode qw(decode_utf8);
# BEGIN{@ARGV=map decode_utf8($_,1),@ARGV;}
# binmode(STDIN, ':utf8');
# binmode(STDOUT, ':utf8');
 use utf8::all 'GLOBAL';
# use Encode::Locale;
# #use CGI;
# use POSIX;
# use utf8;


# system('cd $HOME && touch ~/OnionShare/OnionShare.log');
# my $log_filename = "OnionShare/OnionShare.log";
# my $log_filehandle;
# open( $log_filehandle, '>>', $log_filename )
#     or die("Can't open $log_filename for append: $!");
#
# my $tee = IO::Tee->new( $log_filehandle, \*STDOUT );
# system('top'); = *$tee{IO};
# select $tee;

my $fh_save;
my $fh_read;
my $filepath_with_URL = "OnionShare/OnionShare_URL.txt";
system('mkdir OnionShare && touch OnionShare/OnionShare.log && chmod 775 OnionShare/OnionShare.log');
#my $filepath = qx('realpath ~/OnionShare/OnionShare.log');
my $filepath = "OnionShare/OnionShare.log";
system('logsave OnionShare/OnionShare.log onionshare --connect-timeout 150  --receive  &'); # onionshare --connect-timeout 150
#system('top  -b -n 10 > OnionShare/OnionShare.log'); # onionshare --connect-timeout 150

open ($fh_read, "<", $filepath) or die("Can't read from $filepath for append: $!");

    while (<$fh_read>) {
        chomp;
        if (/^http:.*/) {
        #if (/^.*legioner.*/) {
            open($fh_save, ">>", $filepath_with_URL) or die("Can't save to $filepath_with_URL for append: $!");
            print $fh_save "$_\n";
        }
    }

close($fh_save);
close($fh_read);
system('killall -9 recivefiles.pl');
system('killall -9 /usr/bin/onionshare');
system('killall -9 /usr/bin/tor');
system('killall -9 /sbin/logsave');
#system('killall -9 /usr/bin/top');
# sudo killall -9 recivefiles.pl & killall -9 onionshare & killall -9 tor & killall -9 logsave;