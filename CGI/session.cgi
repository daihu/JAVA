#!/usr/bin/perl
use CGI qw(:standard);
print header;
print start_html( -title => 'Using header Methods' ),
  h1("Let's find out about this session!"),
  p,
  h4 "Your server is called ", server_name(),
  p,
  "Your server port number is ", server_port(),
  p,
  "This script name is: ", script_name(),
  p, "Your browser is ", user_agent(), "and it's out of date!",
  p,
  "The query string looks like this: ", query_string(),
  p,
  "Where am I? Your URL is: \n", url(),
  p,
  "Cookies set: ", raw_cookie();

print end_html;
