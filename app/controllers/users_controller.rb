class UsersController < ApplicationController
    def show
        user = User.find(params[:id])
        render json: {
          id: user.id,
          username: user.username,
          city: user.city,
          items: user.items.as_json(only: [:id, :name, :description, :price])
        }
    end
end
