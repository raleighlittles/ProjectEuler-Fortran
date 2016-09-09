program problem2
  implicit none
  integer :: i = 0
  ! Initial conditions, summation is already 2 since it's even
  integer :: summation = 2
  integer :: first_fib = 2
  integer :: second_fib = 1
  integer :: temp

  do while ( (first_fib < 4000000))
    temp = first_fib
    first_fib = first_fib + second_fib
    second_fib = temp
    print *, "first fib", first_fib
    print *, "second fib", second_fib
    ! New fibonnaci numbers are generated, check if even
    if ( mod(first_fib, 2) .eq. 0) THEN
      summation = summation + first_fib

    end if

  end do
  print *, "Sum is"
  print *, summation
end program problem2
