module big_int_mod
   implicit none

   private
   public :: BigInt

   type :: BigInt
      private
      integer, allocatable :: digits(:)
      integer :: length
   contains
      procedure :: tostr => tostr
      procedure, private :: add => add
      generic :: operator(+) => add
   end type

   interface BigInt
      module procedure constructor
   end interface
contains
   function constructor(value) result(this)
      type(BigInt) :: this
      character(*), intent(in), optional :: value

      integer :: i, len, char_code

      if (.not. present(value)) then
         this%length = 0
      else
         len = len_trim(value)
         if (len > 0 .and. value == repeat('0', len)) then
            len = 0
         end if

         allocate(this%digits(len))
         this%length = len

         if (len > 0) then
            do i = 1, len
               char_code = ichar(value(i:i))
               if (char_code < ichar('0') .or. char_code > ichar('9')) then
                  print *, "Error: Invalid character in input string"
                  deallocate(this%digits)
                  return
               endif
               this%digits(i) = ichar(value(len - i + 1:len - i + 1)) - ichar('0')
            end do
         endif
      endif
   end function constructor

   function add(this, other) result(res)
      class(BigInt), intent(in) :: this, other
      type(BigInt) :: res
      integer :: i, sum, carry

      res%length = max(this%length, other%length) + 1
      allocate(res%digits(res%length))

      carry = 0

      do i = 1, res%length
         sum = carry
         if (i <= this%length) sum = sum + this%digits(i)
         if (i <= other%length) sum = sum + other%digits(i)
         res%digits(i) = mod(sum, 10)
         carry = sum / 10
      end do

      if (res%digits(res%length) == 0) then
         res%length = res%length - 1
         res%digits = res%digits(1:res%length)
      end if

   end function add


   function tostr(this) result(str)
      class(BigInt), intent(in) :: this
      character(len=:), allocatable :: str

      integer :: i, len

      len = this%length
      allocate(character(len) :: str)

      do i = 1, len
         str(len - i + 1:len - i + 1) = char(this%digits(i) + ichar('0'))
      end do
   end function tostr
end module big_int_mod
