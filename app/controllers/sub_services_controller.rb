class SubServicesController < ApplicationController
  def index
    sub_services = Service.find(params[:service_id]).sub_services
    respond_to do |format|
      format.json { render json: { sub_services: sub_services } }
    end
  end

  def show
    @sub_service = SubService.find(params[:id])
    respond_to do |format|
      format.json { render json: { sub_service: @sub_service } }
    end
  end
end
