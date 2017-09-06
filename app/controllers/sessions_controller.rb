class SessionsController < ApplicationController
  def new
  end

  def create
    if !params[:name] || params[:name].empty?
        redirect_to '/sessions/new'
        # redirects to the login page if :name is nil ||
        #    redirects to login page if :name is empty
      else
        session[:name] = params[:name] #username was created go#
        #  sets session[:name] if :name was given
        redirect_to '/'
        #    redirects to "/" if logged in
      end
    end

  def destroy #log out
     session.delete :name
     redirect_to login_path
   end

end

#
