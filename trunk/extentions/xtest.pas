(* $Xorg: XTest.h,v 1.5 2001/02/09 02:03:24 xorgcvs Exp $ *)
(*

Copyright 1992, 1998  The Open Group

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

*)
(* $XFree86: xc/include/extensions/XTest.h,v 3.3 2001/12/14 19:53:28 dawes Exp $ *)
unit xtest;

{$mode fpc}{$PACKRECORDS C}{$MACRO ON}{$CALLING CDECL}

interface

uses
   ctypes, x, xlib, xi, xfuncproto, xinput;

const
  libXtst = 'libXtst';

  X_XTestGetVersion    = 0;
  X_XTestCompareCursor = 1;
  X_XTestFakeInput     = 2;
  X_XTestGrabControl   = 3;

  XTestNumberEvents = 0;

  XTestNumberErrors = 0;

  XTestMajorVersion = 2;
  XTestMinorVersion = 2;

  XTestExtensionName = 'XTEST';

function XTestQueryExtension(dpy         : PDisplay;
                             event_basep : pcint;
                             error_basep : pcint;
                             majorp      : pcint;
                             minorp      : pcint
                            ) : cbool;
  external libXtst;

function XTestCompareCursorWithWindow(dpy    : PDisplay;
                                      window : TWindow;
                                      cursor : TCursor
                                     ) : cbool;
  external libXtst;

function XTestCompareCurrentCursorWithWindow(dpy    : PDisplay;
                                             window : TWindow
                                            ) : cbool;
  external libXtst;

function XTestFakeKeyEvent(dpy      : PDisplay;
                           keycode  : cuint;
                           is_press : cbool;
                           delay    : culong
                          ) : cint;
  external libXtst;

function XTestFakeButtonEvent(dpy    : PDisplay;
                              button : cuint;
                              is_press : cbool;
                              delay    : culong
                             ) : cint;
  external libXtst;

function XTestFakeMotionEvent(dpy    : PDisplay;
                              screen : cint;
                              x      : cint;
                              y      : cint;
                              delay  : culong
                             ) : cint;
  external libXtst;

function XTestFakeRelativeMotionEvent(dpy   : PDisplay;
                                      x     : cint;
                                      y     : cint;
                                      delay : culong
                                     ) : cint;
  external libXtst;

function XTestFakeDeviceKeyEvent(dpy      : PDisplay;
                                 dev      : PXDevice;
                                 keycode  : cuint;
                                 is_press : cbool;
                                 axes     : pcint;
                                 n_axes   : cint;
                                 delay    : culong
                                ) : cint;
  external libXtst;

function XTestFakeDeviceButtonEvent(dpy      : PDisplay;
                                    dev      : PXDevice;
                                    button   : cuint;
                                    is_press : cbool;
                                    axes     : pcint;
                                    n_axes   : cint;
                                    delay    : culong
                                   ) : cint;
  external libXtst;

function XTestFakeProximityEvent(dpy      : PDisplay;
                                 dev      : PXDevice;
                                 in_prox  : cbool;
                                 axes     : pcint;
                                 n_axes   : cint;
                                 delay    : culong
                                ) : cint;
  external libXtst;

function XTestFakeDeviceMotionEvent(dpy         : PDisplay;
                                    dev         : PXDevice;
                                    is_relative : cbool;
                                    first_axis  : cint;
                                    axes        : pcint;
                                    n_axes      : cint;
                                    delay       : culong
                                   ) : cint;
  external libXtst;

function XTestGrabControl(dpy        : PDisplay;
                          impervious : cbool
                         ) : cint;
  external libXtst;

procedure XTestSetGContextOfGC(gc  : TGC;
                               gid : TGContext);
  external libXtst;

procedure XTestSetVisualIDOfVisual(visual   : PVisual;
                                   visualid : TVisualID);
  external libXtst;

function XTestDiscard(dpy : PDisplay) : TStatus;
  external libXtst;

implementation

end.

