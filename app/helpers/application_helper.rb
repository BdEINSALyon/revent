module ApplicationHelper
  def site(name)
    Site[name]
  end

  def bootstrap_class_for(flash_type)
    value = flash_type.to_s
    { success: "alert-success", error: "alert-danger", alert: "alert-warning", notice: "alert-info" }.each do |key,v|
      if key.to_s == flash_type
        value = v
      end
    end
    value
  end

  def flash_messages(opts = {})
    flash.each do |msg_type, message|
      concat(content_tag(:div, message, class: "alert #{bootstrap_class_for(msg_type)} fade in") do
        concat content_tag(:button, 'x', class: "close", data: { dismiss: 'alert' })
        concat message
      end)
    end
    nil
  end

  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end
end
