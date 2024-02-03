module ApplicationHelper
  def active?(path)
    return unless current_page?(path)

    'active'
  end
end
