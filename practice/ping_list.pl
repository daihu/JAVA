#!/usr/bin/perl
use warnings;
use strict;
#use Email::Send;
#use Email::Send::Gmail;
#use Email::Simple::Creator;
my @list = qw/
1.1.1.1
2.2.2.2
3.3.3.3
/;
foreach my $re (@list){
        my $p = `ping $re -c 3`;
        if($p=~/100% packet loss/){
                my $email = Email::Simple->create(
                header => [
                From    => 'monitor@a.com',
                To      => 'monitor@b.com',
                Subject => "$re 100% packet loss",
],
body => "$re the server is down!\n",
 );
                my $sender = Email::Send->new(
                { mailer => 'Gmail',
                mailer_args => [
                username => 'monitor@a.com',
                password => 'xxx',
                ]
                }
);
        eval { $sender->send($email) };
        die "Error sending email: $@" if $@;
        }
}