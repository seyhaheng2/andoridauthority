class ControlsitesController < InheritedResources::Base

  private

    def controlsite_params
      params.require(:controlsite).permit(:logo, :facebook, :twitter, :youtube, :pinterest, :google, :plus, :ads1, :ads2, :ads3, :ads4, :post_id)
    end
end

