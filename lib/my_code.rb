# Your Code Here

def map(array)
   arr = []
   i = 0 
   while i < array.length do
    arr << yield(array[i])
   i += 1
   end
   arr
end

def reduce(array, num = nil)
  if num
    num1 = num
    i = 0
  else
    num1 = array[0]
    i = 1
  end
  while i < array.length do
    num1 = yield(num1, array[i])
    i += 1
  end
  num1
end