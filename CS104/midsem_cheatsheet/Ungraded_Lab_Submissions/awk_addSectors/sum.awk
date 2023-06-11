BEGIN { 
FS=","
OFS=","
total["Net"]=0
total["Agriculture"]=0
total["Banking"]=0
total["Film"]=0
total["Manufacturing"]=0
total["Railways"]=0
}

{
print $0
total["Net"] = total["Net"] + ($4+0)
for(g in total)
	{
    	if($3 == g)
        {
        	total[g] = total[g]+($4+0);
            break;
        }
    }
}

END {
print "====="
	print "Net : "total["Net"]
	print "Agriculture : "total["Agriculture"]
    print "Banking : "total["Banking"]
    print "Film : "total["Film"]
    print "Manufacturing : "total["Manufacturing"]
    print "Railways : "total["Railways"]


}