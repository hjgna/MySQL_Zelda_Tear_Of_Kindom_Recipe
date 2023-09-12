-- This 'New_Recipe_EB' table will include recipe name, recipe description, effect of the recipe, and the bonus of the recipe
CREATE TABLE New_Recipe_EB AS 
SELECT Recipe.Recipe_name, Recipe.Description, Effect.Effect_name 
FROM Recipe_EB 
JOIN Recipe ON Recipe_EB.Recipe_ID = Recipe.Recipe_ID 
JOIN Effect ON Recipe_EB.Effect_ID = Effect.Effect_ID;

SELECT * FROM New_Recipe_EB;

-- This 'Category_Ingredient' table will include ingredient name, the category of the ingredient (e.g, fruit, vegetable, meat, etc.)
CREATE TABLE Category_Ingredient AS 
SELECT Ingredient_ID, Ingredient.Ingredient_name, Category_name 
FROM Ingredient 
JOIN Category ON Category.Category_ID = Ingredient.Category_ID;

SELECT * FROM Category_Ingredient;

-- Return ingredient names that ends with 'e'
SELECT * FROM Category_Ingredient WHERE Ingredient_name LIKE '%e';

-- Count number of recipes
SELECT COUNT(Recipe_name) FROM New_Recipe_EB;

-- Sort query results
SELECT * FROM Category_Ingredient ORDER BY Ingredient_name;