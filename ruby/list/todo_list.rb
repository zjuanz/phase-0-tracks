class TodoList
  def get_items
    @items
  end
  def add_item(it)
    @items << it
  end
  def delete_item(it)
    @items.delete(it)
  end
  def get_item(idx)
    @items[idx]
  end
  def initialize(array) 
    @items=array
  end
end