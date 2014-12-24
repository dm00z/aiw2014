module ApplicationHelper
  def li(content, hash = {})
    content_tag(:li, content, :class => hash[:class])
  end

  def div(content, hash = {})
    content_tag(:div, content, :class => hash[:class])
  end

  # Returns the full title on a per-page basis.
  def full_title(page_title)
    base_title = 'Vietnam Beauty Spots'
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end

  def weather_forecast(woied)
    client = YahooWeather::Client.new

    begin
      response = client.fetch(woied)
    rescue SocketError => e
      e.message
      render 'weather/error'
    end

    response.try(:forecasts) || []
  end

  def to_c(num)
    (num-32)*5/9
  end
end
