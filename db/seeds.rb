# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
TodoItem.destroy_all
TodoList.destroy_all
Profile.destroy_all
User.destroy_all

User.create! [
  { username: "Fiorina", password_digest: "idiot"},
  { username: "Trump", password_digest: "bombastic"},
  { username: "Carson", password_digest: "quiet"},
  { username: "Clinton", password_digest: "criminal"}
]

Profile.create! [
  {first_name: "Carly", last_name: "Fiorina", birth_year: 1954, gender: "female"},
  {first_name: "Donald", last_name: "Trump", birth_year: 1946, gender: "male"},
  {first_name: "Ben", last_name: "Carson", birth_year: 1951, gender: "male"},
  {first_name: "Hillary", last_name: "Clinton", birth_year: 1947, gender: "female"}
]


TodoList.create! [
  {list_name: "CarlyTodo", list_due_date: Date.today + 1.year, user_id: User.find_by!(username: "Fiorina").id},
  {list_name: "DonaldTodo", list_due_date: Date.today + 1.year, user_id: User.find_by!(username: "Trump").id},
  {list_name: "BenTodo", list_due_date: Date.today + 1.year, user_id: User.find_by!(username: "Carson").id},
  {list_name: "HillaryTodo", list_due_date: Date.today + 1.year, user_id: User.find_by!(username: "Clinton").id}
]

TodoItem.create! [
  { due_date: Date.today + 1.year, title: "Shopping", description: "Buy deoderant", 
  	todo_list_id: TodoList.find_by!(list_name: "CarlyTodo").id  },
  { due_date: Date.today + 1.year, title: "Books to Read", description: "The Hobbit, How to Win Friends", 
  	todo_list_id: TodoList.find_by!(list_name: "CarlyTodo").id  },
  { due_date: Date.today + 1.year, title: "Place to Visit", description: "I should tour the White House someday.", 
  	todo_list_id: TodoList.find_by!(list_name: "CarlyTodo").id  },
  { due_date: Date.today + 1.year, title: "Bully List", description: "Donald Trump", 
  	todo_list_id: TodoList.find_by!(list_name: "CarlyTodo").id  },
  { due_date: Date.today + 1.year, title: "Fix car", description: "Take my Chevy to the mechanic", 
  	todo_list_id: TodoList.find_by!(list_name: "CarlyTodo").id  }
]

TodoItem.create! [
  { due_date: Date.today + 1.year, title: "Shopping", description: "Buy deoderant", 
  	todo_list_id: TodoList.find_by!(list_name: "DonaldTodo").id  },
  { due_date: Date.today + 1.year, title: "Books to Read", description: "The Hobbit, 50 Shades", 
  	todo_list_id: TodoList.find_by!(list_name: "DonaldTodo").id  },
  { due_date: Date.today + 1.year, title: "Place to Visit", description: "I should tour the White House someday.", 
  	todo_list_id: TodoList.find_by!(list_name: "DonaldTodo").id  },
  { due_date: Date.today + 1.year, title: "Bully List", description: "Fox News", 
  	todo_list_id: TodoList.find_by!(list_name: "DonaldTodo").id  },
  { due_date: Date.today + 1.year, title: "Fix car", description: "Take my Limo to the mechanic", 
  	todo_list_id: TodoList.find_by!(list_name: "DonaldTodo").id  }
]

TodoItem.create! [
  { due_date: Date.today + 1.year, title: "Shopping", description: "Buy deoderant", 
  	todo_list_id: TodoList.find_by!(list_name: "BenTodo").id  },
  { due_date: Date.today + 1.year, title: "Books to Read", description: "The Hobbit, The Bible", 
  	todo_list_id: TodoList.find_by!(list_name: "BenTodo").id  },
  { due_date: Date.today + 1.year, title: "Place to Visit", description: "I should tour the White House someday.", 
  	todo_list_id: TodoList.find_by!(list_name: "BenTodo").id  },
  { due_date: Date.today + 1.year, title: "Bully List", description: "Donald Trump", 
  	todo_list_id: TodoList.find_by!(list_name: "BenTodo").id  },
  { due_date: Date.today + 1.year, title: "Fix car", description: "Take my Prius to the mechanic", 
  	todo_list_id: TodoList.find_by!(list_name: "BenTodo").id  }
]

TodoItem.create! [
  { due_date: Date.today + 1.year, title: "Shopping", description: "Buy deoderant", 
  	todo_list_id: TodoList.find_by!(list_name: "HillaryTodo").id  },
  { due_date: Date.today + 1.year, title: "Books to Read", description: "The Hobbit, How to be a Man", 
  	todo_list_id: TodoList.find_by!(list_name: "HillaryTodo").id  },
  { due_date: Date.today + 1.year, title: "Place to Visit", description: "I should tour the White House someday.", 
  	todo_list_id: TodoList.find_by!(list_name: "HillaryTodo").id  },
  { due_date: Date.today + 1.year, title: "Bully List", description: "Donald Trump", 
  	todo_list_id: TodoList.find_by!(list_name: "HillaryTodo").id  },
  { due_date: Date.today + 1.year, title: "Fix car", description: "Take my monster truck to the mechanic", 
  	todo_list_id: TodoList.find_by!(list_name: "HillaryTodo").id  }
]

