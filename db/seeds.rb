deleted = User.create(username: "deleted", email: "deleted", password: "password")
oliver = User.create(username: "oliver", email: "oliver@gmail.com", password: "password")
dakota = User.create(username: "dakota", email: "dakota@gmail.com", password: "password")
jack = User.create(username: "jack", email: "jack@gmail.com", password: "password")
zelda = User.create(username: "zelda", email: "zelda@gmail.com", password: "password")
maeve = User.create(username: "maeve", email: "maeve@gmail.com", password: "password")


prompt_one = Prompt.create(idea: "Why is your best friend your best friend?", user: oliver)
prompt_two = Prompt.create(idea: "Has a book ever changed your life?", user: dakota)
prompt_three = Prompt.create(idea: "Describe a moment where you felt a sense of wonder and awe.", user: jack)
prompt_four = Prompt.create(idea: "What is your first memory of ice cream?", user: zelda)
prompt_five = Prompt.create(idea: "Describe your favorite pet or animal.", user: maeve)


Story.create(user: zelda, prompt: prompt_one, body: "My best friend's name is Paris, and she is as unique as her name.  She is always looking for ways to make life fun in ways I never thought to. She knows I don't like cinnamon, so one night I climbed into my bed and found the cinnamon container.  One day I walked home and there was a picture on the front door of my face photoshopped onto a pregnant woman with the words /'Last night I had a dream you were pregnant and it was weird./' Sometimes I get stuck in a routine, and she reminds me to have fun too.")
Story.create(user: dakota, prompt: prompt_one, body: "Mike has the greatest laugh - it truly lights up the room.  He makes people feel cared about and good about themselves in a very genuine way.  He reminds me of my brothers and makes me feel like his sister. My brothers are my favorite people in the world, so that tells you that Mike is really something special.")
Story.create(user: jack, prompt: prompt_two, body: "I read the book Eating Animals by Jonathan Safran Foer after I graduated from college and I immediately became a vegetarian... I guess you could say that was pretty life-changing!  The book is about factory farming and our relationship to animals and food, and it really opened my eyes and changed me for the better.")
Story.create(user: oliver, prompt: prompt_two, body: "I read The Life-Changing Magic of Tidying Up by Marie Kondo and it truly was life-changing!  It helped me learn how to stop being a pack-rat and deal with the emotional side of giving things away.  My home feels so much more free now and it is such a relief every day to know that I only have what I need and what makes me happy.")
Story.create(user: maeve, prompt: prompt_three, body: "The first time I visited Yosemite National Park!  It's so beautiful, and so big, I just was in awe of how much beauty there is in the world.")
Story.create(user: oliver, prompt: prompt_five, body: "My favorite pet was a tabby cat named Harley. He was so sweet and cuddly and is deeply missed by our whole family.  He loved just being with us and would hang out in whatever room someone was in, usually lounging around.  He also would get weird sometimes and chase our other cat around and it was just so fun to watch them.")