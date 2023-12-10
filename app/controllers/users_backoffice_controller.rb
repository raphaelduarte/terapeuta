class UsersBackofficeController < ApplicationController
    before_action :authenticate_user!
    layout 'users_backoffice'

    def new
        @user = User.new
        @user.build_pessoa
    end
end
