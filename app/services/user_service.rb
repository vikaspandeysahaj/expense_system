class UserService < BaseService

  	def fetch_all_users()
		users = User.all
		return users 
	end

	def find_user_by_id(user_id)
		user = User.find(user_id)
		return user
	end
end