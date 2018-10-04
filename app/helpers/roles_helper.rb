module RolesHelper
  def role_active_helper active
    class_name = active ? "fas fa-thumbs-up text-primary" : "fas fa-thumbs-down text-secondary"
    content_tag :i, '',class: class_name
  end
end