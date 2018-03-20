; AutoHotkey script to get Accented characters
; character codes from https://unicodelookup.com/
; and https://www.fileformat.info/info/unicode/char/search.htm

#SingleInstance, force

#Hotstring * ?  ; Expand immediately everywhere

; á

:C:,AA::
Send {U+00c1}
Return

:C:,aa::
Send {U+00e1}
Return

; æ

:C:;AE::
Send {U+00c6}
Return

:C:;ae::
Send {U+00e6}
Return

; é

:C:,EE::
Send {U+00c9}
Return

:C:,ee::
Send {U+00e9}
Return

; ä

:C:.AE::
Send {U+00c4}
Return

:C:.ae::
Send {U+00e4}
Return

; í

:C:,II::
Send {U+00cd}
Return

:C:,ii::
Send {U+00ed}
Return

; ó

:C:,OO::
Send {U+00d3}
Return

:C:,oo::
Send {U+00f3}
Return

; å

:C:.OA::
Send {U+00c5}
Return

:C:.oa::
Send {U+00e5}
Return

; ö

:C:.OE::
Send {U+00d6}
Return

:C:.oe::
Send {U+00f6}
Return

; ő

:C:;OE::
Send {U+0150}
Return

:C:;oe::
Send {U+0151}
Return

; ø

:C:,OE::
Send {U+00d8}
Return

:C:,oe::
Send {U+00f8}
Return

; ú

:C:,UU::
Send {U+00da}
Return

:C:,uu::
Send {U+00fa}
Return

; ü

:C:.UE::
Send {U+00dc}
Return

:C:.ue::
Send {U+00fc}
Return

; ű

:C:,UE::
Send {U+0170}
Return

:C:,ue::
Send {U+0171}
Return

; misc symbols

::!alt:: ; ⌥
Send {U+2325}
Return

::!cmd:: ; ⌘
Send {U+2318}
Return

::!ctrl:: ; ⌃
Send {U+2303}
Return

::!shift:: ; ⇧
Send {U+21e7}
Return

::!da:: ; ↓
Send {U+2193}
Return

::!la:: ; ←
Send {U+2190}
Return

::!ra:: ; →
Send {U+2192}
Return

::!ua:: ; ↑
Send {U+2191}
Return

::!bull:: ; •
Send {U+2022}
Return

::!deg:: ; °
Send {U+00b0}
Return

::!inf:: ; ∞
Send {U+221e}
Return

::!eur:: ; €
Send {U+20ac}
Return

::!pound:: ; £
Send {U+00a3}
Return

::!cent:: ; ¢
Send {U+00a2}
Return

::!copy:: ; ©
Send {U+00a9}
Return

::!tm:: ; ™
Send {U+2122}
Return

::!rt:: ; ®
Send {U+00ae}
Return

; flip scrollwheel direction

#MaxHotkeysPerInterval 350

WheelUp::
Send {WheelDown}
Return

WheelDown::
Send {WheelUp}
Return