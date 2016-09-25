#!/user/bin/perl
#Authors: lilibei
#This is script is used for extract gene or protein sequence from the gene or protein database
open FL1,'<','cds.fa';
open FL2,'<','query.fa';
open OP ,'>',"result.txt";
while (<FL1>)
{
	if (/(>\w+\d+)/)	#the ID must start with '>' words and numbers, such like '>AT1G3343434'
	{
	}
	else
	{
	$hash{$1}.=$_;
	}
}

@query=<FL2>;
foreach (@query)
{
chomp;
print OP "$_\n$hash{$_}";
}
close FL1;
close FL2;
close OP;
