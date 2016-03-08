class ReportsController < ApplicationController


  def create_report
    @report = Report.new(report_params)
  
    @report.save
    if @report.save
      # @image= Image.new(params[:image][:url])
      # @image.save
    end
    redirect_to "/account"
  end


  private

  def report_params
    params.require(:report).permit(:owner_id, :sitter_id, :pet_id, :unregistered_id, :images)
  end


end
