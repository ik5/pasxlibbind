(* $XdotOrg: $ *)
(* $XFree86: xc/include/Xmd.h,v 3.18tsi Exp $ *)
(***********************************************************

Copyright 1987, 1998  The Open Group

Permission to use, copy, modify, distribute, and sell this software and its
documentation for any purpose is hereby granted without fee, provided that
the above copyright notice appear in all copies and that both that
copyright notice and this permission notice appear in supporting
documentation.

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL THE
OPEN GROUP BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN
AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

Except as contained in this notice, the name of The Open Group shall not be
used in advertising or otherwise to promote the sale, use or other dealings
in this Software without prior written authorization from The Open Group.


Copyright 1987 by Digital Equipment Corporation, Maynard, Massachusetts.

                        All Rights Reserved

Permission to use, copy, modify, and distribute this software and its
documentation for any purpose and without fee is hereby granted,
provided that the above copyright notice appear in all copies and that
both that copyright notice and this permission notice appear in
supporting documentation, and that the name of Digital not be
used in advertising or publicity pertaining to distribution of the
software without specific, written prior permission.

DIGITAL DISCLAIMS ALL WARRANTIES WITH REGARD TO THIS SOFTWARE, INCLUDING
ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS, IN NO EVENT SHALL
DIGITAL BE LIABLE FOR ANY SPECIAL, INDIRECT OR CONSEQUENTIAL DAMAGES OR
ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS,
WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION,
ARISING OUT OF OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS
SOFTWARE.

******************************************************************)

{$IFNDEF FPC}
  This code was created using the Free Pascal Compiler. Please make sure that the code works for other compilers before using it.
{$ENDIF}

{$IFNDEF CPU32}
  {$IFNDEF CPU64}
    {$WARNING 'This code was tested only on a 32 and 64 bit x86_64 cpu, the code might not work properly on different CPU.'}
   {$ENDIF}
{$ENDIF}

unit Xmd;

{$mode fpc}{$PACKRECORDS C}{$MACRO ON}{$CALLING CDECL}

interface
uses ctypes, X, xlib;

(* $Xorg: Xmd.h,v 1.4 2001/02/09 02:03:22 xorgcvs Exp $ *)
(*
 *  Xmd.h: MACHINE DEPENDENT DECLARATIONS.
 *)

(*
 * Special per-machine configuration flags.
*)


{
#if defined(sun) && defined(__SVR4)
# include <sys/isa_defs.h> /* Solaris: defines _LP64 if necessary */
#endif
}

{$IFDEF CPU64}
  {$DEFINE WORD64 := 1} // 64-bit architecture
  {$DEFINE LONG64 := 1}
{$ENDIF}

(*
 * Stuff to handle large architecture machines; the constants were generated
 * on a 32-bit machine and must correspond to the protocol.
 *)

{$IFDEF WORD64}
  {$DEFINE MUSTCOPY := 1}
{$ENDIF}

(*
 * Definition of macro used to set constants for size of network structures;
 * machines with preprocessors that can't handle all of the sz_ symbols
 * can define this macro to be sizeof(x) if and only if their compiler doesn't
 * pad out structures (esp. the xTextElt structure which contains only two
 * one-byte fields).  Network structures should always define sz_symbols.
 *
 * The sz_ prefix is used instead of something more descriptive so that the
 * symbols are no more than 32 characters long (which causes problems for some
 * compilers and preprocessors).
 *
 * The extra indirection in the __STDC__ case is to get macro arguments to
 * expand correctly before the concatenation, rather than afterward.
 *)

(*

#if ((defined(__STDC__) || defined(__cplusplus) || defined(c_plusplus)) && !defined(UNIXCPP)) || defined(ANSICPP)
#define _SIZEOF(x) sz_##x
#define SIZEOF(x) _SIZEOF(x)
#else
#define SIZEOF(x) sz_/**/x
#endif /* if ANSI C compiler else not */

*)

(*
 * Bitfield suffixes for the protocol structure elements, if you
 * need them.  Note that bitfields are not guaranteed to be signed
 * (or even unsigned) according to ANSI C.
 *)

type
{$IFDEF WORD64}
  TINT64  = clong;
  {$IFDEF UNSIGNEDBITFIELDS}
    TINT32 = cuint32;
    TINT16 = cuint16;
  {$ELSE UNSIGNEDBITFIELDS}
    TINT32 = cint32;
    TINT16 = cint16;
  {$ENDIF UNSIGNEDBITFIELDS}
{$ELSE WORD64}
  {$IFDEF LONG64}
     TINT64 = clong;
     TINT32 = cint;
  {$ELSE LONG64}
     TINT32 = clong;
  {$ENDIF LONG64}
  TINT16 = cshort;
{$ENDIF WORD64}

 TINT8 = cschar;

{$IFDEF LONG64}
  TCARD64 = culong;
  TCARD32 = cuint;
{$ELSE LONG64}
  TCARD32 = culong;
{$ENDIF LONG64}
{$IF not defined(WORD64) and not defined(LONG64)}
   TCARD64 = culonglong;
{$ENDIF}

 TCARD16 = cushort;
 TCARD8  = cuchar;

 BITS32  = TCARD32;
 BITS16  = TCARD16;

 TByte   = cuchar;
 TBool   = cuchar;



(* The preprocessor of C does not use the rest of the code...
/*
 * definitions for sign-extending bitfields on 64-bit architectures
 */
#if defined(WORD64) && defined(UNSIGNEDBITFIELDS)
#define cvtINT8toInt(val)   (((val) & 0x00000080) ? ((val) | 0xffffffffffffff00) : (val))
#define cvtINT16toInt(val)  (((val) & 0x00008000) ? ((val) | 0xffffffffffff0000) : (val))
#define cvtINT32toInt(val)  (((val) & 0x80000000) ? ((val) | 0xffffffff00000000) : (val))
#define cvtINT8toShort(val)  cvtINT8toInt(val)
#define cvtINT16toShort(val) cvtINT16toInt(val)
#define cvtINT32toShort(val) cvtINT32toInt(val)
#define cvtINT8toLong(val)  cvtINT8toInt(val)
#define cvtINT16toLong(val) cvtINT16toInt(val)
#define cvtINT32toLong(val) cvtINT32toInt(val)
#else
#define cvtINT8toInt(val) (val)
#define cvtINT16toInt(val) (val)
#define cvtINT32toInt(val) (val)
#define cvtINT8toShort(val) (val)
#define cvtINT16toShort(val) (val)
#define cvtINT32toShort(val) (val)
#define cvtINT8toLong(val) (val)
#define cvtINT16toLong(val) (val)
#define cvtINT32toLong(val) (val)
#endif /* WORD64 and UNSIGNEDBITFIELDS */



#ifdef MUSTCOPY
/*
 * This macro must not cast or else pointers will get aligned and be wrong
 */
#define NEXTPTR(p,t)  (((char * ) p) + SIZEOF(t))
#else /* else not MUSTCOPY, this is used for 32-bit machines */
/*
 * this version should leave result of type (t * ), but that should only be
 * used when not in MUSTCOPY
 */
#define NEXTPTR(p,t) (((t * )(p)) + 1)
#endif /* MUSTCOPY - used machines whose C structs don't line up with proto */

*)

implementation

end.
