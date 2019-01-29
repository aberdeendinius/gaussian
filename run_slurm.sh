for f in *; do
	fname="${f%.*}"
	ext="${f##*.}"
	if [ $ext = "com" ]
	now = (date +"%m-%d-%T")
	printName=$fname+$now
	echo "$printName"
	then
		echo "$f"
		mkdir  "$printName"
		#cd "$printName"
		#sbatch --job-name=$fname --output=$printName.log --error=$printName.slurm.log sample_slurm.sh ../"$f"
		cd ..
	fi
done

