program problem3
  implicit none
  INTEGER*8 :: n = 600851475143_8
  DOUBLE PRECISION :: real_n = 600851475143D+0
  REAL :: upperbound_real
  INTEGER*8 :: upperbound_int
  INTEGER*8 :: i

  upperbound_real = SQRT(real_n)
  upperbound_int = INT(upperbound_real)

  print *, "upper bound is..."
  print *, upperbound_int

  i = 3_8

  ! Trial division algorithm

  print *, "N is currently.."
  print *, n

  do while (mod(n, 2_8) .eq. 0_8)
    n = n / 2_8
  end do

  print *, "N is currently..."
  print *, n

  do i=3, upperbound_int

    do while (mod(n, i) .eq. 0)
      print *, "N was successfully divisible by", i
      n = n / i

    end do
  end do

end program problem3
      
