if {![package vsatisfies [package provide Tcl] 8]} {return}
if {[string compare $::tcl_platform(platform) windows]} {return}
if {[info exists ::tcl_platform(debug)]} {
    package ifneeded registry 1.3 \
            [list load [file join $dir tclreg13g.dll] registry]
} else {
    package ifneeded registry 1.3 \
            [list load [file join $dir tclreg13.dll] registry]
}
