class ReportsController < ApplicationController


  def create_report
    @report = Report.new(report_params)
    @report.save
    if @report.save
      @image= Image.new(image_url: params[:image][:image_url], report_id: @report.id)
      @image.save
    end
    redirect_to "/account"
  end


  private

  def report_params
    params.require(:report).permit(:owner_id, :sitter_id, :pet_id, :unregistered_id, :activity)
  end


end
