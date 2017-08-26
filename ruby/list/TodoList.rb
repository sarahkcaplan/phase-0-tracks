class TodoList
  attr_accessor :list

  def initialize(list)
    @list = ["do the dishes", "mow the lawn"]
  end

  def get_items()
    @list
  end

  def add_item(item)
    @list.insert(-1, item)
  end

  def
end
