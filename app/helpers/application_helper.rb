module ApplicationHelper

  def controller?(*controller)
    controller.include?(params[:controller])
  end

  def action?(*action)
    action.include?(params[:action])
  end

  def javascript(*files)
    content_for(:head) { javascript_include_tag(*files) }
  end

end
