deleted = User.create(username: "deleted", email: "deleted", password: "password")
jaq = User.create(username: "Jaq", email: "jaq@gmail.com", password: "password")
kat = User.create(username: "Kat", email: "kat@gmail.com", password: "password")
michael = User.create(username: "Michael", email: "michael@gmail.com", password: "password")
taylor = User.create(username: "Taylor", email: "taylor@gmail.com", password: "password")
richie = User.create(username: "Richie", email: "richie@gmail.com", password: "password")


prompt_one = Prompt.create(idea: "Why is your best friend your best friend?", user: jaq)
prompt_two = Prompt.create(idea: "Has a book ever changed your life?", user: kat)
prompt_three = Prompt.create(idea: "Describe a moment where you felt a sense of wonder and awe.", user: michael)
prompt_four = Prompt.create(idea: "Describe a fun interaction you've had with an animal.", user: taylor)
prompt_five = Prompt.create(idea: "What is your first memory of ice cream?", user: richie)


Story.create(user: jaq, prompt: prompt_one, body: "My best friend's name is Paris, and she is as unique as her name.  She is always looking for ways to make life fun in ways I never thought to. She knows I don't like cinnamon, so one night I climbed into my bed and found the cinnamon container.  One day I walked home and there was a picture on the front door of my face photoshopped onto a pregnant woman with the words /'Last night I had a dream you were pregnant and it was weird./' Sometimes I get stuck in a routine, and she reminds me to have fun too.")
Story.create(user: kat, prompt: prompt_one, body: "Mike has the greatest laugh - it truly lights up the room.  He makes people feel cared about and good about themselves in a very genuine way.  He reminds me of my brothers and makes me feel like his sister. My brothers are my favorite people in the world, so that tells you that Mike is really something special.")
Story.create(user: michael, prompt: prompt_two, body: "I read the book Eating Animals by Jonathan Safran Foer after I graduated from college and I immediately became a vegetarian... I guess you could say that was pretty life-changing!  The book is about factory farming and our relationship to animals and food, and it really opened my eyes and changed me for the better.")
Story.create(user: taylor, prompt: prompt_two, body: "I read The Life-Changing Magic of Tidying Up by Marie Kondo and it truly was life-changing!  It helped me learn how to stop being a pack-rat and deal with the emotional side of giving things away.  My home feels so much more free now and it is such a relief every day to know that I only have what I need and what makes me happy.")
Story.create(user: richie, prompt: prompt_three, body: "The first time I visited Yosemite National Park!  It's so beautiful, and so big, I just was in awe of how much beauty there is in the world.")