BEGIN {print "Student ID,First Name,Middle Name,Last Name,Email-ID";
FS=",";
OFS=",";
}

{
if($1 ~ /1.../){
	
    print $0","$2$4"@surveycorps.com"
	}
}
