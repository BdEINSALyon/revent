# noinspection RubyInstanceMethodNamingConvention
class SessionsController < Devise::SessionsController

  def new
    flash.keep
    redirect_to root_path
  end

end
