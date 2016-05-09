class EventsController < ApplicationController
  def new
    @event = Event.new
  end
  def create
   @event = Event.new(event_params)
   if @event.save
      flash[:success] = "Event Created!"
     redirect_to @event
   else
     render 'new'
   end
end

 def edit
   @event = Event.find(params[:id])
 end
 def update
     @event = Event.find(params[:id])
     if @user.update_attributes(Event_params)
       flash[:success] = "Event updated"
       redirect_to @event
     else
       render 'edit'
     end
   end

   
   private
  #Specify which parameters are required and whch ones are permitted
  #Protect against mass assignment vulernabilities
      def event_params
        params.require(:event).permit(:name, :genre, :duration, :start_time)
      end

end
