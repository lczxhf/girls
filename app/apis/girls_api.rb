class GirlsAPI < Grape::API
	mount GirlsUser::UserAPI
end