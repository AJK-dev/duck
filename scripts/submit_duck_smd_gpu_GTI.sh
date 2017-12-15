#!/bin/bash
###
export nustart=$1
export nuend=$2
export temp=$3
###

export nu=$nustart
while [ $nu -le $nuend ]; do
	if [ $temp == "300K" ]; then
		export dir="DUCK_$nu"
		mkdir $dir
		sed 's/ZZ/'$nu'/g' duck_template_gpu.q > ./${dir}/duck_${nu}.q
		if [ $nu -eq 0 ]; then
			sed 's/md'$nu'.rst/4_eq.rst/g' ./${dir}/duck_${nu}.q > tmp
			mv tmp ./${dir}/duck_${nu}.q
		fi
		cd $dir; bash duck_${nu}.q; cd ..
# 325 K
	elif [ $temp == "325K" ]; then
		export dir="DUCK_325K_$nu"
		mkdir $dir
		sed 's/ZZ/'$nu'/g' duck_template_gpu_325K.q > ./${dir}/duck_325K_${nu}.q
		if [ $nu -eq 0 ]; then
			sed 's/md'$nu'.rst/4_eq.rst/g' ./${dir}/duck_325K_${nu}.q > tmp
			mv tmp ./${dir}/duck_325K_${nu}.q
		fi
		cd $dir; bash duck_325K_${nu}.q; cd ..
	fi
	let nu=nu+1
done