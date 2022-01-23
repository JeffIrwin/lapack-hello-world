
! From:
!
!     http://icl.cs.utk.edu/lapack-for-windows/lapack/
!

program main

	external dgesv
	integer n, lda, nrhs, ldb
	parameter (n=2,lda=2,nrhs=1,ldb=2)
	double precision A(lda,n)
	double precision b(ldb,nrhs)
	integer ipiv(n), info, i, j

	A(1,1) = 1
	A(1,2) = 2
	A(2,1) = 3
	A(2,2) = 4

	B(1,1) = 5
	B(2,1) = 6

	print *, "Hello world"

	call dgesv(n, nrhs, A, lda, ipiv, b, ldb, info)

	print *, "info = ", info

	print *, "A (factored) = ", A
	print *, "x = ", B

	print *, "done main"

end program main

