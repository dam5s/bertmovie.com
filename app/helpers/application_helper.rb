module ApplicationHelper
  def iframe(url)
    haml_tag :iframe, {scrolling: 'no', frameborder: 'no', allowfullscreen: 'true', src: url}
  end
end
