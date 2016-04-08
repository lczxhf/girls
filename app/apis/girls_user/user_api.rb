class GirlsUser::UserAPI < Grape::API
	format :json

	resource :users do
		params do
			requires :name , type: String, desc: 'name'
		end
	end
end