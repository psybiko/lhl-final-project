INSERT INTO users
  (first_name, last_name, email, password)
VALUES
  ('Charlie', 'Brown', 'charlie@gmail.com', '123'),
  ('Morgan', 'Grant', 'morgan@gmail.com', '321');

INSERT INTO recipes
  (user_id, recipe_name, picture, description, ingredients, instruction)
VALUES
  ('1', 'Amazingly Fluffy Waffles', 'https:
//webknox.com/recipeImages/1447373-556x370.jpg', 'The recipe Amazingly Fluffy Waffles can be made in approximately 45 minutes. This recipe serves 6 and costs 33 cents per serving. One portion of this dish contains about 8g of protein, 12g of fat, and a total of 259 calories. It is brought to you by spoonacular user activenetworkuser6126. If you have flour, milk, sugar, and a few other ingredients on hand, you can make it. It works well as a morn meal. It is a good option if youre following a lacto ovo vegetarian diet. Users who liked this recipe also liked Amazingly Fluffy Waffles, Fluffy Waffles, and Fluffy Waffles with Cinnamon Cream.', 'powder, milk, eggs', 'Grease and heat waffle iron as directed by manufacturer. In a large bowl, stir flour, baking powder, salt, and sugar. Individually add milk, beaten egg yolks, and butter. Beat egg whites until stiff. Gently fold into mixture. When waffle iron is heated, pour some mixture into center and spread to within 1 inch of edge. Bake as directed. . When cooked, loosen from waffle iron and serve immediately'),
  ('2', 'Amazingly Fluffy Waffles', 'https:
//webknox.com/recipeImages/1447373-556x370.jpg', 'The recipe Amazingly Fluffy Waffles can be made in approximately 45 minutes. This recipe serves 6 and costs 33 cents per serving. One portion of this dish contains about 8g of protein, 12g of fat, and a total of 259 calories. It is brought to you by spoonacular user activenetworkuser6126. If you have flour, milk, sugar, and a few other ingredients on hand, you can make it. It works well as a morn meal. It is a good option if youre following a lacto ovo vegetarian diet. Users who liked this recipe also liked Amazingly Fluffy Waffles, Fluffy Waffles, and Fluffy Waffles with Cinnamon Cream.', 'powder, milk, eggs', 'Grease and heat waffle iron as directed by manufacturer. In a large bowl, stir flour, baking powder, salt, and sugar. Individually add milk, beaten egg yolks, and butter. Beat egg whites until stiff. Gently fold into mixture. When waffle iron is heated, pour some mixture into center and spread to within 1 inch of edge. Bake as directed. . When cooked, loosen from waffle iron and serve immediately'),
  ('1', 'Amazingly Fluffy Waffles', 'https:
//webknox.com/recipeImages/1447373-556x370.jpg', 'The recipe Amazingly Fluffy Waffles can be made in approximately 45 minutes. This recipe serves 6 and costs 33 cents per serving. One portion of this dish contains about 8g of protein, 12g of fat, and a total of 259 calories. It is brought to you by spoonacular user activenetworkuser6126. If you have flour, milk, sugar, and a few other ingredients on hand, you can make it. It works well as a morn meal. It is a good option if youre following a lacto ovo vegetarian diet. Users who liked this recipe also liked Amazingly Fluffy Waffles, Fluffy Waffles, and Fluffy Waffles with Cinnamon Cream.', 'powder, milk, eggs', 'Grease and heat waffle iron as directed by manufacturer. In a large bowl, stir flour, baking powder, salt, and sugar. Individually add milk, beaten egg yolks, and butter. Beat egg whites until stiff. Gently fold into mixture. When waffle iron is heated, pour some mixture into center and spread to within 1 inch of edge. Bake as directed. . When cooked, loosen from waffle iron and serve immediately');

INSERT INTO inventory_items
  (user_id, name, expiry_date, daysleft)
VALUES
  ('1', 'milk', '2020-05-23', '5'),
  ('1', 'egg', '2020-05-28', '4');



INSERT INTO saved_recipes
  (user_id, name, image, description, ingredients, instruction)
VALUES
  ('1', 'Waffles', 'https:
//webknox.com/recipeImages/1447373-556x370.jpg', 'Amazingly Fluffy Waffles', 'flour, eggs, milk, sugar, salt', 'mix everything and bake!');

