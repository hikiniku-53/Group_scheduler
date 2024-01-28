class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  # ログイン後のアクセス先指定
  def after_sign_in_path_for(resource_or_scope)
      # マイページへ
      member_path(current_member.id)
  end

  # ログアウト後のアクセス先
  def after_sign_out_path_for(resource_or_scope)
    root_path

  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email])
  end
end
