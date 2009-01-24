(*
 * Copyright (C) 2001-2006 Bart Massey, Jamey Sharp, and Josh Triplett.
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
unit xcb;

{$mode fpc}{$PACKRECORDS C}{$MACRO ON}{$CALLING CDECL}

interface

uses
  ctypes,
  xcb_types // Instead oc circular usageo f xcbproto
  ;

const
  libXCB            = 'libxcb';
  libXCBEvent       = 'libxcb-event';
  libXCBRenderUtils = 'libxcb-render-util';

(**
 * @defgroup XCB_Core_API XCB Core API
 * @brief Core API of the XCB library.
 *
 * @{
 *)

function XCB_TYPE_PAD(const T, I : clong) : clong;

(* xcb_out.c *)

(**
 * @brief Forces any buffered output to be written to the server.
 * @param c: The connection to the X server.
 * @return > @c 0 on success, <= @c 0 otherwise.
 *
 * Forces any buffered output to be written to the server. Blocks
 * until the write is complete.
 *)
function xcb_flush(c : Pxcb_connection_t) : cint;
  external libXCBRenderUtils;

(**
 * @brief Returns the maximum request length that this server accepts.
 * @param c: The connection to the X server.
 * @return The maximum request length field.
 *
 * In the absence of the BIG-REQUESTS extension, returns the
 * maximum request length field from the connection setup data, which
 * may be as much as 65535. If the server supports BIG-REQUESTS, then
 * the maximum request length field from the reply to the
 * BigRequestsEnable request will be returned instead.
 *
 * Note that this length is measured in four-byte units, making the
 * theoretical maximum lengths roughly 256kB without BIG-REQUESTS and
 * 16GB with.
 *)
function xcb_get_maximum_request_length(c : Pxcb_connection_t) : cuint32;
  external libXCB;

(**
 * @brief Prefetch the maximum request length without blocking.
 * @param c: The connection to the X server.
 *
 * Without blocking, does as much work as possible toward computing
 * the maximum request length accepted by the X server.
 *
 * Invoking this function may cause a call to xcb_big_requests_enable,
 * but will not block waiting for the reply.
 * xcb_get_maximum_request_length will return the prefetched data
 * after possibly blocking while the reply is retrieved.
 *
 * Note that in order for this function to be fully non-blocking, the
 * application must previously have called
 * xcb_prefetch_extension_data(c, &xcb_big_requests_id) and the reply
 * must have already arrived.
 *)
procedure xcb_prefetch_maximum_request_length(c : Pxcb_connection_t);
  external libXCB;

(* xcb_in.c *)

(**
 * @brief Returns the next event or error from the server.
 * @param c: The connection to the X server.
 * @return The next event from the server.
 *
 * Returns the next event or error from the server, or returns null in
 * the event of an I/O error. Blocks until either an event or error
 * arrive, or an I/O error occurs.
 *)
function xcb_wait_for_event(c : Pxcb_connection_t) : Pxcb_generic_event_t;
  external libXCBEvent;

(**
 * @brief Returns the next event or error from the server.
 * @param c: The connection to the X server.
 * error status of the operation.
 * @return The next event from the server.
 *
 * Returns the next event or error from the server, if one is
 * available, or returns @c NULL otherwise. If no event is available, that
 * might be because an I/O error like connection close occurred while
 * attempting to read the next event, in which case the connection is
 * shut down when this function returns.
 *)
function xcb_poll_for_event(c : Pxcb_connection_t) : Pxcb_generic_event_t;
  external libXCBEvent;

(**
 * @brief Return the error for a request, or NULL if none can ever arrive.
 * @param c: The connection to the X server.
 * @param cookie: The request cookie.
 * @return The error for the request, or NULL if none can ever arrive.
 *
 * The xcb_void_cookie_t cookie supplied to this function must have resulted
 * from a call to xcb_[request_name]_checked().  This function will block
 * until one of two conditions happens.  If an error is received, it will be
 * returned.  If a reply to a subsequent request has already arrived, no error
 * can arrive for this request, so this function will return NULL.
 *
 * Note that this function will perform a sync if needed to ensure that the
 * sequence number will advance beyond that provided in cookie; this is a
 * convenience to avoid races in determining whether the sync is needed.
 *)
function xcb_request_check(c : Pxcb_connection_t; cookie : Pxcb_void_cookie_t) : Pxcb_generic_error_t;
  external libXCBRenderUtils;

(* xcb_ext.c *)

(**
 * @brief Caches reply information from QueryExtension requests.
 * @param c: The connection.
 * @param ext: The extension data.
 * @return A pointer to the xcb_query_extension_reply_t for the extension.
 *
 * This function is the primary interface to the "extension cache",
 * which caches reply information from QueryExtension
 * requests. Invoking this function may cause a call to
 * xcb_query_extension to retrieve extension information from the
 * server, and may block until extension data is received from the
 * server.
 *
 * The result must not be freed. This storage is managed by the cache
 * itself.
 *)
function xcb_get_extension_data(c : Pxcb_connection_t; ext : Pxcb_extension_t) : Pxcb_query_extension_reply_t;
  external libXCB;

(**
 * @brief Prefetch of extension data into the extension cache
 * @param c: The connection.
 * @param ext: The extension data.
 *
 * This function allows a "prefetch" of extension data into the
 * extension cache. Invoking the function may cause a call to
 * xcb_query_extension, but will not block waiting for the
 * reply. xcb_get_extension_data will return the prefetched data after
 * possibly blocking while it is retrieved.
 *)

procedure xcb_prefetch_extension_data(c : Pxcb_connection_t; ext : Pxcb_extension_t);
   external libXCB;

(* xcb_conn.c *)

(**
 * @brief Access the data returned by the server.
 * @param c: The connection.
 * @return A pointer to an xcb_setup_t structure.
 *
 * Accessor for the data returned by the server when the xcb_connection_t
 * was initialized. This data includes
 * - the server's required format for images,
 * - a list of available visuals,
 * - a list of available screens,
 * - the server's maximum request length (in the absence of the
 * BIG-REQUESTS extension),
 * - and other assorted information.
 *
 * See the X protocol specification for more details.
 *
 * The result must not be freed.
 *)
function xcb_get_setup(c : Pxcb_connection_t) : Pxcb_setup_t;
  external libXCB;

(**
 * @brief Access the file descriptor of the connection.
 * @param c: The connection.
 * @return The file descriptor.
 *
 * Accessor for the file descriptor that was passed to the
 * xcb_connect_to_fd call that returned @p c.
 *)
function xcb_get_file_descriptor(c : Pxcb_connection_t) : cint;
  external libXCB;

(**
 * @brief Test whether the connection has shut down due to a fatal error.
 * @param c: The connection.
 * @return 1 if the connection is in an error state; 0 otherwise.
 *
 * Some errors that occur in the context of an xcb_connection_t
 * are unrecoverable. When such an error occurs, the
 * connection is shut down and further operations on the
 * xcb_connection_t have no effect.
 *
 * @todo Other functions should document the conditions in
 * which they shut down the connection.
 *)
function xcb_connection_has_error(c : Pxcb_connection_t) : cint;
  external libXCB;

(**
 * @brief Connects to the X server.
 * @param fd: The file descriptor.
 * @param auth_info: Authentication data.
 * @return A newly allocated xcb_connection_t structure.
 *
 * Connects to an X server, given the open socket @p fd and the
 * xcb_auth_info_t @p auth_info. The file descriptor @p fd is
 * bidirectionally connected to an X server. If the connection
 * should be unauthenticated, @p auth_info must be @c
 * NULL.
 *)
function xcb_connect_to_fd(fd : cint; auth_info : pxcb_auth_info_t) : pxcb_connection_t;
  external libXCB;

(**
 * @brief Closes the connection.
 * @param c: The connection.
 *
 * Closes the file descriptor and frees all memory associated with the
 * connection @c c.
 *)
procedure xcb_disconnect(c : Pxcb_connection_t);
  external libXCB;

(* xcb_util.c *)

(**
 * @brief Parses a display string name in the form documented by X(7x).
 * @param name: The name of the display.
 * @param host: A pointer to a malloc'd copy of the hostname.
 * @param display: A pointer to the display number.
 * @param screen: A pointer to the screen number.
 * @return 0 on failure, non 0 otherwise.
 *
 * Parses the display string name @p display_name in the form
 * documented by X(7x). Has no side effects on failure. If
 * @p displayname is @c NULL or empty, it uses the environment
 * variable DISPLAY. @p hostp is a pointer to a newly allocated string
 * that contain the host name. @p displayp is set to the display
 * number and @p screenp to the preferred screen number. @p screenp
 * can be @c NULL. If @p displayname does not contain a screen number,
 * it is set to @c 0.
 *)
function xcb_parse_display(name : PChar; host : PPChar; display : pcint; screen : pcint) : cint;
  external libXCB;

(**
 * @brief Connects to the X server.
 * @param displayname: The name of the display.
 * @param screenp: A pointer to a preferred screen number.
 * @return A newly allocated xcb_connection_t structure.
 *
 * Connects to the X server specified by @p displayname. If @p
 * displayname is @c NULL, uses the value of the DISPLAY environment
 * variable. If a particular screen on that server is preferred, the
 * int pointed to by @p screenp (if not @c NULL) will be set to that
 * screen; otherwise the screen will be set to 0.
 *)
function xcb_connect(displayname : PChar; screenp : pcint) : Pxcb_connection_t;
  external libXCB;

(**
 * @brief Connects to the X server, using an authorization information.
 * @param display: The name of the display.
 * @param auth: The authorization information.
 * @param screen: A pointer to a preferred screen number.
 * @return A newly allocated xcb_connection_t structure.
 *
 * Connects to the X server specified by @p displayname, using the
 * authorization @p auth. If a particular screen on that server is
 * preferred, the int pointed to by @p screenp (if not @c NULL) will
 * be set to that screen; otherwise @p screenp will be set to 0.
 *)
function xcb_connect_to_display_with_auth_info(display : PChar; auth : Pxcb_auth_info_t; screen : pcint) : Pxcb_connection_t;
  external libXCB;


(* xcb_xid.c *)

(**
 * @brief Allocates an XID for a new object.
 * @param c: The connection.
 * @return A newly allocated XID.
 *
 * Allocates an XID for a new object. Typically used just prior to
 * various object creation functions, such as xcb_create_window.
 *)
function xcb_generate_id(c : Pxcb_connection_t) : cuint32;
  external libXCB;

implementation

function XCB_TYPE_PAD ( const T, I : clong ) : clong;
begin
  //#define XCB_TYPE_PAD(T,I) (-(I) & (sizeof(T) > 4 ? 3 : sizeof(T) - 1))

  if (-I and sizeof(T) >4) then
    XCB_TYPE_PAD := 3
  else
    XCB_TYPE_PAD := sizeof(T) - 1;
end;

end.

