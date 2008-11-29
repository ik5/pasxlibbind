(* $Xorg: XIproto.h,v 1.5 2001/02/09 02:03:24 xorgcvs Exp $ *)

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
(* $XFree86: xc/include/extensions/XIproto.h,v 1.4 2001/01/17 17:53:17 dawes Exp $ *)
unit xiproto;

{$mode fpc}{$PACKRECORDS C}{$MACRO ON}{$CALLING CDECL}

{$DEFINE NoXMD}

interface

uses
  ctypes, x, xlib, xi {$IFNDEF NoXMD}, xmd{$ENDIF};

{$IFDEF NoXMD}
type
{$IFDEF CPU64}
  TCARD64 = culong;
  TCARD32 = cuint;
{$ELSE CPU64}
{$IFDEF CPU32}
  TCARD32 = culong;
{$ENDIF CPU32}
{$ENDIF CPU64}

   TCARD16 = cushort;
   TCARD8  = cuchar;
   TByte   = TCARD8;
   TBool   = TCARD8;
{$ENDIF NoXMD}

// make sure types have right sizes for protocol structures.
{Note: We already knows that they are correct, so we do not need this code
type
  TWindow  = TCARD32;
  TTime    = TCARD32;
  TKeyCode = TCARD8;
}

(*********************************************************
 *
 * number of events, errors, and extension name.
 *
 *)
const
  MORE_EVENTS     = $80;
  DEVICE_BITS     = $7F;

  InputClassBits  = $3F; // bits in mode field for input classes
  ModeBitsShift   = 6;   // amount to shift the remaining bits

  numInputClasses = 7;

  IEVENTS         = 16;
  IERRORS         = 5;

  CLIENT_REQ      = 1;

type
  PXExtEventInfo  = ^TXExtEventInfo;
  P_XExtEventInfo = ^T_XExtEventInfo;
  TXExtEventInfo  = record
                      mask  : TMask;
                      _type : TByte;
                      _word : TByte;
                    end;
  T_XExtEventInfo = TXExtEventInfo;

  TPointer = pcuchar;

  PTmask = ^TTMask;
  TTMask = record
             mask : TMask;
             dev  : TPointer;
           end;

(*********************************************************
 *
 * Event constants used by library.
 *
 *)
const
 XI_DeviceValuator          =  0;
 XI_DeviceKeyPress          =  1;
 XI_DeviceKeyRelease        =  2;
 XI_DeviceButtonPress       =  3;
 XI_DeviceButtonRelease     =  4;
 XI_DeviceMotionNotify      =  5;
 XI_DeviceFocusIn           =  6;
 XI_DeviceFocusOut          =  7;
 XI_ProximityIn             =  8;
 XI_ProximityOut            =  9;
 XI_DeviceStateNotify       = 10;
 XI_DeviceMappingNotify     = 11;
 XI_ChangeDeviceNotify      = 12;
 XI_DeviceKeystateNotify    = 13;
 XI_DeviceButtonstateNotify = 14;
 XI_DevicePresenceNotify    = 15;

(*********************************************************
 *
 * Protocol request constants
 *
 *)

 X_GetExtensionVersion           =  1;
 X_ListInputDevices              =  2;
 X_OpenDevice                    =  3;
 X_CloseDevice                   =  4;
 X_SetDeviceMode                 =  5;
 X_SelectExtensionEvent          =  6;
 X_GetSelectedExtensionEvents    =  7;
 X_ChangeDeviceDontPropagateList =  8;
 X_GetDeviceDontPropagateList    =  9;
 X_GetDeviceMotionEvents         = 10;
 X_ChangeKeyboardDevice          = 11;
 X_ChangePointerDevice           = 12;
 X_GrabDevice                    = 13;
 X_UngrabDevice                  = 14;
 X_GrabDeviceKey                 = 15;
 X_UngrabDeviceKey               = 16;
 X_GrabDeviceButton              = 17;
 X_UngrabDeviceButton            = 18;
 X_AllowDeviceEvents             = 19;
 X_GetDeviceFocus                = 20;
 X_SetDeviceFocus                = 21;
 X_GetFeedbackControl            = 22;
 X_ChangeFeedbackControl         = 23;
 X_GetDeviceKeyMapping           = 24;
 X_ChangeDeviceKeyMapping        = 25;
 X_GetDeviceModifierMapping      = 26;
 X_SetDeviceModifierMapping      = 27;
 X_GetDeviceButtonMapping        = 28;
 X_SetDeviceButtonMapping        = 29;
 X_QueryDeviceState              = 30;
 X_SendExtensionEvent            = 31;
 X_DeviceBell                    = 32;
 X_SetDeviceValuators            = 33;
 X_GetDeviceControl              = 34;
 X_ChangeDeviceControl           = 35;


(*********************************************************
 *
 * Protocol request and reply structures.
 *
 * GetExtensionVersion.
 *
 *)
type
 PxGetExtensionVersionReq = ^TxGetExtensionVersionReq;
 TxGetExtensionVersionReq = bitpacked record
                              reqType    : TCARD8;  // input extension major code
                              ReqType2   : TCARD8;  // always X_GetExtensionVersion
                              length     : TCARD16;
                              nbytes     : TCARD16;
                              pad1, pad2 : TCARD8;
                            end;

 PxGetExtensionVersionReply = ^TxGetExtensionVersionReply;
 TxGetExtensionVersionReply = bitpacked record
                                repType          : TCARD8;  // X_Reply
                                RepType2         : TCARD8;  // always X_GetExtensionVersion
                                sequenceNumber   : TCARD16;
                                length           : TCARD32;
                                major_version    : TCARD16;
                                minor_version    : TCARD16;
                                present          : cbool;
                                pad1, pad2, pad3 : TCARD8;
                                pad01,
                                pad02,
                                pad03,
                                pad04            : TCARD32;
                              end;

(*********************************************************
 *
 * ListInputDevices.
 *
 *)

 PxListInputDevicesReq = ^TxListInputDevicesReq;
 TxListInputDevicesReq = bitpacked record
                           reqType  : TCARD8;  // input extension major code
                           reqType2 : TCARD8;  // always X_ListInputDevices
                           length   : TCARD16;
                         end;

 PxListInputDevicesReply = ^TxListInputDevicesReply;
 TxListInputDevicesReply = bitpacked record
                             repType          : TCARD8;  // X_Reply
                             RepType2         : TCARD8;  // always X_ListInputDevices
                             sequenceNumber   : TCARD16;
                             length           : TCARD32;
                             ndevices         : TCARD8;
                             pad1, pad2, pad3 : TCARD8;
                             pad01,
                             pad02,
                             pad03,
                             pad04,
                             pad05            : TCARD32;
                           end;

 PxAnyClassInfo  = ^TxAnyClassInfo;
 P_xAnyClassinfo = ^T_xAnyClassinfo;
 TxAnyClassPtr   = P_xAnyClassinfo;
 PxAnyClassPtr   = P_xAnyClassinfo;
 TxAnyClassInfo  = record
                     c_class : TCARD8;
                     length  : TCARD8;
                   end;
 T_xAnyClassinfo = TxAnyClassInfo;


 PxDeviceInfo    = ^TxDeviceInfo;
 P_xDeviceInfo   = ^T_xDeviceInfo;
 PxDeviceInfoPtr = P_xDeviceInfo;
 TxDeviceInfoPtr = P_xDeviceInfo;
 TxDeviceInfo    = bitpacked record
                     type_        : TCARD32;
                     id,
                     num_classes,
                     use,
                     pad1         : TCARD8;
                   end;
 T_xDeviceInfo = TxDeviceInfo;

 PxKeyInfo    = ^TxKeyInfo;
 P_xKeyInfo   = ^T_xKeyInfo;
 TxKeyInfoPtr = P_xKeyInfo;
 PxKeyInfoPtr = P_xKeyInfo;
 TxKeyInfo    = bitpacked record
                  c_class     : TCARD8;
                  length      : TCARD8;
                  min_keycode : TKeyCode;
                  max_keycode : TKeyCode;
                  num_keys    : TCARD16;
                  pad1, pad2  : TCARD8;
                end;
 T_xKeyInfo   = TxKeyInfo;

 PxButtonInfo    = ^TxButtonInfo;
 P_xButtonInfo   = ^T_xButtonInfo;
 TxButtonInfoPtr = P_xButtonInfo;
 PxButtonInfoPtr = P_xButtonInfo;
 TxButtonInfo    = bitpacked record
                     c_class     : TCARD8;
                     length      : TCARD8;
                     num_buttons : TCARD16;
                   end;
 T_xButtonInfo   = TxButtonInfo;

 PxValuatorInfo    = ^TxValuatorInfo;
 P_xValuatorInfo   = ^T_xValuatorInfo;
 TxValuatorInfoPtr = P_xValuatorInfo;
 PxValuatorInfoPtr = ^P_xValuatorInfo;
 TxValuatorInfo    = bitpacked record
                       c_class            : TCARD8;
                       length             : TCARD8;
                       num_axes           : TCARD8;
                       mode               : TCARD8;
                       motion_buffer_size : TCARD32;
                     end;
 T_xValuatorInfo   = TxValuatorInfo;

 PxAxisInfo    = ^TxAxisInfo;
 P_xAxisInfo   = ^T_xAxisInfo;
 TxAxisInfoPtr = P_xAxisInfo;
 PxAxisInfoPtr = ^TxAxisInfoPtr;
 TxAxisInfo    = bitpacked record
                   resolution,
                   min_value,
                   max_value   : TCARD32;
                 end;
 T_xAxisInfo   = TxAxisInfo;

(*********************************************************
 *
 * OpenDevice.
 *
 *)
 PxOpenDeviceReq = ^TxOpenDeviceReq;
 TxOpenDeviceReq = bitpacked record
                     reqType          : TCARD8;   // input extension major code
                     ReqType2         : TCARD8;   // always X_OpenDevice
                     length           : TCARD16;
                     deviceid         : TCARD8;
                     pad1, pad2, pad3 : TByte;
                   end;

 PxOpenDeviceReply = ^TxOpenDeviceReply;
 TxOpenDeviceReply = bitpacked record
                       repType          : TCARD8; // X_Reply
                       RepType2         : TCARD8; // always X_OpenDevice
                       sequenceNumber   : TCARD16;
                       length           : TCARD32;
                       num_classes      : TCARD8;
                       pad1, pad2, pad3 : TByte;
                       pad00,
                       padd01,
                       pad02,
                       pad03,
                       pad04            : TCARD32;
                     end;

 PxInputClassInfo = ^TxInputClassInfo;
 TxInputClassInfo = record
                      c_class        : TCARD8;
                     event_type_base : TCARD8;
                    end;

(*********************************************************
 *
 * CloseDevice.
 *
 *)

 PxCloseDeviceReq = ^TxCloseDeviceReq;
 TxCloseDeviceReq = bitpacked record
                      reqType          : TCARD8; // input extension major code
                      ReqType2         : TCARD8; // always X_CloseDevice
                      length           : TCARD16;
                      deviceid         : TCARD8;
                      pad1, pad2, pad3 : TByte;
                    end;

(*********************************************************
 *
 * SetDeviceMode.
 *
 *)

 PxSetDeviceModeReq = ^TxSetDeviceModeReq;
 TxSetDeviceModeReq = bitpacked record
                        reqType    : TCARD8;  // input extension major code
                        ReqType2   : TCARD8;  // always X_SetDeviceMode
                        length     : TCARD16;
                        deviceid   : TCARD8;
                        mode       : TCARD8;
                        pad1, pad2 : TByte;
                      end;

 PxSetDeviceModeReply =^TxSetDeviceModeReply;
 TxSetDeviceModeReply = bitpacked record
                          repType          : TCARD8;   // X_Reply
                          RepType2         : TCARD8;   // always X_SetDeviceMode
                          sequenceNumber   : TCARD16;
                          length           : TCARD32;
                          status           : TCARD8;
                          pad1, pad2, pad3 : TByte;
                          pad01,
                          pad02,
                          pad03,
                          pad04,
                          pad05            : TCARD32;
                        end;

(*********************************************************
 *
 * SelectExtensionEvent.
 *
 *)

 PxSelectExtensionEventReq = ^TxSelectExtensionEventReq;
 TxSelectExtensionEventReq = bitpacked record
                               reqType   : TCARD8;  // input extension major code
                               ReqType2  : TCARD8;  // always X_SelectExtensionEvent
                               length    : TCARD16;
                               window    : TWindow;
                               count     : TCARD16;
                               pad00     : TCARD16;
                             end;

(*********************************************************
 *
 * GetSelectedExtensionEvent.
 *
 *)

 PxGetSelectedExtensionEventsReq = ^TxGetSelectedExtensionEventsReq;
 TxGetSelectedExtensionEventsReq = bitpacked record
                                     reqType  : TCARD8;  // input extension major code
                                     ReqType2 : TCARD8;  // X_GetSelectedExtensionEvents
                                     length   : TCARD16;
                                     window   : TWindow;
                                   end;

 PxGetSelectedExtensionEventsReply = ^TxGetSelectedExtensionEventsReply;
 TxGetSelectedExtensionEventsReply = bitpacked record
                                       repType           : TCARD8;  // X_Reply
                                       ReqType2          : TCARD8;  // GetSelectedExtensionEvents
                                       sequenceNumber    : TCARD16;
                                       length            : TCARD32;
                                       this_client_count : TCARD16;
                                       all_clients_count : TCARD16;
                                       pad01,
                                       pad02,
                                       pad03,
                                       pad04,
                                       pad05             : TCARD32;
                                     end;

(*********************************************************
 *
 * ChangeDeviceDontPropagateList.
 *
 *)

 PxChangeDeviceDontPropagateListReq = ^TxChangeDeviceDontPropagateListReq;
 TxChangeDeviceDontPropagateListReq = bitpacked record
                                        reqType    : TCARD8;   // input extension major code
                                        ReqType2   : TCARD8;   // X_ChangeDeviceDontPropagateList
                                        length     : TCARD16;
                                        window     : TWindow;
                                        count      : TCARD16;
                                        mode       : TCARD8;
                                        pad        : TByte;
                                      end;

(*********************************************************
 *
 * GetDeviceDontPropagateList.
 *
 *)

 PxGetDeviceDontPropagateListReq = ^TxGetDeviceDontPropagateListReq;
 TxGetDeviceDontPropagateListReq = bitpacked record
                                     reqType  : TCARD8;  // input extension major code
                                     ReqType2 : TCARD8;  // X_GetDeviceDontPropagateList
                                     length   : TCARD16;
                                     window   : TWindow;
                                   end;

 PxGetDeviceDontPropagateListReply = ^TxGetDeviceDontPropagateListReply;
 TxGetDeviceDontPropagateListReply = bitpacked record
                                       repType        : TCARD8;  // X_Reply
                                       ReqType2       : TCARD8;  // GetDeviceDontPropagateList
                                       sequenceNumber : TCARD16;
                                       length         : TCARD32;
                                       count          : TCARD16;
                                       pad00,
                                       pad01,
                                       pad02,
                                       pad03,
                                       pad04,
                                       pad05          : TCARD32;
                                     end;

(*********************************************************
 *
 * GetDeviceMotionEvents.
 *
 *)

 PxGetDeviceMotionEventsReq = ^TxGetDeviceMotionEventsReq;
 TxGetDeviceMotionEventsReq = bitpacked record
                                reqType  : TCARD8;  // input extension major code
                                ReqType2 : TCARD8;  // always X_GetDeviceMotionEvents
                                length   : TCARD16;
                                start    : TTime;
                                stop     : TTime;
                                deviceid : TCARD8;
                                pad1,
                                pad2,
                                pad3     : TByte;
                              end;

  PxGetDeviceMotionEventsReply = ^TxGetDeviceMotionEventsReply;
  TxGetDeviceMotionEventsReply = bitpacked record
                                   reqType        : TCARD8;  // X_Reply
                                   ReqType2       : TCARD8;  // always X_GetDeviceMotionEvents
                                   sequenceNumber : TCARD16;
                                   length         : TCARD32;
                                   nEvents        : TCARD32;
                                   axes           : TCARD8;
                                   mode           : TCARD8;
                                   pad1, pad2     : TBYTE;
                                   pad01,
                                   pad02,
                                   pad03,
                                   pad04          : TCARD32;
                                 end;

(*********************************************************
 *
 * ChangeKeyboardDevice.
 *
 *)

  PxChangeKeyboardDeviceReq = ^TxChangeKeyboardDeviceReq;
  TxChangeKeyboardDeviceReq = bitpacked record
                                reqType          : TCARD8;  // input extension major code
                                ReqType2         : TCARD8;  // X_ChangeKeyboardDevice
                                length           : TCARD16;
                                deviceid         : TCARD8;
                                pad1, pad2, pad3 : TByte;
                              end;

  PxChangeKeyboardDeviceReply = ^TxChangeKeyboardDeviceReply;
  TxChangeKeyboardDeviceReply = bitpacked record
                                  reqType          : TCARD8;  // X_Reply
                                  ReqType2         : TCARD8;  // always X_ChangeKeyboardDevice
                                  sequenceNumber   : TCARD16;
                                  length           : TCARD32; // 0
                                  status           : TCARD8;
                                  pad1, pad2, pad3 : TBYTE;
                                  pad01,
                                  pad02,
                                  pad03,
                                  pad04,
                                  pad05            : TCARD32;
                                end;

(*********************************************************
 *
 * ChangePointerDevice.
 *
 *)

  PxChangePointerDeviceReq = ^TxChangePointerDeviceReq;
  TxChangePointerDeviceReq = bitpacked record
                               reqType  : TCARD8;  // input extension major code
                               ReqType2 : TCARD8;  // X_ChangePointerDevice
                               length   : TCARD16;
                               xaxis    : TCARD8;
                               yaxis    : TCARD8;
                               deviceid : TCARD8;
                               pad1     : TBYTE;
                             end;

  PxChangePointerDeviceReply = ^TxChangePointerDeviceReply;
  TxChangePointerDeviceReply = bitpacked record
                                 reqType          : TCARD8;  // X_Reply
                                 RepType2         : TCARD8;  // always X_ChangePointerDevice
                                 sequenceNumber   : TCARD16;
                                 length           : TCARD32;
                                 status           : TCARD8;
                                 pad1, pad2, pad3 : TByte;
                                 pad01,
                                 pad02,
                                 pad03,
                                 pad04,
                                 pad05            : TCARD32;
                               end;

(*********************************************************
 *
 * GrabDevice.
 *
 *)

  PxGrabDeviceReq = ^TxGrabDeviceReq;
  TxGrabDeviceReq = bitpacked record
                      reqType            : TCARD8;  // input extension major code
                      ReqType2           : TCARD8;  // always X_GrabDevice
                      length             : TCARD16;
                      grabWindow         : TWindow;
                      time               : TTime;
                      event_count        : TCARD16;
                      this_device_mode   : TCARD8;
                      other_devices_mode : TCARD8;
                      ownerEvents        : TBool;
                      deviceid           : TCARD8;
                      pad01              : TCARD16;
                    end;

  PxGrabDeviceReply = ^TxGrabDeviceReply;
  TxGrabDeviceReply = bitpacked record
                        repType          : TCARD8;  // X_Reply
                        RepType2         : TCARD8;  // always X_GrabDevice
                        sequenceNumber   : TCARD16;
                        length           : TCARD32; // 0
                        status           : TCARD8;
                        pad1, pad2, pad3 : TByte;
                        pad01,
                        pad02,
                        pad03,
                        pad04,
                        pad05            : TCARD32;
                      end;

(*********************************************************
 *
 * UngrabDevice.
 *
 *)

 PxUngrabDeviceReq = ^TxUngrabDeviceReq;
 TxUngrabDeviceReq = bitpacked record
                       repType          : TCARD8;  // input extension major code
                       RepType2         : TCARD8;  // always X_UnGrabDevice
                       length           : TCARD16;
                       time             : TTime;
                       deviceid         : TCARD8;
                       pad1, pad2, pad3 : TByte;
                     end;

(*********************************************************
 *
 * GrabDeviceKey.
 *
 *)

 PxGrabDeviceKeyReq = ^TxGrabDeviceKeyReq;
 TxGrabDeviceKeyReq = bitpacked record
                        repType            : TCARD8;  // input extension major code
                        RepType2           : TCARD8;  // always X_GrabDeviceKey
                        length             : TCARD16;
                        grabWindow         : TWindow;
                        event_count        : TCARD16;
                        modifiers          : TCARD16;
                        modifier_device    : TCARD8;
                        grabbed_device     : TCARD8;
                        key                : TCARD8;
                        this_device_mode   : TByte;
                        other_devices_mode : TByte;
                        ownerEvents        : TBool;
                        pad1, pad2         : TByte;
                      end;

(*********************************************************
 *
 * UngrabDeviceKey.
 *
 *)

 PxUngrabDeviceKeyReq = ^TxUngrabDeviceKeyReq;
 TxUngrabDeviceKeyReq = bitpacked record
                          reqType          : TCARD8;  // input extension major code
                          ReqType2         : TCARD8;  // always X_UngrabDeviceKey
                          length           : TCARD16;
                          grabWindow       : TWindow;
                          modifiers        : TCARD16;
                          modifier_device  : TCARD8;
                          key              : TCARD8;
                          grabbed_device   : TCARD8;
                          pad1, pad2, pad3 : TByte;
                        end;
(*********************************************************
 *
 * GrabDeviceButton.
 *
 *)

 PxGrabDeviceButtonReq = ^TxGrabDeviceButtonReq;
 TxGrabDeviceButtonReq = bitpacked record
                           reqType            : TCARD8;  // input extension major code
                           ReqType2           : TCARD8;  // always X_GrabDeviceButton
                           length             : TCARD16;
                           grabWindow         : TWindow;
                           grabbed_device     : TCARD8;
                           modifier_device    : TCARD8;
                           event_count        : TCARD16;
                           modifiers          : TCARD16;
                           this_device_mode   : TByte;
                           other_devices_mode : TByte;
                           button             : TCARD8;
                           ownerEvents        : TBool;
                           pad1, pad2         : TByte;
                         end;

(*********************************************************
 *
 * UngrabDeviceButton.
 *
 *)

 PxUngrabDeviceButtonReq = ^TxUngrabDeviceButtonReq;
 TxUngrabDeviceButtonReq = bitpacked record
                             reqType          : TCARD8;  // input extension major code
                             ReqType2         : TCARD8;  // always X_UngrabDeviceButton
                             length           : TCARD16;
                             grabWindow       : TWindow;
                             modifiers        : TCARD16;
                             modifier_device  : TCARD8;
                             button           : TCARD8;
                             grabbed_device   : TCARD8;
                             pad1, pad2, pad3 : TByte;
                           end;

(*********************************************************
 *
 * AllowDeviceEvents.
 *
 *)

 PxAllowDeviceEventsReq = ^TxAllowDeviceEventsReq;
 TxAllowDeviceEventsReq = bitpacked record
                            reqType    : TCARD8;  // input extension major code
                            ReqType2   : TCARD8;  // always X_AllowDeviceEvents
                            length     : TCARD16;
                            time       : TTime;
                            mode       : TCARD8;
                            deviceid   : TCARD8;
                            pad1, pad2 : TByte;
                          end;

(*********************************************************
 *
 * GetDeviceFocus.
 *
 *)

 PxGetDeviceFocusReq = ^TxGetDeviceFocusReq;
 TxGetDeviceFocusReq = bitpacked record
                         reqType          : TCARD8;  // input extension major code
                         ReqType2         : TCARD8;  // always X_GetDeviceFocus
                         length           : TCARD16;
                         deviceid         : TCARD8;
                         pad1, pad2, pad3 : TByte;
                       end;

 PxGetDeviceFocusReply = ^TxGetDeviceFocusReply;
 TxGetDeviceFocusReply = bitpacked record
                           repType          : TCARD8;  // X_Reply
                           RepType2         : TCARD8;  // always X_GetDeviceFocus
                           sequenceNumber   : TCARD16;
                           length           : TCARD32;
                           focus            : TCARD32;
                           time             : TTime;
                           revertTo         : TCARD8;
                           pad1, pad2, pad3 : TByte;
                           pad01,
                           pad02,
                           pad03            : TCARD32;
                         end;

(*********************************************************
 *
 * SetDeviceFocus.
 *
 *)

 PxSetDeviceFocusReq = ^TxSetDeviceFocusReq;
 TxSetDeviceFocusReq = bitpacked record
                         reqType  : TCARD8;  // input extension major code
                         ReqType2 : TCARD8;  // always X_SetDeviceFocus
                         length   : TCARD16;
                         focus    : TWindow;
                         time     : TTime;
                         revertTo : TCARD8;
                         device   : TCARD8;
                         pad01    : TCARD16;
                       end;


(*

/*********************************************************
 *
 * GetFeedbackControl.
 *
 */

typedef struct {
    CARD8	reqType;	/* input extension major code	*/
    CARD8 	ReqType;        /* X_GetFeedbackControl  	*/
    CARD16 	length B16;
    CARD8 	deviceid;
    BYTE	pad1, pad2, pad3;
} xGetFeedbackControlReq;

typedef struct {
    CARD8  	repType;  	/* X_Reply 			*/
    CARD8  	RepType;        /* always X_GetFeedbackControl 	*/
    CARD16 	sequenceNumber B16;
    CARD32 	length B32;
    CARD16	num_feedbacks B16;
    CARD16	pad01 B16;
    CARD32	pad02 B32;
    CARD32	pad03 B32;
    CARD32	pad04 B32;
    CARD32	pad05 B32;
    CARD32	pad06 B32;
} xGetFeedbackControlReply;

typedef struct {
#if defined(__cplusplus) || defined(c_plusplus)
    CARD8  	c_class; 	/* feedback class		*/
#else
    CARD8  	class; 		/* feedback class		*/
#endif
    CARD8  	id; 		/* feedback id    		*/
    CARD16  	length B16; 	/* feedback length		*/
} xFeedbackState;

typedef struct {
#if defined(__cplusplus) || defined(c_plusplus)
    CARD8   c_class;
#else
    CARD8   class;
#endif
    CARD8   id;
    CARD16  length B16;
    CARD16  pitch B16;
    CARD16  duration B16;
    CARD32  led_mask B32;
    CARD32  led_values B32;
    BOOL    global_auto_repeat;
    CARD8   click;
    CARD8   percent;
    BYTE    pad;
    BYTE    auto_repeats[32];
} xKbdFeedbackState;

typedef struct {
#if defined(__cplusplus) || defined(c_plusplus)
    CARD8   c_class;
#else
    CARD8   class;
#endif
    CARD8   id;
    CARD16  length B16;
    CARD8   pad1,pad2;
    CARD16  accelNum B16;
    CARD16  accelDenom B16;
    CARD16  threshold B16;
} xPtrFeedbackState;

typedef struct {
#if defined(__cplusplus) || defined(c_plusplus)
    CARD8  	c_class;  	/* feedback class id		*/
#else
    CARD8  	class;  	/* feedback class id		*/
#endif
    CARD8   	id;
    CARD16  	length B16; 	/* feedback length  		*/
    CARD32	resolution B32;
    INT32	min_value B32;
    INT32	max_value B32;
} xIntegerFeedbackState;

typedef struct {
#if defined(__cplusplus) || defined(c_plusplus)
    CARD8  	c_class;  	/* feedback class id		*/
#else
    CARD8  	class;  	/* feedback class id		*/
#endif
    CARD8   	id;
    CARD16  	length B16; 	/* feedback length  		*/
    CARD16	max_symbols B16;
    CARD16	num_syms_supported B16;
} xStringFeedbackState;

typedef struct {
#if defined(__cplusplus) || defined(c_plusplus)
    CARD8  	c_class;  	/* feedback class id		*/
#else
    CARD8  	class;  	/* feedback class id		*/
#endif
    CARD8	id;
    CARD16  	length B16; 	/* feedback length  		*/
    CARD8	percent;
    BYTE	pad1, pad2, pad3;
    CARD16	pitch B16;
    CARD16	duration B16;
} xBellFeedbackState;

typedef struct {
#if defined(__cplusplus) || defined(c_plusplus)
    CARD8  	c_class;  	/* feedback class id		*/
#else
    CARD8  	class;  	/* feedback class id		*/
#endif
    CARD8	id;
    CARD16  	length B16; 	/* feedback length  		*/
    CARD32	led_mask B32;
    CARD32	led_values B32;
} xLedFeedbackState;

/*********************************************************
 *
 * ChangeFeedbackControl.
 *
 */

typedef struct {
    CARD8	reqType;	/* input extension major code	*/
    CARD8 	ReqType;        /* X_ChangeFeedbackControl  	*/
    CARD16 	length B16;
    CARD32	mask B32;
    CARD8  	deviceid;
    CARD8  	feedbackid;
    BYTE	pad1, pad2;
} xChangeFeedbackControlReq;

typedef struct {
#if defined(__cplusplus) || defined(c_plusplus)
    CARD8  	c_class;  	/* feedback class id		*/
#else
    CARD8  	class;  	/* feedback class id		*/
#endif
    CARD8  	id; 		/* feedback id      		*/
    CARD16  	length B16; 	/* feedback length  		*/
} xFeedbackCtl;

typedef struct {
#if defined(__cplusplus) || defined(c_plusplus)
    CARD8  	c_class;  	/* feedback class id		*/
#else
    CARD8  	class;  	/* feedback class id		*/
#endif
    CARD8  	id; 		/* feedback length  		*/
    CARD16  	length B16; 	/* feedback length  		*/
    KeyCode 	key;
    CARD8	auto_repeat_mode;
    INT8	click;
    INT8	percent;
    INT16	pitch B16;
    INT16	duration B16;
    CARD32	led_mask B32;
    CARD32	led_values B32;
} xKbdFeedbackCtl;

typedef struct {
#if defined(__cplusplus) || defined(c_plusplus)
    CARD8  	c_class;  	/* feedback class id		*/
#else
    CARD8  	class;  	/* feedback class id		*/
#endif
    CARD8  	id; 		/* feedback id      		*/
    CARD16  	length B16; 	/* feedback length  		*/
    CARD8  	pad1,pad2;
    INT16	num B16;
    INT16	denom B16;
    INT16	thresh B16;
} xPtrFeedbackCtl;

typedef struct {
#if defined(__cplusplus) || defined(c_plusplus)
    CARD8  	c_class;  	/* feedback class id		*/
#else
    CARD8  	class;  	/* feedback class id		*/
#endif
    CARD8  	id; 		/* feedback id      		*/
    CARD16  	length B16; 	/* feedback length  		*/
    INT32	int_to_display B32;
} xIntegerFeedbackCtl;

typedef struct {
#if defined(__cplusplus) || defined(c_plusplus)
    CARD8  	c_class;  	/* feedback class id		*/
#else
    CARD8  	class;  	/* feedback class id		*/
#endif
    CARD8  	id; 		/* feedback id      		*/
    CARD16  	length B16; 	/* feedback length  		*/
    CARD8  	pad1,pad2;
    CARD16	num_keysyms B16;
} xStringFeedbackCtl;

typedef struct {
#if defined(__cplusplus) || defined(c_plusplus)
    CARD8  	c_class;  	/* feedback class id		*/
#else
    CARD8  	class;  	/* feedback class id		*/
#endif
    CARD8  	id; 		/* feedback id      		*/
    CARD16  	length B16; 	/* feedback length  		*/
    INT8	percent;
    BYTE	pad1, pad2, pad3;
    INT16	pitch B16;
    INT16	duration B16;
} xBellFeedbackCtl;

typedef struct {
#if defined(__cplusplus) || defined(c_plusplus)
    CARD8  	c_class;  	/* feedback class id		*/
#else
    CARD8  	class;  	/* feedback class id		*/
#endif
    CARD8  	id; 		/* feedback id      		*/
    CARD16  	length B16; 	/* feedback length  		*/
    CARD32	led_mask B32;
    CARD32	led_values B32;
} xLedFeedbackCtl;

/*********************************************************
 *
 * GetDeviceKeyMapping.
 *
 */

typedef struct {
    CARD8 	reqType;        /* input extension major code   */
    CARD8 	ReqType;     	/* always X_GetDeviceKeyMapping */
    CARD16 	length B16;
    CARD8   	deviceid;
    KeyCode 	firstKeyCode;
    CARD8 	count;
    BYTE	pad1;
} xGetDeviceKeyMappingReq;

typedef struct {
    CARD8  	repType;  	/* X_Reply 			*/
    CARD8  	RepType;       	/* always X_GetDeviceKeyMapping */
    CARD16 	sequenceNumber B16;
    CARD32 	length B32;
    CARD8  	keySymsPerKeyCode;
    CARD8  	pad0;
    CARD16 	pad1 B16;
    CARD32 	pad2 B32;
    CARD32 	pad3 B32;
    CARD32 	pad4 B32;
    CARD32 	pad5 B32;
    CARD32 	pad6 B32;
} xGetDeviceKeyMappingReply;

/*********************************************************
 *
 * ChangeDeviceKeyMapping.
 *
 */

typedef struct {
    CARD8 	reqType;        /* input extension major code   */
    CARD8 	ReqType;        /* always X_ChangeDeviceKeyMapping */
    CARD16 	length B16;
    CARD8   	deviceid;
    KeyCode 	firstKeyCode;
    CARD8 	keySymsPerKeyCode;
    CARD8 	keyCodes;
} xChangeDeviceKeyMappingReq;

/*********************************************************
 *
 * GetDeviceModifierMapping.
 *
 */

typedef struct {
    CARD8 	reqType;        /* input extension major code   */
    CARD8 	ReqType;        /* always X_GetDeviceModifierMapping */
    CARD16 	length B16;
    CARD8   	deviceid;
    BYTE	pad1, pad2, pad3;
} xGetDeviceModifierMappingReq;

typedef struct {
    CARD8  	repType;  	/* X_Reply */
    CARD8  	RepType;        /* always X_GetDeviceModifierMapping */
    CARD16 	sequenceNumber B16;
    CARD32 	length B32;
    CARD8  	numKeyPerModifier;
    CARD8  	pad0;
    CARD16 	pad1 B16;
    CARD32 	pad2 B32;
    CARD32 	pad3 B32;
    CARD32 	pad4 B32;
    CARD32 	pad5 B32;
    CARD32 	pad6 B32;
} xGetDeviceModifierMappingReply;

/*********************************************************
 *
 * SetDeviceModifierMapping.
 *
 */

typedef struct {
    CARD8 	reqType;        /* input extension major code   */
    CARD8 	ReqType;        /* always X_SetDeviceModifierMapping */
    CARD16 	length B16;
    CARD8   	deviceid;
    CARD8   	numKeyPerModifier;
    CARD16  	pad1 B16;
} xSetDeviceModifierMappingReq;

typedef struct {
    CARD8  	repType;  	/* X_Reply */
    CARD8  	RepType;        /* always X_SetDeviceModifierMapping */
    CARD16 	sequenceNumber B16;
    CARD32 	length B32;
    CARD8  	success;
    CARD8  	pad0;
    CARD16 	pad1 B16;
    CARD32 	pad2 B32;
    CARD32 	pad3 B32;
    CARD32 	pad4 B32;
    CARD32 	pad5 B32;
    CARD32 	pad6 B32;
} xSetDeviceModifierMappingReply;

/*********************************************************
 *
 * GetDeviceButtonMapping.
 *
 */

typedef struct {
    CARD8	reqType;	/* input extension major code	*/
    CARD8 	ReqType;        /* X_GetDeviceButtonMapping     */
    CARD16 	length B16;
    CARD8   	deviceid;
    BYTE	pad1, pad2, pad3;
} xGetDeviceButtonMappingReq;

typedef struct {
    CARD8  	repType;  	/* X_Reply */
    CARD8  	RepType;        /* always X_GetDeviceButtonMapping */
    CARD16 	sequenceNumber B16;
    CARD32 	length B32;
    CARD8 	nElts;
    BYTE	pad1, pad2, pad3;
    CARD32 	pad01 B32;
    CARD32 	pad02 B32;
    CARD32 	pad03 B32;
    CARD32 	pad04 B32;
    CARD32 	pad05 B32;
} xGetDeviceButtonMappingReply;

/*********************************************************
 *
 * SetDeviceButtonMapping.
 *
 */

typedef struct {
    CARD8	reqType;	/* input extension major code	*/
    CARD8 	ReqType;        /* X_SetDeviceButtonMapping     */
    CARD16 	length B16;
    CARD8   	deviceid;
    CARD8   	map_length;
    BYTE	pad1, pad2;
} xSetDeviceButtonMappingReq;

typedef struct {
    CARD8  	repType;  		/* X_Reply */
    CARD8  	RepType;        	/* always X_SetDeviceButtonMapping */
    CARD16 	sequenceNumber B16;
    CARD32 	length B32;
    CARD8 	status;
    BYTE 	pad0;
    CARD16 	pad1 B16;
    CARD32 	pad2 B32;
    CARD32 	pad3 B32;
    CARD32 	pad4 B32;
    CARD32 	pad5 B32;
    CARD32 	pad6 B32;
} xSetDeviceButtonMappingReply;

/*********************************************************
 *
 * QueryDeviceState.
 *
 */

typedef struct {
    CARD8	reqType;
    CARD8 	ReqType;        /* always X_QueryDeviceState */
    CARD16 	length B16;
    CARD8   	deviceid;
    BYTE	pad1, pad2, pad3;
} xQueryDeviceStateReq;

typedef struct {
    CARD8  	repType;  		/* X_Reply */
    CARD8  	RepType;        	/* always X_QueryDeviceState	*/
    CARD16 	sequenceNumber B16;
    CARD32 	length B32;
    CARD8 	num_classes;
    BYTE 	pad0;
    CARD16 	pad1 B16;
    CARD32 	pad2 B32;
    CARD32 	pad3 B32;
    CARD32 	pad4 B32;
    CARD32 	pad5 B32;
    CARD32 	pad6 B32;
} xQueryDeviceStateReply;

typedef struct {
#if defined(__cplusplus) || defined(c_plusplus)
    CARD8  	c_class;
#else
    CARD8  	class;
#endif
    CARD8  	length;
    CARD8	num_keys;
    BYTE   	pad1;
    CARD8  	keys[32];
} xKeyState;

typedef struct {
#if defined(__cplusplus) || defined(c_plusplus)
    CARD8  	c_class;
#else
    CARD8  	class;
#endif
    CARD8  	length;
    CARD8	num_buttons;
    BYTE   	pad1;
    CARD8  	buttons[32];
} xButtonState;

typedef struct {
#if defined(__cplusplus) || defined(c_plusplus)
    CARD8  	c_class;
#else
    CARD8  	class;
#endif
    CARD8  	length;
    CARD8  	num_valuators;
    CARD8	mode;
} xValuatorState;

/*********************************************************
 *
 * SendExtensionEvent.
 * THIS REQUEST MUST BE KEPT A MULTIPLE OF 8 BYTES IN LENGTH!
 * MORE EVENTS MAY FOLLOW AND THEY MUST BE QUAD-ALIGNED!
 *
 */

typedef struct {
    CARD8	reqType;
    CARD8 	ReqType;        /* always X_SendExtensionEvent */
    CARD16 	length B16;
    Window	destination B32;
    CARD8   	deviceid;
    BOOL   	propagate;
    CARD16	count B16;
    CARD8	num_events;
    BYTE	pad1,pad2,pad3;
} xSendExtensionEventReq;

/*********************************************************
 *
 * DeviceBell.
 *
 */

typedef struct {
    CARD8	reqType;
    CARD8 	ReqType;        /* always X_DeviceBell */
    CARD16 	length B16;
    CARD8   	deviceid;
    CARD8	feedbackid;
    CARD8	feedbackclass;
    INT8	percent;
} xDeviceBellReq;

/*********************************************************
 *
 * SetDeviceValuators.
 *
 */

typedef struct {
    CARD8 	reqType;	/* input extension major code	*/
    CARD8 	ReqType;     	/* always X_SetDeviceValuators 	*/
    CARD16 	length B16;
    CARD8       deviceid;
    CARD8       first_valuator;
    CARD8       num_valuators;
    BYTE 	pad1;
} xSetDeviceValuatorsReq;

typedef struct {
    CARD8 	repType;  	/* X_Reply 			*/
    CARD8 	RepType;     	/* always X_SetDeviceValuators 	*/
    CARD16 	sequenceNumber B16;
    CARD32 	length B32;
    CARD8 	status;
    BYTE	pad1, pad2, pad3;
    CARD32 	pad01 B32;
    CARD32 	pad02 B32;
    CARD32 	pad03 B32;
    CARD32 	pad04 B32;
    CARD32 	pad05 B32;
} xSetDeviceValuatorsReply;

/*********************************************************
 *
 * GetDeviceControl.
 *
 */

typedef struct {
    CARD8 	reqType;	/* input extension major code	*/
    CARD8 	ReqType;     	/* always X_GetDeviceControl 	*/
    CARD16 	length B16;
    CARD16      control B16;
    CARD8       deviceid;
    BYTE 	pad2;
} xGetDeviceControlReq;

typedef struct {
    CARD8 	repType;  	/* X_Reply 			*/
    CARD8 	RepType;     	/* always X_GetDeviceControl 	*/
    CARD16 	sequenceNumber B16;
    CARD32 	length B32;
    CARD8 	status;
    BYTE	pad1, pad2, pad3;
    CARD32 	pad01 B32;
    CARD32 	pad02 B32;
    CARD32 	pad03 B32;
    CARD32 	pad04 B32;
    CARD32 	pad05 B32;
} xGetDeviceControlReply;

typedef struct {
    CARD16  	control B16; 	/* control type     	 	*/
    CARD16  	length B16; 	/* control length  		*/
} xDeviceState;

typedef struct {
    CARD16  	control B16; 		/* control type     	 	*/
    CARD16  	length B16; 		/* control length  		*/
    CARD32  	num_valuators B32; 	/* number of valuators		*/
} xDeviceResolutionState;

typedef struct {
     CARD16         control B16;
     CARD16         length B16;
     INT32          min_x B32;
     INT32          max_x B32;
     INT32          min_y B32;
     INT32          max_y B32;
     CARD32         flip_x B32;
     CARD32         flip_y B32;
     CARD32         rotation B32;
     CARD32         button_threshold B32;
} xDeviceAbsCalibState;

typedef struct {
     CARD16         control B16;
     CARD16         length B16;
     CARD32         offset_x B32;
     CARD32         offset_y B32;
     CARD32         width B32;
     CARD32         height B32;
     CARD32         screen B32;
     CARD32         following B32;
} xDeviceAbsAreaState;

typedef struct {
    CARD16      control B16;            /* control type                 */
    CARD16      length  B16;            /* control length               */
    CARD8       status;
    CARD8       iscore;
    CARD16      pad1 B16;
} xDeviceCoreState;

typedef struct {
    CARD16      control B16;            /* control type                 */
    CARD16      length  B16;            /* control length               */
    CARD8       enable;
    CARD8       pad0;
    CARD16      pad1 B16;
} xDeviceEnableState;

/*********************************************************
 *
 * ChangeDeviceControl.
 *
 */

typedef struct {
    CARD8 	reqType;	/* input extension major code	*/
    CARD8 	ReqType;     	/* always X_ChangeDeviceControl */
    CARD16 	length B16;
    CARD16      control B16;
    CARD8       deviceid;
    BYTE        pad0;
} xChangeDeviceControlReq;

typedef struct {
    CARD8 	repType;  	/* X_Reply 			*/
    CARD8 	RepType;     	/* always X_ChangeDeviceControl	*/
    CARD16 	sequenceNumber B16;
    CARD32 	length B32;
    CARD8 	status;
    BYTE	pad1, pad2, pad3;
    CARD32 	pad01 B32;
    CARD32 	pad02 B32;
    CARD32 	pad03 B32;
    CARD32 	pad04 B32;
    CARD32 	pad05 B32;
} xChangeDeviceControlReply;

typedef struct {
    CARD16  	control B16; 	/* control type     	 	*/
    CARD16  	length B16; 	/* control length  		*/
} xDeviceCtl;

typedef struct {
    CARD16  	control B16; 		/* control type     	 	*/
    CARD16  	length B16; 		/* control length  		*/
    CARD8  	first_valuator; 	/* first valuator to change     */
    CARD8  	num_valuators; 		/* number of valuators to change*/
    CARD8  	pad1,pad2;
} xDeviceResolutionCtl;

typedef struct {
     CARD16         control B16;
     CARD16         length B16;
     INT32          min_x;
     INT32          max_x;
     INT32          min_y;
     INT32          max_y;
     CARD32         flip_x;
     CARD32         flip_y;
     CARD32         rotation;
     CARD32         button_threshold;
} xDeviceAbsCalibCtl;

typedef struct {
     CARD16         control B16;
     CARD16         length B16;
     CARD32         offset_x;
     CARD32         offset_y;
     INT32          width;
     INT32          height;
     INT32          screen;
     CARD32         following;
} xDeviceAbsAreaCtl;

typedef struct {
    CARD16          control B16;
    CARD16          length  B16;
    CARD8           status;
    CARD8           pad0;
    CARD16          pad1 B16;
} xDeviceCoreCtl;

typedef struct {
    CARD16          control B16;
    CARD16          length  B16;
    CARD8           enable;
    CARD8           pad0;
    CARD16          pad1 B16;
} xDeviceEnableCtl;

/**********************************************************
 *
 * Input extension events.
 *
 * DeviceValuator
 *
 */

typedef struct
    {
    BYTE 	type;
    CARD8       deviceid;
    CARD16 	sequenceNumber B16;
    KeyButMask  device_state B16;
    CARD8	num_valuators;
    CARD8       first_valuator;
    INT32 	valuator0 B32;
    INT32 	valuator1 B32;
    INT32 	valuator2 B32;
    INT32 	valuator3 B32;
    INT32 	valuator4 B32;
    INT32 	valuator5 B32;
    }  deviceValuator;

/**********************************************************
 *
 * DeviceKeyButtonPointer.
 *
 * Used for: DeviceKeyPress, DeviceKeyRelease,
 *	     DeviceButtonPress, DeviceButtonRelease,
 *	     ProximityIn, ProximityOut
 *	     DeviceMotionNotify,
 *
 */

typedef struct
    {
    BYTE 	type;
    BYTE        detail;
    CARD16 	sequenceNumber B16;
    Time        time B32;
    Window      root B32;
    Window      event B32;
    Window      child B32;
    INT16       root_x B16;
    INT16       root_y B16;
    INT16       event_x B16;
    INT16       event_y B16;
    KeyButMask  state B16;
    BOOL        same_screen;
    CARD8       deviceid;
    }  deviceKeyButtonPointer;

/**********************************************************
 *
 * DeviceFocus.
 *
 */

typedef struct
    {
    BYTE 	type;
    BYTE        detail;
    CARD16 	sequenceNumber B16;
    Time        time B32;
    Window      window B32;
    BYTE	mode;
    CARD8       deviceid;
    BYTE	pad1, pad2;
    CARD32	pad00 B32;
    CARD32	pad01 B32;
    CARD32	pad02 B32;
    CARD32	pad03 B32;
    }  deviceFocus;

/**********************************************************
 *
 * DeviceStateNotify.
 *
 * Note that the two high-order bits in the classes_reported
 * field are the proximity state (InProximity or OutOfProximity),
 * and the device mode (Absolute or Relative), respectively.
 *
 */

typedef struct
    {
    BYTE 	type;
    BYTE        deviceid;
    CARD16 	sequenceNumber B16;
    Time        time B32;
    CARD8	num_keys;
    CARD8	num_buttons;
    CARD8	num_valuators;
    CARD8       classes_reported;
    CARD8       buttons[4];
    CARD8       keys[4];
    INT32	valuator0 B32;
    INT32	valuator1 B32;
    INT32	valuator2 B32;
    }  deviceStateNotify;

/**********************************************************
 *
 * DeviceKeyStateNotify.
 *
 */

typedef struct
    {
    BYTE 	type;
    BYTE        deviceid;
    CARD16 	sequenceNumber B16;
    CARD8       keys[28];
    }  deviceKeyStateNotify;

/**********************************************************
 *
 * DeviceButtonStateNotify.
 *
 */

typedef struct
    {
    BYTE 	type;
    BYTE        deviceid;
    CARD16 	sequenceNumber B16;
    CARD8       buttons[28];
    }  deviceButtonStateNotify;

/**********************************************************
 *
 * DeviceMappingNotify.
 * Fields must be kept in sync with core mappingnotify event.
 *
 */

typedef struct
    {
    BYTE 	type;
    BYTE        deviceid;
    CARD16 	sequenceNumber B16;
    CARD8       request;
    KeyCode     firstKeyCode;
    CARD8       count;
    BYTE        pad1;
    Time        time B32;
    CARD32	pad00 B32;
    CARD32	pad01 B32;
    CARD32	pad02 B32;
    CARD32	pad03 B32;
    CARD32	pad04 B32;
    }  deviceMappingNotify;

/**********************************************************
 *
 * ChangeDeviceNotify.
 *
 */

typedef struct
    {
    BYTE 	type;
    BYTE        deviceid;
    CARD16 	sequenceNumber B16;
    Time        time B32;
    CARD8       request;
    BYTE        pad1, pad2, pad3;
    CARD32	pad00 B32;
    CARD32	pad01 B32;
    CARD32	pad02 B32;
    CARD32	pad03 B32;
    CARD32	pad04 B32;
    }  changeDeviceNotify;

/**********************************************************
 *
 * devicePresenceNotify.
 *
 */

typedef struct
    {
    BYTE 	type;
    BYTE        pad00;
    CARD16 	sequenceNumber B16;
    Time        time B32;
    BYTE        devchange; /* Device{Added|Removed|Enabled|Disabled} */
    BYTE        deviceid;
    CARD16      control B16;
    CARD32	pad02 B32;
    CARD32	pad03 B32;
    CARD32	pad04 B32;
    CARD32	pad05 B32;
    CARD32	pad06 B32;
    }  devicePresenceNotify;
*)

implementation

end.

