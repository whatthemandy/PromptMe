User.create(username: "Mandy", email: "Mandy", password: "password")
User.create(username: "Jaq", email: "Jaq", password: "password")
User.create(username: "Gabe", email: "Gabe", password: "password")
User.create(username: "Danny", email: "Danny", password: "password")
User.create(username: "Gia", email: "Gia", password: "password")
User.create(username: "Thomas", email: "Thomas", password: "password")
User.create(username: "Michael", email: "Michael", password: "password")
User.create(username: "Taylor", email: "Taylor", password: "password")
User.create(username: "Richie", email: "Richie", password: "password")


Prompt.create(idea: "What has your experience at DBC been like?", user_id: 1)
Prompt.create(idea: "What is your favorite memory of Jaq?", user_id: 2)
Prompt.create(idea: "What does your closet look like?", user_id: 3)
Prompt.create(idea: "What are your thoughts on Rick Astley?", user_id: 4)
Prompt.create(idea: "What's the deal with Richie?", user_id: 5)


Story.create(user_id: 6, prompt_id: 1, body: "Shoooooot")
Story.create(user_id: 7, prompt_id: 6, body: "TGRBLD")
Story.create(user_id: 8, prompt_id: 1, body: "POCKET GOPHERS 4 LYFE $$$$$$$")
Story.create(user_id: 9, prompt_id: 1, body: "Gia")
