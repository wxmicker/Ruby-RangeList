Ruby RangeList
题目描述
# Task: Implement a class named 'RangeList' 
# A pair of integers define a range, for example: [1, 5). This range includes integers: 1, 2, 3, and 4. 
# A range list is an aggregate of these ranges: [1, 5), [10, 11), [100, 201) 
# NOTE: Feel free to add any extra member variables/functions you like. 

```ruby
class RangeList 
  def add(range) 
    # TODO: implement add 
  end 
  def remove(range) 
    # TODO: implement remove 
  end 
  def print 
    # TODO: implement print 
  end 
end 
rl = RangeList.new 
rl.add([1, 5]) 
rl.print
#// Should display: [1, 5) 
rl.add([10, 20]) 
rl.print
#// Should display: [1, 5) [10, 20) 
rl.add([20, 20]) 
rl.print 
#// Should display: [1, 5) [10, 20) 
rl.add([20, 21])
rl.print
#// Should display: [1, 5) [10, 21) 
rl.add([2, 4]) 
rl.print 
#// Should display: [1, 5) [10, 21) 
rl.add([3, 8]) 
rl.print 
#// Should display: [1, 8) [10, 21) 
rl.remove([10, 10]) 
rl.print 
#// Should display: [1, 8) [10, 21) 
rl.remove([10, 11]) 
rl.print 
#// Should display: [1, 8) [11, 21) 
rl.remove([15, 17]) 
rl.print 
#// Should display: [1, 8) [11, 15) [17, 21) 
rl.remove([3, 19]) 
rl.print 
#// Should display: [1, 3) [19, 21)
````
主程序 range_list_main.rb\
test文件 range_test.rb
执行
````
cd ruby_range_list
ruby range_test.rb
````

