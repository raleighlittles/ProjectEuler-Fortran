program problem10
  implicit none
  integer*8 :: i
  INTEGER*8:: summation
  INTEGER*8:: current_prime
  INTEGER*8:: current_index
  INTEGER :: maximum
  integer*8 :: sqrt_index

  summation = 5_8 ! The first two primes are 2 and 3
  current_prime = 3_8
  current_index = 3_8
  maximum = 2000000
  sqrt_index = INT(SQRT(REAL(current_index)))

  !print *, "sqrt index:", sqrt_index

  do while (maximum .gt. current_index) ! Trial division algorithm
    !print *, "Checking if ", current_index, " is a prime number."
    do i= 2_8, sqrt_index
      IF (mod(current_index, i) .eq. 0_8) THEN
        !print *, "It looks like ", current_index, " is NOT a prime number."
        EXIT

      ELSE
        IF (i .eq. sqrt_index) THEN
          !print *, "It looks like ", current_index, "is a prime number."
          current_prime = current_index
          summation = summation + current_prime

        end if

      end if

    end do

    current_index = current_index + 1_8
    sqrt_index = INT(SQRT(REAL(current_index))) + 1

  end do

  print *, "summation is:", summation
  print *, "last index is:",  current_index
  print *, "last prime was:", current_prime
end program
