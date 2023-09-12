CREATE DATABASE Zelda_TOK_Cookbook;
USE Zelda_TOK_Cookbook;

CREATE TABLE Recipe (
	Recipe_ID INT UNSIGNED NOT NULL AUTO_INCREMENT,
	Recipe_name TINYTEXT,
	Description TEXT,
	Primary Key (Recipe_ID)
	);

CREATE TABLE Effect (
	Effect_ID INT UNSIGNED NOT NULL AUTO_INCREMENT,
	Effect_name TINYTEXT,
	Primary Key (Effect_ID)
	);

CREATE TABLE Bonus (
	Bonus_ID INT UNSIGNED NOT NULL AUTO_INCREMENT,
	Bonus_name TINYTEXT,
	Primary Key (Bonus_ID)
	);

CREATE TABLE Recipe_EB (
	Recipe_EB_ID INT UNSIGNED NOT NULL AUTO_INCREMENT,
	Effect_ID INT UNSIGNED,
	Recipe_ID INT UNSIGNED,
	Bonus_ID INT UNSIGNED,
	Primary Key (Recipe_EB_ID),
	FOREIGN KEY (Effect_ID) REFERENCES Effect(Effect_ID),
	FOREIGN KEY (Recipe_ID) REFERENCES Recipe(Recipe_ID),
	FOREIGN KEY (Bonus_ID) REFERENCES Bonus(Bonus_ID)
);

CREATE TABLE Category (
	Category_ID INT UNSIGNED NOT NULL AUTO_INCREMENT,
	Category_name TINYTEXT,
	Primary Key (Category_ID)
	);

CREATE TABLE Ingredient(
	Ingredient_ID INT UNSIGNED NOT NULL AUTO_INCREMENT,
	Ingredient_name TINYTEXT,
	Category_ID INT UNSIGNED,
	Primary Key (Ingredient_ID),
	FOREIGN KEY (Category_ID) REFERENCES Category(Category_ID)
	);

CREATE TABLE Cooking_Procedure (
	Procedure_ID INT UNSIGNED NOT NULL AUTO_INCREMENT,
	Procedure_name TINYTEXT,
	Primary Key (Procedure_ID)
	);

CREATE TABLE Recipe_Ingredient (
	Recipe_Ingredient_ID INT UNSIGNED NOT NULL AUTO_INCREMENT,
	Recipe_ID INT UNSIGNED,
	Ingredient_ID INT UNSIGNED,
	Procedure_ID INT UNSIGNED,
	Primary Key (Recipe_Ingredient_ID),
	FOREIGN KEY (Recipe_ID) REFERENCES Recipe(Recipe_ID),
	FOREIGN KEY (Ingredient_ID) REFERENCES Ingredient(Ingredient_ID),
	FOREIGN KEY (Procedure_ID) REFERENCES Cooking_Procedure(Procedure_ID)
);
