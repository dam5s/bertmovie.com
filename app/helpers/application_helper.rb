module ApplicationHelper
  def iframe(url)
    haml_tag :iframe, {scrolling: 'no', frameborder: 'no', allowfullscreen: 'true', src: url}
  end

  def markdown(text)
    md = Redcarpet::Markdown.new(Redcarpet::Render::HTML)
    md.render(text).html_safe
  end

  def update_published_at(update)
    format = '%B %d, %Y %H:%M %Z'
    time = update.published_at.in_time_zone('Pacific Time (US & Canada)')

    time_tag(time, format: format)
  end
end
