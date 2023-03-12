INCLUDE Irvine32.inc

.data
Monday=1
Tuesday=2
Wednesday=3
Thurusday=4
Friday=5
Saturday=6
Sunday=7

week_array byte Monday,Tuesday,Wednesday,Thurusday,Friday,Saturday,Sunday

.code
main proc

	call DumpRegs 
exit

main endp
end main