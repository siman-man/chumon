module ApplicationHelper
  def full_title(page_title)
    base = 'Chumon'

    if page_title.empty?
      base
    else
      "#{base} | #{page_title}"
    end
  end

  def view_nabeatsu(count)
    list = []
    list << "<ul>"

    1.upto(count) do |number|
      list << if number % 3 == 0 || number.to_s =~ /3/
        "<li>aho</li>"
      else
        "<li>#{number}</li>"
      end
    end

    list << "</ul>"
    list.join("\n")
  end
end
