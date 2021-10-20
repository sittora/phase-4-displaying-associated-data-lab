class UsersController < ApplicationController
    def show
        user = User.find_by(id: params[:id])
        user_json = user.to_json(except: [:created_at, :updated_at], include: [items: { except: [:created_at, :updated_at]}])
        render json: user_json
    end
end
