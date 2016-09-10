program problem5
  INTEGER :: n = 20
  INTEGER :: summation = 1
  INTEGER :: index
  index = n + 1


  do while(summation .lt. n)
    do i=1, (n-1)
      if (mod(index, i) .eq. 0) THEN
        summation = summation + 1

      else
        summation = 1

      end if
    end do

    index = index + 1
  end do

  print *, "index is"
  print *, (index-1)

end program problem5
