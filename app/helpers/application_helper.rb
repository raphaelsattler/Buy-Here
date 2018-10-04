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

  def button_new_helper(label_i18n, collapsable_id)
    link_to label_i18n, "#" + collapsable_id, class: "btn btn-info float-right", data: { toggle: :collapse }
  end

  def error_messages_helper(messages)
    content_tag :ul do
        messages.each do |message|
            concat content_tag(:li, message)
          end
      end
  end

  def render_activerecord_errors_helper(messages)
    content_for :activerecord_errors do
      error_messages_helper messages
    end
  end
end
