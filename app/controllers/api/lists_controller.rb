 class Api::ListsController < ApiController
   before_action :authenticated?
   def create
     @list = List.new( list_params )
      
      if @list.save
        render json: @list
      else
        render json: { failure: "invalid name" }, status: :unprocessable_entity
      end
   end
   def destroy
      begin
        
        @list=User.find(params[:user_id]).lists.find(params[:id])
        
        @list.destroy
        render json: {}, status: :no_content
      rescue ActiveRecord::RecordNotFound
        render :json => {}, :status => :not_found
      end
   end
   def update
    @list = List.find(params[:id])
    if @list.update(list_params)
      render json: @list
    else
     render json: { errors: list.errors.full_messages }, status: :unprocessable_entity
    end
   end
   private 
  
   def list_params
      params.require( :list ).permit( :listtype,:permissions)
   end

 end
 
 