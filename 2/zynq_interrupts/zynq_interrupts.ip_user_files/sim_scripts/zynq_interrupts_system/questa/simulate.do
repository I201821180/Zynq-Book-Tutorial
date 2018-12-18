onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib zynq_interrupts_system_opt

do {wave.do}

view wave
view structure
view signals

do {zynq_interrupts_system.udo}

run -all

quit -force
