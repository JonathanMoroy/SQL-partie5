USE `webDevelopment`;
-- Dans la table languages, afficher toutes les données de la table.
SELECT * FROM `languages`;
-- Dans la table languages, afficher toutes les versions de PHP.
SELECT
  `version`
FROM
  `languages`
WHERE
  `language`='PHP';
-- Dans la table languages, afficher toutes les versions de PHP et de JavaScript.
SELECT
  `version`
FROM
  `languages`
WHERE
  `language`='PHP'
  OR `language`='JavaScript';



-- DEMO avec fonction MYSQL //
  SELECT
    CONCAT(UPPER(`language`), ' version ', `version`) AS 'version_language', YEAR(NOW())
  FROM
    `languages`
  WHERE
  	`language` IN('PHP', 'JavaScript');
    -- `language`='PHP'
    -- OR `language`='JavaScript';




-- Dans la table languages, afficher toutes les lignes ayant pour id 3,5,7.
SELECT * FROM `languages`
     WHERE `id` IN(3, 5, 7);
-- Dans la table languages, afficher les deux première entrées de JavaScript.
SELECT * FROM `languages`
     WHERE `language`='JavaScript'
     LIMIT 2; -- OFFSET pas obligatoire quand il est égal à zéro
-- Dans la table languages, afficher toutes les lignes qui ne sont pas du PHP
SELECT * FROM `languages`
     WHERE NOT `language`='PHP';


     -- COCOrection
     USE `webDevelopment`;

SELECT * FROM `languages`
     WHERE
     `language` <> 'PHP';
     -- NOT `language`='PHP';


-- Dans la table languages, afficher toutes les données par ordre alphabétique.
SELECT * FROM `languages`
     ORDER BY `language`;
