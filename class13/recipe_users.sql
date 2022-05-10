/*
1. Create a user who only has read permission to RecipesExample
2. Create a user who has read/write access to RecipesExample
3. Create a user who can read recipes for desserts
*/

/* 1. Create a user who only has read permission to RecipesExample */
CREATE USER 'recipes_read_user'@'localhost' IDENTIFIED BY 'password';
GRANT SELECT ON RecipesExample.* TO 'recipes_read_user'@'localhost';

/* 2. Create a user who has read/write access to RecipesExample */
CREATE USER 'recipes_read_write_user'@'localhost' IDENTIFIED BY 'password';
GRANT SELECT, INSERT, UPDATE, DELETE ON RecipesExample.* 
	TO 'recipes_read_write_user'@'localhost';

/* 3. Create a user who can read recipes for desserts */
CREATE USER 'recipes_desserts_user'@'localhost' IDENTIFIED BY 'password';
GRANT SELECT ON RecipesExample.v_desserts TO 'recipes_desserts_user'@'localhost';

