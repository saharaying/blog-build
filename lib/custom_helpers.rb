module CustomHelpers
  def calendar_by_type type, year, month=nil, day=nil
    case type
      when "day"
        return Date.new(year, month, day).strftime('%Y年%m月%d日')
      when "month"
        return Date.new(year, month, 1).strftime('%Y年%m月')
      when "year"
        "#{year}年"
    end
  end

  def date_display date
    calendar_by_type "day", date.year, date.month, date.day if date
  end

  def labeled_link label, number, path
    link_to "<span class='tag'>#{label}</span><span class='number'><i class='convex'></i>#{number}</span>", path
  end

  def available_months year
    current = Time.now
    months = year < current.year ? 1..12 : 1..current.month
    months.to_a.reverse
  end

  def tech_article? article
    article.tags.include? 'Tech'
  end

  def active_menu? menu
    case menu
      when 'hotchpotch'
        current_page.path == "tags/#{menu}.html"
      when 'tech'
        current_page.path == "tags/#{menu}.html" || (is_blog_article? && tech_article?(current_article))
      when 'photo'
        current_page.path == 'photos.html'
      else
        false
    end

  end
end