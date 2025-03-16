-- 1) Créer la base de données client_db
CREATE DATABASE client_db;
USE client_db;

-- 2) Créer la table Client
CREATE TABLE Client (
    ClientID INT PRIMARY KEY, 
    NomClient VARCHAR(50), 
    Prenom VARCHAR(50), 
    Pays VARCHAR(50), 
    Age INT CHECK (Age >= 0 AND Age <= 99), 
    Telephone VARCHAR(10) -- Utilisation de VARCHAR(10) car INT(10) n'est pas valide pour stocker des numéros de téléphone
);

-- 3) Insérer des données dans la table Client
INSERT INTO Client (ClientID, NomClient, Prenom, Pays, Age, Telephone)
VALUES 
(1, 'Shubham', 'Thakur', 'Inde', 23, 'xxxxxxxxxx'),
(2, 'Aman', 'Chopra', 'Australie', 21, 'xxxxxxxxxx'),
(3, 'Naveen', 'Tulasi', 'Sri Lanka', 24, 'xxxxxxxxxx'),
(4, 'Aditya', 'Arpan', 'Autriche', 21, 'xxxxxxxxxx'),
(5, 'Nishant', 'Jain', 'Espagne', 22, 'xxxxxxxxxx');

-- 4) Sélectionner le nom, le prénom et le téléphone de chaque client
SELECT NomClient, Prenom, Telephone FROM Client;

-- 5) Afficher les clients ayant un âge ≥ 23 ans
SELECT * FROM Client WHERE Age >= 23;

-- 6) Afficher les clients qui ne sont ni de 'Inde' ni de 'Autriche'
SELECT NomClient, Prenom FROM Client WHERE Pays NOT IN ('Inde', 'Autriche');

-- 7) Modifier le nom du client numéro 3 en « Navian »
UPDATE Client 
SET NomClient = 'Navian' 
WHERE ClientID = 3;

-- 8) Supprimer la colonne Pays de la table
ALTER TABLE Client DROP COLUMN Pays;

-- 9) Supprimer le client numéro 4
DELETE FROM Client WHERE ClientID = 4;

-- 10) Vider la table Client (supprime toutes les données mais conserve la structure)
TRUNCATE TABLE Client;

-- 11) Supprimer la table Client
DROP TABLE Client;

-- 12) Supprimer la base de données client_db
DROP DATABASE client_db;
