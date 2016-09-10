program problem4
  IMPLICIT NONE
  INTERFACE
    FUNCTION reverseNumber (n, partial)
      INTEGER :: reverseNumber
      INTEGER, INTENT(IN) :: n
      INTEGER, optional :: partial
    END FUNCTION
  END INTERFACE

  !integer, external :: reverseNumber
  integer :: product
  integer :: answer
  integer :: maximum = 999*999
  integer :: i = 1
  integer :: j = 1

  do i=1,999
    do j=1, 999
      product = i * j
      answer = reverseNumber(product)
      if (answer .eq. product) THEN
        if (answer
      end if
    end do

  end do
end program problem4


RECURSIVE FUNCTION reverseNumber(n, partial) RESULT(res)
  IMPLICIT NONE
  INTEGER :: res
  INTEGER, INTENT(IN) :: n
  INTEGER, optional :: partial
  INTEGER :: part
  INTEGER :: modulo
  INTEGER :: division

  IF (present(partial)) THEN
    part = partial
  ELSE
    part = 0

  end if

  IF (n .eq. 0) THEN
    res = part
    return

  ELSE

    modulo = INT(mod(n, 10))
    division = n / 10
    res = reverseNumber(division, part * 10 + modulo)
    return

  end if

END FUNCTION reverseNumber
