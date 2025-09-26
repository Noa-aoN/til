# 異なるn個のものから2個を選ぶ、重複のない組み合わせを出力するプログラム(chapter01_02メソッド)を作成してください。
# 出力例：numberに5が渡された場合、[[1,2], [1,3], [1,4], [1,5], [2,3], [2,4], [2,5], [3,4], [3,5], [4,5]]を返す
def chapter01_02(number)
  # コードを記載
  ans_array = []
  
  number.times do |num_l|
    number.times do |num_r|
      next if ans_array.include?([num_r + 1, num_l + 1])
      if num_l != num_r
        ans_array << [num_l + 1, num_r + 1]
      end
    end
  end

  ans_array
end
p chapter01_02(5)

# 解答例
def chapter01_02(number)
  (1..number).to_a.combination(2).to_a
end
p chapter01_02(5)