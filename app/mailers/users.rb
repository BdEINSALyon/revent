class Users < ApplicationMailer

  add_template_helper(ApplicationHelper)

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.users.create.subject
  #
  def create(user)
    @user = user

    mail to: user.email
  end
end
