class EventsController < ApplicationController
  def show
    render json: :ok
  end

  def create
    event_name = event_params[:event_name]
    properties = event_params[:properties] || {}

    ahoy.track(event_name, properties)

    render json: :ok
  end

  private

  def event_params
    params.require(:event).permit(:event_name, :properties)
  end
end
