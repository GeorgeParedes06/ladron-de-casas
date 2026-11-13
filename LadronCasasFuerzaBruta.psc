Algoritmo LadronCasasFuerzaBruta
	Definir n, resultado Como Entero;
	Dimension nums[5];
	n <- 5;
	nums[1] <- 2;
	nums[2] <- 7;
	nums[3] <- 9;
	nums[4] <- 3;
	nums[5] <- 1;
	resultado <- casasFB(1, nums, n);
	Escribir "Maximo dinero (fuerza bruta): ", resultado;
FinAlgoritmo

Funcion res <- casasFB(i, nums, n)
	Definir res, noRobar, siRobar Como Entero;
	Si i > n Entonces
		res <- 0;
	Sino
		noRobar <- casasFB(i + 1, nums, n);
		siRobar <- nums[i] + casasFB(i + 2, nums, n);
		Si noRobar > siRobar Entonces
			res <- noRobar;
		Sino
			res <- siRobar;
		FinSi
	FinSi
FinFuncion