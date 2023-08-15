class PlansController < ApplicationController

  def calender
    month = params[:start_date] ? params[:start_date].to_date.month : Date.current.month
    @plans = current_user.plans.where(month: month)
  end

  def index
    @plans = []
    today = Date.current
    current_user.plans.each do |plan|
      date = Date.new(today.year, plan.month, plan.date)
      diff = (date - today).to_i
      diff = (date.next_year - today).to_i if diff < 0
      width = diff >= 100 ? 100 : diff
      @plans << {id: plan.id, title: plan.title, date: date, diff: diff, width: width}
    end
    @plans = @plans.sort{|a,b| a[:diff] <=> b[:diff]}
  end

  def new
    @plan = Plan.new
  end

  def edit
    @plan = Plan.find(params[:id])
  end

  def update
    @plan = Plan.find(params[:id])
    if @plan.update(plan_params)
      redirect_to plans_path, notice: "You have updated plan successfully"
    else
      render 'edit'
    end
  end

  def destroy
    @plan = Plan.find(params[:id])
    @plan.destroy
    redirect_to plans_path, notice: "You have destroyed plan successfully"
  end

  def create
    @plan = Plan.new(plan_params)
    @plan.user_id = current_user.id
    if @plan.save
      redirect_to plans_path, notice: "You have created plan successfully"
    else
      render 'new'
    end
  end

private

  def plan_params
    params.require(:plan).permit(:month, :date, :title, :body)
  end

end
