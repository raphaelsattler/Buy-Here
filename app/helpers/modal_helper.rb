module ModalHelper
  def modal_title_helper(modal_title)
    content_for :modal_title do
      modal_title
    end
  end

  def modal_footer_helper
    render inline: "<div class='modal-footer'><%= yield :modal_footer %></div>" if content_for? :modal_footer
  end

  def link_to_modal_helper(value, path)
    link_to value, path, remote: true, data: { modal: true, toggle: :modal, target: "#modal" }
  end
end
