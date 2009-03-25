(*
 * Copyright (C) 2001-2004 Bart Massey and Jamey Sharp.
 * All Rights Reserved.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a
 * copy of this software and associated documentation files (the "Software"),
 * to deal in the Software without restriction, including without limitation
 * the rights to use, copy, modify, merge, publish, distribute, sublicense,
 * and/or sell copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN
 * ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
 * CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 *
 * Except as contained in this notice, the names of the authors or their
 * institutions shall not be used in advertising or otherwise to promote the
 * sale, use or other dealings in this Software without prior written
 * authorization from the authors.
 *)
unit xcbext;

{$mode fpc}{$PACKRECORDS C}{$MACRO ON}{$CALLING CDECL}

interface

uses
  ctypes, {unixtype,} BaseUnix, xcb_types;

type
(* xcb_ext.c *)
 Pxcb_extension_t = ^Txcb_extension_t;
 Txcb_extension_t = record
                      name      : PChar;
                      global_id : cint;
                    end;

(* xcb_out.c *)
  Pxcb_protocol_request_t = ^Txcb_protocol_request_t;
  Txcb_protocol_request_t = record
                              count  : size_t;
                              ext    : Pxcb_extension_t;
                              opcode : cuint8;
                              isvoid : cuint8;
                            end;

  Pxcb_send_request_flags_t = ^Txcb_send_request_flags_t;
  Txcb_send_request_flags_t = cint;

const
  XCB_REQUEST_CHECKED       = 1 shl 0;
  XCB_REQUEST_RAW           = 1 shl 0;
  XCB_REQUEST_DISCARD_REPLY = 1 shl 2;

function xcb_send_request(c : Pxcb_connection_t; flags : cint; vector : piovec;
                          request : Pxcb_protocol_request_t) : cint;
  external libXCB;

type
  Preturn_socket = ^Treturn_socket;
  Treturn_socket = procedure (closure : Pointer);

(* xcb_take_socket allows external code to ask XCB for permission to
 * take over the write side of the socket and send raw data with
 * xcb_writev. xcb_take_socket provides the sequence number of the last
 * request XCB sent. The caller of xcb_take_socket must supply a
 * callback which XCB can call when it wants the write side of the
 * socket back to make a request. This callback synchronizes with the
 * external socket owner, flushes any output queues if appropriate, and
 * then returns the sequence number of the last request sent over the
 * socket. *)

function xcb_take_socket(c : Pxcb_connection_t; return_socket : Treturn_socket;
                         closure : Pointer; flags : cint; sent : pcuint64) : cint;
  external libXCB;

(* You must own the write-side of the socket (you've called
 * xcb_take_socket, and haven't returned from return_socket yet) to call
 * xcb_writev. Also, the iovec must have at least 1 byte of data in it.
 * *)

function xcb_writev(c : Pxcb_connection_t; vector : piovec; count : cint; requests : cuint64) : cint;
  external libXCB;

(* xcb_in.c *)
function xcb_wait_for_reply(c : Pxcb_connection_t; request: cuint; e : PPxcb_generic_error_t) : pointer;
  external libXCB;

function xcb_poll_for_reply(c : Pxcb_connection_t; request: cuint; replay : PPointer;
                            error : PPxcb_generic_error_t) : cint;
  external libXCB;

function xcb_popcount(mask : cuint32) : cint;
  external libXCB;

implementation

end.

