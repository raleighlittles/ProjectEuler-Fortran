program problem7
  IMPLICIT NONE
  INTEGER :: prime_count = 0
  INTEGER :: division_count = 0
  INTEGER :: index = 1
  INTEGER :: n = 6
  INTEGER :: i = 1
  INTEGER :: result

  do while(prime_count .lt. n)
    do i=1, index
      IF (mod(index, i) .ne. 0) THEN
        division_count = division_count + 1

      end if

    end do

    IF (division_count .eq. index-2) THEN
      prime_count = prime_count + 1
      index = index + 1
      division_count = 0

    ELSE
      index = index + 1
      division_count = 0

    end if

  end do

  result = index - 1
  print *, "Result is"
  print *, result

end program problem7
