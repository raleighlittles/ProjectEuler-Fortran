program problem12
  implicit none
  INTEGER :: num_divisors
  INTEGER :: index
  INTEGER :: current_triangle_num
  INTEGER :: current_factors_amount
  INTEGER :: i
  INTEGER :: j

  num_divisors = 0
  index = 1
  current_triangle_num = 0
  current_factors_amount = 0

  do while (num_divisors .lt. 500)
    current_triangle_num = 0
    current_factors_amount = 0
    do i=0, index
      current_triangle_num = current_triangle_num + i
    end do

    do j=1, current_triangle_num
      if ( mod(current_triangle_num, j) .eq. 0 ) THEN
        current_factors_amount = current_factors_amount + 1

      end if

    num_divisors = current_factors_amount

    end do

    index = index + 1

  end do
  print *, current_triangle_num

end program problem12
