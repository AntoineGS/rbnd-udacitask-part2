class TodoItem
  include Listable
  attr_reader :description, :due, :priority

  def initialize(description, options = {})
    @description = description
    @due = options[:due] ? Date.parse(options[:due]) : options[:due]
    if ['high','medium','low'].include?(options[:priority])
      @priority = options[:priority]
    else
      raise InvalidPriorityValue, "'#{@priority}' is not a valid priority"
  end

  def details
    format_description(@description) + 'due: ' +
      format_date(date1: @due) +
      format_priority(@priority)
  end
end
