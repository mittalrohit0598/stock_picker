def stock_picker(stocks)
  max = 0
  result = [0, 0]
  stocks.each_with_index do |a, i|
    stocks.each_with_index do |b, j|
      if b - a > max && j > i
        max = b - a
        result[0] = i
        result[1] = j
      end
    end
  end
  p result
end

stock_picker([17,3,6,9,15,8,6,1,10])