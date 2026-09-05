## 5T Sense Amplifier Evaluation

### Simulation Conditions

- VDD = 5 V
- Technology: TR-10 / IP62
- Sense amplifier: 5T latch-type
- BL capacitance = 50 fF
- BLB capacitance = 50 fF
- Input initialization:
  - BL = 5.0 V
  - BLB = 5.0 V - ΔVBL
- Input TG OFF = 5.0 ns
- SAE rising edge = 5.2 ns
- Sense delay definition:
  - SAE crosses 2.5 V
  - BLB falls through 0.5 V

### Differential Input vs Sense Delay

| ΔVBL | Sense Delay |
|------:|------------:|
| 10 mV | 6.202 ns |
| 20 mV | 5.604 ns |
| 50 mV | 4.812 ns |
| 100 mV | 4.212 ns |
| 200 mV | 3.614 ns |

The sense delay decreases monotonically as the initial
BL/BLB differential voltage increases.

### SRAM Cell BL Differential Development

Measured from the beginning of the WL rising edge (24.9 ns):

| ΔVBL | Time from WL start |
|------:|-------------------:|
| 50 mV | 60.10 ps |
| 100 mV | 80.11 ps |
| 200 mV | 102.68 ps |

### Estimated Total Read Time

Approximate total time:

    Tread = T_BL_development + T_sense

| ΔVBL | BL development | Sense delay | Estimated total |
|------:|---------------:|------------:|----------------:|
| 50 mV | 0.060 ns | 4.812 ns | 4.872 ns |
| 100 mV | 0.080 ns | 4.212 ns | 4.292 ns |
| 200 mV | 0.103 ns | 3.614 ns | 3.717 ns |

Within the evaluated range, waiting for approximately
200 mV of BL/BLB differential gives the shortest estimated
total read time.

An initial SAE timing target of approximately 25.05 ns is
therefore reasonable for the current testbench.

Note: These results are based on nominal, symmetric transistor
models. Practical sense-amplifier sensitivity must later be
verified with PVT and device mismatch analysis.
