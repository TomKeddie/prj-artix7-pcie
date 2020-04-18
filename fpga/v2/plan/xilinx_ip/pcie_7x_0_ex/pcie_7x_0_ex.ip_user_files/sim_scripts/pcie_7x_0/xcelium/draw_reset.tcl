#
#
#
#
# draw_reset.tcl
# draw the base state transition diagram of LTSSM

package require Tcl	8.5
package require Tk
#package require Ttk

wm withdraw .
eval destroy [winfo child .]
set w .item
catch {destroy $w}

toplevel $w
wm title $w "Xilinx PCIE In-system Debugger for Reset Sequence"

wm iconname $w "Items"
#positionWindow $w
set c $w.frame.c

label $w.msg -wraplength 5i -justify center -text "PHY Reset sequence "
pack $w.msg -side bottom

frame $w.frame
pack $w.frame -side top -fill both -expand yes

canvas $c -scrollregion {0c 0c 24c 24c} -width 24c -height 24c \
	-relief sunken -borderwidth 2 \
	-xscrollcommand "$w.frame.hscroll set" \
	-yscrollcommand "$w.frame.vscroll set"
scrollbar $w.frame.vscroll -command "$c yview"
scrollbar $w.frame.hscroll -orient horiz -command "$c xview"

grid $c -in $w.frame \
    -row 0 -column 0 -rowspan 1 -columnspan 1 -sticky news
grid $w.frame.vscroll \
    -row 0 -column 1 -rowspan 1 -columnspan 1 -sticky news
grid $w.frame.hscroll \
    -row 1 -column 0 -rowspan 1 -columnspan 1 -sticky news
grid rowconfig    $w.frame 0 -weight 1 -minsize 0
grid columnconfig $w.frame 0 -weight 1 -minsize 0

set font1 {Helvetica 12}
set font2 {Helvetica 24 bold}
if {[winfo depth $c] > 1} {
    set blue DeepSkyBlue3
    set red red
    set bisque bisque3
    set green SeaGreen3
} else {
    set blue black
    set red black
    set bisque black
    set green black
}

#Create transition diagram
#
$c create text 7c 0c -text "Reset State Machine:" -anchor n

set st_0 [$c create oval 6c 1c 9c 2c  -tags item]
$c create text 7.5c 1.3c -text "IDLE" -anchor n

set st_1 [$c create oval 6c 3c 9c 4c  -tags item]
$c create text 7.5c 3.3c -text "CFG_WAIT" -anchor n

set st_2 [$c create oval 6c 5c 9c 6c  -tags item]
$c create text 7.5c 5.3c -text "CPLLRESET" -anchor n

set st_3 [$c create oval 10c 9c 13c 10c  -tags item]
$c create text 11.5c 9.3c -text "DRP_X16_START" -anchor n

set st_4 [$c create oval 10c 11c 13c 12c  -tags item]
$c create text 11.5c 11.3c -text "DRP_X16_DONE" -anchor n

set st_5 [$c create oval 6c 7c 9c 8c  -tags item]
$c create text 7.5c 7.3c -text "CPLLLOCK" -anchor n

set st_6 [$c create oval 6c 9c 9c 10c  -tags item]
$c create text 7.5c 9.3c -text "DRP" -anchor n

set st_7 [$c create oval 10c 13c 13c 14c  -tags item]
$c create text 11.5c 13.3c -text "GTRESET" -anchor n

set st_8 [$c create oval 10c 15c 13c 16c  -tags item]
$c create text 11.5c 15.3c -text "RXPMRESETDONE_1" -anchor n

set st_9 [$c create oval 10c 17c 13c 18c  -tags item]
$c create text 11.5c 17.3c -text "RXPMRESETDONE_2" -anchor n

set st_10 [$c create oval 10c 19c 13c 20c  -tags item]
$c create text 11.5c 19.3c -text "DRP_X20_START" -anchor n

set st_11 [$c create oval 10c 21c 13c 22c  -tags item]
$c create text 11.5c 21.3c -text "DRP_X20_DONE" -anchor n

set st_12 [$c create oval 6c 11c 9c 12c  -tags item]
$c create text 7.5c 11.3c -text "MMCM_LOCK" -anchor n

set st_13 [$c create oval 6c 13c 9c 14c  -tags item]
$c create text 7.5c 13.3c -text "RESETDONE" -anchor n

set st_14 [$c create oval 6c 15c 9c 16c  -tags item]
$c create text 7.5c 15.3c -text "CPLL_PD" -anchor n

set st_15 [$c create oval 6c 17c 9c 18c  -tags item]
$c create text 7.5c 17.3c -text "TXSYNC_START" -anchor n

set st_16 [$c create oval 6c 19c 9c 20c  -tags item]
$c create text 7.5c 19.3c -text "TXSYNC_DONE" -anchor n

$c create text 7c 2.3c -text "RST_N" -anchor n
#$c create text 16c 0c -text "Receiver detected in	:" -anchor n


# create transistion links

set lnk_0_1 [$c create line 7.5c 2c 7.5c 3c -arrow last -tags item -width 0.3m]

set lnk_1_2 [$c create line 7.5c 4c 7.5c 5c -arrow last -tags item -width 0.3m]

set lnk_2_5 [$c create line 7.5c 6c 7.5c 7c -arrow last -tags item -width 0.3m]

set lnk_5_6 [$c create line 7.5c 8c 7.5c 9c -arrow last -tags item -width 0.3m]

set lnk_6_3 [$c create line 9c 9.5c 10c 9.5c -arrow last -tags item -width 0.3m]

set lnk_6_7 [$c create line 7.5c 10c 11.5c 13c -arrow last -tags item -width 0.3m]

set lnk_3_4 [$c create line 11.5c 10c 11.5c 11c -arrow last -tags item -width 0.3m]

set lnk_4_7 [$c create line 11.5c 12c 11.5c 13c -arrow last -tags item -width 0.3m]


set lnk_7_8  [$c create line 11.5c 14c 11.5c 15c -arrow last -tags item -width 0.3m]

set lnk_7_12 [$c create line 11.5c 14c 10cc 14.5c 8c 12c 7.5c 12c -arrow last -tags item -smooth on -width 0.3m]

set lnk_8_9  [$c create line 11.5c 16c 11.5c 17c -arrow last -tags item -width 0.3m]

set lnk_9_10  [$c create line 11.5c 18c 11.5c 19c -arrow last -tags item -width 0.3m]

set lnk_10_11  [$c create line 11.5c 20c 11.5c 21c -arrow last -tags item -width 0.3m]

set lnk_11_12   [$c create line 11.5c 22c 11cc 23c 8c 12c 7.5c 12c -arrow last -tags item -smooth on -width 0.3m]

set lnk_12_13 [$c create line 7.5c 12c 7.5c 13c -arrow last -tags item -width 0.3m]

set lnk_13_14 [$c create line 7.5c 14c 7.5c 15c -arrow last -tags item -width 0.3m]

set lnk_14_15 [$c create line 7.5c 16c 7.5c 17c -arrow last -tags item -width 0.3m]

set lnk_15_16 [$c create line 7.5c 18c 7.5c 19c -arrow last -tags item -width 0.3m]

set lnk_16_0 [$c create line 8c 20c 6cc 22c 4c 5.5c 6c 1.5c -arrow last -tags item -smooth on -width 0.3m]

#
# reset state <-> id mapping  
set reset_st {
0   {grp 0  visited 0 name "IDLE"}
1   {grp 1  visited 0 name "CFG_WAIT"}
2   {grp 2  visited 0 name "CPLLRESET"}
3   {grp 3  visited 0 name "DRP_X16_START"}
4   {grp 4  visited 0 name "DRP_X16_DONE"}
5   {grp 5  visited 0 name "CPLLLOCK"}
6   {grp 6  visited 0 name "DRP"}
7   {grp 7  visited 0 name "GTRESET"}
8   {grp 8  visited 0 name "RXPMARESETDONE_1"}
9   {grp 9  visited 0 name "RXPMARESETDONE_2"}
10  {grp 10 visited 0 name "DRP_X20_START"}
11  {grp 11 visited 0 name "DRP_X20_DONE"}
12  {grp 12 visited 0 name "MMCM_LOCK"}
13  {grp 13 visited 0 name "RESETDONE"}
14  {grp 14 visited 0 name "CPLL_PD"}
15  {grp 15 visited 0 name "TXSYNC_START"}
16  {grp 16 visited 0 name "TXSYNC_DONE"}
}    


     
set lnk_occurance {
lnk_1_2 0
lnk_2_5 0
lnk_5_6 0
lnk_6_7 0
lnk_6_3 0
lnk_3_4 0
lnk_4_7 0
lnk_7_8 0
lnk_8_9 0
lnk_9_10 0
lnk_10_11 0
lnk_11_12 0
lnk_7_12 0
lnk_12_13 0
lnk_13_14 0
lnk_14_15 0
lnk_15_16 0
lnk_16_0 0
}

set lnk_cord {
lnk_1_2 {6.8c 4c}  
lnk_2_5 {7.3c 6c} 
lnk_5_6 {7.3c 8c} 
lnk_6_7 {9.5c 11c} 
lnk_6_3 {9.3c 9c} 
lnk_3_4 {11.3c 10c} 
lnk_4_7 {11.3c 12c} 
lnk_7_8 {11.3c 14c} 
lnk_8_9 {11.3c 16c} 
lnk_9_10 {11.3c 18c} 
lnk_10_11 {11.3c 20c} 
lnk_11_12 {9.5c 17c} 
lnk_7_12 {9.5c 13.0c} 
lnk_12_13 {7.3c 12c}
lnk_13_14 {7.3c 14c}
lnk_14_15 {6.8c 16c}
lnk_15_16 {7.3c 18c}
lnk_16_0 {5c 10c}
}
#lnk_3_5 {5.8c 7.1c} 
#lnk_5_0 {3.7c 6.6c} 

#parsing Reset trace file
set filename "pcie_debug_rst_trc.dat"
set fh [open $filename r]
fconfigure $fh -buffering line
gets $fh data

set pre_st 1
set cur_st 1
set last_st 0
set last_grp 0
set cur_lnk lnk_0_1
set last_lnk 0

while {$data != ""} {
  puts $data
	#set trc [split $data]
 set pre_st [expr ($data >> 8) & 0xFF]
 puts $pre_st
	if { $pre_st != $cur_st } {
		set last_st $cur_st
		break
	}
 set cur_st [expr $data & 0xFF]
 puts $cur_st
	dict with reset_st $cur_st {
		incr visited
		}


	#get transition link ID
	set cur_grp [dict get $reset_st $cur_st grp]
	set pre_grp [dict get $reset_st $pre_st grp]
	if {$cur_grp == $pre_grp} {
		gets $fh data
		continue
		}
        $c itemconfigure [set st_${pre_grp}] -fill green
	set last_grp $cur_grp

	set cur_lnk "lnk_${pre_grp}_${cur_grp}"
	if { [dict exists $lnk_occurance $cur_lnk] } {
		dict incr lnk_occurance $cur_lnk
		set last_lnk $cur_lnk
	} else {
		puts "Warning: unexpected transition: "
		set pre_name [dict get $reset_st $pre_st name] 
		puts "   From: $pre_name"
		set cur_name [dict get $reset_st $cur_st name] 
		puts "   To  : $cur_name"
	}
	gets $fh data
}

if { $last_grp != 0 } {
		$c itemconfigure [set st_$last_grp] -fill red
  $c itemconfigure [set $last_lnk] -fill red -width 0.5m
		}


#Mark link occurance
foreach key [dict keys $lnk_occurance] {
	$c create text [dict get $lnk_cord $key] -text [dict get $lnk_occurance $key] -anchor n 

}
close $fh





