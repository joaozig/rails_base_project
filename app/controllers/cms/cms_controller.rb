class Cms::CmsController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  layout 'cms'

  before_action :authenticate_admin!, :set_cms_config

  def set_cms_config
  	@current_controller = controller_name
    @cms_title = 'CMS Title'
  end
end
