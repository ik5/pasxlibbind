(*
 * $Xorg: extutil.h,v 1.4 2001/02/09 02:03:24 xorgcvs Exp $
 *
Copyright 1989, 1998  The Open Group

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
 * Author:  Jim Fulton, MIT The Open Group
 *
 *                     Xlib Extension-Writing Utilities
 *
 * This package contains utilities for writing the client API for various
 * protocol extensions.  THESE INTERFACES ARE NOT PART OF THE X STANDARD AND
 * ARE SUBJECT TO CHANGE!
 *)
(* $XFree86: xc/include/extensions/extutil.h,v 1.9 2001/12/14 19:53:28 dawes Exp $ *)
unit extutil;

{$mode fpc}{$PACKRECORDS C}{$MACRO ON}{$CALLING CDECL}

interface

uses ctypes, X, Xlib, xext;

(*
 * We need to keep a list of open displays since the Xlib display list isn't
 * public.  We also have to per-display info in a separate block since it isn't
 * stored directly in the Display structure.
 *)
type
  PXExtDisplayInfo  = ^TXExtDisplayInfo;
  P_XExtDisplayInfo = ^TXExtDisplayInfo;
  T_XExtDisplayInfo = TXExtDisplayInfo;
  TXExtDisplayInfo  = record
                        next    : PXExtDisplayInfo; // keep a linked list
                        display : PDisplay;         // which display this is
                        codes   : PXExtCodes;       // the extension protocol codes
                        data    : TXPointer;        // extra data for extension to use
                      end;

  PXExtensionInfo  = ^TXExtensionInfo;
  P_XExtensionInfo = ^TXExtensionInfo;
  T_XExtensionInfo = TXExtensionInfo;
  TXExtensionInfo  = record
                       Head      : PXExtDisplayInfo; // start of list
                       cur       : PXExtDisplayInfo; // most recently used
                       ndisplays : cint;             // number of displays
                     end;

  TGC_Callbacks         = function (display : PDisplay; // display
                                    gc      : TGC;      // gc
                                    codes   : PExtCodes // codes
                                   ) : pcint;
  TFont_Callbacks       = function (display : PDisplay;     // display
                                    fs      : PXFontStruct; // fs
                                    codes   : PExtCodes     // codes
                                   ) : pcint;
  TDisplay_Callback     = function (display : PDisplay; // display
                                    codes   : PExtCodes // codes
                                   ) : pcint;
  TEventBool_Callback   = function (display : PDisplay; // display
                                    re,                 // re
                                    event   : PXEvent   // event
                                   ) : pcbool;
  TEventStatus_Callback = function (display : PDisplay; // display
                                    re,                 // re
                                    event   : PXEvent   // event
                                   ) : pStatus;

  TError_Callback       = function (display : PDisplay; // display
                                    err     :

  PXExtensionHooks  = ^TXExtensionHooks;
  P_XExtensionHooks = ^TXExtensionHooks;
  T_XExtensionHooks = TXExtensionHooks;
  TXExtensionHooks  = record
                         create_gc,
                         copy_gc,
                         flush_pc,
                         free_gc       : TGC_Callbacks;
                         create_font,
                         free_font     : TFont_Callbacks;
                         close_display : TDisplay_Callback;
                         wire_to_event : TEventBool_Callback;
                         event_to_wire : TEventStatus_Callback;
                         error
                      end;


typedef struct _XExtensionHooks {
    int (*error)(
	      Display*			/* display */,
              xError*			/* err */,
              XExtCodes*		/* codes */,
              int*			/* ret_code */
);
    char *(*error_string)(
	        Display*		/* display */,
                int			/* code */,
                XExtCodes*		/* codes */,
                char*			/* buffer */,
                int			/* nbytes */
);
} XExtensionHooks;

(*
extern XExtensionInfo *XextCreateExtension(
    void
);
extern void XextDestroyExtension(
    XExtensionInfo*	/* info */
);
extern XExtDisplayInfo *XextAddDisplay(
    XExtensionInfo*	/* extinfo */,
    Display*		/* dpy */,
    char*		/* ext_name */,
    XExtensionHooks*	/* hooks */,
    int			/* nevents */,
    XPointer		/* data */
);
extern int XextRemoveDisplay(
    XExtensionInfo*	/* extinfo */,
    Display*		/* dpy */
);
extern XExtDisplayInfo *XextFindDisplay(
    XExtensionInfo*	/* extinfo */,
    Display*		/* dpy */
);

#define XextHasExtension(i) ((i) && ((i)->codes))
#define XextCheckExtension(dpy,i,name,val) \
  if (!XextHasExtension(i)) { XMissingExtension (dpy, name); return val; }
#define XextSimpleCheckExtension(dpy,i,name) \
  if (!XextHasExtension(i)) { XMissingExtension (dpy, name); return; }


/*
 * helper macros to generate code that is common to all extensions; caller
 * should prefix it with static if extension source is in one file; this
 * could be a utility function, but have to stack 6 unused arguments for
 * something that is called many, many times would be bad.
 */
#define XEXT_GENERATE_FIND_DISPLAY(proc,extinfo,extname,hooks,nev,data) \
XExtDisplayInfo *proc (Display *dpy) \
{ \
    XExtDisplayInfo *dpyinfo; \
    if (!extinfo) { if (!(extinfo = XextCreateExtension())) return NULL; } \
    if (!(dpyinfo = XextFindDisplay (extinfo, dpy))) \
      dpyinfo = XextAddDisplay (extinfo,dpy,extname,hooks,nev,data); \
    return dpyinfo; \
}

#define XEXT_FIND_DISPLAY_PROTO(proc) \
	XExtDisplayInfo *proc(Display *dpy)

#define XEXT_GENERATE_CLOSE_DISPLAY(proc,extinfo) \
int proc (Display *dpy, XExtCodes *codes) \
{ \
    return XextRemoveDisplay (extinfo, dpy); \
}

#define XEXT_CLOSE_DISPLAY_PROTO(proc) \
	int proc(Display *dpy, XExtCodes *codes)

#define XEXT_GENERATE_ERROR_STRING(proc,extname,nerr,errl) \
char *proc (Display *dpy, int code, XExtCodes *codes, char *buf, int n) \
{  \
    code -= codes->first_error;  \
    if (code >= 0 && code < nerr) { \
	char tmp[256]; \
	sprintf (tmp, "%s.%d", extname, code); \
	XGetErrorDatabaseText (dpy, "XProtoError", tmp, errl[code], buf, n); \
	return buf; \
    } \
    return (char * )0; \
}

#define XEXT_ERROR_STRING_PROTO(proc) \
	char *proc(Display *dpy, int code, XExtCodes *codes, char *buf, int n)
*)

implementation

end.

