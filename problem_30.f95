PROGRAM problem30
  implicit none
  INTEGER :: running_sum
  INTEGER :: current_digit
  INTEGER :: digit_sum
  INTEGER :: n
  INTEGER :: remainder

  running_sum = 0
  current_digit = 1

  do while (current_digit .lt. 1000000)
    digit_sum = 0
    n = current_digit
    do while (n .gt. 0)
      remainder = MOD(n, 10)
      digit_sum = digit_sum + remainder**5
      n = n / 10

    end do

    if (digit_sum .eq. current_digit) THEN
      running_sum = running_sum + current_digit

    end if

    current_digit = current_digit + 1

  end do

print *, (running_sum-1)
end program problem30
