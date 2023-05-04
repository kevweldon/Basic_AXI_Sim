To run the simulation on Linux, navigate to the ./simulation directory and execute the "runme" script.

%>./runme

It may be necessary to change file mode:

%> chmod 755 runme

On Windows you can run following command assuming you have correctly setup your QUARTUs_ROOTDIR environment variable.

vsim -mvchome $QUARTUS_ROOTDIR/../ip/altera/mentor_vip_ae/common -c -do 'source run_sim.tcl'
