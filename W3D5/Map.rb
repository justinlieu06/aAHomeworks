class Map
  def initialize
    @map = Array.new(5) {[]}
  end

  def set(key, value)
    if @map[key].nil?
      p "key value out of bounds"
      #@map[key] << key << value
    end
    if @map[key].empty?
      @map[key] << key << value
    else
      @map[key].shift
      @map[key].shift
      @map[key] << key << value
    end
  end

  def get(key)
    @map[key]
  end

  def delete(key)
    @map.delete(@map[key])
  end

  def show
    @map.each { |ele|
      puts ele.join(" ")
    }
  end
end