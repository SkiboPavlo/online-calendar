class EventsController < ApplicationController
  before_action :set_event, only: %i[show edit update destroy]

  def index
    calendar = Calendar.find params[:calendar_id]
    @events = calendar.events.where(start: params[:start]..params[:end])
  end

  def show; end

  def new
    # @event = Event.new
    calendar = Calendar.find params[:calendar_id]
    @event = calendar.events.new
  end

  def edit; end

  def create
    calendar = Calendar.find params[:calendar_id]
    @event = calendar.events.new(event_params)
    @event.save
  end

  def update
    @event.update(event_params)
  end

  def destroy
    @event.destroy
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:calendar_id, :title, :date_range, :start,
                                  :end, :color)
  end
end
