class SessionsController < ApplicationController

def new
end
  
  def create
    p= Person.find_by_email(params['email'])
  
    if p && p.authenticate(params['password'])
      
      session['email']= params['email']
      redirect_to "/people/#{p.id}"
    else
      redirect_to '/sessions/new', notice: "There was a problem signing you in"
    end
  end
    
    def destroy
      reset_session
      redirect_to '/sessions/new', notice: "You've been successfully logged out"
    end
  

end 