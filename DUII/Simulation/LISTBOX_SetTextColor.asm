﻿; Listing generated by Microsoft (R) Optimizing Compiler Version 16.00.40219.01 

	TITLE	C:\DUII\Simulation\GUI\Widget\LISTBOX_SetTextColor.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	_LISTBOX_SetTextColor
EXTRN	_LISTBOX__InvalidateInsideArea:PROC
EXTRN	_GUI_ALLOC_UnlockH:PROC
EXTRN	_LISTBOX_LockH:PROC
EXTRN	__RTC_CheckEsp:PROC
EXTRN	__RTC_Shutdown:PROC
EXTRN	__RTC_InitBase:PROC
;	COMDAT rtc$TMZ
; File c:\duii\simulation\gui\widget\listbox_settextcolor.c
rtc$TMZ	SEGMENT
__RTC_Shutdown.rtc$TMZ DD FLAT:__RTC_Shutdown
rtc$TMZ	ENDS
;	COMDAT rtc$IMZ
rtc$IMZ	SEGMENT
__RTC_InitBase.rtc$IMZ DD FLAT:__RTC_InitBase
; Function compile flags: /Odtp /RTCsu /ZI
rtc$IMZ	ENDS
;	COMDAT _LISTBOX_SetTextColor
_TEXT	SEGMENT
_pObj$11425 = -20					; size = 4
_r$ = -8						; size = 4
_hObj$ = 8						; size = 4
_Index$ = 12						; size = 4
_Color$ = 16						; size = 4
_LISTBOX_SetTextColor PROC				; COMDAT
; Line 41
	push	ebp
	mov	ebp, esp
	sub	esp, 216				; 000000d8H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-216]
	mov	ecx, 54					; 00000036H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 42
	mov	DWORD PTR _r$[ebp], 268435455		; 0fffffffH
; Line 43
	cmp	DWORD PTR _hObj$[ebp], 0
	je	SHORT $LN2@LISTBOX_Se
; Line 45
	cmp	DWORD PTR _Index$[ebp], 4
	jae	SHORT $LN2@LISTBOX_Se
; Line 47
	mov	eax, DWORD PTR _hObj$[ebp]
	push	eax
	call	_LISTBOX_LockH
	add	esp, 4
	mov	DWORD PTR _pObj$11425[ebp], eax
; Line 48
	mov	eax, DWORD PTR _Index$[ebp]
	mov	ecx, DWORD PTR _pObj$11425[ebp]
	mov	edx, DWORD PTR _Color$[ebp]
	mov	DWORD PTR [ecx+eax*4+112], edx
; Line 49
	mov	eax, DWORD PTR _Index$[ebp]
	mov	ecx, DWORD PTR _pObj$11425[ebp]
	mov	edx, DWORD PTR [ecx+eax*4+112]
	mov	DWORD PTR _r$[ebp], edx
; Line 50
	call	_GUI_ALLOC_UnlockH
	mov	DWORD PTR _pObj$11425[ebp], 0
; Line 51
	mov	eax, DWORD PTR _hObj$[ebp]
	push	eax
	call	_LISTBOX__InvalidateInsideArea
	add	esp, 4
$LN2@LISTBOX_Se:
; Line 55
	mov	eax, DWORD PTR _r$[ebp]
; Line 56
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 216				; 000000d8H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_LISTBOX_SetTextColor ENDP
_TEXT	ENDS
END