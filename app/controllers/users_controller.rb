class UsersController<ApplicationController
    def index
    @users="i'm instance variable"
      @allUsers = User.all

    end
end