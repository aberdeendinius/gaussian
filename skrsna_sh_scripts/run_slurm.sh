for f in *; do
	fname="${f%.*}"
	ext="${f##*.}"
	if [ $ext = "com" ]
	then
		now=$(date +"%m-%d-%T")
        	printName=$fname'_'$now
        	echo "$printName"
		echo "$f"
		mkdir  "$printName"
		cd "$printName"
		l=".g.log"
		cp ../sample_slurm.sh .
		sbatch --job-name=$fname --output=$printName.log --error=$printName.slurm.log sample_slurm.sh ../"$f" $printName$l 
		cd ..
	fi
done

