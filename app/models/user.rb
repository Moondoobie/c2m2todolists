class User < ActiveRecord::Base
	has_one :profile, dependent: :destroy
	has_many :todo_lists, dependent: :destroy
	has_many :todo_items, through: :todo_lists, source: :todo_items, dependent: :destroy

	validates :username, presence: true


	def get_completed_count
	  User.todo_items.where(completed: "true").count
	  # returns the count
	end

end


#determines the number of TodoItems the User has completed using an aggregate query function

#(Hint: You are looking for the count of TodoItems associated with a specific User where
#completed:true)

