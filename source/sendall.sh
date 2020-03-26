for entry in $1/*
do
    newfile=`echo $entry | sed 's/\.s//g'`
    ./hp.sh $newfile
done
