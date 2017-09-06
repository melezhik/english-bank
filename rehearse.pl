use Term::ANSIColor qw{RESET BOLD WHITE BLUE ON_WHITE ON_YELLOW ON_GREEN};

#open F, $ARGV[0] or die $!;

#while (my $l= <F>){

  $l = $_;

  chomp $l;

  if (my @a = ($l=~/\/(.*?)\//g)){

    my @d;
    for my $s (@a){
      push @d, BOLD WHITE ON_YELLOW $s, RESET;
    }

    print join " ... ", @d;
    print "\n";

    sleep 5;

    $l=~s{/(.*?)/}[BOLD BLUE ON_GREEN $1, RESET]ge;

    print $l, "\n";

    sleep 2;
  }  

#}

#close F;
