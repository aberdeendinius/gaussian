for f in *; do
	fname="${f%.*}"
	ext="${f##*.}"
	if [ $ext = "com" ]
	then
		echo "$f"
		#mkdir  "$fname"
		cd "$fname"
		sbatch sample_slurm.sh ../"$f"
		cd ..
	fi
done

