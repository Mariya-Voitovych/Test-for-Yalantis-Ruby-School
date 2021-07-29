class PackagesController < ApplicationController
  
    def create
      @package = Package.new(package_params)
  
      if @package.save
        redirect_to root_path,
                    flash: { notice: 'Package was successfully created.' }
      else
        redirect_to root_path,
                    flash: { error: @package.errors.full_messages.to_sentence }
      end
    end      
  
    private
  
    def package_params
      params.require(:tracking_number).permit(:delivery_status, :courier_id)
    end
  end
  