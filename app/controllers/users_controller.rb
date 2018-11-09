class UsersController < ApplicationController
  def list
    @users = User.all
   end

   def show
   end

   def exportAxlsx
     @emotions = Emotion.all
     @Users = User.all
     @curr_date = Date.today
    respond_to do |format|
      format.html
      format.xlsx {response.headers['Content-Disposition'] = 'attachment; filename="document.xlsx"'}
    end
   end

   def new
   end

   def create
   end

   def edit
   end

   def update
   end

   def delete
   end
end
