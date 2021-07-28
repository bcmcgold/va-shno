* Simple Injection Locking Test
.hdl "shno.va"

* DC biasing on MTJ and heavy metal
vmtj vmtj 0 400m
ru1 vmtj mtj 1.9k
vdc vdc 0 968m
ru2 vdc shdc 2k

* injection locking signal source, SIN (offset amp freq timedelay damping phasedelay)
vrf shrf gnd SIN (0 88m 2.266G 0 0 0)

* SHNO Verilog-A device
x1 shdc shrf mtj shno init_phase=0 seed=32651

* run 100ns transient simulation, saving to output table each 15ps
.tran 15p 100n
.option post=1 post_version=9601 interp=1
.print x1:phase x1:Tfield x1:Vshil x1:mx x1:my x1:my0 x1:mz x1:omega x1:isf_odd x1:isf_even x1:isf_bx x1:isf_by x1:isf_bz
.end
