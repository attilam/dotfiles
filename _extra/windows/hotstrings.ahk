; Accented characters and symbols
; character codes from https://unicodelookup.com/
; https://en.wikipedia.org/wiki/List_of_Unicode_characters
; and https://www.fileformat.info/info/unicode/char/search.htm

#Hotstring * ?  ; Expand immediately everywhere

; á

:C:,AA::
Send {U+00c1}
Return

:C:,aa::
Send {U+00e1}
Return

; à

:C:\AA::
Send {U+00c0}
Return

:C:\aa::
Send {U+00e0}
Return

; â

:C:^AA::
Send {U+00c2}
Return

:C:^aa::
Send {U+00e2}
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

; è

:C:\EE::
Send {U+00c8}
Return

:C:\ee::
Send {U+00e8}
Return

; ê

:C:^EE::
Send {U+00ca}
Return

:C:^ee::
Send {U+00ea}
Return


; ä

:C::AE::
Send {U+00c4}
Return

:C::ae::
Send {U+00e4}
Return

; í

:C:,II::
Send {U+00cd}
Return

:C:,ii::
Send {U+00ed}
Return

; î

:C:^II::
Send {U+00ce}
Return

:C:^ii::
Send {U+00ee}
Return

; ó

:C:,OO::
Send {U+00d3}
Return

:C:,oo::
Send {U+00f3}
Return

; ô

:C:^OO::
Send {U+00d4}
Return

:C:^oo::
Send {U+00f4}
Return

; å

:C:.AO::
Send {U+00c5}
Return

:C:.ao::
Send {U+00e5}
Return

; ö

:C::OE::
Send {U+00d6}
Return

:C::oe::
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

; ù

:C:\UU::
Send {U+00d9}
Return

:C:\uu::
Send {U+00f9}
Return

; û

:C:^UU::
Send {U+00db}
Return

:C:^uu::
Send {U+00fb}
Return

; ü

:C::UE::
Send {U+00dc}
Return

:C::ue::
Send {U+00fc}
Return

; ű

:C:;UE::
Send {U+0170}
Return

:C:;ue::
Send {U+0171}
Return

; ï

:C::II::
Send {U+00cf}
Return

:C::ii::
Send {U+00ef}
Return

; ç

:C:;CC::
Send {U+00c7}
Return

:C:;cc::
Send {U+00e7}
Return

; ẞ

:C::SS::
Send {U+1e9e}
Return

:C::ss::
Send {U+00df}
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

::!ad:: ; ↓
Send {U+2193}
Return

::!al:: ; ←
Send {U+2190}
Return

::!ar:: ; →
Send {U+2192}
Return

::!au:: ; ↑
Send {U+2191}
Return

::!dar:: ; ↠
Send {U+21a0}
Return

::!dal:: ; ↞
Send {U+219e}
Return

::!union:: ; ∪
Send {U+222a}
Return

::!subset:: ; ⊂
Send {U+2282}
Return

::!subeq:: ; ⊆
Send {U+2286}
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

::!gbp:: ; £
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

::!ndash:: ; –
Send {U+2013}
Return

::!mdash:: ; —
Send {U+2014}
Return

::!ell:: ; …
Send {U+2026}
Return

::!elm:: ; ⋯
Send {U+22ef}
Return

::!elv:: ; ⋮
Send {U+22ee}
Return

::!elu:: ; ⋰
Send {U+22f0}
Return

::!eld:: ; ⋱
Send {U+22f1}
Return

::!middot:: ; ·
Send {U+00b7}
Return

::!check:: ; ✓
Send {U+2713}
Return

::!mult:: ; ×
Send {U+00d7}
Return

::!cross:: ; ✗
Send {U+2717}
Return

::!star:: ; ★
Send {U+2605}
Return

::!starw:: ; ☆
Send {U+2606}
Return

; dynamic strings

; current date
::!date::
FormatTime, CurrentDateTime,, yyyy-MM-dd HH:mm:ss
SendInput %CurrentDateTime%
return
