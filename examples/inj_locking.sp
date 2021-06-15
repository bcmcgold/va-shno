* Simple Injection Locking Test
* note, this file should be placed in same directory as va file or below path must be updated
.hdl "shno.va"
vmtj vmtj 0 400m
rmtj vmtj mtj 1.9k
vdc vdc 0 968m
rdc vdc shdc 2k

* injection locking signal source
vs shrf gnd SIN (0 0 2.26G 0 0 0)

* shno
x1 shdc shrf mtj sho init_phase=0 seed=32651

* run 100ns transient simulation, saving to output table each 20ps
.tran 20p 100n
.option post=1 post_version=9601 interp=1
.print x1:phase x1:Tfield x1:K1f x1:K2f x1:Vshil x1:isf_odd x1:isf_even x1:isf_bx x1:isf_by x1:isf_bz
.end
