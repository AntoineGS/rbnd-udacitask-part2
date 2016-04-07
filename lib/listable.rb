module Listable
  def format_description(description)
    description.to_s.ljust(30)
  end

  def format_date(options = {})
    if options[:start_date] & options[:end_date]
      dates = start_date.strftime('%D') if start_date
      dates << ' -- ' + end_date.strftime('%D') if end_date
      dates = 'N/A' if !dates
    elsif options[:due]
        due ? due.strftime('%D') : 'No due date'
    end
  end

  def format_priority(priority)

  end

end
