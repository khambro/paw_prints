class ReportMailer < ApplicationMailer

  def new_report(report_id)
    @report = Report.find(report_id)
    mail(to: "#{@report.pet.owner.email}", subject: "Report Card for #{@report.pet.name}")
  end

  # "#{@report.pet.owner.email}"

  def invite(unregistered_id)
    @unregistered = Unregister.find(unregistered_id)
    mail(to: "#{@report.pet.owner.email}", subject: "Sign Up for PetFinder for Updates on Your Pets")
  end


end
