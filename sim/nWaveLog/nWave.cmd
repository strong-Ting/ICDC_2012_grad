wvRestoreSignal -win $_nWave1 "/home/lin/github/CIC_2012_grad/sim/signal.rc" \
           -overWriteAutoAlias on -appendSignals on
wvResizeWindow -win $_nWave1 71 75 1344 777
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 39369.406517 -snap {("G1" 9)}
wvSetCursor -win $_nWave1 49510.011226 -snap {("G1" 9)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/test/top"
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSetPosition -win $_nWave1 {("G2" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/clk} \
{/test/rst} \
{/test/done} \
{/test/top/F_CLE_A} \
{/test/top/F_WEN_A} \
{/test/top/F_ALE_A} \
{/test/top/F_REN_A} \
{/test/top/F_RB_A} \
{/test/top/F_IO_A\[7:0\]} \
{/test/top/F_OUT_A\[7:0\]} \
{/test/top/F_CLE_B} \
{/test/top/F_WEN_B} \
{/test/top/F_ALE_B} \
{/test/top/F_IO_B\[7:0\]} \
{/test/top/F_OUT_B\[7:0\]} \
{/test/top/F_RB_B} \
{/test/top/F_REN_B} \
{/test/top/flag} \
{/test/top/done} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/test/top/ADDR_STATE_CNT\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSetPosition -win $_nWave1 {("G2" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/clk} \
{/test/rst} \
{/test/done} \
{/test/top/F_CLE_A} \
{/test/top/F_WEN_A} \
{/test/top/F_ALE_A} \
{/test/top/F_REN_A} \
{/test/top/F_RB_A} \
{/test/top/F_IO_A\[7:0\]} \
{/test/top/F_OUT_A\[7:0\]} \
{/test/top/F_CLE_B} \
{/test/top/F_WEN_B} \
{/test/top/F_ALE_B} \
{/test/top/F_IO_B\[7:0\]} \
{/test/top/F_OUT_B\[7:0\]} \
{/test/top/F_RB_B} \
{/test/top/F_REN_B} \
{/test/top/flag} \
{/test/top/done} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/test/top/ADDR_STATE_CNT\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSetPosition -win $_nWave1 {("G2" 1)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 463.690335 -snap {("G3" 0)}
wvSetCursor -win $_nWave1 554.564320 -snap {("G2" 1)}
wvSetCursor -win $_nWave1 459.030130 -snap {("G2" 1)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/test/top"
wvSetPosition -win $_nWave1 {("G3" 1)}
wvSetPosition -win $_nWave1 {("G3" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/clk} \
{/test/rst} \
{/test/done} \
{/test/top/F_CLE_A} \
{/test/top/F_WEN_A} \
{/test/top/F_ALE_A} \
{/test/top/F_REN_A} \
{/test/top/F_RB_A} \
{/test/top/F_IO_A\[7:0\]} \
{/test/top/F_OUT_A\[7:0\]} \
{/test/top/F_CLE_B} \
{/test/top/F_WEN_B} \
{/test/top/F_ALE_B} \
{/test/top/F_IO_B\[7:0\]} \
{/test/top/F_OUT_B\[7:0\]} \
{/test/top/F_RB_B} \
{/test/top/F_REN_B} \
{/test/top/done} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/test/top/ADDR_STATE_CNT\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/test/top/ADDR_CNT_ADD_ONE\[17:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSetPosition -win $_nWave1 {("G3" 1)}
wvSetPosition -win $_nWave1 {("G3" 1)}
wvSetPosition -win $_nWave1 {("G3" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/clk} \
{/test/rst} \
{/test/done} \
{/test/top/F_CLE_A} \
{/test/top/F_WEN_A} \
{/test/top/F_ALE_A} \
{/test/top/F_REN_A} \
{/test/top/F_RB_A} \
{/test/top/F_IO_A\[7:0\]} \
{/test/top/F_OUT_A\[7:0\]} \
{/test/top/F_CLE_B} \
{/test/top/F_WEN_B} \
{/test/top/F_ALE_B} \
{/test/top/F_IO_B\[7:0\]} \
{/test/top/F_OUT_B\[7:0\]} \
{/test/top/F_RB_B} \
{/test/top/F_REN_B} \
{/test/top/done} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/test/top/ADDR_STATE_CNT\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/test/top/ADDR_CNT_ADD_ONE\[17:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSetPosition -win $_nWave1 {("G3" 1)}
wvGetSignalClose -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/test/top"
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSetPosition -win $_nWave1 {("G3" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/clk} \
{/test/rst} \
{/test/done} \
{/test/top/F_CLE_A} \
{/test/top/F_WEN_A} \
{/test/top/F_ALE_A} \
{/test/top/F_REN_A} \
{/test/top/F_RB_A} \
{/test/top/F_IO_A\[7:0\]} \
{/test/top/F_OUT_A\[7:0\]} \
{/test/top/F_CLE_B} \
{/test/top/F_WEN_B} \
{/test/top/F_ALE_B} \
{/test/top/F_IO_B\[7:0\]} \
{/test/top/F_OUT_B\[7:0\]} \
{/test/top/F_RB_B} \
{/test/top/F_REN_B} \
{/test/top/done} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/test/top/ADDR_STATE_CNT\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/test/top/ADDR_CNT_ADD_ONE\[17:0\]} \
{/test/top/ADDR_CNT\[17:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 2 )} 
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSetPosition -win $_nWave1 {("G3" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/clk} \
{/test/rst} \
{/test/done} \
{/test/top/F_CLE_A} \
{/test/top/F_WEN_A} \
{/test/top/F_ALE_A} \
{/test/top/F_REN_A} \
{/test/top/F_RB_A} \
{/test/top/F_IO_A\[7:0\]} \
{/test/top/F_OUT_A\[7:0\]} \
{/test/top/F_CLE_B} \
{/test/top/F_WEN_B} \
{/test/top/F_ALE_B} \
{/test/top/F_IO_B\[7:0\]} \
{/test/top/F_OUT_B\[7:0\]} \
{/test/top/F_RB_B} \
{/test/top/F_REN_B} \
{/test/top/done} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/test/top/ADDR_STATE_CNT\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/test/top/ADDR_CNT_ADD_ONE\[17:0\]} \
{/test/top/ADDR_CNT\[17:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 2 )} 
wvSetPosition -win $_nWave1 {("G3" 2)}
wvGetSignalClose -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 66510.436764 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 64124.412127 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 67703.449083 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 65019.171366 -snap {("G1" 5)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 110651.892554 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 113336.170271 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 111546.651793 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 112739.664111 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 112739.664111 -snap {("G1" 5)}
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 111099.272173 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 114230.929510 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 111397.525253 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 117213.460306 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 113187.043731 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 112590.537572 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 113634.423350 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 110950.145633 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 112888.790651 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 105283.337120 -snap {("G1" 6)}
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 107669.361757 -snap {("G1" 11)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 102300.806323 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 86195.140022 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 103792.071722 -snap {("G1" 11)}
