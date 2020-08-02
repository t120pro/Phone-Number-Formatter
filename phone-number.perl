#!/usr/local/bin/perl

@phones = ('9085551000', '732.555.3350', '555-9777X552', '(718) 555-3600 extension 40');

foreach $num (@phones) {

	$num =~ /\(*(\d{3})*\)*[\D]*(\d{3})[\D]*(\d{4})( *[a-zA-Z.]*[xX][a-zA-Z.]* *(\d+))*/; #regex for phone number pattern
	$num = "($1) $2-$3 Ext $5";

	if (substr($num, 0, 2) eq "()"){ #inputs 410 for numbers without area code
		substr($num, 0, 2) = "(410)";
	}

	if (substr($num, -4, -1) eq "Ext"){ #removes "Ext" from numbers without an extension
		substr($num, -4, -1) = "";
	}
	print "$num\n"; #prints the phone number list
}
