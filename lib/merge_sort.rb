module MergeSort
  def mergesort(cards)
    return cards if cards.length<= 1
    mid   = cards.size / 2
    left  = cards[0...mid]
    right = cards[mid...cards.size]
    merge(mergesort(left), mergesort(right))
  end

  
  def merge(left, right)
    sorted = []
    until left.empty? || right.empty?
      if left.first.int_value <= right.first.int_value
        sorted << left.shift
      else
        sorted << right.shift
      end
    end
    sorted.concat(left).concat(right)
  end

end