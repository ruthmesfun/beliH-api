# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)

Course.destroy_all
Unit.destroy_all
Lesson.destroy_all
Student.destroy_all

cs = Course.create(title: "computer science",
                    description: "computer science for kids")
cs2 = Course.create(title: "JavaScript",
                    description: "JavaScript for kids")                    

u1 = Unit.create(title: 'JavaScript 101',
                    description: "javascript for kids 101",
                    course: cs2)

u2 = Unit.create(title: 'JavaScript 102',
                    description: "javascript for kids 101",
                    course: cs2)

u3 = Unit.create(title: 'CS 101',
                description: "CS for kids 101",
                course: cs)

u4 = Unit.create(title: 'CS 102',
                description: "CS for kids 102",
                course: cs)

l1 = Lesson.create(title: 'How to use repl',
                    description: 'The correct way to use repl',
                    objective: 'You will learn repl',
                    unit: u3, 
                    content: 'this is how to use repl')

l3 = Lesson.create(title: 'Binary',
                    description: 'The correct way to use Binary',
                    objective: 'You will learn Binary',
                    unit: u3, 
                    content: 'this is how to use Binary')

l2 = Lesson.create(title: 'Variables',
                    description: 'The correct way to write variables',
                    objective: 'You will understand variables',
                    unit: u1, 
                    content: 'This is how you write variables')

l4 = Lesson.create(title: 'Function',
                    description: 'The correct way to use function',
                    objective: 'You will learn function',
                    unit: u1, 
                    video: 'https://www.youtube.com/watch?v=uiv3oLsHbaI')
l5 = Lesson.create(title: 'Arrays',
                        description: 'The correct way to write Arrays',
                        objective: 'You will understand Arrays',
                        unit: u2, 
                        content: 'This is how you write Arrays')
    
l6 = Lesson.create(title: 'Hashes',
                        description: 'The correct way to use Hashes',
                        objective: 'You will learn Hashes',
                        unit: u2, 
                        video: 'https://www.youtube.com/watch?v=uiv3oLsHbaI')

s = Student.create(name: 'Ruth', school:'Flation School', grade: '11')

StudentCourse.create(student: s, course: cs)
StudentCourse.create(student: s, course: cs2)