#!/usr/bin/perl

# TablePress CSV to HUGO migration script

# Takes class tables from TablePress export in CSV format and generates Markdown with shortcodes
# suitable for Hugo

# Example input:
# Class 91;"<a href=""https://media.poornalayam.org/download/GistOfGita/GG_91_Gist_of_Gita_Chapter_XVIII.mp3"">Download</a>";<a href=https://youtu.be/_a6_yGu2XbE>Play</a>
#
# output:
# Class 91 | {{< archive "GG_91_Gist_of_Gita_Chapter_XVIII.mp3" >}} | {{< yt "_a6_yGu2XbE" >}}

use warnings;
use strict;

my $class;
my $mp3;
my $ytid;

while (<>) {


    m|^(.+?);|;  $class = $1;

    m|/([^/]+.mp3)|;   $mp3 = $1;

    m|youtu\.be\/(.+)>Play|;  $ytid = $1;

    print qq($class | {{< archive "$mp3" >}} | {{< yt "$ytid" >}}\n);

}
