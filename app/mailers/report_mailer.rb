class ReportMailer < ApplicationMailer

  def new_report(report_id)
    @report = Report.find(report_id)
    mail(to: "khambro@yahoo.com", subject: "Report Card for #{@report.pet.name}")
  end


end
