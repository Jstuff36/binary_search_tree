# There are many ways to implement these methods, feel free to add arguments
# to methods as you see fit, or to create helper methods.
require relative 'BSTNode'

class BinarySearchTree

  attr_accessor :root

  def initialize
    @root = nil
  end

  def insert(value)
    if @root.nil?
      @root = BSTNode.new(value)
    else
      BinarySearchTree.add_child(@root, value)
  end

  def find(value, tree_node = @root)
  end

  def delete(value)
  end

  # helper method for #delete:
  def maximum(tree_node = @root)
  end

  def depth(tree_node = @root)
  end

  def is_balanced?(tree_node = @root)
  end

  def in_order_traversal(tree_node = @root, arr = [])
  end


  private
  # optional helper methods go here:
  def add_child(parent_node=@root, value)
    if parent_node.value < value
      if parent_node.right.nil?
        parent_node.right = BSTNode.new(value)
      else
        BinarySearchTree.add_child(parent_node.right, value)
      end
    else
      if parent_node.left.nil?
        parent_node.left = BSTNode.new(value)
      else
        BinarySearchTree.add_child(parent_node.left, value)
      end
    end
  end

end
