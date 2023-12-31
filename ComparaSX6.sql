SELECT * FROM
(SELECT E99.X6_FIL, E99.X6_VAR, E99.X6_DESCRIC, E99.X6_CONTEUD X6_CONTEUD_99,
(
SELECT E01.X6_CONTEUD FROM SX6010 E01
WHERE
	E01.X6_FIL=E99.X6_FIL AND
	E01.X6_VAR=E99.X6_VAR AND
		E01.D_E_L_E_T_=' '
) X6_CONTEUD_01
FROM SX6990 E99
WHERE
	E99.D_E_L_E_T_=' '
) ALIAS
WHERE
	X6_CONTEUD_99 <> X6_CONTEUD_01
ORDER
	BY X6_VAR