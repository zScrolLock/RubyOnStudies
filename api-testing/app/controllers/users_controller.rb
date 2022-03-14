class UsersController < ApplicationController

    def index
        users = User.all
        render json: users, status: 200
    end

    def show
        user = User.find_by(id: params[:id])
        if user
            render json: user, status: 200
        else
            render json: { error: "Cannot Find user" }, status: 400
        end
    end

    def create
        if user_params[:first_name].presence == nil
            render json: { error: "name empty" }, status: 400
        else
            newUser = User.new(
            name: user_params[:first_name] + " " + user_params[:last_name],
            email: user_params[:email],
            password: user_params[:password],
            username: user_params[:username]
            )

            if newUser.save
                render json: newUser, status: 201
            else
                render json: { error: "Create Error" }, status: 400
            end
        end
    end

    def destroy
        user = User.find_by(id: params[:id])
        if user 
            User.find_by(id: params[:id]).destroy
            render json: { message: "DELETE WITH SUCCESS" }, status: 200
        else 
            render json: { error: "Cannot Find user to Delete" }, status: 400
        end
    end

    private
        def user_params
            params.require(:user).permit([
                :first_name,
                :last_name,
                :email,
                :username,
                :password
            ])
        end
end