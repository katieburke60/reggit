class RegulationsController < ApplicationController

  def index
    regulations = Regulation.all
    # external API call (documents summary)

  end

  def show
    regulation = Ragulation.find(params[:id])
    #API call for specific regulation (by certain ID)
    render json: regulation, serializer: RegulationShowSerializer
  end

end
