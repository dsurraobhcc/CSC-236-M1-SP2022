use RecipesExample;

select * from Recipes limit 3;
select * from Recipe_Classes limit 3;

-- irish stew: RecipeID 1
select * from Recipe_Ingredients where RecipeID = 1; 
/*
 5 lbs beef
 2 whole onions
*/
select * from Ingredients where IngredientID = 2; 
select * from Measurements;

select * from Ingredient_Classes where IngredientClassID = 3;

select * from Recipe_Classes;

SELECT IngredientClassDescription,
	count(*) 
FROM Ingredients
inner join Ingredient_Classes using (IngredientClassID)
GROUP BY IngredientClassID;

SELECT a.IngredientName, ac.IngredientClassDescription FROM Ingredients a
INNER JOIN Ingredient_Classes ac ON ac.IngredientClassID = a.IngredientClassID
WHERE ac.IngredientClassDescription = 'Condiment'





