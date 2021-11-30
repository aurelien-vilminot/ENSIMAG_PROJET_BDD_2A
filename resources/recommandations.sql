-- Recommandations générales
SELECT c.nomCategorie, count(o.dateOffre)/count(DISTINCT o.idProd) AS Moyenne 
FROM Offre o, Categorie c, Produit p 
WHERE o.idProd = p.idProd  
AND p.nomCategorie = c.nomCategorie 
GROUP BY c.nomCategorie 
ORDER BY Moyenne DESC, c.nomCategorie ASC;

-- Recommandation personnalisées
SELECT c.nomCategorie, count(o.dateOffre) AS NbOffre  
FROM Offre o, Produit p, Categorie c  
WHERE o.idCompte = ?  
AND o.idProd = p.idProd  
AND p.nomCategorie = c.nomCategorie 
AND NOT EXISTS (SELECT *  
                FROM OffreGagnante og  
                WHERE o.dateOffre = og.dateOffre  
                AND o.idProd = og.idProd) 
GROUP BY c.nomCategorie 
ORDER BY NbOffre DESC, c.nomCategorie ASC;

-- Requête qui fait les deux à la fois (affichant les catégories personnalisées puis générales, et pas d'autres)
-- Première sélection sur les recommandations personnalisées
SELECT p.nomCategorie AS nomCategorie, count(o.dateOffre) AS nb, 0 AS union_order
FROM Offre o, Produit p
WHERE o.idProd = p.idProd 
AND o.idCompte = 3
AND NOT EXISTS (SELECT *  
                FROM OffreGagnante og  
                WHERE o.dateOffre = og.dateOffre  
                AND o.idProd = og.idProd)
GROUP BY p.nomCategorie
UNION
-- Deuxième sélection sur les recommandations générales, en enlevant les catégories qui apparaissent dans la première requête
SELECT p.nomCategorie AS nomCategorie, count(o.dateOffre)/count(DISTINCT o.idProd) AS nb, 1 AS union_order
FROM Offre o, Produit p 
WHERE o.idProd = p.idProd  
AND p.nomCategorie NOT IN (SELECT p.nomCategorie
FROM Offre o, Produit p
WHERE o.idProd = p.idProd
AND o.idCompte = 3
AND NOT EXISTS (SELECT *  
                FROM OffreGagnante og  
                WHERE o.dateOffre = og.dateOffre  
                AND o.idProd = og.idProd))
GROUP BY p.nomCategorie
ORDER BY union_order, nb DESC, nomCategorie