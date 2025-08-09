SELECT * FROM kids_indiannn.kids_indian;


/*impactor na saude de cada idade e quantidade afetados */
SELECT 
 idade, 
Impactos_saúde , 
COUNT(*) AS quantidade
FROM kids_indiannn.kids_indian
Where 
 Impactos_saúde IS NOT Null
 AND Impactos_saúde NOT IN ('None', 'Nenhum')
group by 
idade, Impactos_saúde
order by 
idade, quantidade DESC;


/**tempo medio de cada idade**/
SELECT idade, AVG(Tempo_tela) AS Tempo_medio_tela
from kids_indiannn.kids_indian
GROUP BY  idade
ORDER BY  idade DESC;

/**tempo medio por genero**/

SELECT genero, AVG(Tempo_tela)
from kids_indiannn.kids_indian
GROUP BY  genero
ORDER BY  genero  DESC;

/*TEMPO MEDIO DAS CRIANÇAS DO RURAL E CIDADE  NO CELULAR*/ 

select Urban_or_Rural, avg(Tempo_tela)
from kids_indiannn.kids_indian
GROUP BY Urban_or_Rural
ORDER BY Urban_or_Rural

