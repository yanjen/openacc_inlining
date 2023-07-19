PROGRAM initialization
  IMPLICIT NONE
  INTEGER :: i, n = 100000
  REAL, ALLOCATABLE :: a(:)
  ALLOCATE (a(n))

  !$ACC DATA CREATE(a)

  !$ACC PARALLEL
  !$ACC LOOP
  DO i = 1, n
    a(i) = i
  END DO
  !$ACC END PARALLEL

  !$ACC END DATA
END PROGRAM