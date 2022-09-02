class ApplicationController < ActionController::Base
    # protect_from_forgery with: :exception
    	
    before_action :configure_permitted_parameters, if: :devise_controller?


	protected
   
	 def after_sign_in_path_for(resource)
        userss_path(resource)
    end

    def after_sign_out_path_for(resource)
        userss_index_path(resource)
    end

	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :age, :gender, :mobile_no, :email, :image])
	end

end
