use Term::ANSIColor qw{RESET BOLD WHITE BLUE ON_WHITE ON_YELLOW ON_GREEN};

#open F, $ARGV[0] or die $!;

#while (my $l= <F>){

  $l = $_;

  chomp $l;

  if ($l=~/\/(.*?)\//){

    print $k, BOLD WHITE ON_YELLOW $1, RESET, "\n";

    sleep 5;

    $l=~s{/(.*)/}[BOLD BLUE ON_GREEN $1, RESET]e;

    print $l, "\n";

    sleep 2;
  }  

#}

#close F;
