(* Xfuncproto.h.  Generated from Xfuncproto.h.in by configure.  *)
(* $Xorg: Xfuncproto.h,v 1.4 2001/02/09 02:03:22 xorgcvs Exp $ *)
(*
 *
Copyright 1989, 1991, 1998  The Open Group

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
 *
 *)
(* $XFree86: xc/include/Xfuncproto.h,v 3.4 2001/12/14 19:53:25 dawes Exp $ *)
unit xfuncproto;

{$mode fpc}{$PACKRECORDS C}{$MACRO ON}{$CALLING CDECL}

{$NOTE The origial header never seems to be used with it's content, and some of the defenitions are unable to be translated to pascal, so most of the code is commented }

interface
uses ctypes;

// Definitions to make function prototypes manageable
const
  NeedFunctionPrototypes = 1;
  NeedVarargsPrototypes  = 1;

{$IFDEF NeedFunctionPrototypes}
  NeedNestedPrototypes   = 1;

{
#ifndef _Xconst
#define _Xconst const
#endif /* _Xconst */
}

// Function prototype configuration (see configure for more info)
{$IFNDEF NARROWPROTO}
{$define NARROWPROTO}
{$ENDIF}

const
  FUNCPROTO = 15;

{$IFDEF NARROWPROTO}
  NeedWidePrototypes = 0;
{$ELSE}
  NeedWidePrototypes = 1;
{$ENDIF}

{$ENDIF NeedFunctionPrototypes}

{$IFNDEF _XFUNCPROTOBEGIN}
  {$DEFINE _XFUNCPROTOBEGIN}
  {$DEFINE _XFUNCPROTOEND}
{$ENDIF}


{#if defined(__GNUC__) && (__GNUC__ >= 4)
# define _X_SENTINEL(x) __attribute__ ((__sentinel__(x)))
# define _X_ATTRIBUTE_PRINTF(x,y) __attribute__((__format__(__printf__,x,y)))
#else
# define _X_SENTINEL(x)
# define _X_ATTRIBUTE_PRINTF(x,y)
#endif /* GNUC >= 4 */}

{#if defined(__GNUC__) && (__GNUC__ >= 4)
# define _X_EXPORT      __attribute__((visibility("default")))
# define _X_HIDDEN      __attribute__((visibility("hidden")))
# define _X_INTERNAL    __attribute__((visibility("internal")))
#elif defined(__SUNPRO_C) && (__SUNPRO_C >= 0x550)
# define _X_EXPORT      __global
# define _X_HIDDEN      __hidden
# define _X_INTERNAL    __hidden
#else /* not gcc >= 4 and not Sun Studio >= 8 */
# define _X_EXPORT
# define _X_HIDDEN
# define _X_INTERNAL
#endif /* GNUC >= 4 */

#if defined(__GNUC__) && ((__GNUC__ * 100 + __GNUC_MINOR__) >= 303)
# define _X_LIKELY(x)   __builtin_expect(!!(x), 1)
# define _X_UNLIKELY(x) __builtin_expect(!!(x), 0)
# define _X_INLINE      inline
#elif defined(__SUNPRO_C) && (__SUNPRO_C >= 0x550)
# define _X_LIKELY(x)   (x)
# define _X_UNLIKELY(x) (x)
# define _X_INLINE      inline
#else /* not gcc >= 3.3 and not Sun Studio >= 8 */
# define _X_LIKELY(x)   (x)
# define _X_UNLIKELY(x) (x)
# define _X_INLINE
#endif

#if defined(__GNUC__) && ((__GNUC__ * 100 + __GNUC_MINOR__) >= 301)
# define _X_DEPRECATED  __attribute__((deprecated))
#else /* not gcc >= 3.1 */
# define _X_DEPRECATED
#endif}

implementation

end.

