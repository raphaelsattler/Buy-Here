module ModalHelper
  def respond_modal_with(*args, &blk)
    options = args.extract_options!
    options[:responder] = ModalResponder
    respond_with *args, options, &blk
  end

  def modal_title_helper(modal_title)
    content_for :modal_title do
      modal_title
    end
  end

  def modal_footer_helper
    render inline: "<div class='modal-footer'><%= yield :modal_footer %></div>" if content_for? :modal_footer
  end
end
