# There are many ways to implement these methods, feel free to add arguments
# to methods as you see fit, or to create helper methods.
require_relative 'bst_node'

class BinarySearchTree

  attr_accessor :root

  def initialize
    @root = nil
  end

  def insert(value)
    if @root.nil?
      @root = BSTNode.new(value)
    else
      add_child(@root, value)
    end
  end

  def find(value, tree_node = @root)
    if tree_node.value == value
      tree_node
    elsif tree_node.value < value
      tree_node.right.nil? ? nil : find(value, tree_node.right)
    else
      tree_node.left.nil? ? nil : find(value, tree_node.left)
    end
  end

  def delete(value)
    target_node = find(value)
    return nil unless target_node
    
    if target_node.left
      max = maximum(target_node.left)
    else
      max = maximum(target_node)
      target_node.value = max.value
    end

  if del_node.left
    max_node = maximum(del_node.left)
    remove_max_node(max_node)
    del_node.copy_node(max_node)
  elsif del_node.right
    min_node = minimum(del_node.right)
    remove_min_node(min_node)
    del_node.copy_node(min_node)
  else
    return @root = nil if @root == del_node
    del_node.parent.left = nil if del_node.parent.left == del_node
    del_node.parent.right = nil if del_node.parent.right == del_node
  end


  end

  # helper method for #delete:
  def maximum(tree_node = @root)
    tree_node.right.nil? ? tree_node : maximum(tree_node.right)
  end

  def depth(tree_node = @root)
  end

  def is_balanced?(tree_node = @root)
  end

  def in_order_traversal(tree_node = @root, arr = [])
  end


  # private
  # optional helper methods go here:
  def add_child(parent_node=@root, value)
    if parent_node.value < value
      if parent_node.right.nil?
        parent_node.right = BSTNode.new(value, parent_node)
      else
        add_child(parent_node.right, value)
      end
    else
      if parent_node.left.nil?
        parent_node.left = BSTNode.new(value, parent_node)
      else
        add_child(parent_node.left, value)
      end
    end
  end

end
