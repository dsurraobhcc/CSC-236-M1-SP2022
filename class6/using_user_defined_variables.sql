-- get the ingredient id for Garlic
select IngredientID into @ingredient_id from Ingredients
where IngredientName = 'Garlic';
select @ingredient_id;

-- add Fish Sauce to list of ingredients
select max(IngredientID) + 1 into @ingredient_id from Ingredients;

set @ingredient_name = 'Fish Sauce';

select IngredientClassID into @ingredient_class_id from Ingredient_Classes 
where IngredientClassDescription = 'Sauce';

select MeasureAmountID into @measure_amount_id from Measurements 
where MeasurementDescription = 'Teaspoon';

select @ingredient_id, 
	@ingredient_name, 
    @ingredient_class_id, 
    @measure_amount_id;

insert into Ingredients (IngredientID, 
	IngredientName, 
    IngredientClassID, 
    MeasureAmountID
)
values (@ingredient_id, 
	@ingredient_name, 
    @ingredient_class_id, 
    @measure_amount_id
);


