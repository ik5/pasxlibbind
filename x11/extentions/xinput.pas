(* $Xorg: XInput.h,v 1.4 2001/02/09 02:03:23 xorgcvs Exp $ *)

(************************************************************

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

Copyright 1989 by Hewlett-Packard Company, Palo Alto, California.

			All Rights Reserved

Permission to use, copy, modify, and distribute this software and its
documentation for any purpose and without fee is hereby granted,
provided that the above copyright notice appear in all copies and that
both that copyright notice and this permission notice appear in
supporting documentation, and that the name of Hewlett-Packard not be
used in advertising or publicity pertaining to distribution of the
software without specific, written prior permission.

HEWLETT-PACKARD DISCLAIMS ALL WARRANTIES WITH REGARD TO THIS SOFTWARE, INCLUDING
ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS, IN NO EVENT SHALL
HEWLETT-PACKARD BE LIABLE FOR ANY SPECIAL, INDIRECT OR CONSEQUENTIAL DAMAGES OR
ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS,
WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION,
ARISING OUT OF OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS
SOFTWARE.

********************************************************)
(* $XFree86: xc/include/extensions/XInput.h,v 1.3 2001/12/14 19:53:28 dawes Exp $ *)

{$PACKRECORDS C}{$MODE FPC}{$CALLING CDECL}{$MACRO ON}
{$IFNDEF VER2}
  {$DEFINE Fix_XI_deceleration}
{$ENDIF}
{$IFDEF VER2_2}
  {$DEFINE Fix_XI_deceleration}
{$ENDIF}
{$IFDEF VER2_0}
  {$DEFINE Fix_XI_deceleration}
{$ENDIF}
unit xinput;

interface

uses x, xlib, xi, ctypes;

const
  libXi = 'libXi';

{$IFDEF Fix_XI_deceleration}
type
  PXEventClass  = ^XEventClass;
  PPXEventClass = ^PXEventClass;

const
  _devicePresence = 0;
{$ENDIF}

// Definitions used by the library and client
const
  _deviceKeyPress      = 0;
  _deviceKeyRelease    = 1;

  _deviceButtonPress   = 0;
  _deviceButtonRelease = 1;

  _deviceMotionNotify  = 0;

  _deviceFocusIn       = 0;
  _deviceFocusOut      = 1;

  _proximityIn         = 0;
  _proximityOut        = 1;

  _deviceStateNotify   = 0;
  _deviceMappingNotify = 1;
  _changeDeviceNotify  = 2;

(***************************************************************
 *
 * DeviceKey events.  These events are sent by input devices that
 * support input class Keys.
 * The location of the X pointer is reported in the coordinate
 * fields of the x,y and x_root,y_root fields.
 *
 *)
type
  PXDeviceKeyEvent = ^TXDeviceKeyEvent;
  TXDeviceKeyEvent = record
                       _type        : cint;     // of event
                       serial       : culong;   // # of last request processed
                       send_event   : cbool;    // true if from SendEvent request
                       display      : PDisplay; // Display the event was read from
                       window       : TWindow;  // "event" window reported relative to
                       deviceid     : TXID;
                       root,                    // root window event occured on
                       subwindow    : TWindow;  // child window
                       time         : TTime;    // milliseconds
                       x, y,                    // x, y coordinates in event window
                       x_root,                  // coordinates relative to root
                       y_root       : cint;     // coordinates relative to root
                       state,                   // key or button mask
                       keycode      : cuint;    // detail
                       same_screen  : cbool;    // same screen flag
                       device_state : cuint;    // device key or button mask
                       axes_count,
                       first_axis   : cuchar;
                       axis_data    : array[0..5] of cint;
                     end;


  PXDeviceKeyPressedEvent  = ^TXDeviceKeyPressedEvent;
  TXDeviceKeyPressedEvent  = TXDeviceKeyEvent;
  PXDeviceKeyReleasedEvent = ^TXDeviceKeyReleasedEvent;
  TXDeviceKeyReleasedEvent = TXDeviceKeyEvent;

(*******************************************************************
 *
 * DeviceButton events.  These events are sent by extension devices
 * that support input class Buttons.
 *
 *)
type
  PXDeviceButtonEvent = ^TXDeviceButtonEvent;
  TXDeviceButtonEvent = record
                         _type        : cint;      // of event
                         serial       : culong;    // # of last request processed by server
                         send_event   : cbool;     // true if from a SendEvent request
                         display      : PDisplay;  // Display the event was read from
                         window       : TWindow;   // "event" window reported relative to
                         deviceid     : TXID;
                         root,                     // root window that the event occured on
                         subwindow    : TWindow;   // child window
                         time         : TTime;     // milliseconds
                         x, y,                     // x, y coordinates in event window
                         x_root,                   // coordinates relative to root
                         y_root       : cint;      // coordinates relative to root
                         state,                    // key or button mask
                         button       : cuint;     // detail
                         same_screen  : cbool;     // same screen flag
                         device_state : cuint;     // device key or button mask
                         axes_count,
                         first_axis   : cuchar;
                         axis_data    : array[0..5] of cint;
                        end;

  PXDeviceButtonPressedEvent  = ^TXDeviceButtonPressedEvent;
  TXDeviceButtonPressedEvent  = TXDeviceButtonEvent;
  PXDeviceButtonReleasedEvent = ^TXDeviceButtonReleasedEvent;
  TXDeviceButtonReleasedEvent = TXDeviceButtonEvent;

(*******************************************************************
 *
 * DeviceMotionNotify event.  These events are sent by extension devices
 * that support input class Valuators.
 *
 *)
type
  PXDeviceMotionEvent = ^TXDeviceMotionEvent;
  TXDeviceMotionEvent = record
                         _type        : cint;      // of event
                         serial       : culong;    // # of last request processed by server
                         send_event   : cbool;     // true if from a SendEvent request
                         display      : PDisplay;  // Display the event was read from
                         window       : TWindow;   // "event" window reported relative to
                         deviceid     : TXID;
                         root,                     // root window that the event occured on
                         subwindow    : TWindow;   // child window
                         time         : TTime;     // milliseconds
                         x, y,                     // x, y coordinates in event window
                         x_root,                   // coordinates relative to root
                         y_root       : cint;      // coordinates relative to root
                         state        : cint;      // key or button mask
                         is_hint,                  // detail
                         same_screen  : cbool;     // same screen flag
                         device_state : cuint;     // device key or button mask
                         axes_count,
                         first_axis   : cuchar;
                         axis_data    : array[0..5] of cint;
                        end;

(*******************************************************************
 *
 * DeviceFocusChange events.  These events are sent when the focus
 * of an extension device that can be focused is changed.
 *
 *)
type
  PXDeviceFocusChangeEvent = ^TXDeviceFocusChangeEvent;
  TXDeviceFocusChangeEvent = record
                              _type      : cint;     // of event
                              serial     : culong;   // # of last request processed by server
                              send_event : cbool;    // true if from a SendEvent request
                              display    : PDisplay; // Display the event was read from
                              window     : TWindow;  // "event" window reported relative to
                              deviceid   : TXID;
                              mode       : cint;     // NotifyNormal, NotifyGrab, NotifyUngrab
                              detail     : cint;     // NotifyAncestor, NotifyVirtual, NotifyInferior,
                                                   	 // NotifyNonLinear,NotifyNonLinearVirtual, NotifyPointer,
                            	                       // NotifyPointerRoot, NotifyDetailNone
                              time      : TTime;
                             end;

  PXDeviceFocusInEvent  = ^TXDeviceFocusInEvent;
  TXDeviceFocusInEvent  = TXDeviceFocusChangeEvent;
  PXDeviceFocusOutEvent = ^TXDeviceFocusOutEvent;
  TXDeviceFocusOutEvent = TXDeviceFocusChangeEvent;


(*******************************************************************
 *
 * ProximityNotify events.  These events are sent by those absolute
 * positioning devices that are capable of generating proximity information.
 *
 *)
type
  PXProximityNotifyEvent = ^TXProximityNotifyEvent;
  TXProximityNotifyEvent = record
                            _type        : cint;     // ProximityIn or ProximityOut
                            serial       : culong;   // # of last request processed by server
                            send_event   : cbool;    // true if this came from a SendEvent request
                            display      : PDisplay; // Display the event was read from
                            window       : TWindow;
                            deviceid     : TXID;
                            root,
                            subwindow    : TWindow;
                            time         : TTime;
                            x, y,
                            x_root,
                            y_root       : cint;
                            state        : cuint;
                            same_screen  : cbool;
                            device_state : cuint;    // device key or button mask
                            axes_count,
                            first_axis   : cuchar;
                            axis_data    : array[0..5] of cint;
                           end;

  PXProximityInEvent  = ^TXProximityInEvent;
  TXProximityInEvent  = TXProximityNotifyEvent;
  PXProximityOutEvent = ^TXProximityOutEvent;
  TXProximityOutEvent = TXProximityNotifyEvent;

(*******************************************************************
 *
 * DeviceStateNotify events are generated on EnterWindow and FocusIn
 * for those clients who have selected DeviceState.
 *
 *)
type
  PXInputClass = ^TXInputClass;
  TXInputClass = record
                   c_class : cuchar;
                   length  : cuchar;
                 end;

  PXDeviceStateNotifyEvent = ^TXDeviceStateNotifyEvent;
  TXDeviceStateNotifyEvent = record
                              _type       : cint;
                              serial      : culong;    // # of last request processed by server
                              send_event  : cbool;     // true if this came from a SendEvent request
                              display     : PDisplay;  // Display the event was read from
                              window      : TWindow;
                              deviceid    : TXID;
                              time        : TTime;
                              num_classes : cint;
                              data        : array[0..63] of cchar;
                             end;

  PXValuatorStatus = ^TXValuatorStatus;
  TXValuatorStatus = record
                       c_class,
                       length,
                       num_valuators,
                       mode            : cuchar;
                       valuators       : array[0..5] of cint;
                     end;

  PXKeyStatus = ^TXKeyStatus;
  TXKeyStatus = record
                  c_class,
                  length   : cuchar;
                  num_keys : cshort;
                  keys     : array[0..31] of cchar;
                end;

(*******************************************************************
 *
 * DeviceMappingNotify event.  This event is sent when the key mapping,
 * modifier mapping, or button mapping of an extension device is changed.
 *
 *)
type
  PXDeviceMappingEvent = ^TXDeviceMappingEvent;
  TXDeviceMappingEvent = record
                           _type         : cint;
                           serial        : culong;   // # of last request processed by server
                           send_event    : cbool;    // true if this came from a SendEvent request
                           display       : PDisplay; // Display the event was read from
                           window        : TWindow;  // unused
                           deviceid      : TXID;
                           time          : TTime;
                           request       : cint;     // one of MappingModifier, MappingKeyboard, MappingPointer
                           first_keycode : cint;     // first keycode
                           count         : cint;     // defines range of change w. first_keycode
                         end;

(*******************************************************************
 *
 * ChangeDeviceNotify event.  This event is sent when an
 * XChangeKeyboard or XChangePointer request is made.
 *
 *)
type
  PXChangeDeviceNotifyEvent = ^TXChangeDeviceNotifyEvent;
  TXChangeDeviceNotifyEvent = record
                                _type      : cint;
                                serial     : culong;    // # of last request processed by server
                                send_event : cbool;     //true if this came from a SendEvent request
                                display    : PDisplay;  // Display the event was read from
                                window     : TWindow;   // unused
                                deviceid   : TXID;
                                time       : TTime;
                                requst     : cint;      // NewPointer or NewKeyboard
                              end;

(*******************************************************************
 *
 * DevicePresenceNotify event.  This event is sent when the list of
 * input devices changes, in which case devchange will be false, and
 * no information about the change will be contained in the event;
 * the client should use XListInputDevices() to learn what has changed.
 *
 * If devchange is true, an attribute that the server believes is
 * important has changed on a device, and the client should use
 * XGetDeviceControl to examine the device.  If control is non-zero,
 * then that control has changed meaningfully.
 *)
type
  PXDevicePresenceNotifyEvent = ^TXDevicePresenceNotifyEvent;
  TXDevicePresenceNotifyEvent = record
                                  _type      : cint;
                                  serial     : culong;    // # of last request processed by server
                                  send_event : cbool;     //true if this came from a SendEvent request
                                  display    : PDisplay;  // Display the event was read from
                                  window     : TWindow;   // unused
                                  time       : TTime;
                                  devchange  : cbool;
                                  deviceid   : TXID;
                                  control    : TXID;
                                end;

(*******************************************************************
 *
 * Control structures for input devices that support input class
 * Feedback.  These are used by the XGetFeedbackControl and
 * XChangeFeedbackControl functions.
 *
 *)
type
  PXFeedbackState = ^TXFeedbackState;
  TXFeedbackState = record
                      c_class : TXID;
                      length  : cint;
                      id      : TXID;
                    end;

  PXKbdFeedbackState = ^TXKbdFeedbackState;
  TXKbdFeedbackState = record
                         c_class            : TXID;
                         length             : cint;
                         id                 : TXID;
                         click,
                         percent,
                         duration,
                         led_mask,
                         global_auto_repeat : cint;
                         auto_repeats       : array[0..31] of cchar;
                       end;

  PXPtrFeedbackState = ^TXPtrFeedbackState;
  TXPtrFeedbackState = record
                         c_class     : TXID;
                         length      : cint;
                         id          : TXID;
                         accelNum,
                         accelDenom,
                         threshold   : cint;
                       end;


  PXIntegerFeedbackState = ^TXIntegerFeedbackState;
  TXIntegerFeedbackState = record
                             c_class     : TXID;
                             length      : cint;
                             id          : TXID;
                             resolution,
                             minVal,
                             maxVal      : cint;
                           end;

  PXStringFeedbackState = ^TXStringFeedbackState;
  TXStringFeedbackState = record
                            c_class            : TXID;
                            length             : cint;
                            id                 : TXID;
                            max_symbols,
                            num_syms_supported : cint;
                            syms_supported     : PKeySym;
                          end;

  PXBellFeedbackState = ^TXBellFeedbackState;
  TXBellFeedbackState = record
                          c_class  : TXID;
                          length   : cint;
                          id       : TXID;
                          percent,
                          pitch,
                          duration : cint;
                        end;

  PXLedFeedbackState = ^TXLedFeedbackState;
  TXLedFeedbackState = record
                         c_class     : TXID;
                         length      : cint;
                         id          : TXID;
                         led_values,
                         led_mask    : cint;
                       end;

  PXFeedbackControl = ^TXFeedbackControl;
  TXFeedbackControl = record
                        c_class : TXID;
                        length  : cint;
                        id      : TXID;
                      end;

  PXPtrFeedbackControl = ^TXPtrFeedbackControl;
  TXPtrFeedbackControl = record
                           c_class     : TXID;
                           length      : cint;
                           id          : TXID;
                           accelNum,
                           accelDenom,
                           threshold   : cint;
                         end;

  PXKbdFeedbackControl = ^TXKbdFeedbackControl;
  TXKbdFeedbackControl = record
                           c_class          : TXID;
                           length           : cint;
                           id               : TXID;
                           click,
                           percent,
                           pitch,
                           duration,
                           led_mask,
                           led_value,
                           key,
                           auto_repeat_mode : cint;
                         end;

  PXStringFeedbackControl = ^TXStringFeedbackControl;
  TXStringFeedbackControl = record
                              c_class          : TXID;
                              length           : cint;
                              id               : TXID;
                              num_keysyms      : cint;
                              syms_to_display : PKeySym;
                            end;

  PXIntegerFeedbackControl = ^TXIntegerFeedbackControl;
  TXIntegerFeedbackControl = record
                              c_class        : TXID;
                              length         : cint;
                              id             : TXID;
                              int_to_display : cint;
                             end;

  PXBellFeedbackControl = ^TXBellFeedbackControl;
  TXBellFeedbackControl = record
                            c_class   : TXID;
                            length    : cint;
                            id        : TXID;
                            percent,
                            pitch,
                            duration : cint;
                          end;

  PXLedFeedbackControl = ^TXLedFeedbackControl;
  TXLedFeedbackControl = record
                           c_class    : TXID;
                           length     : cint;
                           id         : TXID;
                           led_mask,
                           led_values : cint;
                         end;

(*******************************************************************
 *
 * Device control structures.
 *
 *)
type
  PXDeviceControl = ^TXDeviceControl;
  TXDeviceControl = record
                      control : TXID;
                      length  : cint;
                    end;

  PXDeviceResolutionControl = ^TXDeviceResolutionControl;
  TXDeviceResolutionControl = record
                                control         : TXID;
                                length          : cint;
                                first_valuator,
                                num_valuators   : cint;
                                resolutions     : pcint;
                              end;

  PXDeviceResolutionState = ^TXDeviceResolutionState;
  TXDeviceResolutionState = record
                              control         : TXID;
                              length          : cint;
                              num_valuators   : cint;
                              resolutions     : pcint;
                              min_resolutions : pcint;
                              max_resolutions : pcint;
                            end;

  PXDeviceAbsCalibControl = ^TXDeviceAbsCalibControl;
  PXDeviceAbsCalibState   = ^TXDeviceAbsCalibState;
  TXDeviceAbsCalibControl = record
                              control          : TXID;
                              length           : cint;
                              min_x,
                              max_x,
                              min_y,
                              max_y,
                              flip_x,
                              flip_y,
                              rotation,
                              button_threshold : cint;
                            end;

  TXDeviceAbsCalibState   = TXDeviceAbsCalibControl;

  PXDeviceAbsAreaControl = ^TXDeviceAbsAreaControl;
  PXDeviceAbsAreaState   = ^TXDeviceAbsAreaState;
  TXDeviceAbsAreaControl = record
                             control   : TXID;
                             length    : cint;
                             offset_x,
                             offset_y,
                             width,
                             height,
                             screen    : cint;
                             following : TXID;
                           end;
  TXDeviceAbsAreaState = TXDeviceAbsAreaControl;

  PXDeviceCoreControl = ^TXDeviceCoreControl;
  TXDeviceCoreControl = record
                          control : TXID;
                          length  : cint;
                          status  : cint;
                        end;

  PXDeviceEnableControl = ^TXDeviceEnableControl;
  PXDeviceEnableState   = ^TXDeviceEnableState;
  TXDeviceEnableControl = record
                            control : TXID;
                            length  : cint;
                            enable  : cint;
                          end;
  TXDeviceEnableState   = TXDeviceEnableControl;


(*******************************************************************
 *
 * An array of XDeviceList structures is returned by the
 * XListInputDevices function.  Each entry contains information
 * about one input device.  Among that information is an array of
 * pointers to structures that describe the characteristics of
 * the input device.
 *
 *)
type
  PXAnyClassInfo  = ^TXAnyClassInfo;
  TXAnyClassPtr   = PXAnyClassInfo;
  PXAnyClassPtr   = PXAnyClassInfo;
  P_XAnyClassinfo = PXAnyClassInfo;
  TXAnyClassInfo  = record
                      c_class : TXID;
                      length  : cint;
                    end;

  T_XAnyClassinfo = TXAnyClassInfo;

  PXDeviceInfo    = ^TXDeviceInfo;
  TXDeviceInfoPtr = PXDeviceInfo;
  PXDeviceInfoPtr = PXDeviceInfo;
  P_XDeviceInfo   = PXDeviceInfo;
  TXDeviceInfo    = record
                      id             : TXID;
                      _type          : TAtom;
                      name           : PChar;
                      num_classes    : cint;
                      use            : cint;
                      inputclassinfo : PXAnyClassPtr;
                    end;

  T_XDeviceInfo   = TXDeviceInfo;

  P_XKeyInfo   = ^TXKeyInfo;
  PXKeyInfo    = ^TXKeyInfo;
  TXKeyInfoPtr = P_XKeyInfo;
  PXKeyInfoPtr = P_XKeyInfo;
  TXKeyInfo    = record
                   c_class      : TXID;
                   length       : cint;
                   min_keycode,
                   max_keycode,
                   num_keys     : cushort;
                 end;

  T_XKeyInfo   = TXKeyInfo;

  PXButtonInfo    = ^TXButtonInfo;
  P_XButtonInfo   = ^T_XButtonInfo;
  TXButtonInfoPtr = P_XButtonInfo;
  PXButtonInfoPtr = P_XButtonInfo;
  TXButtonInfo    = record
                      c_class     : TXID;
                      length      : cint;
                      num_buttons : cint;
                    end;

  T_XButtonInfo   = TXButtonInfo;

  PXAxisInfo    = ^TXAxisInfo;
  P_XAxisInfo   = ^T_XAxisInfo;
  TXAxisInfoPtr = P_XAxisInfo;
  PXAxisInfoPtr = P_XAxisInfo;
  TXAxisInfo    = record
                    resolution,
                    min_value,
                    max_value   : cint;
                  end;

  T_XAxisInfo   = TXAxisInfo;

  PXValuatorInfo    = ^TXValuatorInfo;
  P_XValuatorInfo   = ^T_XValuatorInfo;
  PXValuatorInfoPtr = P_XValuatorInfo;
  TXValuatorInfoPtr = P_XValuatorInfo;
  TXValuatorInfo    = record
                        c_class       : TXID;
                        length        : cint;
                        num_axes,
                        mode,
                        motion_buffer : culong;
                      end;

  T_XValuatorInfo   = TXValuatorInfo;


(*******************************************************************
 *
 * An XDevice structure is returned by the XOpenDevice function.
 * It contains an array of pointers to XInputClassInfo structures.
 * Each contains information about a class of input supported by the
 * device, including a pointer to an array of data for each type of event
 * the device reports.
 *
 *)
type
  PXInputClassInfo = ^TXInputClassInfo;
  TXInputClassInfo = record
                       input_class     : cuchar;
                       event_type_base : cuchar;
                     end;

  PXDevice = ^TXDevice;
  TXDevice = record
               device_id   : TXID;
               num_classes : cint;
               classes     : PXInputClassInfo;
             end;

(*******************************************************************
 *
 * The following structure is used to return information for the
 * XGetSelectedExtensionEvents function.
 *
 *)
type
  PXEventList = ^TXEventList;
  TXEventList = record
                  event_type : XEventClass;
                  device     : TXID;
                end;

(*******************************************************************
 *
 * The following structure is used to return motion history data from
 * an input device that supports the input class Valuators.
 * This information is returned by the XGetDeviceMotionEvents function.
 *
 *)
type
  PXDeviceTimeCoord = ^TXDeviceTimeCoord;
  TXDeviceTimeCoord = record
                        time : TTime;
                        data : pcint;
                      end;

(*******************************************************************
 *
 * Device state structure.
 * This is returned by the XQueryDeviceState request.
 *
 *)
type
  PXDeviceState = ^TXDeviceState;
  TXDeviceState = record
                    device_id   : TXID;
                    num_classes : cint;
                    data        : PXInputClass;
                  end;

(*******************************************************************
 *
 * Note that the mode field is a bitfield that reports the Proximity
 * status of the device as well as the mode.  The mode field should
 * be OR'd with the mask DeviceMode and compared with the values
 * Absolute and Relative to determine the mode, and should be OR'd
 * with the mask ProximityState and compared with the values InProximity
 * and OutOfProximity to determine the proximity state.
 *
 *)
type
  PXValuatorState = ^TXValuatorState;
  TXValuatorState = record
                      c_class       : cuchar;
                      length        : cuchar;
                      num_valuators : cuchar;
                      mode          : cuchar;
                      valuators     : pcint;
                    end;

  PXKeyState = ^TXKeyState;
  TXKeyState = record
                 c_class  : cuchar;
                 length   : cuchar;
                 num_keys : cshort;
                 keys     : array[0..31] of cchar;
               end;

  PXButtonState = ^TXButtonState;
  TXButtonState = record
                    c_class     : cuchar;
                    length      : cuchar;
                    num_buttons : cshort;
                    buttons     : array[0..31] of cchar;
                  end;

(*******************************************************************
 *
 * Function definitions.
 *
 *)

  procedure FindTypeAndClass(d : PXDevice; var type_ : cuchar; var _class : TXID; classid, offset : cuchar);
  procedure DeviceKeyPress(d : PXDevice; var type_ : cuchar; var _class : TXID);
  procedure DeviceKeyRelease(d : PXDevice; var type_ : cuchar; var _class : TXID);
  procedure DeviceButtonPress(d : PXDevice; var type_ : cuchar; var _class : TXID);
  procedure DeviceButtonRelease(d : PXDevice; var type_ : cuchar; var _class : TXID);
  procedure DeviceMotionNotify(d : PXDevice; var type_ : cuchar; var _class : TXID);
  procedure DeviceFocusIn(d : PXDevice; var type_ : cuchar; var _class : TXID);
  procedure DeviceFocusOut(d : PXDevice; var type_ : cuchar; var _class : TXID);
  procedure ProximityIn(d : PXDevice; var type_ : cuchar; var _class : TXID);
  procedure ProximityOut(d : PXDevice; var type_ : cuchar; var _class : TXID);
  procedure DeviceStateNotify(d : PXDevice; var type_ : cuchar; var _class : TXID);
  procedure DeviceMappingNotify(d : PXDevice; var type_ : cuchar; var _class : TXID);
  procedure ChangeDeviceNotify(d : PXDevice; var type_ : cuchar; var _class : TXID);
  procedure DevicePointerMotionHint(d : PXDevice; type_ : cuchar; var _class : TXID);
  procedure DeviceButton1Motion(d : PXDevice; type_ : cuchar; var _class : TXID);
  procedure DeviceButton2Motion(d : PXDevice; type_ : cuchar; var _class : TXID);
  procedure DeviceButton3Motion(d : PXDevice; type_ : cuchar; var _class : TXID);
  procedure DeviceButton4Motion(d : PXDevice; type_ : cuchar; var _class : TXID);
  procedure DeviceButton5Motion(d : PXDevice; type_ : cuchar; var _class : TXID);
  procedure DeviceButtonMotion(d : PXDevice; type_ : cuchar; var _class : TXID);
  procedure DeviceOwnerGrabButton(d : PXDevice; type_ : cuchar; var _class : TXID);
  procedure DeviceButtonPressGrab(d : PXDevice; type_ : cuchar; var _class : TXID);
  procedure NoExtensionEvent(d : PXDevice; type_ : cuchar; var _class : TXID);

function _XiGetDevicePresenceNotifyEvent(dpy : PDisplay) : cint;
  external libXi name '_XiGetDevicePresenceNotifyEvent';

procedure DevicePresence(dpy : PDisplay; var _type : cint; var _class : cint);

procedure BadDevice(dpy : PDisplay; error : pcint);
  external libXi name '_xibaddevice';

procedure BadClass(dpy : PDisplay; error : pcint);
  external libXi name '_xibadclass';

procedure BadEvent(dpy : PDisplay; error : pcint);
  external libXi name '_xibadevent';

procedure BadMode(dpy : PDisplay; error : pcint);
  external libXi name '_xibadmode';

procedure DeviceBusy(dpy : PDisplay; error : pcint);
  external libXi name '_xidevicebusy';

function XChangeKeyboardDevice (dpy : PDisplay; device : PXDevice             )  : cint;
  external libXi;

function XChangePointerDevice (dpy : PDisplay; device : PXDevice;
                               xaxis, yaxis : cint                            ) : cint;
  external libXi;

function XGrabDevice (dpy : PDisplay; device : PXDevice;
                      grab_window        : TWindow;
                      ownerEvents        : cbool;
                      event_count        : cint;
                      event_list         : PXEventClass;
                      this_device_mode   : cint;
                      other_devices_mode : cint;
                      ATime              : TTime                              )  : cint;
  external libXi;

function XUngrabDevice(dpy : PDisplay; device : PXDevice;
                       ATime : TTime                                          ) : cint;
  external libXi;

function XGrabDeviceKey(dpy : PDisplay; device : PXDevice;
                        key                : cuint;
                        modifiers          : cuint;
                        modifier_device    : PXDevice;
                        grab_window        : TWindow;
                        owner_events       : cbool;
                        event_count        : cuint;
                        event_list         : PXEventClass;
                        this_device_mode   : cint;
                        other_devices_mode : cint                             ) : cint;
  external libXi;

function XUngrabDeviceKey(dpy : PDisplay; device : PXDevice;
                          key          : cuint;
                          modifiers    : cuint;
                          modifier_dev : PXDevice;
                          grab_window  : TWindow                              ) : cint;
  external libXi;

function XGrabDeviceButton(dpy : PDisplay; device : PXDevice;
                           button             : cuint;
                           modifiers          : cuint;
                           modifier_device    : PXDevice;
                           grab_window        : TWindow;
                           owner_events       : cbool;
                           event_count        : cuint;
                           event_list         : PXEventClass;
                           this_device_mode   : cint;
                           other_devices_mode : cint                          ) : cint;
  external libXi;

function XUngrabDeviceButton(dpy : PDisplay; device : PXDevice;
                             button       : cuint;
                             modifiers    : cuint;
                             modifier_dev : PXDevice;
                             grab_window  : TWindow                           ) : cint;
  external libXi;

function XAllowDeviceEvents(dpy : PDisplay; device : PXDevice;
                            event_mode : cint;
                            ATime      : TTime                                ) : cint;
  external libXi;

function XGetDeviceFocus(dpy : PDisplay; device : PXDevice;
                         focus     : PWindow;
                         revert_to : pcint;
                         ATime     : PTime                                    ) : cint;
  external libXi;

function XSetDeviceFocus(dpy : PDisplay; device : PXDevice;
                         focus     : TWindow;
                         revert_to : cint;
                         ATime     : TTime                                    ) : cint;
  external libXi;

function XGetFeedbackControl(dpy : PDisplay; device : PXDevice;
                             num_feedbacks : pcint                            ) : PXFeedbackState;
  external libXi;

procedure XFreeFeedbackList(list : PXFeedbackState);
  external libXi;

function XChangeFeedbackControl(dpy : PDisplay; device : PXDevice;
                                mask : culong;
                                feed : PXFeedbackControl                      ) : cint;
  external libXi;

function XDeviceBell(dpy : PDisplay; device : PXDevice;
                     feedbackclass : TXID;
                     feedbackid    : TXID;
                     percent       : cint                                     ) : cint;
  external libXi;

function XGetDeviceKeyMapping(dpy : PDisplay; device : PXDevice;
                              first         : {$IFDEF NeedWidePrototypes}
                                              cuint
                                              {$ELSE}
                                              TKeyCode
                                              {$ENDIF};
                              keycount      : cint;
                              syms_per_code : pcint                           ) : PKeySym;
  external libXi;

function XChangeDeviceKeyMapping(dpy : PDisplay; device : PXDevice;
                                 first         : cint;
                                 syms_per_code : cint;
                                 keysyms       : PKeySym;
                                 count         : cint                         ) : cint;
  external libXi;

function XGetDeviceModifierMapping(dpy : PDisplay; device : PXDevice          ) : PXModifierKeymap;
  external libXi;

function XSetDeviceModifierMapping(dpy : PDisplay; device : PXDevice;
                                   modmap : PXModifierKeymap                  ) : cint;
  external libXi;

function XSetDeviceButtonMapping(dpy : PDisplay; device : PXDevice;
                                 map  : pcchar;
                                 nmap : cint                                  ) : cint;
  external libXi;

function XGetDeviceButtonMapping(dpy : PDisplay; device : PXDevice;
                                 map  : pcchar;
                                 nmap : cuint                                 ) : cint;
  external libXi;

function XQueryDeviceState(dpy : PDisplay; device : PXDevice                  ) : PXDeviceState;
  external libXi;

procedure XFreeDeviceState(list : PXDeviceState);
  external libXi;

function XGetExtensionVersion(dpy : PDisplay; name : PChar                    ) : PXExtensionVersion;
  external libXi;

function XListInputDevices(dpy : PDisplay; ndevices : pcint                   ) : PXDeviceInfo;
  external libXi;

procedure XFreeDeviceList(list : PXDeviceInfo);
  external libXi;

function XOpenDevice(dpy : PDisplay; id : TXID                                ) : PXDevice;
  external libXi;

function XCloseDevice(dpy : PDisplay; device : PXDevice                       ) : cint;
  external libXi;

function XSetDeviceMode(dpy : PDisplay; device : PXDevice;
                        mode : cint                                           ) : cint;
  external libXi;

function XSetDeviceValuators(dpy : PDisplay; device : PXDevice;
                             valuators      : pcint;
                             first_valuator : cint;
                             num_valuators  : cint                            ) : cint;
  external libXi;

function XGetDeviceControl(dpy : PDisplay; device : PXDevice;
                           control : cint                                     ) : PXDeviceControl
  external libXi;

function XChangeDeviceControl(dpy : PDisplay; device : PXDevice;
                              control : cint;
                              d       : PXDeviceControl                       ) : PXDeviceControl
  external libXi;

function XSelectExtensionEvent(dpy : PDisplay; w : TWindow;
                               event_list : PXEventClass;
                               count      : cint                              ) : cint;
  external libXi;

function XGetSelectedExtensionEvents(dpy : PDisplay; w : TWindow;
                                     this_client_count : pcint;
                                     this_client_list  : PPXEventClass;
                                     all_clients_count : pcint;
                                     all_clients_list  : PPXEventClass        ) : cint;
  external libXi;

function XChangeDeviceDontPropagateList(dpy : PDisplay; w : TWindow;
                                        count  : cint;
                                        events : PXEventClass;
                                        mode   : cint                         ) : cint;
  external libXi;

function XGetDeviceDontPropagateList(dpy : PDisplay; w : TWindow;
                                     count : pcint                            ) : PXEventClass;
  external libXi;

function XSendExtensionEvent(dpy : PDisplay; device : PXDevice;
                             dest  : TWindow;
                             prop  : cbool;
                             count : cint;
                             list  : PXEventClass;
                             event : PXEvent) : TStatus;
  external libXi;

function XGetDeviceMotionEvents(dpy : PDisplay; device : PXDevice;
                                start      : TTime;
                                stop       : TTime;
                                nEvents    : pcint;
                                mode       : pcint;
                                axis_count : pcint                            ) : PXDeviceTimeCoord;
  external libXi;

procedure XFreeDeviceMotionEvents(events : PXDeviceTimeCoord);
  external libXi;

procedure XFreeDeviceControl(control : PXDeviceControl);
  external libXi;

implementation

procedure FindTypeAndClass ( d : PXDevice; var type_ : cuchar; var _class : TXID;
  classid, offset : cuchar ) ;
var
  _i  : cint;
  _ip : PXInputClassInfo;
begin
//#define FindTypeAndClass(d,type,_class,classid,offset) \
// int _i; XInputClassInfo *_ip; \
  type_  := 0;
  _class := 0;
//    type = 0; _class = 0; \
  _i    := 0;
  _ip   := d^.classes;

  while (_i < d^.num_classes) do
  //for (_i=0, _ip= ((XDevice *) d)->classes; \
	// _i< ((XDevice *) d)->num_classes; \
    begin
     	//if (_ip->input_class == classid) \
	    //type =  _ip->event_type_base + offset; \
	    // _class =  ((XDevice *) d)->device_id << 8 | type;}

      if (_ip^.input_class = classid) then
        begin
          type_  := _ip^.event_type_base + offset;
          _class := (d^.device_id shl 8) or type_;
          break; // does not show on the macro, but it seems to be needed here
        end;

      // _i++, _ip++) \
      inc(_i);
      inc(_ip);
    end;
end;

procedure DeviceKeyPress ( d : PXDevice; var type_ : cuchar; var _class : TXID
  ) ;
begin
//  #define DeviceKeyPress(d,type,_class) \
//    FindTypeAndClass(d, type, _class, KeyClass, _deviceKeyPress)

  FindTypeAndClass(d, type_, _class, KeyClass, _deviceKeyPress);
end;

procedure DeviceKeyRelease ( d : PXDevice; var type_ : cuchar;
  var _class : TXID ) ;
begin
//  #define DeviceKeyRelease(d,type,_class) \
//    FindTypeAndClass(d, type, _class, KeyClass, _deviceKeyRelease)
   FindTypeAndClass(d, type_, _class, KeyClass, _deviceKeyRelease);
end;

procedure DeviceButtonPress ( d : PXDevice; var type_ : cuchar;
  var _class : TXID ) ;
begin
//#define DeviceButtonPress(d,type,_class) \
//    FindTypeAndClass(d, type, _class, ButtonClass, _deviceButtonPress)
  FindTypeAndClass(d, type_, _class, ButtonClass, _deviceButtonPress);
end;

procedure DeviceButtonRelease ( d : PXDevice; var type_ : cuchar;
  var _class : TXID ) ;
begin
//#define DeviceButtonRelease(d,type,_class) \
//    FindTypeAndClass(d, type, _class, ButtonClass, _deviceButtonRelease)
  FindTypeAndClass(d, type_, _class, ButtonClass, _deviceButtonRelease);
end;

procedure DeviceMotionNotify ( d : PXDevice; var type_ : cuchar;
  var _class : TXID ) ;
begin
//#define DeviceMotionNotify(d,type,_class) \
//    FindTypeAndClass(d, type, _class, ValuatorClass, _deviceMotionNotify)
  FindTypeAndClass(d, type_, _class, ValuatorClass, _deviceMotionNotify);
end;

procedure DeviceFocusIn ( d : PXDevice; var type_ : cuchar; var _class : TXID
  ) ;
begin
//#define DeviceFocusIn(d,type,_class) \
//    FindTypeAndClass(d, type, _class, FocusClass, _deviceFocusIn)
  FindTypeAndClass(d, type_, _class, FocusClass, _deviceFocusIn);
end;

procedure DeviceFocusOut ( d : PXDevice; var type_ : cuchar; var _class : TXID
  ) ;
begin
//#define DeviceFocusOut(d,type,_class) \
//    FindTypeAndClass(d, type, _class, FocusClass, _deviceFocusOut)
  FindTypeAndClass(d, type_, _class, FocusClass, _deviceFocusOut);
end;

procedure ProximityIn ( d : PXDevice; var type_ : cuchar; var _class : TXID ) ;
begin
//#define ProximityIn(d,type,_class) \
//    FindTypeAndClass(d, type, _class, ProximityClass, _proximityIn)
  FindTypeAndClass(d, type_, _class, ProximityClass, _proximityIn);
end;

procedure ProximityOut ( d : PXDevice; var type_ : cuchar; var _class : TXID ) ;
begin
//#define ProximityOut(d,type,_class) \
//    FindTypeAndClass(d, type, _class, ProximityClass, _proximityOut)
  FindTypeAndClass(d, type_, _class, ProximityClass, _proximityOut);
end;

procedure DeviceStateNotify ( d : PXDevice; var type_ : cuchar;
  var _class : TXID ) ;
begin
//#define DeviceStateNotify(d,type,_class) \
//    FindTypeAndClass(d, type, _class, OtherClass, _deviceStateNotify)
  FindTypeAndClass(d, type_, _class, OtherClass, _deviceStateNotify);
end;

procedure DeviceMappingNotify ( d : PXDevice; var type_ : cuchar;
  var _class : TXID ) ;
begin
//#define DeviceMappingNotify(d,type,_class) \
//    FindTypeAndClass(d, type, _class, OtherClass, _deviceMappingNotify)
  FindTypeAndClass(d, type_, _class, OtherClass, _deviceMappingNotify);
end;

procedure ChangeDeviceNotify ( d : PXDevice; var type_ : cuchar;
  var _class : TXID ) ;
begin
//#define ChangeDeviceNotify(d,type,_class) \
//    FindTypeAndClass(d, type, _class, OtherClass, _changeDeviceNotify)
  FindTypeAndClass(d, type_, _class, OtherClass, _changeDeviceNotify);
end;

procedure DevicePointerMotionHint ( d : PXDevice; type_ : cuchar;
  var _class : TXID ) ;
begin
//#define DevicePointerMotionHint(d,type,_class) \
//    { _class =  ((XDevice *) d)->device_id << 8 | _devicePointerMotionHint;}
  _class := (d^.device_id shl 8) or _devicePointerMotionHint;
end;

procedure DeviceButton1Motion ( d : PXDevice; type_ : cuchar; var _class : TXID
  ) ;
begin
//#define DeviceButton1Motion(d,type,_class) \
//    { _class =  ((XDevice *) d)->device_id << 8 | _deviceButton1Motion;}
  _class := (d^.device_id shl 8) or _deviceButton1Motion;
end;

procedure DeviceButton2Motion ( d : PXDevice; type_ : cuchar; var _class : TXID
  ) ;
begin
//#define DeviceButton2Motion(d,type,_class) \
//    { _class =  ((XDevice *) d)->device_id << 8 | _deviceButton2Motion;}
  _class := (d^.device_id shl 8) or _deviceButton2Motion;
end;

procedure DeviceButton3Motion ( d : PXDevice; type_ : cuchar; var _class : TXID
  ) ;
begin
//#define DeviceButton3Motion(d,type,_class) \
//    { _class =  ((XDevice *) d)->device_id << 8 | _deviceButton3Motion;}
  _class := (d^.device_id shl 8) or _deviceButton3Motion;
end;

procedure DeviceButton4Motion ( d : PXDevice; type_ : cuchar; var _class : TXID
  ) ;
begin
//#define DeviceButton4Motion(d,type, _class) \
//    { _class =  ((XDevice *) d)->device_id << 8 | _deviceButton4Motion;}
  _class := (d^.device_id shl 8) or _deviceButton4Motion;
end;

procedure DeviceButton5Motion ( d : PXDevice; type_ : cuchar; var _class : TXID
  ) ;
begin
//#define DeviceButton5Motion(d,type,_class) \
//    { _class =  ((XDevice *) d)->device_id << 8 | _deviceButton5Motion;}
  _class := (d^.device_id shl 8) or _deviceButton5Motion;
end;

procedure DeviceButtonMotion ( d : PXDevice; type_ : cuchar; var _class : TXID
  ) ;
begin
//#define DeviceButtonMotion(d,type, _class) \
//    { _class =  ((XDevice *) d)->device_id << 8 | _deviceButtonMotion;}
  _class := (d^.device_id shl 8) or _deviceButtonMotion;
end;

procedure DeviceOwnerGrabButton ( d : PXDevice; type_ : cuchar;
  var _class : TXID ) ;
begin
//#define DeviceOwnerGrabButton(d,type,_class) \
//    { _class =  ((XDevice *) d)->device_id << 8 | _deviceOwnerGrabButton;}
  _class := (d^.device_id shl 8) or _deviceOwnerGrabButton;
end;

procedure DeviceButtonPressGrab ( d : PXDevice; type_ : cuchar;
  var _class : TXID ) ;
begin
//#define DeviceButtonPressGrab(d,type,_class) \
//    { _class =  ((XDevice *) d)->device_id << 8 | _deviceButtonGrab;}
  _class := (d^.device_id shl 8) or _deviceButtonGrab;
end;

procedure NoExtensionEvent ( d : PXDevice; type_ : cuchar; var _class : TXID ) ;
begin
//#define NoExtensionEvent(d,type,_class) \
//    { _class =  ((XDevice *) d)->device_id << 8 | _noExtensionEvent;}
  _class := (d^.device_id shl 8) or _noExtensionEvent;
end;

procedure DevicePresence ( dpy : PDisplay; var _type : cint; var _class : cint
  ) ;
begin
//#define DevicePresence(dpy, type, _class)                       \
//    {                                                           \
//        extern int _XiGetDevicePresenceNotifyEvent(Display *);  \
//        type = _XiGetDevicePresenceNotifyEvent(dpy);            \
//        _class =  (0x10000 | _devicePresence);                  \
//    }

 _type  := _XiGetDevicePresenceNotifyEvent(dpy);
 _class := $10000 or _devicePresence;
end;

end.

