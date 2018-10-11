README.md: guessinggame.sh
	echo "Project Title :" >README.md
	echo "Guessing Game" >> README.md
	echo "Execution Date: " >> README.md
	date +%D >> README.md
	echo "Execution Time: " >> README.md
	date +%r >> README.md
	echo "Lines of code :" >> README.md
	cat guessinggame.sh| wc -l >> README.md
	 
clean: 
	rm README.md
