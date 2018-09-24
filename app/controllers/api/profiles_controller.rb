class Api::ProfilesController < ApplicationController
  def index
    render json: Profile.all
  end

  def create
    profile = Profile.new(profile_params)
    if porfile.save
      render json: profile
    else
      render json: { errors: profile.errors }, status: :unprocessable_entity 
    end
  end

  def update
    profile = Profile.find(params[:id])
    profile.update(complete: !profile.complete)
    render json: profile
  end

  def destroy
    Profile.find(params[:id]).destroy
    render json: { message: 'profile deleted' }
  end

  private

  def profile_params
    params.require(:profile).permit(:name, :description, :body, :email, :phone)
  end

end
