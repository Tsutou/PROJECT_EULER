def calc_palindrome
  # sumの最大値は999*999で998001

  # for文のネストにより3桁の総当たり掛け算
  for a in 100..999 do
    for b in 100..999 do
      sum = a * b
      # 文字列にして反転したときに同じ == 回文 && 900000以上のもののみ出力
      if sum.to_s == sum.to_s.reverse! && sum > 900000
        puts sum
      end
    end
  end

end


calc_palindrome
