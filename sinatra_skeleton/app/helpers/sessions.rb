
helpers do

	def give_token
		session['id'] = @user['id']
	end
	
end