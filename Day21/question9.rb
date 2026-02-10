arr = [1,3,5,6]
newArr = [2,4,6]
p arr.any? { |n| n.even? }
p newArr.all? { |n| n.even? }