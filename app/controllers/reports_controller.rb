class ReportsController < ApplicationController


  def create_report
    @report = Report.new(report_params)
    @report.save
    if @report.save
      @image= Image.new(image_url: params[:image][:image_url], report_id: @report.id)
      @image.save
    end
    @client = Twilio::REST::Client.new
    @client.messages.create(from: '+12064880825', to: "+1#{@report.pet.owner.phone}", body: "Login to YappyTrails.club to see #{@report.pet.name}'s full report card!", media_url: "#{@image.image_url.url}")
    ReportMailer.new_report(@report.id).deliver_now
    redirect_to "/account/#{@current_user.id}"
  end

  def about
  end


  private

  def report_params
    params.require(:report).permit(:owner_id, :sitter_id, :pet_id, :activity, :emotion)
  end


end
