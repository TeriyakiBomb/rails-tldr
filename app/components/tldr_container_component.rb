# frozen_string_literal: true

class TldrContainerComponent < ApplicationComponent
  renders_one :tldr

  option :current_page

  def render_markdown(&block)
    content = capture(&block).strip_heredoc
    renderer = Redcarpet::Render::HTML.new(filter_html: true, hard_wrap: true)
    markdown = Redcarpet::Markdown.new(renderer, autolink: true, tables: true)
    markdown.render(content).html_safe
  end
end
