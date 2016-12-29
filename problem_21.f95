PROGRAM problem21
  implicit none
  INTEGER :: stopping_limit
  INTEGER :: amicable_numbers_sum
  INTEGER :: current_index
  INTEGER :: divisor_sum_1
  INTEGER :: divisor_sum_2
  INTEGER :: i
  INTEGER :: j

  stopping_limit = 10000
  amicable_numbers_sum = 0
  current_index = 200


  do while (current_index .lt. stopping_limit)
    divisor_sum_1 = 0
    divisor_sum_2 = 0
    do i=1, (current_index - 1)
      if (MOD(current_index, i) .eq. 0) THEN
        divisor_sum_1 = divisor_sum_1 + i
      end if
    end do

    do j=1, (divisor_sum_1 - 1)
      if (MOD(divisor_sum_1, j) .eq. 0) THEN
        divisor_sum_2 = divisor_sum_2 + j
      end if
    end do

    if (current_index .eq. divisor_sum_2 .AND. current_index .ne. divisor_sum_1) THEN
      ! Amicable number found.
      amicable_numbers_sum = amicable_numbers_sum + current_index
    end if

    current_index = current_index + 1

  end do

  print *, "Sum of the amicable numbers is:", amicable_numbers_sum
end program problem21
