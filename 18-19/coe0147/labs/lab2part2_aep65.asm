# Username: aep65
# Name: Avery Peiffer

.data
x: .half 14
y: .half 9
z: .half 0

.text
lh $t0, x
lh $t1, y
lh $t2, z
sub $t2, $t0, $t1
la $t3, z

sh $t2, ($t3) # stores value of z into memory
sh $t2, -4($t3) # overwrites value of x (-2 for byte)
sh $t2, -2($t3) # overwrites value of y (-1 for byte)