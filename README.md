# full-substractor-vhdl
Full substractor implemented using VHDL

## Requirements
```
ghdl
gtkwave
```

## Usage
1) Analyse the source files using ghdl
```
ghdl -a fullSubstractor.vhdl
ghdl -a fullSubstractor_tb.vhdl
```

2) Elaborate fullSubstractor testbench unit
```
ghdl -e fullSubstractor_tb
```

3) Generate the vcd file
```
ghdl -r fullSubstractor_tb --vcd=fullSubstractor.vcd
```

4) Open vcd file using gtkwave
```
gtkwave fullSubstractor.vcd
```
