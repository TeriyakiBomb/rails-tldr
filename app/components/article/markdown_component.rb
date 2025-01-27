# frozen_string_literal: true

class Article::MarkdownComponent < ApplicationComponent
  def render_markdown(&block)
    content = capture(&block).strip_heredoc
    renderer = Redcarpet::Render::HTML.new(hard_wrap: true)
    markdown = Redcarpet::Markdown.new(renderer, autolink: true, tables: true)
    markdown.render(content).html_safe
  end
end
