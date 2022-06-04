#!/usr/bin/awk -f
BEGIN{if(length(ARGV[1])<1){
		print "No file name given!"
		exit 4
	}
	print ARGV[1];
	print "Enter the length of line: ";
	getline size < "-";
	counter=0;
	}
	length($0)>=size {print ++counter "." $0}

END{print "Omitted lines: " FNR-counter}

 	

