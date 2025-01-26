module ApplicationHelper
  def component(name, *, **, &)
    component = name.concat("Component").constantize
    render(component.new(*, **), &)
  end

  def render_markdown(&block)
    content = capture(&block).strip_heredoc
    renderer = Redcarpet::Render::HTML.new(filter_html: true, hard_wrap: true)
    markdown = Redcarpet::Markdown.new(renderer, autolink: true, tables: true)
    markdown.render(content).html_safe
  end
end
