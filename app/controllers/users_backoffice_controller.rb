class UsersBackofficeController < ApplicationController
    before_action :authenticate_user!
    layout 'users_backoffice'


    def new
        @user = User.new
    end

    private

    def params_user
        params.require(:user).permit(:email, :pessoa_id)
    end
end
