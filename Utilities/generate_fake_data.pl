#!/Users/ashutosh/perl5/perlbrew/perls/perl-5.28.0/bin/perl

use strict;
use warnings;

use Text::Lorem;

my $text = Text::Lorem->new();

my $thread_file = "Thread.csv";
my $post_file = "Post.csv";

open (my $tfh, '>', $thread_file);
open (my $pfh, '>', $post_file);

my $counter = 1;
my $post_id = 1;

while($counter <=500) {
    my $title = $text->words(5);

    my $i = 1;

    while ($i <= 10) {
        my $post_body = $text->sentences(3);

        print $pfh "$post_id, $counter, $post_body\n";
        $i++;
        $post_id++;
    }

    print $tfh "$counter,$title\n";

    $counter++;

}
