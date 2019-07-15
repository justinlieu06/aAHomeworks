class GraphNode
  attr_accessor :val, :neighbors

  def initialize(val)
    self.val = val
    self.neighbors = []
  end

  def bfs(node, target_value, visited = Set.new())
    return nil if (visited.include?(node.val))
    return starting_node if node.val == target_value

    #puts node.val
    visited.add(node.val)

    node.neighbors.each do |neighbor|
      bfs(neighbor, visited);
    end
  end
end