module ApplicationHelper
  include SessionHelpers

  def flash_class_helper(level)
    case level.to_sym
    when :notice then "alert alert-info"
    when :success then "alert alert-success"
    when :error then "alert alert-danger"
    when :alert then "alert alert-warning"
    end
  end

  def exit_helper
    link_to t("activerecord.session.form.exit"), login_path(current_user), method: :delete, class: "dropdown-item" if signed_in?
  end

  def current_user_email_helper
    current_user.email if signed_in?
  end

  def navbar_helper
    render "layouts/navbar" if signed_in?
  end

  def ransack_sort_link_helper(q, attribute, i18n_attribute)
    sort_link(q, attribute) do
      content_tag(:strong, i18n_attribute)
    end
  end
end
