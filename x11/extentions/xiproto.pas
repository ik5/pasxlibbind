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

{.$DEFINE NoXMD}

interface

uses
  ctypes, x, xlib, xi {$IFNDEF NoXMD}, xmd{$ENDIF};

{$IFDEF NoXMD}
type
{$IFDEF CPU64}
  TCARD64 = culong;
  TCARD32 = cuint;
  TINT64  = clong;
  {$IFDEF UNSIGNEDBITFIELDS}
    TINT32 = cuint32;
    TINT16 = cuint16;
  {$ELSE UNSIGNEDBITFIELDS}
    TINT32 = cint32;
    TINT16 = cint16;
  {$ENDIF}
{$ELSE CPU64}
{$IFDEF CPU32}
  TCARD32 = culong;
  TINT64  = cint64;
  TINT32  = cint32;
  TINT16  = cint16;
{$ENDIF CPU32}
{$ENDIF CPU64}

   TCARD16 = cushort;
   TCARD8  = cuchar;
   TByte   = cuchar;
   TBool   = cuchar;
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

(*********************************************************
 *
 * GetFeedbackControl.
 *
 *)

 PxGetFeedbackControlReq = ^TxGetFeedbackControlReq;
 TxGetFeedbackControlReq = bitpacked record
                             reqType          : TCARD8;   // input extension major code
                             ReqType2         : TCARD8;   // X_GetFeedbackControl
                             length           : TCARD16;
                             deviceid         : TCARD8;
                             pad1, pad2, pad3 : TByte;
                           end;

 PxGetFeedbackControlReply = ^TxGetFeedbackControlReply;
 TxGetFeedbackControlReply = bitpacked record
                               reqType          : TCARD8;   // input extension major code
                               ReqType2         : TCARD8;   // always X_GetFeedbackControl
                               sequenceNumber   : TCARD16;
                               length           : TCARD32;
                               num_feedbacks    : TCARD16;
                               pad01            : TCARD16;
                               pad02            : TCARD32;
                               pad03            : TCARD32;
                               pad04            : TCARD32;
                               pad05            : TCARD32;
                               pad06            : TCARD32;
                             end;

 PxFeedbackState = ^TxFeedbackState;
 TxFeedbackState = bitpacked record
                     c_class : TCARD8;  // feedback class
                     id      : TCARD8;  // feedback id
                     length  : TCARD16; // feedback length
                   end;

 PxKbdFeedbackState = ^TxKbdFeedbackState;
 TxKbdFeedbackState = bitpacked record
                        c_class            : TCARD8;
                        id                 : TCARD8;
                        length             : TCARD16;
                        pitch              : TCARD16;
                        duration           : TCARD16;
                        led_mask           : TCARD32;
                        led_values         : TCARD32;
                        global_auto_repeat : cbool;
                        click              : TCARD8;
                        percent            : TCARD8;
                        pad                : TByte;
                        auto_repeats       : array[0..31] of TByte;
                      end;

 PxPtrFeedbackState = ^TxPtrFeedbackState;
 TxPtrFeedbackState = bitpacked record
                        c_class    : TCARD8;
                        id         : TCARD8;
                        length     : TCARD16;
                        pad1, pad2 : TCARD8;
                        accelNum   : TCARD16;
                        accelDenom : TCARD16;
                        threshold  : TCARD16;
                      end;

 PxIntegerFeedbackState = ^TxIntegerFeedbackState;
 TxIntegerFeedbackState = bitpacked record
                            c_class    : TCARD8;   // feedback class id
                            id         : TCARD8;
                            length     : TCARD16;  // feedback length
                            resolution : TCARD32;
                            min_value  : TINT32;
                            max_value  : TINT32;
                          end;

 PxStringFeedbackState = ^TxStringFeedbackState;
 TxStringFeedbackState = bitpacked record
                           c_class            : TCARD8;   // feedback class id
                           id                 : TCARD8;
                           length             : TCARD16;  // feedback length
                           max_symbols        : TCARD16;
                           num_syms_supported : TCARD16;
                         end;

 PxBellFeedbackState = ^TxBellFeedbackState;
 TxBellFeedbackState = bitpacked record
                         c_class          : TCARD8;   // feedback class id
                         id               : TCARD8;
                         length           : TCARD16;  // feedback length
                         percent          : TCARD8;
                         pad1, pad2, pad3 : TByte;
                         pitch            : TCARD16;
                         duration         : TCARD16;
                       end;

 PxLedFeedbackState = ^TxLedFeedbackState;
 TxLedFeedbackState = bitpacked record
                        c_class    : TCARD8;   // feedback class id
                        id         : TCARD8;
                        length     : TCARD16;  // feedback length
                        led_mask   : TCARD32;
                        led_values : TCARD32;
                      end;

(*********************************************************
 *
 * ChangeFeedbackControl.
 *
 *)
 PxChangeFeedbackControlReq = ^TxChangeFeedbackControlReq;
 TxChangeFeedbackControlReq = bitpacked record
                                reqType    : TCARD8;  // input extension major code
                                ReqType2   : TCARD8;  // X_ChangeFeedbackControl
                                length     : TCARD16;
                                mask       : TCARD32;
                                deviceid   : TCARD8;
                                feedbackid : TCARD8;
                                pad1, pad2 : TByte;
                              end;

 PxFeedbackCtl = ^TxFeedbackCtl;
 TxFeedbackCtl = bitpacked record
                   c_class  : TCARD8;  // feedback class id
                   id       : TCARD8;  // feedback id
                   length   : TCARD16; // feedback length
                 end;

 PxKbdFeedbackCtl = ^TxKbdFeedbackCtl;
 TxKbdFeedbackCtl = bitpacked record
                      c_class          : TCARD8;   // feedback class id
                      id               : TCARD8;   // feedback id
                      length           : TCARD16;  // feedback length
                      key              : TKeyCode;
                      auto_repeat_mode : TCARD8;
                      click            : TINT8;
                      percent          : TINT8;
                      pitch            : TINT16;
                      duration         : TINT16;
                      led_mask         : TCARD32;
                      led_values       : TCARD32;
                    end;

 PxPtrFeedbackCtl = ^TxPtrFeedbackCtl;
 TxPtrFeedbackCtl = bitpacked record
                      c_class    : TCARD8;  // feedback class id
                      id         : TCARD8;  // feedback id
                      length     : TCARD16; // feedback length
                      pad1, pad2 : TCARD8;
                      num        : TINT16;
                      denom      : TINT16;
                      thresh     : TINT16;
                    end;

  PxIntegerFeedbackCtl = ^TxIntegerFeedbackCtl;
  TxIntegerFeedbackCtl = bitpacked record
                           c_class        : TCARD8;  // feedback class id
                           id             : TCARD8;  // feedback id
                           length         : TCARD16; // feedback length
                           int_to_display : TINT32;
                         end;

 PxStringFeedbackCtl = ^TxStringFeedbackCtl;
 TxStringFeedbackCtl = bitpacked record
                         c_class     : TCARD8;  // feedback class id
                         id          : TCARD8;  // feedback id
                         length      : TCARD16; // feedback length
                         pad1, pad2  : TCARD8;
                         num_keysyms : TCARD16;
                       end;

 PxBellFeedbackCtl = ^TxBellFeedbackCtl;
 TxBellFeedbackCtl = bitpacked record
                       c_class          : TCARD8;  // feedback class id
                       id               : TCARD8;  // feedback id
                       length           : TCARD16; // feedback length
                       percent          : TINT8;
                       pad1, pad2, pad3 : TByte;
                       pitch            : TINT16;
                       duration         : TINT16;
                     end;

 PxLedFeedbackCtl = ^TxLedFeedbackCtl;
 TxLedFeedbackCtl = bitpacked record
                      c_class    : TCARD8;  // feedback class id
                      id         : TCARD8;  // feedback id
                      length     : TCARD16; // feedback length
                      led_mask   : TCARD32;
                      led_values : TCARD32;
                    end;

(*********************************************************
 *
 * GetDeviceKeyMapping.
 *
 *)
 PxGetDeviceKeyMappingReq =^TxGetDeviceKeyMappingReq;
 TxGetDeviceKeyMappingReq = bitpacked record
                              reqType      : TCARD8;   // input extension major code
                              ReqType2     : TCARD8;   // always X_GetDeviceKeyMapping
                              length       : TCARD16;
                              deviceid     : TCARD8;
                              firstKeyCode : TKeyCode;
                              count        : TCARD8;
                              pad1         : TByte;
                            end;

 PxGetDeviceKeyMappingReply = ^TxGetDeviceKeyMappingReply;
 TxGetDeviceKeyMappingReply = bitpacked record
                                reqType           : TCARD8;   // X_Reply
                                ReqType2          : TCARD8;   // always X_GetDeviceKeyMapping
                                sequenceNumber    : TCARD16;
                                length            : TCARD32;
                                keySymsPerKeyCode : TCARD8;
                                pad0              : TCARD8;
                                pad1              : TCARD16;
                                pad2              : TCARD32;
                                pad3              : TCARD32;
                                pad4              : TCARD32;
                                pad5              : TCARD32;
                                pad6              : TCARD32;
                              end;

(*********************************************************
 *
 * ChangeDeviceKeyMapping.
 *
 *)
 PxChangeDeviceKeyMappingReq = ^TxChangeDeviceKeyMappingReq;
 TxChangeDeviceKeyMappingReq = bitpacked record
                                 reqType           : TCARD8;   // input extension major code
                                 ReqType2          : TCARD8;   // always X_ChangeDeviceKeyMapping
                                 length            : TCARD16;
                                 deviceid          : TCARD8;
                                 firstKeyCode      : TKeyCode;
                                 keySymsPerKeyCode : TCARD8;
                                 keyCodes          : TCARD8;
                               end;

(*********************************************************
 *
 * GetDeviceModifierMapping.
 *
 *)
 PxGetDeviceModifierMappingReq = ^TxGetDeviceModifierMappingReq;
 TxGetDeviceModifierMappingReq = bitpacked record
                                   reqType          : TCARD8;   // input extension major code
                                   ReqType2         : TCARD8;   // always X_GetDeviceModifierMapping
                                   length           : TCARD16;
                                   deviceid         : TCARD8;
                                   pad1, pad2, pad3 : TByte;
                                 end;

 PxGetDeviceModifierMappingReply = ^TxGetDeviceModifierMappingReply;
 TxGetDeviceModifierMappingReply = bitpacked record
                                     reqType           : TCARD8;   // X_Reply
                                     ReqType2          : TCARD8;   // always X_GetDeviceModifierMapping
                                     sequenceNumber    : TCARD16;
                                     length            : TCARD32;
                                     numKeyPerModifier : TCARD8;
                                     pad0              : TCARD8;
                                     pad1              : TCARD16;
                                     pad2              : TCARD32;
                                     pad3              : TCARD32;
                                     pad4              : TCARD32;
                                     pad5              : TCARD32;
                                     pad6              : TCARD32;
                                   end;

(*********************************************************
 *
 * SetDeviceModifierMapping.
 *
 *)
 PxSetDeviceModifierMappingReq = ^TxSetDeviceModifierMappingReq;
 TxSetDeviceModifierMappingReq = bitpacked record
                                   reqType           : TCARD8;   // input extension major code
                                   ReqType2          : TCARD8;   // always X_SetDeviceModifierMapping
                                   length            : TCARD16;
                                   deviceid          : TCARD8;
                                   numKeyPerModifier : TCARD8;
                                   pad1              : TCARD16;
                                 end;

 PxSetDeviceModifierMappingReply = ^TxSetDeviceModifierMappingReply;
 TxSetDeviceModifierMappingReply = bitpacked record
                                     reqType        : TCARD8;   // X_Reply
                                     ReqType2       : TCARD8;   // always X_SetDeviceModifierMapping
                                     sequenceNumber : TCARD16;
                                     length         : TCARD32;
                                     success        : TCARD8;
                                     pad0           : TCARD8;
                                     pad1           : TCARD16;
                                     pad2           : TCARD32;
                                     pad3           : TCARD32;
                                     pad4           : TCARD32;
                                     pad5           : TCARD32;
                                     pad6           : TCARD32;
                                   end;

(*********************************************************
 *
 * GetDeviceButtonMapping.
 *
 *)
 PxGetDeviceButtonMappingReq = ^TxGetDeviceButtonMappingReq;
 TxGetDeviceButtonMappingReq = bitpacked record
                                 reqType          : TCARD8;   // input extension major code
                                 ReqType2         : TCARD8;   // X_GetDeviceButtonMapping
                                 length           : TCARD16;
                                 deviceid         : TCARD8;
                                 pad1, pad2, pad3 : TByte;
                               end;

 PxGetDeviceButtonMappingReply = ^TxGetDeviceButtonMappingReply;
 TxGetDeviceButtonMappingReply = bitpacked record
                                    reqType          : TCARD8;   // X_Reply
                                    ReqType2         : TCARD8;   // always X_GetDeviceButtonMapping
                                    sequenceNumber   : TCARD16;
                                    length           : TCARD32;
                                    nElts            : TCARD8;
                                    pad1, pad2, pad3 : TByte;
                                    pad01            : TCARD32;
                                    pad02            : TCARD32;
                                    pad03            : TCARD32;
                                    pad04            : TCARD32;
                                    pad05            : TCARD32;
                                 end;

(*********************************************************
 *
 * SetDeviceButtonMapping.
 *
 *)
 PxSetDeviceButtonMappingReq = ^TxSetDeviceButtonMappingReq;
 TxSetDeviceButtonMappingReq = bitpacked record
                                 reqType          : TCARD8;   // input extension major code
                                 ReqType2         : TCARD8;   // X_SetDeviceButtonMapping
                                 length           : TCARD16;
                                 deviceid         : TCARD8;
                                 map_length       : TCARD8;
                                 pad1, pad2, pad3 : TByte;
                               end;

 PxSetDeviceButtonMappingReply = ^TxSetDeviceButtonMappingReply;
 TxSetDeviceButtonMappingReply = bitpacked record
                                   reqType        : TCARD8;   // X_Reply
                                   ReqType2       : TCARD8;   // always X_SetDeviceButtonMapping
                                   sequenceNumber : TCARD16;
                                   length         : TCARD32;
                                   status         : TCARD8;
                                   pad0           : TByte;
                                   pad1           : TCARD16;
                                   pad2           : TCARD32;
                                   pad3           : TCARD32;
                                   pad4           : TCARD32;
                                   pad5           : TCARD32;
                                   pad6           : TCARD32;
                                 end;

(*********************************************************
 *
 * QueryDeviceState.
 *
 *)
 PxQueryDeviceStateReq = ^TxQueryDeviceStateReq;
 TxQueryDeviceStateReq = bitpacked record
                           reqType          : TCARD8;
                           ReqType2         : TCARD8;   // always X_QueryDeviceState
                           length           : TCARD16;
                           deviceid         : TCARD8;
                           pad1, pad2, pad3 : TByte;
                         end;

 PxQueryDeviceStateReply = ^TxQueryDeviceStateReply;
 TxQueryDeviceStateReply = bitpacked record
                             reqType        : TCARD8;   // X_Reply
                             ReqType2       : TCARD8;   // always X_QueryDeviceState
                             sequenceNumber : TCARD16;
                             length         : TCARD32;
                             num_classes    : TCARD8;
                             pad0           : TByte;
                             pad1           : TCARD16;
                             pad2           : TCARD32;
                             pad3           : TCARD32;
                             pad4           : TCARD32;
                             pad5           : TCARD32;
                             pad6           : TCARD32;
                           end;

 PxKeyState = ^TxKeyState;
 TxKeyState = bitpacked record
                c_class  : TCARD8;
                length   : TCARD8;
                num_keys : TCARD8;
                pad1     : TByte;
                keys     : array[0..31] of TCARD8;
              end;

 PxButtonState = ^TxButtonState;
 TxButtonState = bitpacked record
                   c_class     : TCARD8;
                   length      : TCARD8;
                   num_buttons : TCARD8;
                   pad1        : TByte;
                   buttons     : array[0..31] of TCARD8;
                 end;

 PxValuatorState = ^TxValuatorState;
 TxValuatorState = record
                     c_class       : TCARD8;
                     length        : TCARD8;
                     num_valuators : TCARD8;
                     mode          : TCARD8;
                   end;

(*********************************************************
 *
 * SendExtensionEvent.
 * THIS REQUEST MUST BE KEPT A MULTIPLE OF 8 BYTES IN LENGTH!
 * MORE EVENTS MAY FOLLOW AND THEY MUST BE QUAD-ALIGNED!
 *
 *)
 PxSendExtensionEventReq = ^TxSendExtensionEventReq;
 TxSendExtensionEventReq = bitpacked record
                             reqType          : TCARD8;
                             ReqType2         : TCARD8;   // always X_SendExtensionEvent
                             length           : TCARD16;
                             destination      : TWindow;
                             deviceid         : TCARD8;
                             propagate        : TBool;
                             count            : TCARD16;
                             num_events       : TCARD8;
                             pad1, pad2, pad3 : TByte;
                           end;

(*********************************************************
 *
 * DeviceBell.
 *
 *)
 PxDeviceBellReq = ^TxDeviceBellReq;
 TxDeviceBellReq = bitpacked record
                     reqType       : TCARD8;
                     ReqType2      : TCARD8;   // always X_DeviceBell
                     length        : TCARD16;
                     deviceid      : TCARD8;
                     feedbackid    : TCARD8;
                     feedbackclass : TCARD8;
                     percent       : TINT8;
                   end;

(*********************************************************
 *
 * SetDeviceValuators.
 *
 *)
 PxSetDeviceValuatorsReq = ^TxSetDeviceValuatorsReq;
 TxSetDeviceValuatorsReq = bitpacked record
                             reqType        : TCARD8;   // input extension major code
                             ReqType2       : TCARD8;   // always X_SetDeviceValuators
                             length         : TCARD16;
                             deviceid       : TCARD8;
                             first_valuator : TCARD8;
                             num_valuators  : TCARD8;
                             pad1           : TByte;
                           end;

 PxSetDeviceValuatorsReply = ^TxSetDeviceValuatorsReply;
 TxSetDeviceValuatorsReply = bitpacked record
                               reqType          : TCARD8;   // X_Reply
                               ReqType2         : TCARD8;   // always X_SetDeviceValuators
                               sequenceNumber   : TCARD16;
                               length           : TCARD32;
                               status           : TCARD8;
                               pad1, pad2, pad3 : TByte;
                               pad01            : TCARD32;
                               pad02            : TCARD32;
                               pad03            : TCARD32;
                               pad04            : TCARD32;
                               pad05            : TCARD32;
                             end;

(*********************************************************
 *
 * GetDeviceControl.
 *
 *)
 PxGetDeviceControlReq = ^TxGetDeviceControlReq;
 TxGetDeviceControlReq = bitpacked record
                           reqType   : TCARD8;   // input extension major code
                           ReqType2  : TCARD8;   // always X_GetDeviceControl
                           length    : TCARD16;
                           control   : TCARD16;
                           deviceid  : TCARD8;
                           pad2      : TByte;
                         end;

 PxGetDeviceControlReply = ^TxGetDeviceControlReply;
 TxGetDeviceControlReply = bitpacked record
                             reqType          : TCARD8;   // X_Reply
                             ReqType2         : TCARD8;   // always X_GetDeviceControl
                             sequenceNumber   : TCARD16;
                             length           : TCARD32;
                             status           : TCARD8;
                             pad1, pad2, pad3 : TByte;
                             pad01            : TCARD32;
                             pad02            : TCARD32;
                             pad03            : TCARD32;
                             pad04            : TCARD32;
                             pad05            : TCARD32;
                           end;

 PxDeviceState = ^TxDeviceState;
 TxDeviceState = bitpacked record
                   control : TCARD16; // control type
                   length  : TCARD16; // control length
                 end;

 PxDeviceResolutionState = ^TxDeviceResolutionState;
 TxDeviceResolutionState = bitpacked record
                             control       : TCARD16; // control type
                             length        : TCARD16; // control length
                             num_valuators : TCARD32; // number of valuators
                           end;

 PxDeviceAbsCalibState = ^TxDeviceAbsCalibState;
 TxDeviceAbsCalibState = bitpacked record
                           control          : TCARD16;
                           length           : TCARD16;
                           min_x            : TINT32;
                           max_x            : TINT32;
                           min_y            : TINT32;
                           max_y            : TINT32;
                           flip_x           : TCARD32;
                           flip_y           : TCARD32;
                           rotation         : TCARD32;
                           button_threshold : TCARD32;
                         end;

 PxDeviceAbsAreaState = ^TxDeviceAbsAreaState;
 TxDeviceAbsAreaState = bitpacked record
                          control   : TCARD16;
                          length    : TCARD16;
                          offset_x  : TCARD32;
                          offset_y  : TCARD32;
                          width     : TCARD32;
                          height    : TCARD32;
                          screen    : TCARD32;
                          following : TCARD32;
                        end;

 PxDeviceCoreState = ^TxDeviceCoreState;
 TxDeviceCoreState = bitpacked record
                       control : TCARD16; // control type
                       length  : TCARD16; // control length
                       status  : TCARD8;
                       iscore  : TCARD8;
                       pad1    : TCARD8;
                     end;

 PxDeviceEnableState = ^TxDeviceEnableState;
 TxDeviceEnableState = bitpacked record
                         control : TCARD16; // control type
                         length  : TCARD16; // control length
                         enable  : TCARD8;
                         pad0    : TCARD8;
                         pad1    : TCARD16;
                       end;

(*
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

