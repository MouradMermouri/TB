DROP IF EXITS ROLE 'marketing'@'localhost' 

-- Cr�ez un groupe marketing

CREATE ROLE 'marketing'@'localhost'

-- ajouter, modifier et supprimer des produits

GRANT INSERT, UPDATE, DELETE 
ON gescom.products
TO 'marketing'@'localhost' 
 
-- ajouter, modifier et supprimer des cat�gories

GRANT INSERT, UPDATE, DELETE 
ON gescom.categories
TO 'marketing'@'localhost' 