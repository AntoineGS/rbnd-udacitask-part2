module Listable
  def format_description(description)
    description.to_s.ljust(30)
  end

  def format_date(options = {})
    if options.key?(:start_date) || options.key?(:end_date)
      dates = start_date.strftime('%D') if start_date
      dates << ' -- ' + end_date.strftime('%D') if end_date
      dates = 'N/A' if !dates
      dates
    elsif options.key?(:due)
        due ? due.strftime('%D') : 'No due date'
    end
  end

  def format_priority(priority)
    value = ' ⇧' if priority == 'high'
    value = ' ⇨' if priority == 'medium'
    value = ' ⇩' if priority == 'low'
    value = '' if !priority
    value
  end

end
