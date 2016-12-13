program problem9
  implicit none
  integer :: i = 0 ! our 'a' in this case
  ! Since we have two equations: a + b + c = 1000, and a^2 + b^2 = c^2, by solving them we can get that b = ((1000) * (-500 + a)) / (-1000 + a).
  ! It now sufffices to simply find a pair a and b that satisfy this equation. Since if we only allow all positive solutions, we know that the largest
  ! b could be is 10000, we'll iterate from 1 to 10000 and find the first pair that satsifies that equation.

  integer :: j = 0 ! our 'b' in this case
  integer :: k = 0 ! our 'c' in this case
  integer :: prod = 1

  do i = 1, 1000
    if (mod(1000 * (-500 + i), (-1000 + i)) .eq. 0) THEN
      j = 1000*(-500+i) / (-1000 + i)
      k = 1000 - (i + j)

      print *, "a: ", i
      print *, "b: ", j
      print *, "c: ", k

      if ((i + j + k) .eq. 1000) THEN
        print *, "Found!"
        prod = i * j * k
        print *, "product is: "
        print *, prod
        stop

      end if

    end if
  end do

end program problem9
