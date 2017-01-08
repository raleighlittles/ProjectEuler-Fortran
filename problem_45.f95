PROGRAM problem45
  implicit none
  INTEGER :: triangular_num
  INTEGER :: pent_num
  INTEGER :: hex_num
  INTEGER :: answer
  INTEGER :: m
  INTEGER :: n
  INTEGER :: l

  triangular_num = 0
  pent_num = 0
  hex_num = 0
  answer = 0

  do n=300, 1000000000
    triangular_num = (n**2 + n) / 2
    do m=0, triangular_num
      pent_num = m * ((3*m - 1)) / 2
      if (pent_num .gt. triangular_num) THEN
        EXIT

      end if

      IF (pent_num .eq. triangular_num) THEN

        do l=0, triangular_num
          hex_num = l * (2*l - 1)
          if (hex_num .gt. pent_num) THEN
            EXIT

          end if

          IF (hex_num .eq. pent_num) THEN
            print *, "ANSWER FOUND!"
            answer = hex_num
            print *, answer
            stop

          end if

        end do

      end if

    end do

  end do

end program
