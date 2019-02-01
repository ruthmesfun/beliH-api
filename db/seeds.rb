# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)

# cs = Course.create(title: "computer science",
#                     description: "computer science for kids")
# u1 = Unit.create(title: 'JavaScript for Kids',
#                     description: "javascript for kids",
#                     course: cs)
# l1 = Lesson.create(title: 'How to use repl',
#                     description: 'The correct way to use repl',
#                     objective: 'You will learn repl',
#                     unit: u1, 
#                     content: 'this is how to use repl')

# l2 = Lesson.create(title: 'Variables',
#                     description: 'The correct way to write variables',
#                     objective: 'You will understand variables',
#                     unit: u1, 
#                     content: 'This is how you write variables')

# l2 = Lesson.create(title: 'Function',
#                     description: 'The correct way to use function',
#                     objective: 'You will learn function',
#                     unit: u1, 
#                     video: 'https://www.youtube.com/watch?v=uiv3oLsHbaI')

# s = Student.create(name: 'Ruth', school:'Flation School', grade: '11')

# StudentCourse.create(student: s, course: cs)