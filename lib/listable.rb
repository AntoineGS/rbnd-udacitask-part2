module Listable
  def format_indent(options = {})
    if options[:description]
      options[:description].to_s.ljust(40)
    elsif options[:type]
      options[:type].to_s.ljust(8)
    end
  end

  def format_date(date1, date2 = nil)
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
