#print $ARGV[0];
#print $ARGV[1];

$ARGV[1] = '>>' . $ARGV[1];
open file_in, $ARGV[0];
open file_out, $ARGV[1];

while($line = <file_in>)
{
    @data_in = split(' ', $line);
    
    #if ( ($data_in[1]>1.8) && ($data_in[1]<2.2))
    if ( $data_in[2] == 300 )
    {
	for($i=0;$i<15;++$i)
	{
	    #print $data_in[$i], ' ',
	    print file_out $data_in[$i], ' '
	}
	#print "\n";
	print file_out "\n";
    }
}

print $ARGV[1], "\n";

close(file_in);
close(file_out);
