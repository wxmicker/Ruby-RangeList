# frozen_string_literal: true

class RangeList
  attr_reader :rangeList

  def initialize
    @rangeList = []
  end

  def add(range = [])
    return rangeList unless valid!(range)

    input_range = (range[0]..range[1] - 1).to_a
    @rangeList += input_range
    @rangeList = @rangeList.uniq.sort
  end

  def remove(range = [])
    return rangeList unless valid!(range)

    input_range = (range[0]..range[1] - 1).to_a
    @rangeList -= input_range
    @rangeList = @rangeList.sort
  end

  def print
    range_ls = []
    ovlp = []
    res = ''
    @rangeList.each do |v|
      if ovlp.empty? || v - 1 == ovlp[-1]
        ovlp << v
      else
        range_ls << ovlp
        ovlp = [v]
      end
    end

    range_ls << ovlp unless ovlp.empty?

    range_ls.each do |ovlp_a|
      res += "[#{ovlp_a[0]}, #{ovlp_a[-1] + 1})"
      res += ' ' if ovlp_a != range_ls[-1]
    end

    puts res
  end

  private

  def valid!(range)
    return false unless range.is_a?(Array)
    return false unless range.size == 2
    return false unless range[0] < range[1]
    true
  end

end