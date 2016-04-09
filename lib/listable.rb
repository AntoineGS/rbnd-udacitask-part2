module Listable
  def format_description(description)
    description.to_s.ljust(30)
  end

  def format_date(options = {})
    date1 = options[:date1]
    date2 = options[:date2]

    if date1
      if date2
        "#{date2.strftime('%D')} -- #{date2.strftime('%D')}"
      else date1.strftime('%D')
      end
    else 'No due date'
    end
  end

  def format_priority(priority)
    case
    when priority == 'high' then ' ⇧'
    when priority == 'medium' then ' ⇨'
    when priority == 'low' then ' ⇩'
    else ''
    end
  end
end
