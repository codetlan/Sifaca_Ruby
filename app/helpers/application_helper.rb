module ApplicationHelper
  def resource_name
     :user
  end

  def resource
    @resource ||= User.new
  end

  #def devise_mapping
  #  @devise_mapping ||= Devise.mappings[:users]
  #end
end
