class Api::V1::LightsController < ApplicationController

  before_filter :set_light, only: [:show, :update]
	skip_before_filter :verify_authenticity_token 

  def index
    @lights = Light.all
    render json: @lights, root: false
  end

  def show
    render json: @light, root: false
  end

	# PATCH /api/v1/lights/:id
  def update
    if @light.update_attributes(light_params)
      render json: @light
    else

    end
  end

private
  def set_light
    @light = Light.find(params[:id])
	end

  def light_params
		params.require(:data)
			.require(:attributes)
		 	.permit(:strength)
  end

end
