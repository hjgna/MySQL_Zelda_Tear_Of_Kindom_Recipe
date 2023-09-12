INSERT INTO Recipe (Recipe_name, Description) 
VALUES
('Raw Prime Meat', 'A fresh, high-quality piece of animal meat. This stuff is not 
	easy to come by, so savor it. Cook it to recover more hearts.'),
('Icy Gourmet Meat', 'This raw gourmet meat has been frozen for easy traveling. 
	It is kept its flavor through the freezing process. Eating it as is will 
	provide a temporary boost to your heat resistance'),
('Seafood Skewer', 'The natural water in this medley of seafaring creatures makes 
	for a delicious broth.'),
('Hylian Tomato Pizza', 'A pizza made with fresh Hylian tomato. Slices of melty 
	Hateno cheese make it irresistible.'),
('Cheesecake', 'A rich, moist, flavorful dessert with a Hateno cheese base.');

INSERT INTO Effect (Effect_name) 
VALUES
('Restore one heart'),
('Retore two hearts'),
('Restore three hearts'),
('Resotre four hearts'),
('Restore seven hearts');

INSERT INTO Bonus (Bonus_name) 
VALUES
('No bonus effect'),
('Temporary cold resistance'),
('Increase amount for greater effect');

INSERT INTO Recipe_EB (Effect_ID, Recipe_ID, Bonus_ID)
VALUES (1, 1, 1), (2, 3, 2), (3, 2, 1), (4, 5, 3), (5, 4, 1);

INSERT INTO Category (Category_name)
VALUES ('Animal product'), ('Seafood'), ('Crops'), ('Vegetable'), ('Spice'), ('Others');

INSERT INTO Ingredient (Ingredient_name, Category_ID) 
VALUES ('Meat', 1), ('Crab', 2), ('Tabantha Wheat', 3), ('Hateno Cheese', 6), ('Hylian Tomato', 4),
	   ('Cane Sugar', 5), ('Goat Butter', 6);

INSERT INTO Cooking_Procedure (Procedure_name)
VALUES ('Eat Directly'), ('Drop it in extremely cold temporature environment'), ('Cook in a pot');

INSERT INTO Recipe_Ingredient (Recipe_ID, Ingredient_ID, Procedure_ID)
VALUES (1, 1, 1), (2, 1, 2), (3, 2, 3), (4, 3, 3), (4, 4, 3), (4, 5, 3), (5, 4, 3), (5, 3, 3),
	   (5, 6, 3), (5, 7, 3);


