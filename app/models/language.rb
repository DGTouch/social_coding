class Language < ActiveRecord::Base
  has_and_belongs_to_many :users


    def add_languages_to_user(args)
      if(logged_in?)
        current_user.languages << args
      else
        redirect_to login_path
      end
    end

end
