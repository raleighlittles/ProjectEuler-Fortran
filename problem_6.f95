program problem6
  INTEGER :: squared_sum = 0
  INTEGER :: sum_of_squares = 0
  INTEGER :: i = 0
  INTEGER :: n = 100

  INTEGER :: difference
  INTEGER :: square_total_sum


  do i=0, n
    squared_sum = squared_sum + i**2
    sum_of_squares = sum_of_squares + i

  end do

  square_total_sum = sum_of_squares**2
  difference = ABS(square_total_sum - squared_sum)
  print *, "Difference is"
  print *, difference
end program problem6
