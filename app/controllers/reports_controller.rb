class ReportsController < ApplicationController


  def create_report
    @report = Report.new(report_params)
    @report.save
    if @report.save
      @image= Image.new(image_url: params[:image][:image_url], report_id: @report.id)
      @image.save
    end
    ReportMailer.new_report(@report.id).deliver_now
    redirect_to "/account/#{@current_user.id}"
  end


  private

  def report_params
    params.require(:report).permit(:owner_id, :sitter_id, :pet_id, :activity, :emotion)
  end


end
