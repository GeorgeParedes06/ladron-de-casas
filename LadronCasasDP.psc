Algoritmo LadronCasasDP
	Definir n, i, resultado Como Entero;
	Dimension nums[5], dp[5];
	n <- 5;
	nums[1] <- 2;
	nums[2] <- 7;
	nums[3] <- 9;
	nums[4] <- 3;
	nums[5] <- 1;
	
	dp[1] <- nums[1];
	Si nums[1] > nums[2] Entonces
		dp[2] <- nums[1];
	Sino
		dp[2] <- nums[2];
	FinSi
	
	Para i <- 3 Hasta n Con Paso 1 Hacer
		Si dp[i-1] > dp[i-2] + nums[i] Entonces
			dp[i] <- dp[i-1];
		Sino
			dp[i] <- dp[i-2] + nums[i];
		FinSi
	FinPara
	resultado <- dp[n];
	Escribir "Tabla dp:";
	Para i <- 1 Hasta n Con Paso 1 Hacer
		Escribir "dp[", i, "] = ", dp[i];
	FinPara
	Escribir "Maximo dinero (programacion dinamica): ", resultado;
FinAlgoritmo