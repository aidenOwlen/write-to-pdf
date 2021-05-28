#include<GuiConstantsEx.au3>
#include<EditConstants.au3>
#include<ColorConstants.au3>
#include<StaticConstants.au3>
#include<FontConstants.au3>
#include<WindowsConstants.au3>
#include<StringConstants.au3>
#include<File.au3>
#include<FileConstants.au3>
#include <Date.au3>

opt("GuiOnEventMode", 1)


HotKeySet("{ESC}", "quit")

;CHECKING PROFILE !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
If FileExists(@TEMPDIR & "\" & "ProfileIHC" & ".txt") = TRUE then
   $op = fileopen(@TEMPDIR & "\" & "ProfileIHC" & ".txt")
   $r = FileRead($op)
   $sp = StringSplit($r, "=")
   $1a = $sp[1]
   $1b = $sp[2]

   $1c = $sp[3]
   $1d = $sp[4]
   fileclose($op)
else
    $1a = ""
   $1b = ""
   $1c = ""
   $1d = ""
endif

;GUI PROFILE !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
$GUIPROFILE = GuiCreate("Profile", 300, 300)
GuiSetBKCOLOR($COLOR_GRAY)
GuiSetOnEvent($GUI_EVENT_CLOSE, "hidee")

GuiCtrlCreateLabel("Profile", 120, 10, 80)
GuiCtrlSetColor(-1, $COLOR_BLACK)
GuiCtrlSetFont(-1, 12, "", "", "MV boli")


GuiCtrlCreateLabel("Name", 10, 70, 50, 20)
GuiCtrlSetColor(-1, $COLOR_RED)
GuiCtrlSetFont(-1, 12, "", "", "MV boli")

GuiCtrlCreateLabel("Address", 10, 100, 60, 20)
GuiCtrlSetColor(-1, $COLOR_RED)
GuiCtrlSetFont(-1, 12, "", "", "MV boli")

GuiCtrlCreateLabel("Telephone", 10, 130, 75, 20)
GuiCtrlSetColor(-1, $COLOR_RED)
GuiCtrlSetFont(-1, 12, "", "", "MV boli")

GuiCtrlCreateLabel("Email", 10, 160, 50, 20)
GuiCtrlSetColor(-1, $COLOR_RED)
GuiCtrlSetFont(-1, 12, "", "", "MV boli")

$NAMEPROFILE = GuiCtrlCreateInput($1a, 90, 74, 180, 18)

$ADDRESSPROFILE = GuiCtrlCreateInput($1b, 90, 104, 180, 18)

$TELEPHONEPROFILE = GuiCtrlCreateInput($1d, 90, 134, 180, 18)

$EMAILPROFILE = GuiCtrlCreateInput($1c, 90, 164, 180, 18)

$CONFIRMPROFILE = GuiCtrlCreateButton("OK", 121, 222, 80, 40)

GuiCtrlSetOnEvent($CONFIRMPROFILE, "ConfirmP")

;MAIN GUI !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
$GUIP = GuiCreate("American Benefits Exchange", 800, 610)
GuiSetBkColor($COLOR_WHITE)
GuiSetOnEvent($GUI_EVENT_CLOSE, "hideeP")

$PROF = GuiCtrlCreateButton("Edit profile", 337, 153,120, 60)
GuiCtrlSetBkColor(-1, $COLOR_RED)
GuiCtrlSetColor(-1, $COLOR_WHITE)

$label2 = GuiCtrlCreateLabel("", 316, 541, 150, 60)
GuiCtrlCreateButton("Edit Case", 316, 541, 150, 60)
GuiCtrlSetBkColor(-1, $COLOR_WHITE)
GuiCtrlSetFont(-1, "", $FW_EXTRABOLD)
GuiCtrlSetState(-1, $GUI_DISABLE)

$label1 = GuiCtrlCreateLabel("", 93, 541, 150, 60)
GuiCtrlCreateButton("New Case", 93, 541, 150, 60)
GuiCtrlSetBkColor(-1, $COLOR_WHITE)
GuiCtrlSetFont(-1, "", $FW_EXTRABOLD)
GuiCtrlSetState(-1, $GUI_DISABLE)

$label3 = GuiCtrlCreateLabel("", 547, 541, 150, 60)
GuiCtrlCreateButton("Delete Case", 547, 541, 150, 60)
GuiCtrlSetBkColor(-1, $COLOR_WHITE)
GuiCtrlSetFont(-1, "", $FW_EXTRABOLD)
GuiCtrlSetState(-1, $GUI_DISABLE)

GuiCtrlCreateLabel("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~", 0, 10, 800, 30)
GuiCtrlCreateLabel("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~", 0, 40, 800, 30)
GuiCtrlSetColor(-1, $COLOR_RED)
GuiCtrlCreateLabel("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~", 0, 70, 800, 30)
GuiCtrlCreateLabel("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~", 0, 100, 800, 30)
GuiCtrlSetColor(-1, $COLOR_RED)
GuiCtrlCreateLabel("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~", 0, 130, 800, 30)
GuiCtrlCreateLabel("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~", 0, 160, 800, 30)
GuiCtrlSetColor(-1, $COLOR_RED)
GuiCtrlCreateLabel("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~", 0, 190, 800, 30)
GuiCtrlCreateLabel("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~", 0, 220, 800, 30)
GuiCtrlSetColor(-1, $COLOR_RED)
GuiCtrlCreateLabel("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~", 0, 250, 800, 30)
GuiCtrlCreateLabel("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~", 0, 280, 800, 30)
GuiCtrlSetColor(-1, $COLOR_RED)
GuiCtrlCreateLabel("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~", 0, 310, 800, 30)
GuiCtrlCreateLabel("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~", 0, 340, 800, 30)
GuiCtrlSetColor(-1, $COLOR_RED)
GuiCtrlCreateLabel("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~", 0, 370, 800, 30)
GuiCtrlCreateLabel("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~", 0, 400, 800, 30)
GuiCtrlSetColor(-1, $COLOR_RED)
GuiCtrlCreateLabel("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~", 0, 430, 800, 30)
GuiCtrlCreateLabel("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~", 0, 460, 800, 30)
GuiCtrlSetColor(-1, $COLOR_RED)
GuiCtrlCreateLabel("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~", 0, 490, 800, 30)
GuiCtrlCreateLabel("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~", 0, 520, 800, 30)
GuiCtrlSetColor(-1, $COLOR_RED)
GuiCtrlCreateLabel("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~", 0, 550, 800, 30)
GuiCtrlCreateLabel("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~", 0, 580, 800, 30)
GuiCtrlSetColor(-1, $COLOR_RED)
GuiCtrlCreateLabel("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~", 0, 610, 800, 30)





;$label = GuiCtrlCreateLabel("American Benefits Exchange", 310, 50, 600, 50)
;GuiCtrlSetFont(-1, 26, "", "", "MV boli")
;GuiCtrlSetColor(-1, $COLOR_GREEN)

GuiCtrlCreatePic(@DESKTOPDIR & "\cc.jpg", 270, 30, 130, 100)
GuiCtrlCreateLabel("American", 400, 30, 100)
GuiCtrlSetFont(-1, "", "", "", "MV boli")

GuiCtrlCreateLabel("------------------------------------------------", 400, 23, 100, 10)

GuiCtrlCreateLabel("------------------------------------------------", 400, 122, 100, 10)
GuiCtrlCreateLabel("Benefits", 400, 65, 100)
GuiCtrlSetFont(-1, "", "", "", "MV boli")
GuiCtrlSetColor(-1, $COLOR_RED)

GuiCtrlCreateButton("Edit profile", 337, 153,120, 60)
GuiCtrlSetBkColor(-1, $COLOR_RED)
GuiCtrlSetColor(-1, $COLOR_WHITE)

GuiCtrlSetOnEvent($PROF, "prof")

GuiCtrlCreateLabel("Exchange", 400, 100, 100, 26)
GuiCtrlSetFont(-1, "", "", "", "MV boli")

$listt = GuiCtrlCreateListView("Title                                      |Date Created                       |Date Modified                     |Remarks                               ", 95, 240, 600, 300)
GuiCtrlSetBkColor(-1, $COLOR_GRAY)


If fileExists(@TEMPDIR & "\NamesABC.txt") = True then
$oppp = FileOpen(@TEMPDIR & "\NamesABC.txt", 0)
$rrr = FileRead($oppp)
$sprrr = StringSplit($rrr, "+")
GuiCtrlCreateListViewItem($sprrr[1] & "|" & $sprrr[2], $listt)
endif


GuiCtrlCreateLabel("", 93, 541, 150, 60)
GuiCtrlCreateButton("New Case", 93, 541, 150, 60)
GuiCtrlSetBkColor(-1, $COLOR_WHITE)
GuiCtrlSetFont(-1, "", $FW_EXTRABOLD)
GuiCtrlSetState(-1, $GUI_DISABLE)

GuiCtrlCreateLabel("", 547, 541, 150, 60)
GuiCtrlCreateButton("Delete Case", 547, 541, 150, 60)
GuiCtrlSetBkColor(-1, $COLOR_WHITE)
GuiCtrlSetFont(-1, "", $FW_EXTRABOLD)
GuiCtrlSetState(-1, $GUI_DISABLE)

GuiCtrlCreateLabel("", 316, 541, 150, 60)
GuiCtrlCreateButton("Edit Case", 316, 541, 150, 60)
GuiCtrlSetBkColor(-1, $COLOR_WHITE)
GuiCtrlSetFont(-1, "", $FW_EXTRABOLD)
GuiCtrlSetState(-1, $GUI_DISABLE)


GuiCtrlCreatePic(@DESKTOPDIR & "\addd.jpg", 80, 556, 50, 40)

GuiCtrlCreatePic(@DESKTOPDIR & "\delete.jpg", 536, 556, 31, 35)

GuiCtrlCreatePic(@DESKTOPDIR & "\edit.jpg", 299, 556, 39, 35)

GuiCtrlSetOnEvent($label1, "label1")
GuiCtrlSetOnEvent($label2, "label2")
GuiCtrlSetOnEvent($label3, "label3")


;GUI 2 //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
$GUI2 = GuiCreate("American Benefits Exchange", 800, 760)
GuiSetOnEvent($GUI_EVENT_CLOSE, "fermer")

GuiSetBkColor(0xAAD3E6)

GuiCtrlCreateLabel(@CRLF & "                   AMERICAN BENEFITS EXCHANGE BENEFITS REVIEW                               ", 0, 0, 800, 60)
GuiCtrlSetBKColor(-1, 0xAAD3E6)
GuiCtrlSetColor(-1, $COLOR_RED)
GuiCtrlSetFont(-1, 12, $FW_EXTRABOLD,"" , "MV boli")

GuiCtrlCreateLabel("Married", 650, 348)
GuiCtrlSetColor(-1, $COLOR_RED)
GuiCtrlSetFont(-1, -1, $FW_EXTRABOLD)
GUIStartGroup()
$YES = GuiCtrlCreateRadio("YES", 704, 346)
$NON = GuiCtrlCreateRadio("NO", 747, 346)

;LINE 1
$Name = GuiCtrlCreateInPut("", 110, 70, 210, 20)
GuiCtrlCreateLabel("Employee Name", 19, 73)

$Employer = GuiCtrlCreateInPut("", 405, 70, 210, 20)
GuiCtrlCreateLabel("Employer", 352, 73)

$Age = GuiCtrlCreatecombo("", 680, 70, 50, 20)
GuiCtrlCreateLabel("Age", 650, 73)
for $i = 1 to 120
GUICtrlSetData($age, $i)
next


;LINE 2
$Salary = GuiCtrlCreateInPut("", 110, 110, 210, 20)
GuiCtrlCreateLabel("Base Salary", 19, 113)

$Years = GuiCtrlCreatecombo("", 425, 110, 50, 20)
for $p = 0 to 50
   GuiCtrlSetData($Years, $p)
Next

GuiCtrlCreateLabel("Years of service", 352, 113, 60, 30)

GuiCtrlCreateLabel("Retirement system", 19, 348, 140)
GuiCtrlSetColor(-1, $COLOR_RED)
GuiCtrlSetFont(-1, -1, $FW_EXTRABOLD)
GuiStartGroup()
$18a = GuiCtrlCreateRadio("CSRS", 135, 345)
$18b = GuiCtrlCreateRadio("FERS", 185, 345)

;LINE 3
$Contribution = GuiCtrlCreateInPut("", 110, 170, 210, 20)
GuiCtrlCreateLabel("TSP Contribution", 19, 173)

$Balance = GuiCtrlCreatecombo("", 425, 170, 50, 20)
for $o = 1 to 999
   GuiCtrlSetData($Balance, $o)
next
GuiCtrlCreateLabel("TSP Balance", 352, 173)

GuiCtrlCreatelabel("FEGLI", 19, 300, 50, 20)
GuiCtrlSetColor(-1, $COLOR_RED)
GuiCtrlSetFont(-1, -1, $FW_EXTRABOLD)


GuiStartGroup()
GuiCtrlCreatelabel("Basic : ", 131, 300)
GuiCtrlSetColor(-1, $COLOR_BLUE)
$14 = GuiCtrlCreateCombo("", 179, 298)
GuiCtrlSetData(-1, "Yes|No")


GuiCtrlCreateLabel("Opt A : ", 230, 300)
GuiCtrlSetColor(-1, $COLOR_BLUE)

$15 = GuiCtrlCreateCombo("", 270, 298)
GuiCtrlSetData(-1, "Yes|No")


GuiCtrlCreateLabel("Opt B : ", 333, 300)
GuiCtrlSetColor(-1, $COLOR_BLUE)

$16 = GuiCtrlCreateCombo("", 372, 298)
for $fsdfs = 1 to 5
   GuiCtrlSetData(-1, $fsdfs)
next




GuiCtrlCreateLabel("Opt C : ", 436, 300)
GuiCtrlSetColor(-1, $COLOR_BLUE)

$17 = GuiCtrlCreateCombo("", 476, 298)
for $kfsdfs = 1 to 5
   GuiCtrlSetData(-1, $kfsdfs)
next

GuiCtrlCreateLabel("--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------", 0, 280)
GuiCtrlCreateLabel("--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------", 0, 323)
GuiCtrlCreateLabel("--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------", 0, 371)
GuiCtrlCreateLabel("--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------", 0, 46)
GuiCtrlCreateLabel("--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------", 0, 5)
GuiCtrlCreateLabel("--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------", 0, 699)
GuiCtrlCreateLabel("--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------", 0, 739)
GuiCtrlCreateLabel("--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------", 0, 480)




;LINE 4
$RepName = GuiCtrlCreateInPut("", 110, 240, 210, 20)
GuiCtrlCreateLabel("Representative         name", 19, 237, 80, 30)

$RetirementAge = GuiCtrlCreatecombo("", 650, 146)
for $z = 1 to 120
   GuiCtrlSetData($RetirementAge, $z)
next
GuiCtrlCreateLabel("Retirement Age", 559, 150)

$Phone = GuiCtrlCreateInPut("", 520, 240, 210, 20)
GuiCtrlCreateLabel("Representative         phone", 430, 237, 72, 30)


GuiCtrlCreateLabel("About American Benefits Exchange", 19, 400, 200)
GuiCtrlSetFont(-1, -1, $FW_EXTRABOLD, "")
GuiCtrlSetColor(-1, $COLOR_RED)

GuiCtrlCreateLabel("American Benefits Exchange is a premier National Marketing Organization firmly established in the financial services field. American Benefits Exchange leads the way in providing valuable financial products to specialized markets which include employees of federal, state, and municipal governments, members of our United States Armed Forces, and small businesses.", 19, 420, 700, 60)
GuiCtrlSetFont(-1, -1, "", "", "MV boli")

GuiCtrlCreateLabel("Specialties Include:", 19, 500, 200)
GuiCtrlSetFont(-1, -1, $FW_EXTRABOLD, "")
GuiCtrlSetColor(-1, $COLOR_RED)

GuiCtrlCreateLabel("● Civil Service Retirement off-set                                                 ● Disability Insurance Coverage                                                ● TSP In-Service Withdrawals", 19, 520)
GuiCtrlCreateLabel("● Civil Service Retirement System (CSRS)                                   ● Early Retirement                                                                     ● TSP Loans and Their Effect", 19, 540)
GuiCtrlCreateLabel("● Computation of Retirement Annuity                                           ● Federal Employees Group Life Insurance (FEGLI)                  ● TSP Maximizing Accumulation", 19, 560)
GuiCtrlCreateLabel("● Deposits and Re-deposits                                                         ● Federal Employees Retirement System (FERS)                      ● TSP Using the L–Funds", 19, 580)
GuiCtrlCreateLabel("● Federal Long Term Care Insurance Program                             ● FERS Transfer                                                                       ● TSP History and Market Strategies", 19, 600)
GuiCtrlCreateLabel("● Law Enforcement, Air Traffic Controller" & @CRLF &  "and Firefighter Retirement                                                            ● Military Service Buy Back                                                       ● Windfall Elimination Provision", 19, 620)
GuiCtrlCreateLabel("● Re-employed Annuitants                                                           ● Retirement Package Completion                                            ● TSP Withdrawal Options", 19, 660)
GuiCtrlCreateLabel("● Survivor Benefit Options                                                           ● Thrift Savings Plan", 19, 680)
GuiCtrlCreateLabel("● TSP Contribution Limits                                                             ● TSP Fundamental Plans for Investing", 19, 680)

GuiCtrlCreateLabel("American Benefits Exchange Actively Works with the Following Government Unions, Organizations, and Associations", 19, 720, 700, 15)
GuiCtrlSetFont(-1, -1, $FW_EXTRABOLD, "")
GuiCtrlSetColor(-1, $COLOR_RED)

$read = GuiCtrlCreateButton("=> Read", 690, 712, 80, 30)
GuiCtrlSetFont(-1, 10, "", "", "MV boli")
GuiCtrlSetBkColor(-1, $COLOR_BLACK)
GuiCtrlSetColor(-1, $COLOR_GREEN)


$save = GuiCtrlCreateButton("=> Save", 690, 280, 90, 58)
GuiCtrlSetFont(-1, 10, "", "", "MV boli")
GuiCtrlSetBkColor(-1, $COLOR_BLACK)
GuiCtrlSetColor(-1, $COLOR_GREEN)

GuiCtrlSetOnEvent($read, "read")
GuiCtrlSetOnEvent($save, "save")


;//////////////////////GUI PAGE 2 //////////////////////////////////////////////////////

$Gui3 = GuiCreate("Page 2", 700, 780, -1, -1, $WS_POPUP)
$Next2 = GuiCtrlCreateButton("NEXT =>", 600, 735, 80)
GuiCtrlSetBKColor(-1, 0x112348)
GuiCtrlSetColor(-1, 0xFDFDFC)
GuiCtrlSetFont(-1, -1, $FW_EXTRABOLD, "", "MV boli")
GuiCtrlCreatePic(@DESKTOPDIR & "\2.jpg", 0, 0, 700, 740)

GuiCtrlCreateLabel("", 0, 738, 700, 30)
GuiCtrlSetBKCOLOR(-1, $COLOR_WHITE)
GuiCtrlCreateButton("NEXT =>", 600, 735, 80)
GuiCtrlSetBKColor(-1, 0x112348)
GuiCtrlSetColor(-1, 0xFDFDFC)
GuiCtrlSetFont(-1, -1, $FW_EXTRABOLD, "", "MV boli")

GuiCtrlSetOnEvent($Next2, "Next2")

$Cyes = GuiCtrlCreateCheckBox("", 412, 158, 40, 40)
GuiCtrlSetBkColor(-1, $COLOR_WHITE)

$Cnon = GuiCtrlCreateCheckBox("", 485, 158, 20, 40)
GuiCtrlSetBkColor(-1, $COLOR_WHITE)

$first = GuiCtrlCreateLabel("1", 529, 167, 120, 14)
GuiCtrlSetBKCOLOR(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, 0x112348)
GuiCtrlSetFont(-1, 10, $FW_BOLD)

$second = GuiCtrlCreateLabel("2", 480, 302, 120, 14)
GuiCtrlSetBKCOLOR(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, 0x112348)
GuiCtrlSetFont(-1, 10, $FW_BOLD)

$third = GuiCtrlCreateLabel("3", 480, 350, 120, 14)
GuiCtrlSetBKCOLOR(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, 0x112348)
GuiCtrlSetFont(-1, 10, $FW_BOLD)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

$fourth = GuiCtrlCreateLabel("4", 268, 586, 120, 14)
GuiCtrlSetBKCOLOR(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, 0x112348)
GuiCtrlSetFont(-1, 10, $FW_BOLD)

$fifth = GuiCtrlCreateLabel("5", 380, 586, 120, 14)
GuiCtrlSetBKCOLOR(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, 0x112348)
GuiCtrlSetFont(-1, 10, $FW_BOLD)

$sixth = GuiCtrlCreateLabel("6", 520, 586, 120, 14)
GuiCtrlSetBKCOLOR(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, 0x112348)
GuiCtrlSetFont(-1, 10, $FW_BOLD)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

$seventh = GuiCtrlCreateLabel("7", 268, 693, 120, 14)
GuiCtrlSetBKCOLOR(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, 0x112348)
GuiCtrlSetFont(-1, 10, $FW_BOLD)

$eight = GuiCtrlCreateLabel("8", 380, 693, 120, 14)
GuiCtrlSetBKCOLOR(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, 0x112348)
GuiCtrlSetFont(-1, 10, $FW_BOLD)

$nine = GuiCtrlCreateLabel("9", 526, 693, 120, 14)
GuiCtrlSetBKCOLOR(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, 0x112348)
GuiCtrlSetFont(-1, 10, $FW_BOLD)

;;;;;;;;;;;;;;;;;GUI PAGE 2 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

$GUI4 = GuiCreate("Page 2", 700, 780, -1, -1, $WS_POPUP)
$Next3 = GuiCtrlCreateButton("NEXT =>", 600, 735, 80)
GuiCtrlSetBKColor(-1, 0x112348)
GuiCtrlSetColor(-1, 0xFDFDFC)
GuiCtrlSetFont(-1, -1, $FW_EXTRABOLD, "", "MV boli")
GuiCtrlCreatePic(@DESKTOPDIR & "\3.jpg", 0, 0, 700, 740)

GuiCtrlCreateLabel("", 0, 738, 700, 30)
GuiCtrlSetBKCOLOR(-1, $COLOR_WHITE)
GuiCtrlCreateButton("NEXT =>", 600, 735, 80)
GuiCtrlSetBKColor(-1, 0x112348)
GuiCtrlSetColor(-1, 0xFDFDFC)
GuiCtrlSetFont(-1, -1, $FW_EXTRABOLD, "", "MV boli")

$Cyes2 = GuiCtrlCreateCheckBox("", 417, 61, 40, 40)
GuiCtrlSetBkColor(-1, $COLOR_WHITE)

$Cno2 = GuiCtrlCreateCheckBox("", 490, 61, 20, 40)
GuiCtrlSetBkColor(-1, $COLOR_WHITE)
GuiCtrlSetOnEvent($Next3, "Next3")

$first2 = GuiCtrlCreateLabel("1", 529, 71, 120, 14)
GuiCtrlSetBKCOLOR(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, 0x112348)
GuiCtrlSetFont(-1, 10, $FW_BOLD)

$Cyes22 = GuiCtrlCreateCheckBox("", 617, 358, 40, 40)
GuiCtrlSetBkColor(-1, $COLOR_WHITE)

$Cno22 = GuiCtrlCreateCheckBox("", 685, 358, 20, 40)
GuiCtrlSetBkColor(-1, $COLOR_WHITE)
GuiCtrlSetOnEvent($Next3, "Next3")

$second2 = GuiCtrlCreateLabel("", 550, 442, 120, 14)
GuiCtrlSetBKCOLOR(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, 0x112348)
GuiCtrlSetFont(-1, 10, $FW_BOLD)

$third2 = GuiCtrlCreateLabel("", 572, 481, 120, 14)
GuiCtrlSetBKCOLOR(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, 0x112348)
GuiCtrlSetFont(-1, 10, $FW_BOLD)

$fourth2 = GuiCtrlCreateLabel("", 572, 520, 120, 14)
GuiCtrlSetBKCOLOR(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, 0x112348)
GuiCtrlSetFont(-1, 10, $FW_BOLD)

$fifth2 = GuiCtrlCreateLabel("", 100, 620, 120, 14)
GuiCtrlSetBKCOLOR(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, 0x112348)
GuiCtrlSetFont(-1, 10, $FW_BOLD)

$sixth2 = GuiCtrlCreateLabel("", 254, 620, 120, 14)
GuiCtrlSetBKCOLOR(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, 0x112348)
GuiCtrlSetFont(-1, 10, $FW_BOLD)

$seventh2 = GuiCtrlCreateLabel("", 524, 620, 120, 14)
GuiCtrlSetBKCOLOR(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, 0x112348)
GuiCtrlSetFont(-1, 10, $FW_BOLD)

$eight2 = GuiCtrlCreateLabel("", 100, 681, 120, 14)
GuiCtrlSetBKCOLOR(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, 0x112348)
GuiCtrlSetFont(-1, 10, $FW_BOLD)

$nine2 = GuiCtrlCreateLabel("", 254, 681, 120, 14)
GuiCtrlSetBKCOLOR(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, 0x112348)
GuiCtrlSetFont(-1, 10, $FW_BOLD)

$ten2 = GuiCtrlCreateLabel("", 524, 681, 120, 14)
GuiCtrlSetBKCOLOR(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, 0x112348)
GuiCtrlSetFont(-1, 10, $FW_BOLD)

$Unit = GuiCtrlCreateLabel("", 540, 406, 20, 15)
GuiCtrlSetBKCOLOR(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, 0x112348)
GuiCtrlSetFont(-1, 10, $FW_BOLD)


;/////////////////////////GUI 5 /////////////////////////////////////
$GUI5 = GuiCreate("Page 3", 710, 780, -1, -1, $WS_POPUP)
$Next4 = GuiCtrlCreateButton("NEXT =>", 600, 735, 80)
GuiCtrlSetBKColor(-1, 0x112348)
GuiCtrlSetColor(-1, 0xFDFDFC)
GuiCtrlSetFont(-1, -1, $FW_EXTRABOLD, "", "MV boli")
GuiCtrlCreatePic(@DESKTOPDIR & "\4.jpg", 0, 0, 710, 740)

GuiCtrlCreateLabel("", 0, 738, 700, 30)
GuiCtrlSetBKCOLOR(-1, $COLOR_WHITE)
GuiCtrlCreateButton("NEXT =>", 600, 735, 80)
GuiCtrlSetBKColor(-1, 0x112348)
GuiCtrlSetColor(-1, 0xFDFDFC)
GuiCtrlSetFont(-1, -1, $FW_EXTRABOLD, "", "MV boli")

$Cyes3 = GuiCtrlCreateCheckBox("", 626, 248, 10, 40)
GuiCtrlSetBkColor(-1, $COLOR_WHITE)

$Cno3 = GuiCtrlCreateCheckBox("", 700, 248, 10, 40)
GuiCtrlSetBkColor(-1, $COLOR_WHITE)
GuiCtrlSetOnEvent($Next4, "Next4")

$first3 = GuiCtrlCreateLabel("", 595, 358, 120, 15)
GuiCtrlSetBKCOLOR(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, 0x112348)
GuiCtrlSetFont(-1, 10, $FW_BOLD)

$second3 = GuiCtrlCreateLabel("", 595, 429, 120, 15)
GuiCtrlSetBKCOLOR(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, 0x112348)
GuiCtrlSetFont(-1, 10, $FW_BOLD)

$Unit2 = GuiCtrlCreateLabel("", 505, 300)
GuiCtrlSetBKCOLOR(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, 0x112348)
GuiCtrlSetFont(-1, 10, $FW_BOLD)


;GUI 6 ///////////////////////////////////////////////////
$Gui6 = GuiCreate("Page 4", 710, 780, -1, -1, $WS_POPUP)
$Next5 = GuiCtrlCreateButton("NEXT =>", 600, 735, 80)
GuiCtrlSetBKColor(-1, 0x112348)
GuiCtrlSetColor(-1, 0xFDFDFC)
GuiCtrlSetFont(-1, -1, $FW_EXTRABOLD, "", "MV boli")
GuiCtrlCreatePic(@DESKTOPDIR & "\5.jpg", 0, 0, 710, 740)

GuiCtrlCreateLabel("", 0, 738, 700, 30)
GuiCtrlSetBKCOLOR(-1, $COLOR_WHITE)
GuiCtrlCreateButton("NEXT =>", 600, 735, 80)
GuiCtrlSetBKColor(-1, 0x112348)
GuiCtrlSetColor(-1, 0xFDFDFC)
GuiCtrlSetFont(-1, -1, $FW_EXTRABOLD, "", "MV boli")

GuiCtrlSetOnEvent($Next5, "Next5")

$first4 = GuiCtrlCreateLabel("52", 5, 610, 120, 15)
GuiCtrlSetBKCOLOR(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, 0x112348)
GuiCtrlSetFont(-1, 10, $FW_BOLD)

$second4 = GuiCtrlCreateLabel("53", 110, 610, 120, 15)
GuiCtrlSetBKCOLOR(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, 0x112348)
GuiCtrlSetFont(-1, 10, $FW_BOLD)

$third4 = GuiCtrlCreateLabel("54", 215, 610, 120, 15)
GuiCtrlSetBKCOLOR(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, 0x112348)
GuiCtrlSetFont(-1, 10, $FW_BOLD)

$fourth4 = GuiCtrlCreateLabel("55", 422, 610, 100, 15)
GuiCtrlSetBKCOLOR(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, 0x112348)
GuiCtrlSetFont(-1, 10, $FW_BOLD)

$fifth4 = GuiCtrlCreateLabel("56", 560, 610, 80, 15)
GuiCtrlSetBKCOLOR(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, 0x112348)
GuiCtrlSetFont(-1, 10, $FW_BOLD)

$sixth4 = GuiCtrlCreateLabel("57", 570, 643, 80, 15)
GuiCtrlSetBKCOLOR(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, 0x112348)
GuiCtrlSetFont(-1, 10, $FW_BOLD)

$seventh4 = GuiCtrlCreateLabel("58", 572, 678, 80, 15)
GuiCtrlSetBKCOLOR(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, 0x112348)
GuiCtrlSetFont(-1, 10, $FW_BOLD)

;GUII 7////////////////////////////////////////////////////

$Gui7 = GuiCreate("Page 5", 710, 780, -1, -1, $WS_POPUP)
$Next6 = GuiCtrlCreateButton("NEXT =>", 600, 735, 80)
GuiCtrlSetBKColor(-1, 0x112348)
GuiCtrlSetColor(-1, 0xFDFDFC)
GuiCtrlSetFont(-1, -1, $FW_EXTRABOLD, "", "MV boli")
GuiCtrlCreatePic(@DESKTOPDIR & "\6.jpg", 0, 0, 710, 740)

GuiCtrlCreateLabel("", 0, 738, 710, 40)
GuiCtrlSetBKCOLOR(-1, $COLOR_WHITE)
GuiCtrlCreateButton("NEXT =>", 600, 735, 80)
GuiCtrlSetBKColor(-1, 0x112348)
GuiCtrlSetColor(-1, 0xFDFDFC)
GuiCtrlSetFont(-1, -1, $FW_EXTRABOLD, "", "MV boli")

$first5 = GuiCtrlCreateLabel("1646", 25, 415, 80, 15)
GuiCtrlSetBKCOLOR(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, 0x112348)
GuiCtrlSetFont(-1, 10, $FW_BOLD)

$second5 = GuiCtrlCreateLabel("52",155, 415, 80, 15)
GuiCtrlSetBKCOLOR(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, 0x112348)
GuiCtrlSetFont(-1, 10, $FW_BOLD)

$third5 = GuiCtrlCreateLabel("52",265, 415, 80, 15)
GuiCtrlSetBKCOLOR(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, 0x112348)
GuiCtrlSetFont(-1, 10, $FW_BOLD)

$fourth5 = GuiCtrlCreateLabel("52",375, 415, 80, 15)
GuiCtrlSetBKCOLOR(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, 0x112348)
GuiCtrlSetFont(-1, 10, $FW_BOLD)

$sixth5 = GuiCtrlCreateLabel("52",485, 415, 80, 15)
GuiCtrlSetBKCOLOR(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, 0x112348)
GuiCtrlSetFont(-1, 10, $FW_BOLD)

$seventh5 = GuiCtrlCreateLabel("52",599, 415, 80, 15)
GuiCtrlSetBKCOLOR(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, 0x112348)
GuiCtrlSetFont(-1, 10, $FW_BOLD)

GuiCtrlSetOnEvent($Next6, "Next6")

;GUI 8 /////////////////////////////////////////////////
$Gui8 = GuiCreate("Page 6", 710, 780, -1, -1, $WS_POPUP)
$Next7 = GuiCtrlCreateButton("NEXT =>", 600, 735, 80)
GuiCtrlSetBKColor(-1, 0x112348)
GuiCtrlSetColor(-1, 0xFDFDFC)
GuiCtrlSetFont(-1, -1, $FW_EXTRABOLD, "", "MV boli")
GuiCtrlCreatePic(@DESKTOPDIR & "\7.jpg", 0, 0, 710, 740)

GuiCtrlCreateLabel("", 0, 738, 710, 40)
GuiCtrlSetBKCOLOR(-1, $COLOR_WHITE)
GuiCtrlCreateButton("NEXT =>", 600, 735, 80)
GuiCtrlSetBKColor(-1, 0x112348)
GuiCtrlSetColor(-1, 0xFDFDFC)
GuiCtrlSetFont(-1, -1, $FW_EXTRABOLD, "", "MV boli")

$first6 = GuiCtrlCreateLabel("65", 228, 288, 80, 15)
GuiCtrlSetBKCOLOR(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, 0x112348)
GuiCtrlSetFont(-1, 10, $FW_BOLD)

$second6 = GuiCtrlCreateLabel("66", 228, 313, 80, 15)
GuiCtrlSetBKCOLOR(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, 0x112348)
GuiCtrlSetFont(-1, 10, $FW_BOLD)

$third6 = GuiCtrlCreateLabel("67", 228, 342, 80, 15)
GuiCtrlSetBKCOLOR(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, 0x112348)
GuiCtrlSetFont(-1, 10, $FW_BOLD)

$fourth6 = GuiCtrlCreateLabel("68", 228, 368, 80, 15)
GuiCtrlSetBKCOLOR(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, 0x112348)
GuiCtrlSetFont(-1, 10, $FW_BOLD)

$fifth6 = GuiCtrlCreateLabel("69", 162, 401, 80, 15)
GuiCtrlSetBKCOLOR(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, 0x112348)
GuiCtrlSetFont(-1, 10, $FW_BOLD)

$sixth6 = GuiCtrlCreateLabel("70", 162, 451, 80, 15)
GuiCtrlSetBKCOLOR(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, 0x112348)
GuiCtrlSetFont(-1, 10, $FW_BOLD)

$seventh6 = GuiCtrlCreateLabel("71", 162, 478, 80, 15)
GuiCtrlSetBKCOLOR(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, 0x112348)
GuiCtrlSetFont(-1, 10, $FW_BOLD)

$eight6 = GuiCtrlCreateLabel("72", 162, 532, 80, 15)
GuiCtrlSetBKCOLOR(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, 0x112348)
GuiCtrlSetFont(-1, 10, $FW_BOLD)

$nine6 = GuiCtrlCreateLabel("73", 162, 560, 80, 15)
GuiCtrlSetBKCOLOR(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, 0x112348)
GuiCtrlSetFont(-1, 10, $FW_BOLD)

GuiCtrlSetOnEvent($NEXT7, "NEXT7")

;////////////////////GUI 9/////////////////////////////////////////////////
$Gui9 = GuiCreate("Page 7", 710, 780, -1, -1, $WS_POPUP)
$Next8 = GuiCtrlCreateButton("NEXT =>", 600, 735, 80)
GuiCtrlSetBKColor(-1, 0x112348)
GuiCtrlSetColor(-1, 0xFDFDFC)
GuiCtrlSetFont(-1, -1, $FW_EXTRABOLD, "", "MV boli")
GuiCtrlCreatePic(@DESKTOPDIR & "\8.jpg", 0, 0, 710, 740)

GuiCtrlCreateLabel("", 0, 738, 710, 40)
GuiCtrlSetBKCOLOR(-1, $COLOR_WHITE)
GuiCtrlCreateButton("NEXT =>", 600, 735, 80)
GuiCtrlSetBKColor(-1, 0x112348)
GuiCtrlSetColor(-1, 0xFDFDFC)
GuiCtrlSetFont(-1, -1, $FW_EXTRABOLD, "", "MV boli")

$first7 = GuiCtrlCreateLabel("", 30, 308, 80, 15)
GuiCtrlSetBKCOLOR(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, 0x112348)
GuiCtrlSetFont(-1, 10, $FW_BOLD)

$second7 = GuiCtrlCreateLabel("", 155, 308, 80, 15)
GuiCtrlSetBKCOLOR(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, 0x112348)
GuiCtrlSetFont(-1, 10, $FW_BOLD)

$third7 = GuiCtrlCreateLabel("", 265, 308, 80, 15)
GuiCtrlSetBKCOLOR(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, 0x112348)
GuiCtrlSetFont(-1, 10, $FW_BOLD)

$fourth7 = GuiCtrlCreateLabel("", 379, 308, 80, 15)
GuiCtrlSetBKCOLOR(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, 0x112348)
GuiCtrlSetFont(-1, 10, $FW_BOLD)

$fifth7 = GuiCtrlCreateLabel("", 489, 308, 80, 15)
GuiCtrlSetBKCOLOR(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, 0x112348)
GuiCtrlSetFont(-1, 10, $FW_BOLD)

$sixth7 = GuiCtrlCreateLabel("", 603, 308, 80, 15)
GuiCtrlSetBKCOLOR(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, 0x112348)
GuiCtrlSetFont(-1, 10, $FW_BOLD)

GuiCtrlSetOnEvent($NEXT8, "NEXT8")

;//GUI 10//////////////////////////////////////////////////
$Gui10 = GuiCreate("Page 8", 710, 780, -1, -1, $WS_POPUP)
$Next9 = GuiCtrlCreateButton("NEXT =>", 600, 735, 80)
GuiCtrlSetBKColor(-1, 0x112348)
GuiCtrlSetColor(-1, 0xFDFDFC)
GuiCtrlSetFont(-1, -1, $FW_EXTRABOLD, "", "MV boli")
GuiCtrlCreatePic(@DESKTOPDIR & "\9.jpg", 0, 0, 710, 740)

GuiCtrlCreateLabel("", 0, 738, 710, 40)
GuiCtrlSetBKCOLOR(-1, $COLOR_WHITE)
GuiCtrlCreateButton("NEXT =>", 600, 735, 80)
GuiCtrlSetBKColor(-1, 0x112348)
GuiCtrlSetColor(-1, 0xFDFDFC)
GuiCtrlSetFont(-1, -1, $FW_EXTRABOLD, "", "MV boli")

GuiCtrlSetOnEvent($NEXT9, "NEXT9")


;//GUI 11////////////////////////////
$Gui11 = GuiCreate("Page 9", 710, 780, -1, -1, $WS_POPUP)
$Next10 = GuiCtrlCreateButton("NEXT =>", 600, 735, 80)
GuiCtrlSetBKColor(-1, 0x112348)
GuiCtrlSetColor(-1, 0xFDFDFC)
GuiCtrlSetFont(-1, -1, $FW_EXTRABOLD, "", "MV boli")
GuiCtrlCreatePic(@DESKTOPDIR & "\10.jpg", 0, 0, 710, 740)

GuiCtrlCreateLabel("", 0, 738, 710, 40)
GuiCtrlSetBKCOLOR(-1, $COLOR_WHITE)
GuiCtrlCreateButton("NEXT =>", 600, 735, 80)
GuiCtrlSetBKColor(-1, 0x112348)
GuiCtrlSetColor(-1, 0xFDFDFC)
GuiCtrlSetFont(-1, -1, $FW_EXTRABOLD, "", "MV boli")

GuiCtrlSetOnEvent($NEXT10, "NEXT10")


;//GUI12////////////////////////////////////
$Gui12 = GuiCreate("Page 10", 710, 780, -1, -1, $WS_POPUP)
$Next11 = GuiCtrlCreateButton("NEXT =>", 600, 735, 80)
GuiCtrlSetBKColor(-1, 0x112348)
GuiCtrlSetColor(-1, 0xFDFDFC)
GuiCtrlSetFont(-1, -1, $FW_EXTRABOLD, "", "MV boli")
GuiCtrlCreatePic(@DESKTOPDIR & "\11.jpg", 0, 0, 710, 740)

GuiCtrlCreateLabel("", 0, 738, 710, 40)
GuiCtrlSetBKCOLOR(-1, $COLOR_WHITE)
GuiCtrlCreateButton("NEXT =>", 600, 735, 80)
GuiCtrlSetBKColor(-1, 0x112348)
GuiCtrlSetColor(-1, 0xFDFDFC)
GuiCtrlSetFont(-1, -1, $FW_EXTRABOLD, "", "MV boli")

GuiCtrlSetOnEvent($NEXT11, "NEXT11")

;//GUI13/////////////////////////////////////
$Gui13 = GuiCreate("Page 11", 710, 780, -1, -1, $WS_POPUP)
$Next12 = GuiCtrlCreateButton("SAVE CASE", 200, 750, 92)
GuiCtrlSetBKColor(-1, 0x112348)
GuiCtrlSetColor(-1, 0xFDFDFC)
GuiCtrlSetFont(-1, -1, $FW_EXTRABOLD, "", "MV boli")

$CANCELCASE = GuiCtrlCreateButton("CANCEL CASE", 400, 750, 92)
GuiCtrlSetBKColor(-1, 0x112348)
GuiCtrlSetColor(-1, $COLOR_RED)
GuiCtrlSetFont(-1, -1, $FW_EXTRABOLD, "", "MV boli")

GuiCtrlCreatePic(@DESKTOPDIR & "\12.jpg", 0, 0, 710, 740)

GuiCtrlCreateLabel("", 0, 738, 710, 40)
GuiCtrlSetBKCOLOR(-1, $COLOR_WHITE)

GuiCtrlCreateButton("SAVE CASE", 200, 750, 92)
GuiCtrlSetBKColor(-1, 0x112348)
GuiCtrlSetColor(-1, 0xFDFDFC)
GuiCtrlSetFont(-1, -1, $FW_EXTRABOLD, "", "MV boli")

GuiCtrlCreateButton("CANCEL CASE", 400, 750, 92)
GuiCtrlSetBKColor(-1, 0x112348)
GuiCtrlSetColor(-1, $COLOR_RED)
GuiCtrlSetFont(-1, -1, $FW_EXTRABOLD, "", "MV boli")

GuiCtrlSetOnEvent($NEXT12, "NEXT12")

GuiCtrlSetOnEvent($CANCELCASE, "CANCELCASE")

;//////////////GUI 0 //////////////////////////
$GUI0 = GuiCreate("Page2", 800, 300, -1, -1, $WS_POPUP)

$Next0 = GuiCtrlCreateButton("NEXT", 700, 270, 92)
GuiCtrlSetBKColor(-1, 0x112348)
GuiCtrlSetColor(-1, 0xFDFDFC)
GuiCtrlSetFont(-1, -1, $FW_EXTRABOLD, "", "MV boli")

GuiCtrlCreatePic(@DESKTOPDIR & "\0.jpg", 0, 0, 800, 300)

GuiCtrlCreateButton("NEXT", 700, 270, 92)
GuiCtrlSetBKColor(-1, 0x112348)
GuiCtrlSetColor(-1, 0xFDFDFC)
GuiCtrlSetFont(-1, -1, $FW_EXTRABOLD, "", "MV boli")

$first0 = GuiCtrlCreateLabel("29", 299, 22, 80, 15)
GuiCtrlSetBKCOLOR(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, 0x112348)
GuiCtrlSetFont(-1, 10, $FW_BOLD)

$second0 = GuiCtrlCreateLabel("34", 430, 22, 80, 15)
GuiCtrlSetBKCOLOR(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, 0x112348)
GuiCtrlSetFont(-1, 10, $FW_BOLD)

$third0 = GuiCtrlCreateLabel("35", 610, 22, 80, 15)
GuiCtrlSetBKCOLOR(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, 0x112348)
GuiCtrlSetFont(-1, 10, $FW_BOLD)

$fourth0 = GuiCtrlCreateLabel("29", 299, 152, 80, 15)
GuiCtrlSetBKCOLOR(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, 0x112348)
GuiCtrlSetFont(-1, 10, $FW_BOLD)

$fifth0 = GuiCtrlCreateLabel("36", 430, 152, 80, 15)
GuiCtrlSetBKCOLOR(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, 0x112348)
GuiCtrlSetFont(-1, 10, $FW_BOLD)

$sixth0 = GuiCtrlCreateLabel("37", 610, 152, 80, 15)
GuiCtrlSetBKCOLOR(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, 0x112348)
GuiCtrlSetFont(-1, 10, $FW_BOLD)

$seventh0 = GuiCtrlCreateLabel("29", 299, 218, 80, 15)
GuiCtrlSetBKCOLOR(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, 0x112348)
GuiCtrlSetFont(-1, 10, $FW_BOLD)

$eight0 = GuiCtrlCreateLabel("38", 430, 218, 80, 15)
GuiCtrlSetBKCOLOR(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, 0x112348)
GuiCtrlSetFont(-1, 10, $FW_BOLD)

$nine0 = GuiCtrlCreateLabel("39", 610, 218, 80, 15)
GuiCtrlSetBKCOLOR(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, 0x112348)
GuiCtrlSetFont(-1, 10, $FW_BOLD)

GuiCtrlSetOnEvent($NEXT0, "NEXT0")



GuiSetState(@SW_HIDE, $GUI0)

GuiSetState(@SW_HIDE, $GUI13)
GuiSetState(@SW_HIDE, $GUI12)
GuiSetState(@SW_HIDE, $GUI11)
GuiSetState(@SW_HIDE, $GUI10)
GuiSetState(@SW_HIDE, $GUI9)
GuiSetState(@SW_HIDE, $GUI8)
GuiSetState(@SW_HIDE, $GUI7)
GuiSetState(@SW_HIDE, $GUI6)
GuiSetState(@SW_HIDE, $GUI5)
GuiSetState(@SW_HIDE, $GUI3)

GuiSetState(@SW_SHOW, $GUIP)

GuiSetState(@SW_HIDE, $GUI4)
GuiSetState(@SW_HIDE, $GUI2)

GuiSetState(@SW_HIDE, $GUIPROFILE)

;If FileExists(@TEMPDIR & "\" & "ProfileIHC" & ".txt") then
 ;  GuiSetState(@SW_SHOW, $GUIP)
;Else
;   GuiSetState(@SW_SHOW, $GUIPROFILE)
;endif



While 1
   Sleep(200)
Wend

Func CANCELCASE()
   $msg = Msgbox(52, "Cancellation", "Are you sure you want to cancel without saving ?")
   Switch $msg
   Case $msg = 6
	  Exit
   Case $msg = 7
	  sleep(10)
   EndSwitch
EndFunc



Func Next12()
   $fdfd = Random(1, 9999, 1)
   _FileCreate(@TEMPDIR & $REmployer & ".txt")
   $opp11 = FileOpen(@TEMPDIR & "\" & $REmployer  & ".txt", 2)
   FileWrite($opp11, $RRetirementAge & "=" & $Rname & "=" & $REmployer & "=" & $RAge & "=" & $RSalary & "=" & $RYears & "=" & $RContribution & "=" & $RBalance & "=" & $RRepName & "=" & $RPhone)
   FileClose($opp11)
   if fileExists(@TEMPDIR & "\NamesABC.txt") = False then
   _FileCreate(@TEMPDIR & "\NamesABC.txt")
endif
$opp2 = FileOpen(@TEMPDIR & "\NamesABC.txt", 1)
$day = _NOWDATE() & " " & @HOUR & ":" & @MIN
FileWrite($opp2, $REmployer & "+" & $day & "+" & @CRLF)
FileClose($opp2)
Exit

 EndFunc



Func Next11()
   GuiSetState(@SW_HIDE, $GUI12)
   GuiSetState(@SW_show, $GUI13)
EndFunc

Func Next10()
    GuiSetState(@SW_HIDE, $GUI11)
   GuiSetState(@SW_show, $GUI12)
EndFunc

Func Next9()
    GuiSetState(@SW_HIDE, $GUI10)
   GuiSetState(@SW_show, $GUI11)
EndFunc


Func Next8()
   GuiSetState(@SW_HIDE, $GUI9)
   GuiSetState(@SW_show, $GUI10)
EndFunc


Func Next7()
   GuiSetState(@SW_HIDE, $GUI8)
   GuiSetState(@SW_show, $GUI9)
EndFunc

Func NEXT6()
    GuiSetState(@SW_HIDE, $GUI7)
   GuiSetState(@SW_show, $GUI8)
EndFunc

Func Next5()
    GuiSetState(@SW_HIDE, $GUI6)
   GuiSetState(@SW_show, $GUI7)
EndFunc

Func Next4()
    GuiSetState(@SW_HIDE, $GUI5)
   GuiSetState(@SW_show, $GUI6)
endfunc

Func Next3()
   GuiSetState(@SW_HIDE, $GUI4)
   GuiSetState(@SW_show, $GUI5)
endfunc

Func Next2()
   GuiSetState(@SW_HIDE, $GUI3)
   GuiSetState(@SW_show, $GUI0)
EndFunc

Func NEXT0()
   GuiSetState(@SW_HIDE, $GUI0)
   GuiSetState(@SW_show, $GUI4)
EndFunc


Func fermer()
   Exit
EndFunc

Func quit()
   Exit
EndFunc

Func read()
   msgbox(0, "American Benefits Exchange Actively Works with the Following Government Unions, Organizations, and Associations", "● American Correctional Association" & @CRLF & "● American Postal Worker’s Union" & @CRLF & "● American Society of Military Comptroller’s" & @CRLF & "● Army Corps of Engineers" & @CRLF & "● Blacks in Government" & @CRLF & "● Department of Defense" & @CRLF & "● Department of Homeland Security" & @CRLF & "● Department of Veteran’s Affairs" & @CRLF & "● Federally Employed Women" & @CRLF & "● Federal Managers Association" & @CRLF & "● National Active and Retired Federal Employees" & @CRLF & "● National Association for Employee Benefits" & @CRLF & "National Association of Postal Supervisors" & @CRLF & "● National Association of Postmasters of the United States" & @CRLF & "● National Treasury Employees Union" & @CRLF & "● National Treasury Employees Union" & @CRLF & "● Social Security Administration" & @CRLF & "● United States Department of Agriculture" & @CRLF & "……………………………...and more!")
endfunc

Func label1()
   GuiSetState(@SW_HIDE, $GUIP)
   GuiSetState(@SW_SHOW, $GUI2)

Endfunc


Func label2()
   msgbox(0, "", "")
Endfunc


Func label3()
   msgbox(0, "", "")
Endfunc

Func save()
   Global $RRetirementAge = GuiCtrlRead($RetirementAge)
   Global $Rname = GuiCtrlRead($NAME)
   Global $REmployer = GuiCtrlRead($Employer)
   Global $RAge = GuiCtrlRead($Age)
   Global $RSalary = GuiCtrlRead($Salary)
   Global $RYears = GuiCtrlRead($Years)
   Global $RContribution = GuiCtrlRead($Contribution)
   Global $RBalance = GuiCtrlRead($Balance)
   Global $RRepName = GuiCtrlRead($RepName)
   Global $RPhone = GuiCtrlRead($Phone)
   Global $R15 = GuiCtrlRead($15)
   Global $R16 = GuiCtrlRead($16)
   Global $R17 = GuiCtrlRead($17)
   Global $R14 = GuiCtrlRead($14)
   Global $R18a = GuiCtrlRead($18a)
   Global $R18b = GuiCtrlRead($18b)
   Global $65 = $Rage
   Global $66 = $RYears
   Global $67 = $RRetirementAge
   Global $68 = $RYears + $RRetirementAge - $RAge




   ;19 = TSP CONTRIBUTION
   ;20 = TSP BALANCE
   ;21 = ESTIMATED TSP BALANCE AT RETIREMENT AGE
   ;22  = ESTIMATED TSP RETIREMENT CHECK

  ; if $RName = "" or $REmployer = "" or $RAge = "" or $RSalary = "" or $RYears = "" or $RContribution = "" or $RBalance = "" or $RRepName = "" or $RPhone = "" or $RRetirementAge = "" then
	;  msgbox(0, "Incomplete", "Please complete all your informations then continue")
  ; Else

;////////////////////////////////////26////////////////////////////////////////////////
$input1 = $Rsalary & " "
if $Rsalary < 1000 then
   $26 = $Rsalary
Else
   $str = STRINGREGEXP($input1, "([0123456789]{1,40})000 ")
   if $str = TRUE then
	  ;msgbox(0, "", "your number is : " & @CRLF & $input1)
	  $26 = $input1 + 2000
   Else
	  $JJJJJ = StringRegExp($input1, "([0123456789]{1,40})([0123456789]{3})", $STR_REGEXPARRAYMATCH)
	  $26 = ( $JJJJJ[0] & "000" ) + 1000 + 2000
   EndIf
endif
;//////////////////////////////////27////////////////////////////////////////
if $Rage < 45 then
   if $Rage <= 35 then
	  $FACTOR = 1
   else
	  if $Rage = 36 then
		 $FACTOR = 0.9
	  Else
		 If $Rage = 37 Then
			$FACTOR = 0.8
		 Else
			If $Rage = 38 then
			   $FACTOR = 0.7
			Else
			   If $Rage = 39 then
				  $FACTOR = 0.6
			   Else
				  If $Rage = 40 then
					 $FACTOR = 0.5
				  Else
					 If $Rage = 41 then
						$FACTOR = 0.4
					 Else
						If $Rage = 42 then
						   $FACTOR = 0.3
						Else
						   If $Rage = 43 then
							  $FACTOR = 0.2
						   Else
							  If $Rage = 44 then
								 $FACTOR = 0.1
							  EndIf
						   EndIf
						EndIf
					 EndIf
				  EndIf
			   EndIf
			EndIf
		 EndIf
	  EndIf
   EndIf

$27 = $26 * $FACTOR
Else
   $27 = "RIEN"
EndIf
;///////////////////////////////28////////////////////////////////////////
$28 = 45 - $RAge
if $28 <= 0 then $28 = "RIEN"

;/////////////////////////////29/////////////////////////////////////////
$A = 1.01*1.01
for $aa = 1 to ( $RretirementAge - $Rage ) - 2
   $A = 1.01* $A
Next
$B = $A * $RSalary
If $B > 1000 then
   $str2 = STRINGREGEXP($B, "([0123456789]{1,40})000 ")
   if $str2 = TRUE then
	  $29 = ($B + 2000) / 1000
   else
	  $JJ2 = StringRegExp($B, "([0123456789]{1,40})([0123456789]{3})", $STR_REGEXPARRAYMATCH)
	  $29 = ((( $JJ2[0] & "000" ) + 1000 + 2000 ) / 1000 )
   EndIf
Else
   $29 =( $B + 2000 ) / 1000
EndIf

$69 = ( $29 * 1000 ) - 2000
if $67 < 62 or $68 < 20 then
   $70 = $69 * 0.01
Else
   $70 = $69 * 0.011
endif
$71 = $68
$72 = $70 * $71
$73 = $72 / 12

$74 = $68
$75 = $69 / 12
$76 = $73
$77 = $75 - $76
$78 = $76 / 2
$79 = $76 * 0.10


$30 = 0.325 * $29
$31 = $29 * 1000 * 0.25
$32 = 0.965 * $29
$33 = 1000 * $29
$34 = 0.64 * $29
$35 = $29 * 1000 * 0.50
$36 = 2.265 * $29
$37 = $29 * 1000
$38 = 1.94 * $29
$39 = $29 * 1000
If $R15 = "Yes" then $40 = 10000
If $R15 = "No" then $40 = "NONE"
$41 = $26 - 2000
$42 = "In progress"
;42 !
$42A = $41 / 1000



$43 = "In Progress"
$44 = "What's 44? "
$45 = "What's 45 ?"
$46 = "What's 46 ?"
$47 = "What's 47 ?"
$48 = "What's 48 ?"
$49 = "What's 49 ?"


if $R17 = 1 or $R17 = 2 or $R17 = 3 or $R17 = 4 or $R17 = 5 then
   $50 = 5000 * $R17
Else
   $50 = "NONE"
endif

if $R17 = 1 or $R17 = 2 or $R17 = 3 or $R17 = 4 or $R17 = 5 then
   $51 = 2500 * $R17
Else
   $51 = "NONE"
endif


if $R17 = 1 or $R17 = 2 or $R17 = 3 or $R17 = 4 or $R17 = 5 then
   GuiCtrlSetState($Cyes3, $GUI_CHECKED)
Else
   GuiCtrlSetState($Cno3, $GUI_CHECKED)
Endif

If $R14 = "Yes" then  GuiCtrlSetState($Cyes, $GUI_CHECKED)
If $R14 = "No" then  GuiCtrlSetState($Cnon, $GUI_CHECKED)
If $R15 = "Yes" then GuiCtrlSetState($Cyes2, $GUI_CHECKED)
If $R15 = "No" then GuiCtrlSetState($Cno2, $GUI_CHECKED)
If $R16 = "" then
   GuiCtrlSetState($Cno22, $GUI_CHECKED)
   GuiCtrlSetData($Unit, "NONE")
endif
If $R16 <> "" then
   GuiCtrlSetState($Cyes22, $GUI_CHECKED)
   GuiCtrlSetData($Unit, $R16)
Endif


GuiCtrlSetData($first0, $29)
GuiCtrlSetData($second0, $34)
GuiCtrlSetData($third0, $35)
GuiCtrlSetData($fourth0, $29)
GuiCtrlSetData($fifth0, $36)
GuiCtrlSetData($sixth0, $37)
GuiCtrlSetData($seventh0, $29)
GuiCtrlSetData($eight0, $38)
GuiCtrlSetData($nine0, $39)



GuiCtrlSetData($first, $26)
GuiCtrlSetData($second, $27)
GuiCtrlSetData($third, $28)
GuiCtrlSetData($fourth, $29)
GuiCtrlSetData($fifth, $30)
GuiCtrlSetData($sixth, $31)
GuiCtrlSetData($seventh, $29)
GuiCtrlSetData($eight, $34)
GuiCtrlSetData($nine, $35)

GuiCtrlSetData($first2, $40)
GuiCtrlSetData($second2, $41)
GuiCtrlSetData($third2,$42)
GuiCtrlSetData($fourth2,$43)
GuiCtrlSetData($fifth2,$44)
GuiCtrlSetData($sixth2,$45)
GuiCtrlSetData($seventh2,$46)
GuiCtrlSetData($eight2,$47)
GuiCtrlSetData($nine2,$48)
GuiCtrlSetData($ten2,$49)

GuiCtrlSetData($first3, $50)
GuiCtrlSetData($second3, $51)


GuiCtrlSetData($first6, $65)
GuiCtrlSetData($second6, $66)
GuiCtrlSetData($third6,$67)
GuiCtrlSetData($fourth6,$68)
GuiCtrlSetData($fifth6,$69)
GuiCtrlSetData($sixth6,$70)
GuiCtrlSetData($seventh6,$71)
GuiCtrlSetData($eight6,$72)
GuiCtrlSetData($nine6,$73)

GuiCtrlSetData($first7, $74)
GuiCtrlSetData($second7, $75)
GuiCtrlSetData($third7,$76)
GuiCtrlSetData($fourth7,$77)
GuiCtrlSetData($fifth7,$78)
GuiCtrlSetData($sixth7,$79)




GuiSetState(@SW_SHOW, $GUI3)
GuiSetState(@SW_HIDE, $GUI2)


;msgbox(0, "", $26 & @CRLF & $27 & @CRLF & $28 & @CRLF & $29)




;endif


EndFunc

Func hidee()
   GuiSetState(@SW_HIDE, $GUIPROFILE)
EndFunc

Func hideeP()
   Exit
EndFunc


func prof()
   GuiSetState(@SW_SHOW, $GUIPROFILE)
endfunc

Func confirmP()
   $RN = GuiCtrlRead($NAMEPROFILE)
   $RA = GuiCtrlRead($ADDRESSPROFILE)
   $RE = GuiCtrlRead($EMAILPROFILE)
   $RT = GuiCtrlRead($TELEPHONEPROFILE)
   If $RN <> "" and $RA <> "" and $RE <> "" and $RT <> "" Then
	  _FileCreate(@TEMPDIR & "\" & "profileIHC" & ".txt")
	  $op = FileOpen(@TEMPDIR & "\" & "profileIHC" & ".txt", 2)
	  FileWrite($op, $RN & "=" & $RA & "=" & $RE & "=" & $RT)
	  FileClose($op)
	  GuiSetState(@SW_SHOW, $guiP)
	  GuiSetState(@SW_HIDE, $guiprofile)
   Else
	  msgbox(0, "Error", "Please fill all blank spaces")
   endif
EndFunc