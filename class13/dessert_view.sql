use RecipesExample;

-- create a view of just desserts
create view v_desserts as
select r.RecipeTitle, r.Preparation, r.Notes from Recipes r
inner join Recipe_Classes rc on r.RecipeClassID = rc.RecipeClassID
where rc.RecipeClassDescription = 'Dessert';
