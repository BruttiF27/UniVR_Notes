- Esempio di codice 1
# Assegna valori da 1 a 100 a 100 variabili studenti
students <- 1:100

# Grades diventa la matrice di 100 righe e 10 colonne con valori che vanno da 1 a 10
grades <- matrix(
	round(runif(1000, 4, 10), digits = 0),  # Round arrotonda il valore
nrow = length(students))

colnames(grades) <- paste("Test", seq(1,10, 1)) # Rinomina le colonne, paste() concatena le stringhe
rownames(grades) <- paste("Student", students) # Rinomina le righe
avg_grades <- rowMeans(grades)
best_stud <- which(avg_grades == max(avg_grades)) # Il miglior studente è quello con la media più alta.

# Stampa a video le stringhe fra le virgolette
cat("The best student is: student", best_stud)
cat("\nThe avg quote of the best student is:", max(avg_grades))

- Esempio di codice 2
insuf <- NULL

for(i in 1:nrow(grades)){
	insuf[i] <- 0
	
	for(j in 1:ncol(grades)){
		if(grades[i, j] < 6){
			insuf[i] <- insuf[i] + 1
		}
	}
}

barplot(table(insuf)/100, xlab = "Number of insufficient tests",
	ylab = "Relative abundance",
	main = "Relative abundance of insufficient tests")