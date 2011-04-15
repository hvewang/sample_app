class EmailNotifier < ActionMailer::Base
  default :from => "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.email_notifier.service_request.subject
  #
  def service_request (service_request)
    @greeting = "Hi"
	@student_name = service_request.student_name
	@parent_name = service_request.parent_name
	@service_request_id = service_request.id
	
	mail :to => "baiqing_wang@hotmail.com"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.email_notifier.host_family_application.subject
  #
  def host_family_info(host_family_info)
    @greeting = "Hi"
    @last_name = host_family_info.l_nm
	@first_name = host_family_info.f_nm
	@host_family_info_id = host_family_info.id
	
	mail :to => "baiqing_wang@hotmail.com"
  end
  
  def activate_user(user)
    @greeting = "Hi"
    @user_name = user.name
	@salt = user.salt
	
	mail :to => user.email
  end
end
