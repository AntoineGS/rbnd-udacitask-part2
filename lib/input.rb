module Input
  def prompt
    puts 'Please enter the number ofone of options below:'
    puts '1. Add new item'
    puts '2. Remove item'
    puts '3. List items'
    puts '9. Exit'
    manual_input(gets.chomp)
  end

  def manual_input(input)
    case input
    when '1'
      manual_add
    when '2'
      manual_remove
    when '3'
      manual_list
    when '9'
    else
      puts 'Invalid selection, please try again'
      prompt
    end
  end

  def manual_add
    puts 'Please enter a type (allowed: event, todo, link)'
    type = gets.chomp.downcase
    puts 'Please add a description'
    description = gets.chomp.downcase
    puts 'Please an start date if applicable'
    option1 = gets.chomp.downcase
    puts 'Please an end/due date'
    option1 = gets.chomp.downcase
    if option1
      add(type,description,[start_date: option1, end_date: option2])
    else
      add(type,description,[due: option2])
    end
  end

  def manual_remove

  end

  def manual_list

  end
end
