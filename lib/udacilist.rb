class UdaciList
  include UdaciListErrors
  attr_reader :title, :items

  def initialize(options = {})
    @title = options[:title] ? options[:title] : 'Untitled List'
    @items = []
  end

  def add(type, description, options = {})
    type = type.downcase
    if type == 'todo'
      @items.push TodoItem.new(description, options)
    elsif type == 'event'
      @items.push EventItem.new(description, options)
    elsif type == 'link'
      @items.push LinkItem.new(description, options)
    else
      raise InvalidItemType, "'#{type}' is not a valid data type"
    end
  end

  def delete(index)
    if index.between?(1, @items.count)
      @items.delete_at(index - 1)
    else
      raise IndexExceedsListSize, "item '#{index}' does not exist"
    end
  end

  def all
    output
  end

  def output(class_filter=nil)
    puts '-' * @title.length
    puts @title
    puts '-' * @title.length
    unless (class_filter.nil? || @items.any?{|item| item.is_a?(class_filter)})
      puts "No items were found with given filter"
    else
      @items.each_with_index do |item, position|
        if (class_filter.nil? || item.is_a?(class_filter))
          puts "#{position + 1}) #{item.details}"
        end
      end
    end
  end

  def filter(type_desc)
    if type_desc == 'todo'
      type = TodoItem
    elsif type_desc == 'event'
      type = EventItem
    elsif type_desc == 'link'
      type = LinkItem
    else
      raise InvalidFilterType, "#{type_desc} is not a valid filter type"
    end
    output(type)
  end
end
