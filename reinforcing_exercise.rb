# EXERCISE 1 BELOW ----------

class Task

  def initialize(description, due_date)
    @description = description
    @due_date = due_date
  end

  def description
    @description
  end

  def due_date
    @due_date
  end

end

laundry = Task.new("Wash dirty clothes", "Tonight at 8pm")
puts "The outstanding task is #{laundry.description}."
puts "It needs to be done by #{laundry.due_date}."

buy_diapers = Task.new("Buy size 4 diapers", "Tomorrow by noon")
puts "The outstanding task is #{buy_diapers.description}."
puts "It needs to be done by #{buy_diapers.due_date}."

save_the_world = Task.new("Save the world from alien invasion", "Dec 2017")
puts "The outstanding task is #{save_the_world.description}."
puts "It needs to be done by #{save_the_world.due_date}."



# EXERCISE 2 BELOW ----------

class TodoList < Task

  def initialize
    @todo_list = []
  end

  def add_task(task)
    @todo_list << task
    return @todo_list
  end

  def todo_list
    @todo_list
  end

end

list = TodoList.new

list.add_task(laundry)
list.add_task(buy_diapers)
list.add_task(save_the_world)

puts list.todo_list.inspect
