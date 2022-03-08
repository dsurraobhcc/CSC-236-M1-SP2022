use RecipesExample;

select r.RecipeTitle, rc.RecipeClassDescription from Recipes r
inner join Recipe_Classes rc on r.RecipeClassID = rc.RecipeClassID;

select rc.RecipeClassDescription, count(r.RecipeID) from Recipes r
inner join Recipe_Classes rc on r.RecipeClassID = rc.RecipeClassID
group by rc.RecipeClassDescription;

-- get me all recipe classes where there is more than one recipe
select rc.RecipeClassDescription, count(r.RecipeID) from Recipes r
inner join Recipe_Classes rc on r.RecipeClassID = rc.RecipeClassID
group by rc.RecipeClassDescription
having count(r.RecipeID) > 1;
