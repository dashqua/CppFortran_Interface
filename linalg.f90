subroutine ISUM(a,b,c)
  integer :: a,b,c
  c = a + b
  return 
end subroutine ISUM

subroutine IPROD(a,b,c)
  integer :: a,b,c
  c = a*b
end subroutine IPROD

subroutine DSUM(a,b,c)
  double precision :: a,b,c
  c = a + b
end subroutine DSUM

subroutine DPROD(a,b,c)
  double precision :: a,b,c
  c = a*b
end subroutine DPROD

