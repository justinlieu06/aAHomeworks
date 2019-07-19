class Octopus
    FISH = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
    => "fiiiissshhhhhh"

    def n_squared
        longest = ""
        (0...FISH.length).each do |i|
            (i+1...FISH.length).each do |j|
                max_length = false if FISH[i].length > FISH[j].length          
            end
            return FISH[i] if max_length
        end
    end


end

class Array
    def merge_sort(&prc)
      prc ||= Proc.new { |x, y| x <=> y }
  
      return self if count <= 1
  
      midpoint = count / 2
      sorted_left = self.take(midpoint).merge_sort(&prc)
      sorted_right = self.drop(midpoint).merge_sort(&prc)
  
      Array.merge(sorted_left, sorted_right, &prc)
    end
  
    private
    def self.merge(left, right, &prc)
      merged = []
  
      until left.empty? || right.empty?
        case prc.call(left.first, right.first)
        when -1
          merged << left.shift
        when 0
          merged << left.shift
        when 1
          merged << right.shift
        end
      end
  
      merged.concat(left)
      merged.concat(right)
  
      merged
    end
  end
  
  def nlogn_biggest_fish(fishes)
    prc = Proc.new { |x, y| y.length <=> x.length }
    fishes.merge_sort(&prc)[0]
  end
  
  def linear_biggest_fish(fishes)
    biggest_fish = fishes[0]
  
    fishes.each do |fish|
      if fish.length > biggest_fish.length
        biggest_fish = fish
      end
    end
  
    biggest_fish
  
  end