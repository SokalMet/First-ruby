class Users::SessionsController < Devise::SessionsController

  # POST /resource/sign_in
  def create
    self.resource = warden.authenticate!(auth_options)
    set_flash_message!(:notice, :signed_in)
    sign_in(resource_name, resource)
    current_cart.update_attribute(:user_id, current_user.id)
    yield resource if block_given?
    respond_with resource, location: after_sign_in_path_for(resource)
  end
end

