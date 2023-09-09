class UserController < ApplicationController
  skip_before_action :verify_authenticity_token
  # before_action :current_user, only: [:show, :edit, :update]
  def index
    render :layout=>false
  end
  def create
    
  end
  def user_create
    user_create_response = User.create_user(params)
    render :json => user_create_response 
  end
  def user_all
    user_create_response = User.all_user
    render :json => user_create_response
  end
  def edit_user
    user_update_response = User.update_user(params)
    render :json => user_update_response
  end

  def delete_user
    user_delete_response = User.delete_user(params)
    render :json =>user_delete_response   
  end
  def user_details
    user_details_response = User.show_user(params)
    render :json => user_details_response 
end
def get_entreprise
  entreprise_response = Entreprise.show_entreprise(params)
  render :json => entreprise_response
end
def select_department
  @department = Department.department(params)
  render :json => @department
end

def get_team
  team_response = Team.show_team(params)
  render :json => team_response
end

def get_designation
  team_response = Designation.show_designation(params)
  render :json => team_response
end

def select_role
  user_role = Role.all_role
  render :json => user_role
end

end
