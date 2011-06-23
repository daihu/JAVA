#!/usr/bin/perl -w

use Net::SMTP_auth;

$smtp = Net::SMTP_auth->new('mail.zhazh.com',Debug=>1);
$smtp->auth('LOGIN', 'paul@zhazh.com', 'daihu123');
$smtp->mail('paul@zhazh.com');
$smtp->to('paul@zhazh.com');

$smtp->data();
$smtp->datasend("From: paul\@zhazh.com \n");
$smtp->datasend("To: paul\@zhazh.com \n");
$smtp->datasend("Subject: perl mail\n");
$smtp->datasend("\n");
$smtp->datasend("ÖĞÎÄ \n");
$smtp->dataend();

$smtp->quit;