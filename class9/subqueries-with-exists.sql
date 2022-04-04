/*
Use EXISTS or JOIN to get all recipes that use onions AND salt
*/

use RecipesExample;

select * from Ingredients;
-- Onion: 2, Salt: 11

select r.RecipeTitle, i.IngredientName from Recipes r
inner join Recipe_Ingredients ri on r.RecipeID = ri.RecipeID
inner join Ingredients i on ri.IngredientID = i.IngredientID
where i.IngredientName in ('Onion', 'Salt');

-- get all recipes that use salt
select * from Recipes 
where exists (
	select * from Recipe_Ingredients
    where IngredientID = 11
    and RecipeID = Recipes.RecipeID
);

-- get all recipes that use onions
select * from Recipes 
where exists (
	select * from Recipe_Ingredients
    where IngredientID = 2
    and RecipeID = Recipes.RecipeID
);

-- Get all recipes that use salt and onion
select * from Recipes r
where exists(
	select * from recipe_ingredients ri
	where IngredientID = 11
	and ri.RecipeID = r.RecipeID
)
and exists
(
	select * from recipe_ingredients ri
	where IngredientID = 2
	and ri.RecipeID = r.RecipeID
);

-- can we solve this with joins??
select r.RecipeTitle, count(i.IngredientName) as num_ingredients from Recipes r
inner join Recipe_Ingredients ri on r.RecipeID = ri.RecipeID
inner join Ingredients i on ri.IngredientID = i.IngredientID
where i.IngredientName in ('Onion', 'Salt')
group by r.RecipeTitle
having num_ingredients = 2;


