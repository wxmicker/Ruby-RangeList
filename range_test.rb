# frozen_string_literal: true

require './range_list_main'
rl = RangeList.new
rl.add([1, 5])
rl.print
rl.add([10, 20])
rl.print
rl.add([20, 21])
rl.print
rl.add([2, 4])
rl.print
rl.add([3, 8])
rl.print
rl.remove([10, 10])
rl.print
rl.remove([10, 11])
rl.print
rl.remove([15, 17])
rl.print
rl.remove([3, 19])
rl.print
rl.remove([2,18])
rl.print

