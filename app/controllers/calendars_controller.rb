class CalendarsController < ApplicationController
  before_action :set_calendar, only: %i[show edit update destroy collective_status
                                        personal_status]

  def index
    @calendars = Calendar.all
  end

  def show; end

  def new
    @calendar = current_user.calendars.new
  end

  def edit; end

  def create
    @calendar = current_user.calendars.new(calendar_params)

    respond_to do |format|
      if @calendar.save
        format.html { redirect_to @calendar, notice: 'Calendar was successfully created.' }
        format.json { render :show, status: :created, location: @calendar }
      else
        format.html { render :new }
        format.json { render json: @calendar.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @calendar.update(calendar_params)
        format.html { redirect_to @calendar, notice: 'Calendar was successfully updated.' }
        format.json { render :show, status: :ok, location: @calendar }
      else
        format.html { render :edit }
        format.json { render json: @calendar.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @calendar.destroy
    respond_to do |format|
      format.html { redirect_to calendars_url, notice: 'Calendar was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def collective_status
    @calendar.collective_status
    redirect_to root_path
  end

  def personal_status
    @calendar.personal_status
    redirect_to root_path
  end

  private

  def set_calendar
    @calendar = Calendar.find(params[:id])
  end

  def calendar_params
    params.require(:calendar).permit(:name, :status, :user_id)
  end
end
