# va-shno
Behavioral macromodel of 3-terminal spin Hall nano-oscillator written in Verilog-A.
Models electrical behavior (microwave output signal, effective terminal resistances), injection locking, thermal phase noise.

## Paper
B. C. McGoldrick, J. Z. Sun, L. Liu. Ising machine based on electrically coupled spin Hall nano-oscillators. arXiv:2110.08885 (2021). https://arxiv.org/abs/2110.08885

## Documentation
Macromodel file: shno.va
- User-specified parameters
  - Material/device parameters: lines 8-33
  - Second harmonic excitation parameters: lines 99-105
    - May also supply second harmonic signal by external source connected to sh_rf port
- Supply look-up tables in tables/
  - Equilibrium oscillation Fourier components and frequency as function of Vdc: {mx,my,my0,mz,wg}_vs_vdc.tbl
  - Second harmonic annealing schedule: e.g. shil_square.tbl

Example device usage in HSPICE: example.sp
- Includes biasing resistors (Ru1, Ru2), rf injection locking signal (vrf)
- Set oscillator's initial phase by init_phase (line 14)
- Set random thermal seed by seed (line 14)
