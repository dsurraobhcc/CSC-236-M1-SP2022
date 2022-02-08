insert into `subject` (id, title)
values (1, 'Sports'), (2, 'Cooking'), (3, 'Biography');

insert into `book` (title, summary, author, subject_id, year_published)
values 
	('The Top 10 of Everything in Sports', 
    'Presented in the format of Top 10 lists, this book is a comprehensive yet fun look at the greatest aspects of Pro Sports. From the top athletes to the most popular teams in the world, SI Kids ranks a variety of topics covering every professional sport',
    'Gary Gramling', 1, 2013),
    ('Relentless', 'Legendary trainer Tim Grover uses his experience with the world\'s top athletes to drill down into the killer instinct that separates the good from the great, showing you how to tap into the dark side of competitive intensity in order to win--regardless of the circumstance or cost.',
    'Tim Grover', 1, 2013),
    ('Cooking at Home', 'David Chang came up as a chef in kitchens where you had to do everything the hard way. But his mother, one of the best cooks he knows, never cooked like that. Nor did food writer Priya Krishna’s mom. So Dave and Priya set out to think through the smartest, fastest, least meticulous, most delicious, absolutely imperfect ways to cook.',
    'David Chang', 2, 2021),
    ('Salt, Fat, Acid, Heat', 'Whether you\'ve never picked up a knife or you\'re an accomplished chef, there are only four basic factors that determine how good your food will taste. Salt, Fat, Acid, and Heat are the four cardinal directions of cooking, and they will guide you as you choose which ingredients to use and how to cook them, and they will tell you why last minute adjustments will ensure that food tastes exactly as it should. This book will change the way you think about cooking and eating, and help you find your bearings in any kitchen, with any ingredients, while cooking any meal.',
    'Samin Nosrat', 2, 2017),
    ('Beautiful Country', 'In Chinese the word for the United States, Mei Guo, translates directly to "beautiful country," but when seven-year-old Qian is plucked from her warm and happy childhood surrounded by extended family in China, she finds a world of crushing fear and poverty instead.',
	'Qian Julie Wang', 3, 2021);
   