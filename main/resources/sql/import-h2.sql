ALTER TABLE POST
  ALTER COLUMN create_date SET DEFAULT CURRENT_TIMESTAMP;

-- Users
-- password in plaintext: "password"
INSERT INTO USER (user_id, password, email, username, name, last_name, active)
VALUES
  (1, '$2a$06$OAPObzhRdRXBCbk7Hj/ot.jY3zPwR8n7/mfLtKIgTzdJa4.6TwsIm', 'user@mail.com', 'user', 'Name', 'Surname',
   1);
-- password in plaintext: "password"
INSERT INTO USER (user_id, password, email, username, name, last_name, active)
VALUES
  (2, '$2a$06$OAPObzhRdRXBCbk7Hj/ot.jY3zPwR8n7/mfLtKIgTzdJa4.6TwsIm', 'johndoe@gmail.com', 'johndoe', 'John', 'Doe', 1);
-- password in plaintext: "password"
INSERT INTO USER (user_id, password, email, username, name, last_name, active)
VALUES (3, '$2a$06$OAPObzhRdRXBCbk7Hj/ot.jY3zPwR8n7/mfLtKIgTzdJa4.6TwsIm', 'ana@mail.com', 'ana', 'Ana', 'Surname', 1);

-- Roles
INSERT INTO ROLE (role_id, role)
VALUES (1, 'ROLE_ADMIN');
INSERT INTO ROLE (role_id, role)
VALUES (2, 'ROLE_USER');

-- User Roles
INSERT INTO USER_ROLE (user_id, role_id)
VALUES (1, 1);
INSERT INTO USER_ROLE (user_id, role_id)
VALUES (1, 2);
INSERT INTO USER_ROLE (user_id, role_id)
VALUES (2, 2);
INSERT INTO USER_ROLE (user_id, role_id)
VALUES (3, 2);

-- Posts
INSERT INTO POST (post_id, user_id, title, body, create_date)
VALUES (1, 1, 'French Toast',
        'Ingredients: 4 eggs, 2/3 cup milk, 2 teaspoons of cinnamon, 8 thick slices of 2-day-old bread (better if slightly stale), Butter (can sub vegetable oil), Maple syrup
___________________________________________________________________________________________
Cook: 1 Make the egg mixture: In a medium bowl, whisk together the eggs, milk, and cinnamon. Stir in the orange zest and/or Triple Sec if using. Whisk the mixture until well blended and pour into a shallow bowl, wide enough to place a slice of the bread you will be using.
___________________________________________________________________________________________
2 Soak bread slices in egg mixture: Place each slice of bread into the milk egg mixture, allowing the bread to soak in some of it.
___________________________________________________________________________________________
4 Serve hot with butter, maple syrup, and if available, fresh berries.
',
        --         CURRENT_TIMESTAMP());
        {ts '2016-10-19 11:10:13.247'});
INSERT INTO POST (post_id, user_id, title, body, create_date)
VALUES (7, 2, 'Cinnamon Pancakes',
        'Ingredients: 4 eggs, 2/3 cup milk, 2 teaspoons of cinnamon, 8 thick slices of 2-day-old bread (better if slightly stale), Butter (can sub vegetable oil), Maple syrup
___________________________________________________________________________________________
Cook: 1 Make the egg mixture: In a medium bowl, whisk together the eggs, milk, and cinnamon. Stir in the orange zest and/or Triple Sec if using. Whisk the mixture until well blended and pour into a shallow bowl, wide enough to place a slice of the bread you will be using.
___________________________________________________________________________________________
2 Soak bread slices in egg mixture: Place each slice of bread into the milk egg mixture, allowing the bread to soak in some of it.
___________________________________________________________________________________________
4 Serve hot with butter, maple syrup, and if available, fresh berries.
',
        CURRENT_TIMESTAMP());
INSERT INTO POST (post_id, user_id, title, body, create_date)
VALUES (12, 3, 'Apple Cinnamon Pie',
        'Ingredients: 4 eggs, 2/3 cup milk, 2 teaspoons of cinnamon, 8 thick slices of 2-day-old bread (better if slightly stale), Butter (can sub vegetable oil), Maple syrup
___________________________________________________________________________________________
Cook: 1 Make the egg mixture: In a medium bowl, whisk together the eggs, milk, and cinnamon. Stir in the orange zest and/or Triple Sec if using. Whisk the mixture until well blended and pour into a shallow bowl, wide enough to place a slice of the bread you will be using.
___________________________________________________________________________________________
2 Soak bread slices in egg mixture: Place each slice of bread into the milk egg mixture, allowing the bread to soak in some of it.
___________________________________________________________________________________________
4 Serve hot with butter, maple syrup, and if available, fresh berries.
',
        CURRENT_TIMESTAMP());

-- Comments
INSERT INTO COMMENT (post_id, user_id, body, create_date)
VALUES (1, 1,
        'Good!',
        CURRENT_TIMESTAMP());
INSERT INTO COMMENT (post_id, user_id, body, create_date)
VALUES (1, 2,
        'Awesome!',
        CURRENT_TIMESTAMP());
INSERT INTO COMMENT (post_id, user_id, body, create_date)
VALUES (1, 3,
        'Amazing!',
        CURRENT_TIMESTAMP());
INSERT INTO COMMENT (post_id, user_id, body, create_date)
VALUES (7, 1,
        'Fanstastic',
        CURRENT_TIMESTAMP());
INSERT INTO COMMENT (post_id, user_id, body, create_date)
VALUES (7, 2,
        'Love it!',
        CURRENT_TIMESTAMP());
INSERT INTO COMMENT (post_id, user_id, body, create_date)
VALUES (12, 3,
        'Neat!',
        CURRENT_TIMESTAMP());