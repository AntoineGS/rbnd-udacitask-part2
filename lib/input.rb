module Input
  def clear
    system('clear') || system('cls')
  end

  def return_to_prompt
    puts "\nPress any key to return to the main menu..."
    gets
    clear
    prompt
  end

  def prompt
    clear
    puts 'Please enter the number of one of the options below:'
    puts '1. Add new item'
    puts '2. Remove item'
    puts '3. List items'
    puts '4. Export to CSV'
    puts '9. Exit'
    manual_input(gets.chomp)
  end

  def manual_input(input)
    clear
    case input
    when '1' then manual_add
    when '2' then manual_remove
    when '3' then manual_list
    when '4' then manual_export
    when '9'
    else
      puts 'Invalid selection, please try again'
      return_to_prompt
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
    option2 = gets.chomp.downcase
    if option1
      add(type, description, start_date: option1, end_date: option2)
    else
      add(type, description, due: option2)
    end
    return_to_prompt
  end

  def manual_remove
    all
    puts "\nPlease select an item to remove:"
    item = gets.chomp
    item.nil? ? manual_remove : delete(item.to_i)
    return_to_prompt
  end

  def manual_list
    all
    return_to_prompt
  end

  def manual_export
    export_to_csv
    return_to_prompt
  end
end
