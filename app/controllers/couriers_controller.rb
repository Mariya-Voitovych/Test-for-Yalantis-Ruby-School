class CouriersController < ApplicationController
  
    def create
      @courier = Courier.new(courier_params)
  
      if @courier.save
        redirect_to root_path,
                    flash: { notice: 'Courier was successfully created.' }
      else
        redirect_to root_path,
                    flash: { error: @courier.errors.full_messages.to_sentence }
      end
    end

    def update
        if @courier.update(courier_params)
          redirect_to couriers_path,
                      notice: 'Your courier was changed.'
        else
          render :edit
        end
      end
    
    def show
      render: Courier.new(courier_params)
    end
      
  
    private
  
    def courier_params
      params.require(:name).permit(:email)
    end
  end
  