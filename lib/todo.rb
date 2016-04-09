class TodoItem
  include Listable, UdaciListErrors
  attr_reader :description, :due, :priority

  def initialize(description, options = {})
    @description = description
    @due = options[:due] ? Chronic.parse(options[:due]) : options[:due]
    @priority = validated_priority(options[:priority])
  end

  def details
    format_indent(description: @description) + 'due: ' +
      format_date(@due) +
      format_priority(@priority)
  end

  def validated_priority(priority)
    if ['high', 'medium', 'low', nil].include?(priority)
      priority
    else
      raise InvalidPriorityValue, "'#{priority}' is not a valid priority"
    end
  end
end
