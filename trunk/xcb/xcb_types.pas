{
  The following unit was created to prevent circular usage of xcb and xcbproto.
  It does it by creating the actual types decleared by the two headers and the two
  headers just use alias to this unit.

}
unit xcb_types;

{$mode fpc}{$PACKRECORDS C}{$MACRO ON}{$CALLING CDECL}

interface

uses
  ctypes;

const
  libXCB            = 'libxcb';
  libXCBEvent       = 'libxcb-event';
  libXCBRenderUtils = 'libxcb-render-util';

const
(* Pre-defined constants *)

(** Current protocol version *)
  X_PROTOCOL          = 11;

(** Current minor version *)
  X_PROTOCOL_REVISION = 0;

(** X_TCP_PORT + display number = server port for TCP transport *)
  X_TCP_PORT          = 6000;

(* Opaque structures *)

(**
 * @brief XCB Connection structure.
 *
 * A structure that contain all data that  XCB needs to communicate with an X server.
 *)

type
  Pxcb_connection_t = ^Txcb_connection_t;
  // Opaque structure containing all data that  XCB needs to communicate with an X server.
  Txcb_connection_t = record
                      end;

(* Other types *)

 Pxcb_generic_iterator_t = ^Txcb_generic_iterator_t;
(**
 * @brief Generic iterator.
 *
 * A generic iterator structure.
 *)
 Txcb_generic_iterator_t = record
                             data  : Pointer;   (**< Data of the current iterator *)
                             rem   : cint;      (**< remaining elements *)
                             index : cint;      (**< index of the current iterator *)
                           end;

 Pxcb_generic_reply_t = ^Txcb_generic_reply_t;
(**
 * @brief Generic reply.
 *
 * A generic reply structure.
 *)
 Txcb_generic_reply_t = record
                          response_type : cuint8;  (**< Type of the response *)
                          pad0          : cuint8;  (**< Padding *)
                          sequence      : cuint16; (**< Sequence number *)
                          length        : cuint32; (**< Length of the response *)
                        end;

 Pxcb_generic_event_t = ^Txcb_generic_event_t;
(**
 * @brief Generic event.
 *
 * A generic event structure.
 *)
 Txcb_generic_event_t = record
                          response_type : cuint8;                 (**< Type of the response *)
                          pad0          : cuint8;                 (**< Padding *)
                          sequence      : cuint16;                (**< Sequence number *)
                          pad           : array[0..6] of cuint32; (**< Padding *)
                          full_sequence : cuint32;                (**< full sequence *)
                        end;

 PPxcb_generic_error_t = ^Pxcb_generic_error_t;
 Pxcb_generic_error_t  = ^Txcb_generic_error_t;
(**
 * @brief Generic error.
 *
 * A generic error structure.
 *)
 Txcb_generic_error_t = record
                          response_type : cuint8;                 (**< Type of the response *)
                          error_code    : cuint8;                 (**< Error code *)
                          sequence      : cuint16;                (**< Sequence number *)
                          pad           : array[0..6] of cuint32; (**< Padding *)
                          full_sequence : cuint32;                (**< full sequence *)
                        end;

 Pxcb_void_cookie_t = ^Txcb_void_cookie_t;
(**
 * @brief Generic cookie.
 *
 * A generic cookie structure.
 *)
 Txcb_void_cookie_t = record
                        sequence : cuint; (**< Sequence number *)
                      end;


// #include "xproto.h"

const
(** XCB_NONE is the universal null resource or null atom parameter value for many core X requests *)
  XCB_NONE             = clong(0);

(** XCB_COPY_FROM_PARENT can be used for many xcb_create_window parameters *)
  XCB_COPY_FROM_PARENT = clong(0);

(** XCB_CURRENT_TIME can be used in most requests that take an xcb_timestamp_t *)
  XCB_CURRENT_TIME     = clong(0);

(** XCB_NO_SYMBOL fills in unused entries in xcb_keysym_t tables *)
  XCB_NO_SYMBOL        = clong(0);


(* xcb_auth.c *)
type
 Pxcb_auth_info_t = ^Txcb_auth_info_t;
(**
 * @brief Container for authorization information.
 *
 * A container for authorization information to be sent to the X server.
 *)
 Txcb_auth_info_t = record
                      namelen : cint;  (**< Length of the string name (as returned by strlen). *)
                      name    : PChar; (**< String containing the authentication protocol name, such as "MIT-MAGIC-COOKIE-1" or "XDM-AUTHORIZATION-1". *)
                      datalen : cint;  (**< Length of the data member. *)
                      data    : PChar; (**< Data interpreted in a protocol-specific manner. *)
                    end;

{ defined ay xcbext.pas [xcbext.h]
(* xcb_ext.c *)
(**
 * @typedef typedef struct xcb_extension_t xcb_extension_t
 *)
type
 Pxcb_extension_t = ^Txcb_extension_t;
 (**< Opaque structure used as key for xcb_get_extension_data_t. *)
 Txcb_extension_t = record
                    end;

}

(* xproto.h *)
(*
/**
 * @brief xcb_char2b_t
 **/
typedef struct xcb_char2b_t {
    uint8_t byte1; /**<  */
    uint8_t byte2; /**<  */
} xcb_char2b_t;

/**
 * @brief xcb_char2b_iterator_t
 **/
typedef struct xcb_char2b_iterator_t {
    xcb_char2b_t *data; /**<  */
    int           rem; /**<  */
    int           index; /**<  */
} xcb_char2b_iterator_t;

typedef uint32_t xcb_window_t;

/**
 * @brief xcb_window_iterator_t
 **/
typedef struct xcb_window_iterator_t {
    xcb_window_t *data; /**<  */
    int           rem; /**<  */
    int           index; /**<  */
} xcb_window_iterator_t;

typedef uint32_t xcb_pixmap_t;

/**
 * @brief xcb_pixmap_iterator_t
 **/
typedef struct xcb_pixmap_iterator_t {
    xcb_pixmap_t *data; /**<  */
    int           rem; /**<  */
    int           index; /**<  */
} xcb_pixmap_iterator_t;

typedef uint32_t xcb_cursor_t;

/**
 * @brief xcb_cursor_iterator_t
 **/
typedef struct xcb_cursor_iterator_t {
    xcb_cursor_t *data; /**<  */
    int           rem; /**<  */
    int           index; /**<  */
} xcb_cursor_iterator_t;

typedef uint32_t xcb_font_t;

/**
 * @brief xcb_font_iterator_t
 **/
typedef struct xcb_font_iterator_t {
    xcb_font_t *data; /**<  */
    int         rem; /**<  */
    int         index; /**<  */
} xcb_font_iterator_t;

typedef uint32_t xcb_gcontext_t;

/**
 * @brief xcb_gcontext_iterator_t
 **/
typedef struct xcb_gcontext_iterator_t {
    xcb_gcontext_t *data; /**<  */
    int             rem; /**<  */
    int             index; /**<  */
} xcb_gcontext_iterator_t;

typedef uint32_t xcb_colormap_t;

/**
 * @brief xcb_colormap_iterator_t
 **/
typedef struct xcb_colormap_iterator_t {
    xcb_colormap_t *data; /**<  */
    int             rem; /**<  */
    int             index; /**<  */
} xcb_colormap_iterator_t;

typedef uint32_t xcb_atom_t;

/**
 * @brief xcb_atom_iterator_t
 **/
typedef struct xcb_atom_iterator_t {
    xcb_atom_t *data; /**<  */
    int         rem; /**<  */
    int         index; /**<  */
} xcb_atom_iterator_t;

typedef uint32_t xcb_drawable_t;

/**
 * @brief xcb_drawable_iterator_t
 **/
typedef struct xcb_drawable_iterator_t {
    xcb_drawable_t *data; /**<  */
    int             rem; /**<  */
    int             index; /**<  */
} xcb_drawable_iterator_t;

typedef uint32_t xcb_fontable_t;

/**
 * @brief xcb_fontable_iterator_t
 **/
typedef struct xcb_fontable_iterator_t {
    xcb_fontable_t *data; /**<  */
    int             rem; /**<  */
    int             index; /**<  */
} xcb_fontable_iterator_t;

typedef uint32_t xcb_visualid_t;

/**
 * @brief xcb_visualid_iterator_t
 **/
typedef struct xcb_visualid_iterator_t {
    xcb_visualid_t *data; /**<  */
    int             rem; /**<  */
    int             index; /**<  */
} xcb_visualid_iterator_t;

typedef uint32_t xcb_timestamp_t;

/**
 * @brief xcb_timestamp_iterator_t
 **/
typedef struct xcb_timestamp_iterator_t {
    xcb_timestamp_t *data; /**<  */
    int              rem; /**<  */
    int              index; /**<  */
} xcb_timestamp_iterator_t;

typedef uint32_t xcb_keysym_t;

/**
 * @brief xcb_keysym_iterator_t
 **/
typedef struct xcb_keysym_iterator_t {
    xcb_keysym_t *data; /**<  */
    int           rem; /**<  */
    int           index; /**<  */
} xcb_keysym_iterator_t;

typedef uint8_t xcb_keycode_t;

/**
 * @brief xcb_keycode_iterator_t
 **/
typedef struct xcb_keycode_iterator_t {
    xcb_keycode_t *data; /**<  */
    int            rem; /**<  */
    int            index; /**<  */
} xcb_keycode_iterator_t;

typedef uint8_t xcb_button_t;

/**
 * @brief xcb_button_iterator_t
 **/
typedef struct xcb_button_iterator_t {
    xcb_button_t *data; /**<  */
    int           rem; /**<  */
    int           index; /**<  */
} xcb_button_iterator_t;

/**
 * @brief xcb_point_t
 **/
typedef struct xcb_point_t {
    int16_t x; /**<  */
    int16_t y; /**<  */
} xcb_point_t;

/**
 * @brief xcb_point_iterator_t
 **/
typedef struct xcb_point_iterator_t {
    xcb_point_t *data; /**<  */
    int          rem; /**<  */
    int          index; /**<  */
} xcb_point_iterator_t;

/**
 * @brief xcb_rectangle_t
 **/
typedef struct xcb_rectangle_t {
    int16_t  x; /**<  */
    int16_t  y; /**<  */
    uint16_t width; /**<  */
    uint16_t height; /**<  */
} xcb_rectangle_t;

/**
 * @brief xcb_rectangle_iterator_t
 **/
typedef struct xcb_rectangle_iterator_t {
    xcb_rectangle_t *data; /**<  */
    int              rem; /**<  */
    int              index; /**<  */
} xcb_rectangle_iterator_t;

/**
 * @brief xcb_arc_t
 **/
typedef struct xcb_arc_t {
    int16_t  x; /**<  */
    int16_t  y; /**<  */
    uint16_t width; /**<  */
    uint16_t height; /**<  */
    int16_t  angle1; /**<  */
    int16_t  angle2; /**<  */
} xcb_arc_t;

/**
 * @brief xcb_arc_iterator_t
 **/
typedef struct xcb_arc_iterator_t {
    xcb_arc_t *data; /**<  */
    int        rem; /**<  */
    int        index; /**<  */
} xcb_arc_iterator_t;

/**
 * @brief xcb_format_t
 **/
typedef struct xcb_format_t {
    uint8_t depth; /**<  */
    uint8_t bits_per_pixel; /**<  */
    uint8_t scanline_pad; /**<  */
    uint8_t pad0[5]; /**<  */
} xcb_format_t;

/**
 * @brief xcb_format_iterator_t
 **/
typedef struct xcb_format_iterator_t {
    xcb_format_t *data; /**<  */
    int           rem; /**<  */
    int           index; /**<  */
} xcb_format_iterator_t;

typedef enum xcb_visual_class_t {
    XCB_VISUAL_CLASS_STATIC_GRAY = 0,
    XCB_VISUAL_CLASS_GRAY_SCALE = 1,
    XCB_VISUAL_CLASS_STATIC_COLOR = 2,
    XCB_VISUAL_CLASS_PSEUDO_COLOR = 3,
    XCB_VISUAL_CLASS_TRUE_COLOR = 4,
    XCB_VISUAL_CLASS_DIRECT_COLOR = 5
} xcb_visual_class_t;

/**
 * @brief xcb_visualtype_t
 **/
typedef struct xcb_visualtype_t {
    xcb_visualid_t visual_id; /**<  */
    uint8_t        _class; /**<  */
    uint8_t        bits_per_rgb_value; /**<  */
    uint16_t       colormap_entries; /**<  */
    uint32_t       red_mask; /**<  */
    uint32_t       green_mask; /**<  */
    uint32_t       blue_mask; /**<  */
    uint8_t        pad0[4]; /**<  */
} xcb_visualtype_t;

/**
 * @brief xcb_visualtype_iterator_t
 **/
typedef struct xcb_visualtype_iterator_t {
    xcb_visualtype_t *data; /**<  */
    int               rem; /**<  */
    int               index; /**<  */
} xcb_visualtype_iterator_t;

/**
 * @brief xcb_depth_t
 **/
typedef struct xcb_depth_t {
    uint8_t  depth; /**<  */
    uint8_t  pad0; /**<  */
    uint16_t visuals_len; /**<  */
    uint8_t  pad1[4]; /**<  */
} xcb_depth_t;

/**
 * @brief xcb_depth_iterator_t
 **/
typedef struct xcb_depth_iterator_t {
    xcb_depth_t *data; /**<  */
    int          rem; /**<  */
    int          index; /**<  */
} xcb_depth_iterator_t;

/**
 * @brief xcb_screen_t
 **/
typedef struct xcb_screen_t {
    xcb_window_t   root; /**<  */
    xcb_colormap_t default_colormap; /**<  */
    uint32_t       white_pixel; /**<  */
    uint32_t       black_pixel; /**<  */
    uint32_t       current_input_masks; /**<  */
    uint16_t       width_in_pixels; /**<  */
    uint16_t       height_in_pixels; /**<  */
    uint16_t       width_in_millimeters; /**<  */
    uint16_t       height_in_millimeters; /**<  */
    uint16_t       min_installed_maps; /**<  */
    uint16_t       max_installed_maps; /**<  */
    xcb_visualid_t root_visual; /**<  */
    uint8_t        backing_stores; /**<  */
    uint8_t        save_unders; /**<  */
    uint8_t        root_depth; /**<  */
    uint8_t        allowed_depths_len; /**<  */
} xcb_screen_t;

/**
 * @brief xcb_screen_iterator_t
 **/
typedef struct xcb_screen_iterator_t {
    xcb_screen_t *data; /**<  */
    int           rem; /**<  */
    int           index; /**<  */
} xcb_screen_iterator_t;

/**
 * @brief xcb_setup_request_t
 **/
typedef struct xcb_setup_request_t {
    uint8_t  byte_order; /**<  */
    uint8_t  pad0; /**<  */
    uint16_t protocol_major_version; /**<  */
    uint16_t protocol_minor_version; /**<  */
    uint16_t authorization_protocol_name_len; /**<  */
    uint16_t authorization_protocol_data_len; /**<  */
} xcb_setup_request_t;

/**
 * @brief xcb_setup_request_iterator_t
 **/
typedef struct xcb_setup_request_iterator_t {
    xcb_setup_request_t *data; /**<  */
    int                  rem; /**<  */
    int                  index; /**<  */
} xcb_setup_request_iterator_t;

/**
 * @brief xcb_setup_failed_t
 **/
typedef struct xcb_setup_failed_t {
    uint8_t  status; /**<  */
    uint8_t  reason_len; /**<  */
    uint16_t protocol_major_version; /**<  */
    uint16_t protocol_minor_version; /**<  */
    uint16_t length; /**<  */
} xcb_setup_failed_t;

/**
 * @brief xcb_setup_failed_iterator_t
 **/
typedef struct xcb_setup_failed_iterator_t {
    xcb_setup_failed_t *data; /**<  */
    int                 rem; /**<  */
    int                 index; /**<  */
} xcb_setup_failed_iterator_t;

/**
 * @brief xcb_setup_authenticate_t
 **/
typedef struct xcb_setup_authenticate_t {
    uint8_t  status; /**<  */
    uint8_t  pad0[5]; /**<  */
    uint16_t length; /**<  */
} xcb_setup_authenticate_t;

/**
 * @brief xcb_setup_authenticate_iterator_t
 **/
typedef struct xcb_setup_authenticate_iterator_t {
    xcb_setup_authenticate_t *data; /**<  */
    int                       rem; /**<  */
    int                       index; /**<  */
} xcb_setup_authenticate_iterator_t;

typedef enum xcb_image_order_t {
    XCB_IMAGE_ORDER_LSB_FIRST = 0,
    XCB_IMAGE_ORDER_MSB_FIRST = 1
} xcb_image_order_t;

/**
 * @brief xcb_setup_t
 **/
typedef struct xcb_setup_t {
    uint8_t       status; /**<  */
    uint8_t       pad0; /**<  */
    uint16_t      protocol_major_version; /**<  */
    uint16_t      protocol_minor_version; /**<  */
    uint16_t      length; /**<  */
    uint32_t      release_number; /**<  */
    uint32_t      resource_id_base; /**<  */
    uint32_t      resource_id_mask; /**<  */
    uint32_t      motion_buffer_size; /**<  */
    uint16_t      vendor_len; /**<  */
    uint16_t      maximum_request_length; /**<  */
    uint8_t       roots_len; /**<  */
    uint8_t       pixmap_formats_len; /**<  */
    uint8_t       image_byte_order; /**<  */
    uint8_t       bitmap_format_bit_order; /**<  */
    uint8_t       bitmap_format_scanline_unit; /**<  */
    uint8_t       bitmap_format_scanline_pad; /**<  */
    xcb_keycode_t min_keycode; /**<  */
    xcb_keycode_t max_keycode; /**<  */
    uint8_t       pad1[4]; /**<  */
} xcb_setup_t;

/**
 * @brief xcb_setup_iterator_t
 **/
typedef struct xcb_setup_iterator_t {
    xcb_setup_t *data; /**<  */
    int          rem; /**<  */
    int          index; /**<  */
} xcb_setup_iterator_t;

typedef enum xcb_mod_mask_t {
    XCB_MOD_MASK_SHIFT = (1 << 0),
    XCB_MOD_MASK_LOCK = (1 << 1),
    XCB_MOD_MASK_CONTROL = (1 << 2),
    XCB_MOD_MASK_1 = (1 << 3),
    XCB_MOD_MASK_2 = (1 << 4),
    XCB_MOD_MASK_3 = (1 << 5),
    XCB_MOD_MASK_4 = (1 << 6),
    XCB_MOD_MASK_5 = (1 << 7)
} xcb_mod_mask_t;

/** Opcode for xcb_key_press. */
#define XCB_KEY_PRESS 2

/**
 * @brief xcb_key_press_event_t
 **/
typedef struct xcb_key_press_event_t {
    uint8_t         response_type; /**<  */
    xcb_keycode_t   detail; /**<  */
    uint16_t        sequence; /**<  */
    xcb_timestamp_t time; /**<  */
    xcb_window_t    root; /**<  */
    xcb_window_t    event; /**<  */
    xcb_window_t    child; /**<  */
    int16_t         root_x; /**<  */
    int16_t         root_y; /**<  */
    int16_t         event_x; /**<  */
    int16_t         event_y; /**<  */
    uint16_t        state; /**<  */
    uint8_t         same_screen; /**<  */
} xcb_key_press_event_t;

/** Opcode for xcb_key_release. */
#define XCB_KEY_RELEASE 3

typedef xcb_key_press_event_t xcb_key_release_event_t;

typedef enum xcb_button_mask_t {
    XCB_BUTTON_MASK_1 = (1 << 8),
    XCB_BUTTON_MASK_2 = (1 << 9),
    XCB_BUTTON_MASK_3 = (1 << 10),
    XCB_BUTTON_MASK_4 = (1 << 11),
    XCB_BUTTON_MASK_5 = (1 << 12),
    XCB_BUTTON_MASK_ANY = (1 << 15)
} xcb_button_mask_t;

/** Opcode for xcb_button_press. */
#define XCB_BUTTON_PRESS 4

/**
 * @brief xcb_button_press_event_t
 **/
typedef struct xcb_button_press_event_t {
    uint8_t         response_type; /**<  */
    xcb_button_t    detail; /**<  */
    uint16_t        sequence; /**<  */
    xcb_timestamp_t time; /**<  */
    xcb_window_t    root; /**<  */
    xcb_window_t    event; /**<  */
    xcb_window_t    child; /**<  */
    int16_t         root_x; /**<  */
    int16_t         root_y; /**<  */
    int16_t         event_x; /**<  */
    int16_t         event_y; /**<  */
    uint16_t        state; /**<  */
    uint8_t         same_screen; /**<  */
} xcb_button_press_event_t;

/** Opcode for xcb_button_release. */
#define XCB_BUTTON_RELEASE 5

typedef xcb_button_press_event_t xcb_button_release_event_t;

typedef enum xcb_motion_t {
    XCB_MOTION_NORMAL = 0,
    XCB_MOTION_HINT = 1
} xcb_motion_t;

/** Opcode for xcb_motion_notify. */
#define XCB_MOTION_NOTIFY 6

/**
 * @brief xcb_motion_notify_event_t
 **/
typedef struct xcb_motion_notify_event_t {
    uint8_t         response_type; /**<  */
    uint8_t         detail; /**<  */
    uint16_t        sequence; /**<  */
    xcb_timestamp_t time; /**<  */
    xcb_window_t    root; /**<  */
    xcb_window_t    event; /**<  */
    xcb_window_t    child; /**<  */
    int16_t         root_x; /**<  */
    int16_t         root_y; /**<  */
    int16_t         event_x; /**<  */
    int16_t         event_y; /**<  */
    uint16_t        state; /**<  */
    uint8_t         same_screen; /**<  */
} xcb_motion_notify_event_t;

typedef enum xcb_notify_detail_t {
    XCB_NOTIFY_DETAIL_ANCESTOR = 0,
    XCB_NOTIFY_DETAIL_VIRTUAL = 1,
    XCB_NOTIFY_DETAIL_INFERIOR = 2,
    XCB_NOTIFY_DETAIL_NONLINEAR = 3,
    XCB_NOTIFY_DETAIL_NONLINEAR_VIRTUAL = 4,
    XCB_NOTIFY_DETAIL_POINTER = 5,
    XCB_NOTIFY_DETAIL_POINTER_ROOT = 6,
    XCB_NOTIFY_DETAIL_NONE = 7
} xcb_notify_detail_t;

typedef enum xcb_notify_mode_t {
    XCB_NOTIFY_MODE_NORMAL = 0,
    XCB_NOTIFY_MODE_GRAB = 1,
    XCB_NOTIFY_MODE_UNGRAB = 2,
    XCB_NOTIFY_MODE_WHILE_GRABBED = 3
} xcb_notify_mode_t;

/** Opcode for xcb_enter_notify. */
#define XCB_ENTER_NOTIFY 7

/**
 * @brief xcb_enter_notify_event_t
 **/
typedef struct xcb_enter_notify_event_t {
    uint8_t         response_type; /**<  */
    uint8_t         detail; /**<  */
    uint16_t        sequence; /**<  */
    xcb_timestamp_t time; /**<  */
    xcb_window_t    root; /**<  */
    xcb_window_t    event; /**<  */
    xcb_window_t    child; /**<  */
    int16_t         root_x; /**<  */
    int16_t         root_y; /**<  */
    int16_t         event_x; /**<  */
    int16_t         event_y; /**<  */
    uint16_t        state; /**<  */
    uint8_t         mode; /**<  */
    uint8_t         same_screen_focus; /**<  */
} xcb_enter_notify_event_t;

/** Opcode for xcb_leave_notify. */
#define XCB_LEAVE_NOTIFY 8

typedef xcb_enter_notify_event_t xcb_leave_notify_event_t;

/** Opcode for xcb_focus_in. */
#define XCB_FOCUS_IN 9

/**
 * @brief xcb_focus_in_event_t
 **/
typedef struct xcb_focus_in_event_t {
    uint8_t      response_type; /**<  */
    uint8_t      detail; /**<  */
    uint16_t     sequence; /**<  */
    xcb_window_t event; /**<  */
    uint8_t      mode; /**<  */
} xcb_focus_in_event_t;

/** Opcode for xcb_focus_out. */
#define XCB_FOCUS_OUT 10

typedef xcb_focus_in_event_t xcb_focus_out_event_t;

/** Opcode for xcb_keymap_notify. */
#define XCB_KEYMAP_NOTIFY 11

/**
 * @brief xcb_keymap_notify_event_t
 **/
typedef struct xcb_keymap_notify_event_t {
    uint8_t response_type; /**<  */
    uint8_t keys[31]; /**<  */
} xcb_keymap_notify_event_t;

/** Opcode for xcb_expose. */
#define XCB_EXPOSE 12

/**
 * @brief xcb_expose_event_t
 **/
typedef struct xcb_expose_event_t {
    uint8_t      response_type; /**<  */
    uint8_t      pad0; /**<  */
    uint16_t     sequence; /**<  */
    xcb_window_t window; /**<  */
    uint16_t     x; /**<  */
    uint16_t     y; /**<  */
    uint16_t     width; /**<  */
    uint16_t     height; /**<  */
    uint16_t     count; /**<  */
} xcb_expose_event_t;

/** Opcode for xcb_graphics_exposure. */
#define XCB_GRAPHICS_EXPOSURE 13

/**
 * @brief xcb_graphics_exposure_event_t
 **/
typedef struct xcb_graphics_exposure_event_t {
    uint8_t        response_type; /**<  */
    uint8_t        pad0; /**<  */
    uint16_t       sequence; /**<  */
    xcb_drawable_t drawable; /**<  */
    uint16_t       x; /**<  */
    uint16_t       y; /**<  */
    uint16_t       width; /**<  */
    uint16_t       height; /**<  */
    uint16_t       minor_opcode; /**<  */
    uint16_t       count; /**<  */
    uint8_t        major_opcode; /**<  */
} xcb_graphics_exposure_event_t;

/** Opcode for xcb_no_exposure. */
#define XCB_NO_EXPOSURE 14

/**
 * @brief xcb_no_exposure_event_t
 **/
typedef struct xcb_no_exposure_event_t {
    uint8_t        response_type; /**<  */
    uint8_t        pad0; /**<  */
    uint16_t       sequence; /**<  */
    xcb_drawable_t drawable; /**<  */
    uint16_t       minor_opcode; /**<  */
    uint8_t        major_opcode; /**<  */
} xcb_no_exposure_event_t;

typedef enum xcb_visibility_t {
    XCB_VISIBILITY_UNOBSCURED = 0,
    XCB_VISIBILITY_PARTIALLY_OBSCURED = 1,
    XCB_VISIBILITY_FULLY_OBSCURED = 2
} xcb_visibility_t;

/** Opcode for xcb_visibility_notify. */
#define XCB_VISIBILITY_NOTIFY 15

/**
 * @brief xcb_visibility_notify_event_t
 **/
typedef struct xcb_visibility_notify_event_t {
    uint8_t      response_type; /**<  */
    uint8_t      pad0; /**<  */
    uint16_t     sequence; /**<  */
    xcb_window_t window; /**<  */
    uint8_t      state; /**<  */
} xcb_visibility_notify_event_t;

/** Opcode for xcb_create_notify. */
#define XCB_CREATE_NOTIFY 16

/**
 * @brief xcb_create_notify_event_t
 **/
typedef struct xcb_create_notify_event_t {
    uint8_t      response_type; /**<  */
    uint8_t      pad0; /**<  */
    uint16_t     sequence; /**<  */
    xcb_window_t parent; /**<  */
    xcb_window_t window; /**<  */
    int16_t      x; /**<  */
    int16_t      y; /**<  */
    uint16_t     width; /**<  */
    uint16_t     height; /**<  */
    uint16_t     border_width; /**<  */
    uint8_t      override_redirect; /**<  */
} xcb_create_notify_event_t;

/** Opcode for xcb_destroy_notify. */
#define XCB_DESTROY_NOTIFY 17

/**
 * @brief xcb_destroy_notify_event_t
 **/
typedef struct xcb_destroy_notify_event_t {
    uint8_t      response_type; /**<  */
    uint8_t      pad0; /**<  */
    uint16_t     sequence; /**<  */
    xcb_window_t event; /**<  */
    xcb_window_t window; /**<  */
} xcb_destroy_notify_event_t;

/** Opcode for xcb_unmap_notify. */
#define XCB_UNMAP_NOTIFY 18

/**
 * @brief xcb_unmap_notify_event_t
 **/
typedef struct xcb_unmap_notify_event_t {
    uint8_t      response_type; /**<  */
    uint8_t      pad0; /**<  */
    uint16_t     sequence; /**<  */
    xcb_window_t event; /**<  */
    xcb_window_t window; /**<  */
    uint8_t      from_configure; /**<  */
} xcb_unmap_notify_event_t;

/** Opcode for xcb_map_notify. */
#define XCB_MAP_NOTIFY 19

/**
 * @brief xcb_map_notify_event_t
 **/
typedef struct xcb_map_notify_event_t {
    uint8_t      response_type; /**<  */
    uint8_t      pad0; /**<  */
    uint16_t     sequence; /**<  */
    xcb_window_t event; /**<  */
    xcb_window_t window; /**<  */
    uint8_t      override_redirect; /**<  */
} xcb_map_notify_event_t;

/** Opcode for xcb_map_request. */
#define XCB_MAP_REQUEST 20

/**
 * @brief xcb_map_request_event_t
 **/
typedef struct xcb_map_request_event_t {
    uint8_t      response_type; /**<  */
    uint8_t      pad0; /**<  */
    uint16_t     sequence; /**<  */
    xcb_window_t parent; /**<  */
    xcb_window_t window; /**<  */
} xcb_map_request_event_t;

/** Opcode for xcb_reparent_notify. */
#define XCB_REPARENT_NOTIFY 21

/**
 * @brief xcb_reparent_notify_event_t
 **/
typedef struct xcb_reparent_notify_event_t {
    uint8_t      response_type; /**<  */
    uint8_t      pad0; /**<  */
    uint16_t     sequence; /**<  */
    xcb_window_t event; /**<  */
    xcb_window_t window; /**<  */
    xcb_window_t parent; /**<  */
    int16_t      x; /**<  */
    int16_t      y; /**<  */
    uint8_t      override_redirect; /**<  */
} xcb_reparent_notify_event_t;

/** Opcode for xcb_configure_notify. */
#define XCB_CONFIGURE_NOTIFY 22

/**
 * @brief xcb_configure_notify_event_t
 **/
typedef struct xcb_configure_notify_event_t {
    uint8_t      response_type; /**<  */
    uint8_t      pad0; /**<  */
    uint16_t     sequence; /**<  */
    xcb_window_t event; /**<  */
    xcb_window_t window; /**<  */
    xcb_window_t above_sibling; /**<  */
    int16_t      x; /**<  */
    int16_t      y; /**<  */
    uint16_t     width; /**<  */
    uint16_t     height; /**<  */
    uint16_t     border_width; /**<  */
    uint8_t      override_redirect; /**<  */
} xcb_configure_notify_event_t;

/** Opcode for xcb_configure_request. */
#define XCB_CONFIGURE_REQUEST 23

/**
 * @brief xcb_configure_request_event_t
 **/
typedef struct xcb_configure_request_event_t {
    uint8_t      response_type; /**<  */
    uint8_t      stack_mode; /**<  */
    uint16_t     sequence; /**<  */
    xcb_window_t parent; /**<  */
    xcb_window_t window; /**<  */
    xcb_window_t sibling; /**<  */
    int16_t      x; /**<  */
    int16_t      y; /**<  */
    uint16_t     width; /**<  */
    uint16_t     height; /**<  */
    uint16_t     border_width; /**<  */
    uint16_t     value_mask; /**<  */
} xcb_configure_request_event_t;

/** Opcode for xcb_gravity_notify. */
#define XCB_GRAVITY_NOTIFY 24

/**
 * @brief xcb_gravity_notify_event_t
 **/
typedef struct xcb_gravity_notify_event_t {
    uint8_t      response_type; /**<  */
    uint8_t      pad0; /**<  */
    uint16_t     sequence; /**<  */
    xcb_window_t event; /**<  */
    xcb_window_t window; /**<  */
    int16_t      x; /**<  */
    int16_t      y; /**<  */
} xcb_gravity_notify_event_t;

/** Opcode for xcb_resize_request. */
#define XCB_RESIZE_REQUEST 25

/**
 * @brief xcb_resize_request_event_t
 **/
typedef struct xcb_resize_request_event_t {
    uint8_t      response_type; /**<  */
    uint8_t      pad0; /**<  */
    uint16_t     sequence; /**<  */
    xcb_window_t window; /**<  */
    uint16_t     width; /**<  */
    uint16_t     height; /**<  */
} xcb_resize_request_event_t;

typedef enum xcb_place_t {
    XCB_PLACE_ON_TOP = 0,
    XCB_PLACE_ON_BOTTOM = 1
} xcb_place_t;

/** Opcode for xcb_circulate_notify. */
#define XCB_CIRCULATE_NOTIFY 26

/**
 * @brief xcb_circulate_notify_event_t
 **/
typedef struct xcb_circulate_notify_event_t {
    uint8_t      response_type; /**<  */
    uint8_t      pad0; /**<  */
    uint16_t     sequence; /**<  */
    xcb_window_t event; /**<  */
    xcb_window_t window; /**<  */
    uint8_t      pad1[4]; /**<  */
    uint8_t      place; /**<  */
} xcb_circulate_notify_event_t;

/** Opcode for xcb_circulate_request. */
#define XCB_CIRCULATE_REQUEST 27

typedef xcb_circulate_notify_event_t xcb_circulate_request_event_t;

typedef enum xcb_property_t {
    XCB_PROPERTY_NEW_VALUE = 0,
    XCB_PROPERTY_DELETE = 1
} xcb_property_t;

/** Opcode for xcb_property_notify. */
#define XCB_PROPERTY_NOTIFY 28

/**
 * @brief xcb_property_notify_event_t
 **/
typedef struct xcb_property_notify_event_t {
    uint8_t         response_type; /**<  */
    uint8_t         pad0; /**<  */
    uint16_t        sequence; /**<  */
    xcb_window_t    window; /**<  */
    xcb_atom_t      atom; /**<  */
    xcb_timestamp_t time; /**<  */
    uint8_t         state; /**<  */
} xcb_property_notify_event_t;

/** Opcode for xcb_selection_clear. */
#define XCB_SELECTION_CLEAR 29

/**
 * @brief xcb_selection_clear_event_t
 **/
typedef struct xcb_selection_clear_event_t {
    uint8_t         response_type; /**<  */
    uint8_t         pad0; /**<  */
    uint16_t        sequence; /**<  */
    xcb_timestamp_t time; /**<  */
    xcb_window_t    owner; /**<  */
    xcb_atom_t      selection; /**<  */
} xcb_selection_clear_event_t;

/** Opcode for xcb_selection_request. */
#define XCB_SELECTION_REQUEST 30

/**
 * @brief xcb_selection_request_event_t
 **/
typedef struct xcb_selection_request_event_t {
    uint8_t         response_type; /**<  */
    uint8_t         pad0; /**<  */
    uint16_t        sequence; /**<  */
    xcb_timestamp_t time; /**<  */
    xcb_window_t    owner; /**<  */
    xcb_window_t    requestor; /**<  */
    xcb_atom_t      selection; /**<  */
    xcb_atom_t      target; /**<  */
    xcb_atom_t      property; /**<  */
} xcb_selection_request_event_t;

/** Opcode for xcb_selection_notify. */
#define XCB_SELECTION_NOTIFY 31

/**
 * @brief xcb_selection_notify_event_t
 **/
typedef struct xcb_selection_notify_event_t {
    uint8_t         response_type; /**<  */
    uint8_t         pad0; /**<  */
    uint16_t        sequence; /**<  */
    xcb_timestamp_t time; /**<  */
    xcb_window_t    requestor; /**<  */
    xcb_atom_t      selection; /**<  */
    xcb_atom_t      target; /**<  */
    xcb_atom_t      property; /**<  */
} xcb_selection_notify_event_t;

typedef enum xcb_colormap_state_t {
    XCB_COLORMAP_STATE_UNINSTALLED = 0,
    XCB_COLORMAP_STATE_INSTALLED = 1
} xcb_colormap_state_t;

/** Opcode for xcb_colormap_notify. */
#define XCB_COLORMAP_NOTIFY 32

/**
 * @brief xcb_colormap_notify_event_t
 **/
typedef struct xcb_colormap_notify_event_t {
    uint8_t        response_type; /**<  */
    uint8_t        pad0; /**<  */
    uint16_t       sequence; /**<  */
    xcb_window_t   window; /**<  */
    xcb_colormap_t colormap; /**<  */
    uint8_t        _new; /**<  */
    uint8_t        state; /**<  */
} xcb_colormap_notify_event_t;

/**
 * @brief xcb_client_message_data_t
 **/
typedef union xcb_client_message_data_t {
    uint8_t data8[20]; /**<  */
    uint16_t data16[10]; /**<  */
    uint32_t data32[5]; /**<  */
} xcb_client_message_data_t;

/**
 * @brief xcb_client_message_data_iterator_t
 **/
typedef struct xcb_client_message_data_iterator_t {
    xcb_client_message_data_t *data; /**<  */
    int                        rem; /**<  */
    int                        index; /**<  */
} xcb_client_message_data_iterator_t;

/** Opcode for xcb_client_message. */
#define XCB_CLIENT_MESSAGE 33

/**
 * @brief xcb_client_message_event_t
 **/
typedef struct xcb_client_message_event_t {
    uint8_t                   response_type; /**<  */
    uint8_t                   format; /**<  */
    uint16_t                  sequence; /**<  */
    xcb_window_t              window; /**<  */
    xcb_atom_t                type; /**<  */
    xcb_client_message_data_t data; /**<  */
} xcb_client_message_event_t;

typedef enum xcb_mapping_t {
    XCB_MAPPING_MODIFIER = 0,
    XCB_MAPPING_KEYBOARD = 1,
    XCB_MAPPING_POINTER = 2
} xcb_mapping_t;

/** Opcode for xcb_mapping_notify. */
#define XCB_MAPPING_NOTIFY 34

/**
 * @brief xcb_mapping_notify_event_t
 **/
typedef struct xcb_mapping_notify_event_t {
    uint8_t       response_type; /**<  */
    uint8_t       pad0; /**<  */
    uint16_t      sequence; /**<  */
    uint8_t       request; /**<  */
    xcb_keycode_t first_keycode; /**<  */
    uint8_t       count; /**<  */
} xcb_mapping_notify_event_t;

/** Opcode for xcb_request. */
#define XCB_REQUEST 1

/**
 * @brief xcb_request_error_t
 **/
typedef struct xcb_request_error_t {
    uint8_t  response_type; /**<  */
    uint8_t  error_code; /**<  */
    uint16_t sequence; /**<  */
    uint32_t bad_value; /**<  */
    uint16_t minor_opcode; /**<  */
    uint8_t  major_opcode; /**<  */
} xcb_request_error_t;

/** Opcode for xcb_value. */
#define XCB_VALUE 2

/**
 * @brief xcb_value_error_t
 **/
typedef struct xcb_value_error_t {
    uint8_t  response_type; /**<  */
    uint8_t  error_code; /**<  */
    uint16_t sequence; /**<  */
    uint32_t bad_value; /**<  */
    uint16_t minor_opcode; /**<  */
    uint8_t  major_opcode; /**<  */
} xcb_value_error_t;

/** Opcode for xcb_window. */
#define XCB_WINDOW 3

typedef xcb_value_error_t xcb_window_error_t;

/** Opcode for xcb_pixmap. */
#define XCB_PIXMAP 4

typedef xcb_value_error_t xcb_pixmap_error_t;

/** Opcode for xcb_atom. */
#define XCB_ATOM 5

typedef xcb_value_error_t xcb_atom_error_t;

/** Opcode for xcb_cursor. */
#define XCB_CURSOR 6

typedef xcb_value_error_t xcb_cursor_error_t;

/** Opcode for xcb_font. */
#define XCB_FONT 7

typedef xcb_value_error_t xcb_font_error_t;

/** Opcode for xcb_match. */
#define XCB_MATCH 8

typedef xcb_request_error_t xcb_match_error_t;

/** Opcode for xcb_drawable. */
#define XCB_DRAWABLE 9

typedef xcb_value_error_t xcb_drawable_error_t;

/** Opcode for xcb_access. */
#define XCB_ACCESS 10

typedef xcb_request_error_t xcb_access_error_t;

/** Opcode for xcb_alloc. */
#define XCB_ALLOC 11

typedef xcb_request_error_t xcb_alloc_error_t;

/** Opcode for xcb_colormap. */
#define XCB_COLORMAP 12

typedef xcb_value_error_t xcb_colormap_error_t;

/** Opcode for xcb_g_context. */
#define XCB_G_CONTEXT 13

typedef xcb_value_error_t xcb_g_context_error_t;

/** Opcode for xcb_id_choice. */
#define XCB_ID_CHOICE 14

typedef xcb_value_error_t xcb_id_choice_error_t;

/** Opcode for xcb_name. */
#define XCB_NAME 15

typedef xcb_request_error_t xcb_name_error_t;

/** Opcode for xcb_length. */
#define XCB_LENGTH 16

typedef xcb_request_error_t xcb_length_error_t;

/** Opcode for xcb_implementation. */
#define XCB_IMPLEMENTATION 17

typedef xcb_request_error_t xcb_implementation_error_t;

typedef enum xcb_window_class_t {
    XCB_WINDOW_CLASS_COPY_FROM_PARENT = 0,
    XCB_WINDOW_CLASS_INPUT_OUTPUT = 1,
    XCB_WINDOW_CLASS_INPUT_ONLY = 2
} xcb_window_class_t;

typedef enum xcb_cw_t {
    XCB_CW_BACK_PIXMAP = (1 << 0),
    XCB_CW_BACK_PIXEL = (1 << 1),
    XCB_CW_BORDER_PIXMAP = (1 << 2),
    XCB_CW_BORDER_PIXEL = (1 << 3),
    XCB_CW_BIT_GRAVITY = (1 << 4),
    XCB_CW_WIN_GRAVITY = (1 << 5),
    XCB_CW_BACKING_STORE = (1 << 6),
    XCB_CW_BACKING_PLANES = (1 << 7),
    XCB_CW_BACKING_PIXEL = (1 << 8),
    XCB_CW_OVERRIDE_REDIRECT = (1 << 9),
    XCB_CW_SAVE_UNDER = (1 << 10),
    XCB_CW_EVENT_MASK = (1 << 11),
    XCB_CW_DONT_PROPAGATE = (1 << 12),
    XCB_CW_COLORMAP = (1 << 13),
    XCB_CW_CURSOR = (1 << 14)
} xcb_cw_t;

typedef enum xcb_back_pixmap_t {
    XCB_BACK_PIXMAP_NONE = 0,
    XCB_BACK_PIXMAP_PARENT_RELATIVE = 1
} xcb_back_pixmap_t;

typedef enum xcb_gravity_t {
    XCB_GRAVITY_BIT_FORGET = 0,
    XCB_GRAVITY_WIN_UNMAP = 0,
    XCB_GRAVITY_NORTH_WEST = 1,
    XCB_GRAVITY_NORTH = 2,
    XCB_GRAVITY_NORTH_EAST = 3,
    XCB_GRAVITY_WEST = 4,
    XCB_GRAVITY_CENTER = 5,
    XCB_GRAVITY_EAST = 6,
    XCB_GRAVITY_SOUTH_WEST = 7,
    XCB_GRAVITY_SOUTH = 8,
    XCB_GRAVITY_SOUTH_EAST = 9,
    XCB_GRAVITY_STATIC = 10
} xcb_gravity_t;

typedef enum xcb_backing_store_t {
    XCB_BACKING_STORE_NOT_USEFUL = 0,
    XCB_BACKING_STORE_WHEN_MAPPED = 1,
    XCB_BACKING_STORE_ALWAYS = 2
} xcb_backing_store_t;

typedef enum xcb_event_mask_t {
    XCB_EVENT_MASK_NO_EVENT = 0,
    XCB_EVENT_MASK_KEY_PRESS = (1 << 0),
    XCB_EVENT_MASK_KEY_RELEASE = (1 << 1),
    XCB_EVENT_MASK_BUTTON_PRESS = (1 << 2),
    XCB_EVENT_MASK_BUTTON_RELEASE = (1 << 3),
    XCB_EVENT_MASK_ENTER_WINDOW = (1 << 4),
    XCB_EVENT_MASK_LEAVE_WINDOW = (1 << 5),
    XCB_EVENT_MASK_POINTER_MOTION = (1 << 6),
    XCB_EVENT_MASK_POINTER_MOTION_HINT = (1 << 7),
    XCB_EVENT_MASK_BUTTON_1_MOTION = (1 << 8),
    XCB_EVENT_MASK_BUTTON_2_MOTION = (1 << 9),
    XCB_EVENT_MASK_BUTTON_3_MOTION = (1 << 10),
    XCB_EVENT_MASK_BUTTON_4_MOTION = (1 << 11),
    XCB_EVENT_MASK_BUTTON_5_MOTION = (1 << 12),
    XCB_EVENT_MASK_BUTTON_MOTION = (1 << 13),
    XCB_EVENT_MASK_KEYMAP_STATE = (1 << 14),
    XCB_EVENT_MASK_EXPOSURE = (1 << 15),
    XCB_EVENT_MASK_VISIBILITY_CHANGE = (1 << 16),
    XCB_EVENT_MASK_STRUCTURE_NOTIFY = (1 << 17),
    XCB_EVENT_MASK_RESIZE_REDIRECT = (1 << 18),
    XCB_EVENT_MASK_SUBSTRUCTURE_NOTIFY = (1 << 19),
    XCB_EVENT_MASK_SUBSTRUCTURE_REDIRECT = (1 << 20),
    XCB_EVENT_MASK_FOCUS_CHANGE = (1 << 21),
    XCB_EVENT_MASK_PROPERTY_CHANGE = (1 << 22),
    XCB_EVENT_MASK_COLOR_MAP_CHANGE = (1 << 23),
    XCB_EVENT_MASK_OWNER_GRAB_BUTTON = (1 << 24)
} xcb_event_mask_t;

/** Opcode for xcb_create_window. */
#define XCB_CREATE_WINDOW 1

/**
 * @brief xcb_create_window_request_t
 **/
typedef struct xcb_create_window_request_t {
    uint8_t        major_opcode; /**<  */
    uint8_t        depth; /**<  */
    uint16_t       length; /**<  */
    xcb_window_t   wid; /**<  */
    xcb_window_t   parent; /**<  */
    int16_t        x; /**<  */
    int16_t        y; /**<  */
    uint16_t       width; /**<  */
    uint16_t       height; /**<  */
    uint16_t       border_width; /**<  */
    uint16_t       _class; /**<  */
    xcb_visualid_t visual; /**<  */
    uint32_t       value_mask; /**<  */
} xcb_create_window_request_t;

/** Opcode for xcb_change_window_attributes. */
#define XCB_CHANGE_WINDOW_ATTRIBUTES 2

/**
 * @brief xcb_change_window_attributes_request_t
 **/
typedef struct xcb_change_window_attributes_request_t {
    uint8_t      major_opcode; /**<  */
    uint8_t      pad0; /**<  */
    uint16_t     length; /**<  */
    xcb_window_t window; /**<  */
    uint32_t     value_mask; /**<  */
} xcb_change_window_attributes_request_t;

typedef enum xcb_map_state_t {
    XCB_MAP_STATE_UNMAPPED = 0,
    XCB_MAP_STATE_UNVIEWABLE = 1,
    XCB_MAP_STATE_VIEWABLE = 2
} xcb_map_state_t;

/**
 * @brief xcb_get_window_attributes_cookie_t
 **/
typedef struct xcb_get_window_attributes_cookie_t {
    unsigned int sequence; /**<  */
} xcb_get_window_attributes_cookie_t;

/** Opcode for xcb_get_window_attributes. */
#define XCB_GET_WINDOW_ATTRIBUTES 3

/**
 * @brief xcb_get_window_attributes_request_t
 **/
typedef struct xcb_get_window_attributes_request_t {
    uint8_t      major_opcode; /**<  */
    uint8_t      pad0; /**<  */
    uint16_t     length; /**<  */
    xcb_window_t window; /**<  */
} xcb_get_window_attributes_request_t;

/**
 * @brief xcb_get_window_attributes_reply_t
 **/
typedef struct xcb_get_window_attributes_reply_t {
    uint8_t        response_type; /**<  */
    uint8_t        backing_store; /**<  */
    uint16_t       sequence; /**<  */
    uint32_t       length; /**<  */
    xcb_visualid_t visual; /**<  */
    uint16_t       _class; /**<  */
    uint8_t        bit_gravity; /**<  */
    uint8_t        win_gravity; /**<  */
    uint32_t       backing_planes; /**<  */
    uint32_t       backing_pixel; /**<  */
    uint8_t        save_under; /**<  */
    uint8_t        map_is_installed; /**<  */
    uint8_t        map_state; /**<  */
    uint8_t        override_redirect; /**<  */
    xcb_colormap_t colormap; /**<  */
    uint32_t       all_event_masks; /**<  */
    uint32_t       your_event_mask; /**<  */
    uint16_t       do_not_propagate_mask; /**<  */
} xcb_get_window_attributes_reply_t;

/** Opcode for xcb_destroy_window. */
#define XCB_DESTROY_WINDOW 4

/**
 * @brief xcb_destroy_window_request_t
 **/
typedef struct xcb_destroy_window_request_t {
    uint8_t      major_opcode; /**<  */
    uint8_t      pad0; /**<  */
    uint16_t     length; /**<  */
    xcb_window_t window; /**<  */
} xcb_destroy_window_request_t;

/** Opcode for xcb_destroy_subwindows. */
#define XCB_DESTROY_SUBWINDOWS 5

/**
 * @brief xcb_destroy_subwindows_request_t
 **/
typedef struct xcb_destroy_subwindows_request_t {
    uint8_t      major_opcode; /**<  */
    uint8_t      pad0; /**<  */
    uint16_t     length; /**<  */
    xcb_window_t window; /**<  */
} xcb_destroy_subwindows_request_t;

typedef enum xcb_set_mode_t {
    XCB_SET_MODE_INSERT = 0,
    XCB_SET_MODE_DELETE = 1
} xcb_set_mode_t;

/** Opcode for xcb_change_save_set. */
#define XCB_CHANGE_SAVE_SET 6

/**
 * @brief xcb_change_save_set_request_t
 **/
typedef struct xcb_change_save_set_request_t {
    uint8_t      major_opcode; /**<  */
    uint8_t      mode; /**<  */
    uint16_t     length; /**<  */
    xcb_window_t window; /**<  */
} xcb_change_save_set_request_t;

/** Opcode for xcb_reparent_window. */
#define XCB_REPARENT_WINDOW 7

/**
 * @brief xcb_reparent_window_request_t
 **/
typedef struct xcb_reparent_window_request_t {
    uint8_t      major_opcode; /**<  */
    uint8_t      pad0; /**<  */
    uint16_t     length; /**<  */
    xcb_window_t window; /**<  */
    xcb_window_t parent; /**<  */
    int16_t      x; /**<  */
    int16_t      y; /**<  */
} xcb_reparent_window_request_t;

/** Opcode for xcb_map_window. */
#define XCB_MAP_WINDOW 8

/**
 * @brief xcb_map_window_request_t
 **/
typedef struct xcb_map_window_request_t {
    uint8_t      major_opcode; /**<  */
    uint8_t      pad0; /**<  */
    uint16_t     length; /**<  */
    xcb_window_t window; /**<  */
} xcb_map_window_request_t;

/** Opcode for xcb_map_subwindows. */
#define XCB_MAP_SUBWINDOWS 9

/**
 * @brief xcb_map_subwindows_request_t
 **/
typedef struct xcb_map_subwindows_request_t {
    uint8_t      major_opcode; /**<  */
    uint8_t      pad0; /**<  */
    uint16_t     length; /**<  */
    xcb_window_t window; /**<  */
} xcb_map_subwindows_request_t;

/** Opcode for xcb_unmap_window. */
#define XCB_UNMAP_WINDOW 10

/**
 * @brief xcb_unmap_window_request_t
 **/
typedef struct xcb_unmap_window_request_t {
    uint8_t      major_opcode; /**<  */
    uint8_t      pad0; /**<  */
    uint16_t     length; /**<  */
    xcb_window_t window; /**<  */
} xcb_unmap_window_request_t;

/** Opcode for xcb_unmap_subwindows. */
#define XCB_UNMAP_SUBWINDOWS 11

/**
 * @brief xcb_unmap_subwindows_request_t
 **/
typedef struct xcb_unmap_subwindows_request_t {
    uint8_t      major_opcode; /**<  */
    uint8_t      pad0; /**<  */
    uint16_t     length; /**<  */
    xcb_window_t window; /**<  */
} xcb_unmap_subwindows_request_t;

typedef enum xcb_config_window_t {
    XCB_CONFIG_WINDOW_X = (1 << 0),
    XCB_CONFIG_WINDOW_Y = (1 << 1),
    XCB_CONFIG_WINDOW_WIDTH = (1 << 2),
    XCB_CONFIG_WINDOW_HEIGHT = (1 << 3),
    XCB_CONFIG_WINDOW_BORDER_WIDTH = (1 << 4),
    XCB_CONFIG_WINDOW_SIBLING = (1 << 5),
    XCB_CONFIG_WINDOW_STACK_MODE = (1 << 6)
} xcb_config_window_t;

typedef enum xcb_stack_mode_t {
    XCB_STACK_MODE_ABOVE = 0,
    XCB_STACK_MODE_BELOW = 1,
    XCB_STACK_MODE_TOP_IF = 2,
    XCB_STACK_MODE_BOTTOM_IF = 3,
    XCB_STACK_MODE_OPPOSITE = 4
} xcb_stack_mode_t;

/** Opcode for xcb_configure_window. */
#define XCB_CONFIGURE_WINDOW 12

/**
 * @brief xcb_configure_window_request_t
 **/
typedef struct xcb_configure_window_request_t {
    uint8_t      major_opcode; /**<  */
    uint8_t      pad0; /**<  */
    uint16_t     length; /**<  */
    xcb_window_t window; /**<  */
    uint16_t     value_mask; /**<  */
} xcb_configure_window_request_t;

typedef enum xcb_circulate_t {
    XCB_CIRCULATE_RAISE_LOWEST = 0,
    XCB_CIRCULATE_LOWER_HIGHEST = 1
} xcb_circulate_t;

/** Opcode for xcb_circulate_window. */
#define XCB_CIRCULATE_WINDOW 13

/**
 * @brief xcb_circulate_window_request_t
 **/
typedef struct xcb_circulate_window_request_t {
    uint8_t      major_opcode; /**<  */
    uint8_t      direction; /**<  */
    uint16_t     length; /**<  */
    xcb_window_t window; /**<  */
} xcb_circulate_window_request_t;

/**
 * @brief xcb_get_geometry_cookie_t
 **/
typedef struct xcb_get_geometry_cookie_t {
    unsigned int sequence; /**<  */
} xcb_get_geometry_cookie_t;

/** Opcode for xcb_get_geometry. */
#define XCB_GET_GEOMETRY 14

/**
 * @brief xcb_get_geometry_request_t
 **/
typedef struct xcb_get_geometry_request_t {
    uint8_t        major_opcode; /**<  */
    uint8_t        pad0; /**<  */
    uint16_t       length; /**<  */
    xcb_drawable_t drawable; /**<  */
} xcb_get_geometry_request_t;

/**
 * @brief xcb_get_geometry_reply_t
 **/
typedef struct xcb_get_geometry_reply_t {
    uint8_t      response_type; /**<  */
    uint8_t      depth; /**<  */
    uint16_t     sequence; /**<  */
    uint32_t     length; /**<  */
    xcb_window_t root; /**<  */
    int16_t      x; /**<  */
    int16_t      y; /**<  */
    uint16_t     width; /**<  */
    uint16_t     height; /**<  */
    uint16_t     border_width; /**<  */
} xcb_get_geometry_reply_t;

/**
 * @brief xcb_query_tree_cookie_t
 **/
typedef struct xcb_query_tree_cookie_t {
    unsigned int sequence; /**<  */
} xcb_query_tree_cookie_t;

/** Opcode for xcb_query_tree. */
#define XCB_QUERY_TREE 15

/**
 * @brief xcb_query_tree_request_t
 **/
typedef struct xcb_query_tree_request_t {
    uint8_t      major_opcode; /**<  */
    uint8_t      pad0; /**<  */
    uint16_t     length; /**<  */
    xcb_window_t window; /**<  */
} xcb_query_tree_request_t;

/**
 * @brief xcb_query_tree_reply_t
 **/
typedef struct xcb_query_tree_reply_t {
    uint8_t      response_type; /**<  */
    uint8_t      pad0; /**<  */
    uint16_t     sequence; /**<  */
    uint32_t     length; /**<  */
    xcb_window_t root; /**<  */
    xcb_window_t parent; /**<  */
    uint16_t     children_len; /**<  */
    uint8_t      pad1[14]; /**<  */
} xcb_query_tree_reply_t;

/**
 * @brief xcb_intern_atom_cookie_t
 **/
typedef struct xcb_intern_atom_cookie_t {
    unsigned int sequence; /**<  */
} xcb_intern_atom_cookie_t;

/** Opcode for xcb_intern_atom. */
#define XCB_INTERN_ATOM 16

/**
 * @brief xcb_intern_atom_request_t
 **/
typedef struct xcb_intern_atom_request_t {
    uint8_t  major_opcode; /**<  */
    uint8_t  only_if_exists; /**<  */
    uint16_t length; /**<  */
    uint16_t name_len; /**<  */
    uint8_t  pad0[2]; /**<  */
} xcb_intern_atom_request_t;

/**
 * @brief xcb_intern_atom_reply_t
 **/
typedef struct xcb_intern_atom_reply_t {
    uint8_t    response_type; /**<  */
    uint8_t    pad0; /**<  */
    uint16_t   sequence; /**<  */
    uint32_t   length; /**<  */
    xcb_atom_t atom; /**<  */
} xcb_intern_atom_reply_t;

/**
 * @brief xcb_get_atom_name_cookie_t
 **/
typedef struct xcb_get_atom_name_cookie_t {
    unsigned int sequence; /**<  */
} xcb_get_atom_name_cookie_t;

/** Opcode for xcb_get_atom_name. */
#define XCB_GET_ATOM_NAME 17

/**
 * @brief xcb_get_atom_name_request_t
 **/
typedef struct xcb_get_atom_name_request_t {
    uint8_t    major_opcode; /**<  */
    uint8_t    pad0; /**<  */
    uint16_t   length; /**<  */
    xcb_atom_t atom; /**<  */
} xcb_get_atom_name_request_t;

/**
 * @brief xcb_get_atom_name_reply_t
 **/
typedef struct xcb_get_atom_name_reply_t {
    uint8_t  response_type; /**<  */
    uint8_t  pad0; /**<  */
    uint16_t sequence; /**<  */
    uint32_t length; /**<  */
    uint16_t name_len; /**<  */
    uint8_t  pad1[22]; /**<  */
} xcb_get_atom_name_reply_t;

typedef enum xcb_prop_mode_t {
    XCB_PROP_MODE_REPLACE = 0,
    XCB_PROP_MODE_PREPEND = 1,
    XCB_PROP_MODE_APPEND = 2
} xcb_prop_mode_t;

/** Opcode for xcb_change_property. */
#define XCB_CHANGE_PROPERTY 18

/**
 * @brief xcb_change_property_request_t
 **/
typedef struct xcb_change_property_request_t {
    uint8_t      major_opcode; /**<  */
    uint8_t      mode; /**<  */
    uint16_t     length; /**<  */
    xcb_window_t window; /**<  */
    xcb_atom_t   property; /**<  */
    xcb_atom_t   type; /**<  */
    uint8_t      format; /**<  */
    uint8_t      pad0[3]; /**<  */
    uint32_t     data_len; /**<  */
} xcb_change_property_request_t;

/** Opcode for xcb_delete_property. */
#define XCB_DELETE_PROPERTY 19

/**
 * @brief xcb_delete_property_request_t
 **/
typedef struct xcb_delete_property_request_t {
    uint8_t      major_opcode; /**<  */
    uint8_t      pad0; /**<  */
    uint16_t     length; /**<  */
    xcb_window_t window; /**<  */
    xcb_atom_t   property; /**<  */
} xcb_delete_property_request_t;

typedef enum xcb_get_property_type_t {
    XCB_GET_PROPERTY_TYPE_ANY = 0
} xcb_get_property_type_t;

/**
 * @brief xcb_get_property_cookie_t
 **/
typedef struct xcb_get_property_cookie_t {
    unsigned int sequence; /**<  */
} xcb_get_property_cookie_t;

/** Opcode for xcb_get_property. */
#define XCB_GET_PROPERTY 20

/**
 * @brief xcb_get_property_request_t
 **/
typedef struct xcb_get_property_request_t {
    uint8_t      major_opcode; /**<  */
    uint8_t      _delete; /**<  */
    uint16_t     length; /**<  */
    xcb_window_t window; /**<  */
    xcb_atom_t   property; /**<  */
    xcb_atom_t   type; /**<  */
    uint32_t     long_offset; /**<  */
    uint32_t     long_length; /**<  */
} xcb_get_property_request_t;

/**
 * @brief xcb_get_property_reply_t
 **/
typedef struct xcb_get_property_reply_t {
    uint8_t    response_type; /**<  */
    uint8_t    format; /**<  */
    uint16_t   sequence; /**<  */
    uint32_t   length; /**<  */
    xcb_atom_t type; /**<  */
    uint32_t   bytes_after; /**<  */
    uint32_t   value_len; /**<  */
    uint8_t    pad0[12]; /**<  */
} xcb_get_property_reply_t;

/**
 * @brief xcb_list_properties_cookie_t
 **/
typedef struct xcb_list_properties_cookie_t {
    unsigned int sequence; /**<  */
} xcb_list_properties_cookie_t;

/** Opcode for xcb_list_properties. */
#define XCB_LIST_PROPERTIES 21

/**
 * @brief xcb_list_properties_request_t
 **/
typedef struct xcb_list_properties_request_t {
    uint8_t      major_opcode; /**<  */
    uint8_t      pad0; /**<  */
    uint16_t     length; /**<  */
    xcb_window_t window; /**<  */
} xcb_list_properties_request_t;

/**
 * @brief xcb_list_properties_reply_t
 **/
typedef struct xcb_list_properties_reply_t {
    uint8_t  response_type; /**<  */
    uint8_t  pad0; /**<  */
    uint16_t sequence; /**<  */
    uint32_t length; /**<  */
    uint16_t atoms_len; /**<  */
    uint8_t  pad1[22]; /**<  */
} xcb_list_properties_reply_t;

/** Opcode for xcb_set_selection_owner. */
#define XCB_SET_SELECTION_OWNER 22

/**
 * @brief xcb_set_selection_owner_request_t
 **/
typedef struct xcb_set_selection_owner_request_t {
    uint8_t         major_opcode; /**<  */
    uint8_t         pad0; /**<  */
    uint16_t        length; /**<  */
    xcb_window_t    owner; /**<  */
    xcb_atom_t      selection; /**<  */
    xcb_timestamp_t time; /**<  */
} xcb_set_selection_owner_request_t;

/**
 * @brief xcb_get_selection_owner_cookie_t
 **/
typedef struct xcb_get_selection_owner_cookie_t {
    unsigned int sequence; /**<  */
} xcb_get_selection_owner_cookie_t;

/** Opcode for xcb_get_selection_owner. */
#define XCB_GET_SELECTION_OWNER 23

/**
 * @brief xcb_get_selection_owner_request_t
 **/
typedef struct xcb_get_selection_owner_request_t {
    uint8_t    major_opcode; /**<  */
    uint8_t    pad0; /**<  */
    uint16_t   length; /**<  */
    xcb_atom_t selection; /**<  */
} xcb_get_selection_owner_request_t;

/**
 * @brief xcb_get_selection_owner_reply_t
 **/
typedef struct xcb_get_selection_owner_reply_t {
    uint8_t      response_type; /**<  */
    uint8_t      pad0; /**<  */
    uint16_t     sequence; /**<  */
    uint32_t     length; /**<  */
    xcb_window_t owner; /**<  */
} xcb_get_selection_owner_reply_t;

/** Opcode for xcb_convert_selection. */
#define XCB_CONVERT_SELECTION 24

/**
 * @brief xcb_convert_selection_request_t
 **/
typedef struct xcb_convert_selection_request_t {
    uint8_t         major_opcode; /**<  */
    uint8_t         pad0; /**<  */
    uint16_t        length; /**<  */
    xcb_window_t    requestor; /**<  */
    xcb_atom_t      selection; /**<  */
    xcb_atom_t      target; /**<  */
    xcb_atom_t      property; /**<  */
    xcb_timestamp_t time; /**<  */
} xcb_convert_selection_request_t;

typedef enum xcb_send_event_dest_t {
    XCB_SEND_EVENT_DEST_POINTER_WINDOW = 0,
    XCB_SEND_EVENT_DEST_ITEM_FOCUS = 1
} xcb_send_event_dest_t;

/** Opcode for xcb_send_event. */
#define XCB_SEND_EVENT 25

/**
 * @brief xcb_send_event_request_t
 **/
typedef struct xcb_send_event_request_t {
    uint8_t      major_opcode; /**<  */
    uint8_t      propagate; /**<  */
    uint16_t     length; /**<  */
    xcb_window_t destination; /**<  */
    uint32_t     event_mask; /**<  */
} xcb_send_event_request_t;

typedef enum xcb_grab_mode_t {
    XCB_GRAB_MODE_SYNC = 0,
    XCB_GRAB_MODE_ASYNC = 1
} xcb_grab_mode_t;

typedef enum xcb_grab_status_t {
    XCB_GRAB_STATUS_SUCCESS = 0,
    XCB_GRAB_STATUS_ALREADY_GRABBED = 1,
    XCB_GRAB_STATUS_INVALID_TIME = 2,
    XCB_GRAB_STATUS_NOT_VIEWABLE = 3,
    XCB_GRAB_STATUS_FROZEN = 4
} xcb_grab_status_t;

/**
 * @brief xcb_grab_pointer_cookie_t
 **/
typedef struct xcb_grab_pointer_cookie_t {
    unsigned int sequence; /**<  */
} xcb_grab_pointer_cookie_t;

/** Opcode for xcb_grab_pointer. */
#define XCB_GRAB_POINTER 26

/**
 * @brief xcb_grab_pointer_request_t
 **/
typedef struct xcb_grab_pointer_request_t {
    uint8_t         major_opcode; /**<  */
    uint8_t         owner_events; /**<  */
    uint16_t        length; /**<  */
    xcb_window_t    grab_window; /**<  */
    uint16_t        event_mask; /**<  */
    uint8_t         pointer_mode; /**<  */
    uint8_t         keyboard_mode; /**<  */
    xcb_window_t    confine_to; /**<  */
    xcb_cursor_t    cursor; /**<  */
    xcb_timestamp_t time; /**<  */
} xcb_grab_pointer_request_t;

/**
 * @brief xcb_grab_pointer_reply_t
 **/
typedef struct xcb_grab_pointer_reply_t {
    uint8_t  response_type; /**<  */
    uint8_t  status; /**<  */
    uint16_t sequence; /**<  */
    uint32_t length; /**<  */
} xcb_grab_pointer_reply_t;

/** Opcode for xcb_ungrab_pointer. */
#define XCB_UNGRAB_POINTER 27

/**
 * @brief xcb_ungrab_pointer_request_t
 **/
typedef struct xcb_ungrab_pointer_request_t {
    uint8_t         major_opcode; /**<  */
    uint8_t         pad0; /**<  */
    uint16_t        length; /**<  */
    xcb_timestamp_t time; /**<  */
} xcb_ungrab_pointer_request_t;

typedef enum xcb_button_index_t {
    XCB_BUTTON_INDEX_ANY = 0,
    XCB_BUTTON_INDEX_1 = 1,
    XCB_BUTTON_INDEX_2 = 2,
    XCB_BUTTON_INDEX_3 = 3,
    XCB_BUTTON_INDEX_4 = 4,
    XCB_BUTTON_INDEX_5 = 5
} xcb_button_index_t;

/** Opcode for xcb_grab_button. */
#define XCB_GRAB_BUTTON 28

/**
 * @brief xcb_grab_button_request_t
 **/
typedef struct xcb_grab_button_request_t {
    uint8_t      major_opcode; /**<  */
    uint8_t      owner_events; /**<  */
    uint16_t     length; /**<  */
    xcb_window_t grab_window; /**<  */
    uint16_t     event_mask; /**<  */
    uint8_t      pointer_mode; /**<  */
    uint8_t      keyboard_mode; /**<  */
    xcb_window_t confine_to; /**<  */
    xcb_cursor_t cursor; /**<  */
    uint8_t      button; /**<  */
    uint8_t      pad0; /**<  */
    uint16_t     modifiers; /**<  */
} xcb_grab_button_request_t;

/** Opcode for xcb_ungrab_button. */
#define XCB_UNGRAB_BUTTON 29

/**
 * @brief xcb_ungrab_button_request_t
 **/
typedef struct xcb_ungrab_button_request_t {
    uint8_t      major_opcode; /**<  */
    uint8_t      button; /**<  */
    uint16_t     length; /**<  */
    xcb_window_t grab_window; /**<  */
    uint16_t     modifiers; /**<  */
    uint8_t      pad0[2]; /**<  */
} xcb_ungrab_button_request_t;

/** Opcode for xcb_change_active_pointer_grab. */
#define XCB_CHANGE_ACTIVE_POINTER_GRAB 30

/**
 * @brief xcb_change_active_pointer_grab_request_t
 **/
typedef struct xcb_change_active_pointer_grab_request_t {
    uint8_t         major_opcode; /**<  */
    uint8_t         pad0; /**<  */
    uint16_t        length; /**<  */
    xcb_cursor_t    cursor; /**<  */
    xcb_timestamp_t time; /**<  */
    uint16_t        event_mask; /**<  */
} xcb_change_active_pointer_grab_request_t;

/**
 * @brief xcb_grab_keyboard_cookie_t
 **/
typedef struct xcb_grab_keyboard_cookie_t {
    unsigned int sequence; /**<  */
} xcb_grab_keyboard_cookie_t;

/** Opcode for xcb_grab_keyboard. */
#define XCB_GRAB_KEYBOARD 31

/**
 * @brief xcb_grab_keyboard_request_t
 **/
typedef struct xcb_grab_keyboard_request_t {
    uint8_t         major_opcode; /**<  */
    uint8_t         owner_events; /**<  */
    uint16_t        length; /**<  */
    xcb_window_t    grab_window; /**<  */
    xcb_timestamp_t time; /**<  */
    uint8_t         pointer_mode; /**<  */
    uint8_t         keyboard_mode; /**<  */
} xcb_grab_keyboard_request_t;

/**
 * @brief xcb_grab_keyboard_reply_t
 **/
typedef struct xcb_grab_keyboard_reply_t {
    uint8_t  response_type; /**<  */
    uint8_t  status; /**<  */
    uint16_t sequence; /**<  */
    uint32_t length; /**<  */
} xcb_grab_keyboard_reply_t;

/** Opcode for xcb_ungrab_keyboard. */
#define XCB_UNGRAB_KEYBOARD 32

/**
 * @brief xcb_ungrab_keyboard_request_t
 **/
typedef struct xcb_ungrab_keyboard_request_t {
    uint8_t         major_opcode; /**<  */
    uint8_t         pad0; /**<  */
    uint16_t        length; /**<  */
    xcb_timestamp_t time; /**<  */
} xcb_ungrab_keyboard_request_t;

typedef enum xcb_grab_t {
    XCB_GRAB_ANY = 0
} xcb_grab_t;

/** Opcode for xcb_grab_key. */
#define XCB_GRAB_KEY 33

/**
 * @brief xcb_grab_key_request_t
 **/
typedef struct xcb_grab_key_request_t {
    uint8_t       major_opcode; /**<  */
    uint8_t       owner_events; /**<  */
    uint16_t      length; /**<  */
    xcb_window_t  grab_window; /**<  */
    uint16_t      modifiers; /**<  */
    xcb_keycode_t key; /**<  */
    uint8_t       pointer_mode; /**<  */
    uint8_t       keyboard_mode; /**<  */
} xcb_grab_key_request_t;

/** Opcode for xcb_ungrab_key. */
#define XCB_UNGRAB_KEY 34

/**
 * @brief xcb_ungrab_key_request_t
 **/
typedef struct xcb_ungrab_key_request_t {
    uint8_t       major_opcode; /**<  */
    xcb_keycode_t key; /**<  */
    uint16_t      length; /**<  */
    xcb_window_t  grab_window; /**<  */
    uint16_t      modifiers; /**<  */
} xcb_ungrab_key_request_t;

typedef enum xcb_allow_t {
    XCB_ALLOW_ASYNC_POINTER = 0,
    XCB_ALLOW_SYNC_POINTER = 1,
    XCB_ALLOW_REPLAY_POINTER = 2,
    XCB_ALLOW_ASYNC_KEYBOARD = 3,
    XCB_ALLOW_SYNC_KEYBOARD = 4,
    XCB_ALLOW_REPLAY_KEYBOARD = 5,
    XCB_ALLOW_ASYNC_BOTH = 6,
    XCB_ALLOW_SYNC_BOTH = 7
} xcb_allow_t;

/** Opcode for xcb_allow_events. */
#define XCB_ALLOW_EVENTS 35

/**
 * @brief xcb_allow_events_request_t
 **/
typedef struct xcb_allow_events_request_t {
    uint8_t         major_opcode; /**<  */
    uint8_t         mode; /**<  */
    uint16_t        length; /**<  */
    xcb_timestamp_t time; /**<  */
} xcb_allow_events_request_t;

/** Opcode for xcb_grab_server. */
#define XCB_GRAB_SERVER 36

/**
 * @brief xcb_grab_server_request_t
 **/
typedef struct xcb_grab_server_request_t {
    uint8_t  major_opcode; /**<  */
    uint8_t  pad0; /**<  */
    uint16_t length; /**<  */
} xcb_grab_server_request_t;

/** Opcode for xcb_ungrab_server. */
#define XCB_UNGRAB_SERVER 37

/**
 * @brief xcb_ungrab_server_request_t
 **/
typedef struct xcb_ungrab_server_request_t {
    uint8_t  major_opcode; /**<  */
    uint8_t  pad0; /**<  */
    uint16_t length; /**<  */
} xcb_ungrab_server_request_t;

/**
 * @brief xcb_query_pointer_cookie_t
 **/
typedef struct xcb_query_pointer_cookie_t {
    unsigned int sequence; /**<  */
} xcb_query_pointer_cookie_t;

/** Opcode for xcb_query_pointer. */
#define XCB_QUERY_POINTER 38

/**
 * @brief xcb_query_pointer_request_t
 **/
typedef struct xcb_query_pointer_request_t {
    uint8_t      major_opcode; /**<  */
    uint8_t      pad0; /**<  */
    uint16_t     length; /**<  */
    xcb_window_t window; /**<  */
} xcb_query_pointer_request_t;

/**
 * @brief xcb_query_pointer_reply_t
 **/
typedef struct xcb_query_pointer_reply_t {
    uint8_t      response_type; /**<  */
    uint8_t      same_screen; /**<  */
    uint16_t     sequence; /**<  */
    uint32_t     length; /**<  */
    xcb_window_t root; /**<  */
    xcb_window_t child; /**<  */
    int16_t      root_x; /**<  */
    int16_t      root_y; /**<  */
    int16_t      win_x; /**<  */
    int16_t      win_y; /**<  */
    uint16_t     mask; /**<  */
} xcb_query_pointer_reply_t;

/**
 * @brief xcb_timecoord_t
 **/
typedef struct xcb_timecoord_t {
    xcb_timestamp_t time; /**<  */
    int16_t         x; /**<  */
    int16_t         y; /**<  */
} xcb_timecoord_t;

/**
 * @brief xcb_timecoord_iterator_t
 **/
typedef struct xcb_timecoord_iterator_t {
    xcb_timecoord_t *data; /**<  */
    int              rem; /**<  */
    int              index; /**<  */
} xcb_timecoord_iterator_t;

/**
 * @brief xcb_get_motion_events_cookie_t
 **/
typedef struct xcb_get_motion_events_cookie_t {
    unsigned int sequence; /**<  */
} xcb_get_motion_events_cookie_t;

/** Opcode for xcb_get_motion_events. */
#define XCB_GET_MOTION_EVENTS 39

/**
 * @brief xcb_get_motion_events_request_t
 **/
typedef struct xcb_get_motion_events_request_t {
    uint8_t         major_opcode; /**<  */
    uint8_t         pad0; /**<  */
    uint16_t        length; /**<  */
    xcb_window_t    window; /**<  */
    xcb_timestamp_t start; /**<  */
    xcb_timestamp_t stop; /**<  */
} xcb_get_motion_events_request_t;

/**
 * @brief xcb_get_motion_events_reply_t
 **/
typedef struct xcb_get_motion_events_reply_t {
    uint8_t  response_type; /**<  */
    uint8_t  pad0; /**<  */
    uint16_t sequence; /**<  */
    uint32_t length; /**<  */
    uint32_t events_len; /**<  */
    uint8_t  pad1[20]; /**<  */
} xcb_get_motion_events_reply_t;

/**
 * @brief xcb_translate_coordinates_cookie_t
 **/
typedef struct xcb_translate_coordinates_cookie_t {
    unsigned int sequence; /**<  */
} xcb_translate_coordinates_cookie_t;

/** Opcode for xcb_translate_coordinates. */
#define XCB_TRANSLATE_COORDINATES 40

/**
 * @brief xcb_translate_coordinates_request_t
 **/
typedef struct xcb_translate_coordinates_request_t {
    uint8_t      major_opcode; /**<  */
    uint8_t      pad0; /**<  */
    uint16_t     length; /**<  */
    xcb_window_t src_window; /**<  */
    xcb_window_t dst_window; /**<  */
    int16_t      src_x; /**<  */
    int16_t      src_y; /**<  */
} xcb_translate_coordinates_request_t;

/**
 * @brief xcb_translate_coordinates_reply_t
 **/
typedef struct xcb_translate_coordinates_reply_t {
    uint8_t      response_type; /**<  */
    uint8_t      same_screen; /**<  */
    uint16_t     sequence; /**<  */
    uint32_t     length; /**<  */
    xcb_window_t child; /**<  */
    uint16_t     dst_x; /**<  */
    uint16_t     dst_y; /**<  */
} xcb_translate_coordinates_reply_t;

/** Opcode for xcb_warp_pointer. */
#define XCB_WARP_POINTER 41

/**
 * @brief xcb_warp_pointer_request_t
 **/
typedef struct xcb_warp_pointer_request_t {
    uint8_t      major_opcode; /**<  */
    uint8_t      pad0; /**<  */
    uint16_t     length; /**<  */
    xcb_window_t src_window; /**<  */
    xcb_window_t dst_window; /**<  */
    int16_t      src_x; /**<  */
    int16_t      src_y; /**<  */
    uint16_t     src_width; /**<  */
    uint16_t     src_height; /**<  */
    int16_t      dst_x; /**<  */
    int16_t      dst_y; /**<  */
} xcb_warp_pointer_request_t;

typedef enum xcb_input_focus_t {
    XCB_INPUT_FOCUS_NONE = 0,
    XCB_INPUT_FOCUS_POINTER_ROOT = 1,
    XCB_INPUT_FOCUS_PARENT = 2
} xcb_input_focus_t;

/** Opcode for xcb_set_input_focus. */
#define XCB_SET_INPUT_FOCUS 42

/**
 * @brief xcb_set_input_focus_request_t
 **/
typedef struct xcb_set_input_focus_request_t {
    uint8_t         major_opcode; /**<  */
    uint8_t         revert_to; /**<  */
    uint16_t        length; /**<  */
    xcb_window_t    focus; /**<  */
    xcb_timestamp_t time; /**<  */
} xcb_set_input_focus_request_t;

/**
 * @brief xcb_get_input_focus_cookie_t
 **/
typedef struct xcb_get_input_focus_cookie_t {
    unsigned int sequence; /**<  */
} xcb_get_input_focus_cookie_t;

/** Opcode for xcb_get_input_focus. */
#define XCB_GET_INPUT_FOCUS 43

/**
 * @brief xcb_get_input_focus_request_t
 **/
typedef struct xcb_get_input_focus_request_t {
    uint8_t  major_opcode; /**<  */
    uint8_t  pad0; /**<  */
    uint16_t length; /**<  */
} xcb_get_input_focus_request_t;

/**
 * @brief xcb_get_input_focus_reply_t
 **/
typedef struct xcb_get_input_focus_reply_t {
    uint8_t      response_type; /**<  */
    uint8_t      revert_to; /**<  */
    uint16_t     sequence; /**<  */
    uint32_t     length; /**<  */
    xcb_window_t focus; /**<  */
} xcb_get_input_focus_reply_t;

/**
 * @brief xcb_query_keymap_cookie_t
 **/
typedef struct xcb_query_keymap_cookie_t {
    unsigned int sequence; /**<  */
} xcb_query_keymap_cookie_t;

/** Opcode for xcb_query_keymap. */
#define XCB_QUERY_KEYMAP 44

/**
 * @brief xcb_query_keymap_request_t
 **/
typedef struct xcb_query_keymap_request_t {
    uint8_t  major_opcode; /**<  */
    uint8_t  pad0; /**<  */
    uint16_t length; /**<  */
} xcb_query_keymap_request_t;

/**
 * @brief xcb_query_keymap_reply_t
 **/
typedef struct xcb_query_keymap_reply_t {
    uint8_t  response_type; /**<  */
    uint8_t  pad0; /**<  */
    uint16_t sequence; /**<  */
    uint32_t length; /**<  */
    uint8_t  keys[32]; /**<  */
} xcb_query_keymap_reply_t;

/** Opcode for xcb_open_font. */
#define XCB_OPEN_FONT 45

/**
 * @brief xcb_open_font_request_t
 **/
typedef struct xcb_open_font_request_t {
    uint8_t    major_opcode; /**<  */
    uint8_t    pad0; /**<  */
    uint16_t   length; /**<  */
    xcb_font_t fid; /**<  */
    uint16_t   name_len; /**<  */
} xcb_open_font_request_t;

/** Opcode for xcb_close_font. */
#define XCB_CLOSE_FONT 46

/**
 * @brief xcb_close_font_request_t
 **/
typedef struct xcb_close_font_request_t {
    uint8_t    major_opcode; /**<  */
    uint8_t    pad0; /**<  */
    uint16_t   length; /**<  */
    xcb_font_t font; /**<  */
} xcb_close_font_request_t;

typedef enum xcb_font_draw_t {
    XCB_FONT_DRAW_LEFT_TO_RIGHT = 0,
    XCB_FONT_DRAW_RIGHT_TO_LEFT = 1
} xcb_font_draw_t;

/**
 * @brief xcb_fontprop_t
 **/
typedef struct xcb_fontprop_t {
    xcb_atom_t name; /**<  */
    uint32_t   value; /**<  */
} xcb_fontprop_t;

/**
 * @brief xcb_fontprop_iterator_t
 **/
typedef struct xcb_fontprop_iterator_t {
    xcb_fontprop_t *data; /**<  */
    int             rem; /**<  */
    int             index; /**<  */
} xcb_fontprop_iterator_t;

/**
 * @brief xcb_charinfo_t
 **/
typedef struct xcb_charinfo_t {
    int16_t  left_side_bearing; /**<  */
    int16_t  right_side_bearing; /**<  */
    int16_t  character_width; /**<  */
    int16_t  ascent; /**<  */
    int16_t  descent; /**<  */
    uint16_t attributes; /**<  */
} xcb_charinfo_t;

/**
 * @brief xcb_charinfo_iterator_t
 **/
typedef struct xcb_charinfo_iterator_t {
    xcb_charinfo_t *data; /**<  */
    int             rem; /**<  */
    int             index; /**<  */
} xcb_charinfo_iterator_t;

/**
 * @brief xcb_query_font_cookie_t
 **/
typedef struct xcb_query_font_cookie_t {
    unsigned int sequence; /**<  */
} xcb_query_font_cookie_t;

/** Opcode for xcb_query_font. */
#define XCB_QUERY_FONT 47

/**
 * @brief xcb_query_font_request_t
 **/
typedef struct xcb_query_font_request_t {
    uint8_t        major_opcode; /**<  */
    uint8_t        pad0; /**<  */
    uint16_t       length; /**<  */
    xcb_fontable_t font; /**<  */
} xcb_query_font_request_t;

/**
 * @brief xcb_query_font_reply_t
 **/
typedef struct xcb_query_font_reply_t {
    uint8_t        response_type; /**<  */
    uint8_t        pad0; /**<  */
    uint16_t       sequence; /**<  */
    uint32_t       length; /**<  */
    xcb_charinfo_t min_bounds; /**<  */
    uint8_t        pad1[4]; /**<  */
    xcb_charinfo_t max_bounds; /**<  */
    uint8_t        pad2[4]; /**<  */
    uint16_t       min_char_or_byte2; /**<  */
    uint16_t       max_char_or_byte2; /**<  */
    uint16_t       default_char; /**<  */
    uint16_t       properties_len; /**<  */
    uint8_t        draw_direction; /**<  */
    uint8_t        min_byte1; /**<  */
    uint8_t        max_byte1; /**<  */
    uint8_t        all_chars_exist; /**<  */
    int16_t        font_ascent; /**<  */
    int16_t        font_descent; /**<  */
    uint32_t       char_infos_len; /**<  */
} xcb_query_font_reply_t;

/**
 * @brief xcb_query_text_extents_cookie_t
 **/
typedef struct xcb_query_text_extents_cookie_t {
    unsigned int sequence; /**<  */
} xcb_query_text_extents_cookie_t;

/** Opcode for xcb_query_text_extents. */
#define XCB_QUERY_TEXT_EXTENTS 48

/**
 * @brief xcb_query_text_extents_request_t
 **/
typedef struct xcb_query_text_extents_request_t {
    uint8_t        major_opcode; /**<  */
    uint8_t        odd_length; /**<  */
    uint16_t       length; /**<  */
    xcb_fontable_t font; /**<  */
} xcb_query_text_extents_request_t;

/**
 * @brief xcb_query_text_extents_reply_t
 **/
typedef struct xcb_query_text_extents_reply_t {
    uint8_t  response_type; /**<  */
    uint8_t  draw_direction; /**<  */
    uint16_t sequence; /**<  */
    uint32_t length; /**<  */
    int16_t  font_ascent; /**<  */
    int16_t  font_descent; /**<  */
    int16_t  overall_ascent; /**<  */
    int16_t  overall_descent; /**<  */
    int32_t  overall_width; /**<  */
    int32_t  overall_left; /**<  */
    int32_t  overall_right; /**<  */
} xcb_query_text_extents_reply_t;

/**
 * @brief xcb_str_t
 **/
typedef struct xcb_str_t {
    uint8_t name_len; /**<  */
} xcb_str_t;

/**
 * @brief xcb_str_iterator_t
 **/
typedef struct xcb_str_iterator_t {
    xcb_str_t *data; /**<  */
    int        rem; /**<  */
    int        index; /**<  */
} xcb_str_iterator_t;

/**
 * @brief xcb_list_fonts_cookie_t
 **/
typedef struct xcb_list_fonts_cookie_t {
    unsigned int sequence; /**<  */
} xcb_list_fonts_cookie_t;

/** Opcode for xcb_list_fonts. */
#define XCB_LIST_FONTS 49

/**
 * @brief xcb_list_fonts_request_t
 **/
typedef struct xcb_list_fonts_request_t {
    uint8_t  major_opcode; /**<  */
    uint8_t  pad0; /**<  */
    uint16_t length; /**<  */
    uint16_t max_names; /**<  */
    uint16_t pattern_len; /**<  */
} xcb_list_fonts_request_t;

/**
 * @brief xcb_list_fonts_reply_t
 **/
typedef struct xcb_list_fonts_reply_t {
    uint8_t  response_type; /**<  */
    uint8_t  pad0; /**<  */
    uint16_t sequence; /**<  */
    uint32_t length; /**<  */
    uint16_t names_len; /**<  */
    uint8_t  pad1[22]; /**<  */
} xcb_list_fonts_reply_t;

/**
 * @brief xcb_list_fonts_with_info_cookie_t
 **/
typedef struct xcb_list_fonts_with_info_cookie_t {
    unsigned int sequence; /**<  */
} xcb_list_fonts_with_info_cookie_t;

/** Opcode for xcb_list_fonts_with_info. */
#define XCB_LIST_FONTS_WITH_INFO 50

/**
 * @brief xcb_list_fonts_with_info_request_t
 **/
typedef struct xcb_list_fonts_with_info_request_t {
    uint8_t  major_opcode; /**<  */
    uint8_t  pad0; /**<  */
    uint16_t length; /**<  */
    uint16_t max_names; /**<  */
    uint16_t pattern_len; /**<  */
} xcb_list_fonts_with_info_request_t;

/**
 * @brief xcb_list_fonts_with_info_reply_t
 **/
typedef struct xcb_list_fonts_with_info_reply_t {
    uint8_t        response_type; /**<  */
    uint8_t        name_len; /**<  */
    uint16_t       sequence; /**<  */
    uint32_t       length; /**<  */
    xcb_charinfo_t min_bounds; /**<  */
    uint8_t        pad0[4]; /**<  */
    xcb_charinfo_t max_bounds; /**<  */
    uint8_t        pad1[4]; /**<  */
    uint16_t       min_char_or_byte2; /**<  */
    uint16_t       max_char_or_byte2; /**<  */
    uint16_t       default_char; /**<  */
    uint16_t       properties_len; /**<  */
    uint8_t        draw_direction; /**<  */
    uint8_t        min_byte1; /**<  */
    uint8_t        max_byte1; /**<  */
    uint8_t        all_chars_exist; /**<  */
    int16_t        font_ascent; /**<  */
    int16_t        font_descent; /**<  */
    uint32_t       replies_hint; /**<  */
} xcb_list_fonts_with_info_reply_t;

/** Opcode for xcb_set_font_path. */
#define XCB_SET_FONT_PATH 51

/**
 * @brief xcb_set_font_path_request_t
 **/
typedef struct xcb_set_font_path_request_t {
    uint8_t  major_opcode; /**<  */
    uint8_t  pad0; /**<  */
    uint16_t length; /**<  */
    uint16_t font_qty; /**<  */
} xcb_set_font_path_request_t;

/**
 * @brief xcb_get_font_path_cookie_t
 **/
typedef struct xcb_get_font_path_cookie_t {
    unsigned int sequence; /**<  */
} xcb_get_font_path_cookie_t;

/** Opcode for xcb_get_font_path. */
#define XCB_GET_FONT_PATH 52

/**
 * @brief xcb_get_font_path_request_t
 **/
typedef struct xcb_get_font_path_request_t {
    uint8_t  major_opcode; /**<  */
    uint8_t  pad0; /**<  */
    uint16_t length; /**<  */
} xcb_get_font_path_request_t;

/**
 * @brief xcb_get_font_path_reply_t
 **/
typedef struct xcb_get_font_path_reply_t {
    uint8_t  response_type; /**<  */
    uint8_t  pad0; /**<  */
    uint16_t sequence; /**<  */
    uint32_t length; /**<  */
    uint16_t path_len; /**<  */
    uint8_t  pad1[22]; /**<  */
} xcb_get_font_path_reply_t;

/** Opcode for xcb_create_pixmap. */
#define XCB_CREATE_PIXMAP 53

/**
 * @brief xcb_create_pixmap_request_t
 **/
typedef struct xcb_create_pixmap_request_t {
    uint8_t        major_opcode; /**<  */
    uint8_t        depth; /**<  */
    uint16_t       length; /**<  */
    xcb_pixmap_t   pid; /**<  */
    xcb_drawable_t drawable; /**<  */
    uint16_t       width; /**<  */
    uint16_t       height; /**<  */
} xcb_create_pixmap_request_t;

/** Opcode for xcb_free_pixmap. */
#define XCB_FREE_PIXMAP 54

/**
 * @brief xcb_free_pixmap_request_t
 **/
typedef struct xcb_free_pixmap_request_t {
    uint8_t      major_opcode; /**<  */
    uint8_t      pad0; /**<  */
    uint16_t     length; /**<  */
    xcb_pixmap_t pixmap; /**<  */
} xcb_free_pixmap_request_t;

typedef enum xcb_gc_t {
    XCB_GC_FUNCTION = (1 << 0),
    XCB_GC_PLANE_MASK = (1 << 1),
    XCB_GC_FOREGROUND = (1 << 2),
    XCB_GC_BACKGROUND = (1 << 3),
    XCB_GC_LINE_WIDTH = (1 << 4),
    XCB_GC_LINE_STYLE = (1 << 5),
    XCB_GC_CAP_STYLE = (1 << 6),
    XCB_GC_JOIN_STYLE = (1 << 7),
    XCB_GC_FILL_STYLE = (1 << 8),
    XCB_GC_FILL_RULE = (1 << 9),
    XCB_GC_TILE = (1 << 10),
    XCB_GC_STIPPLE = (1 << 11),
    XCB_GC_TILE_STIPPLE_ORIGIN_X = (1 << 12),
    XCB_GC_TILE_STIPPLE_ORIGIN_Y = (1 << 13),
    XCB_GC_FONT = (1 << 14),
    XCB_GC_SUBWINDOW_MODE = (1 << 15),
    XCB_GC_GRAPHICS_EXPOSURES = (1 << 16),
    XCB_GC_CLIP_ORIGIN_X = (1 << 17),
    XCB_GC_CLIP_ORIGIN_Y = (1 << 18),
    XCB_GC_CLIP_MASK = (1 << 19),
    XCB_GC_DASH_OFFSET = (1 << 20),
    XCB_GC_DASH_LIST = (1 << 21),
    XCB_GC_ARC_MODE = (1 << 22)
} xcb_gc_t;

typedef enum xcb_gx_t {
    XCB_GX_CLEAR = 0x0,
    XCB_GX_AND = 0x1,
    XCB_GX_AND_REVERSE = 0x2,
    XCB_GX_COPY = 0x3,
    XCB_GX_AND_INVERTED = 0x4,
    XCB_GX_NOOP = 0x5,
    XCB_GX_XOR = 0x6,
    XCB_GX_OR = 0x7,
    XCB_GX_NOR = 0x8,
    XCB_GX_EQUIV = 0x9,
    XCB_GX_INVERT = 0xa,
    XCB_GX_OR_REVERSE = 0xb,
    XCB_GX_COPY_INVERTED = 0xc,
    XCB_GX_OR_INVERTED = 0xd,
    XCB_GX_NAND = 0xe,
    XCB_GX_SET = 0xf
} xcb_gx_t;

typedef enum xcb_line_style_t {
    XCB_LINE_STYLE_SOLID = 0,
    XCB_LINE_STYLE_ON_OFF_DASH = 1,
    XCB_LINE_STYLE_DOUBLE_DASH = 2
} xcb_line_style_t;

typedef enum xcb_cap_style_t {
    XCB_CAP_STYLE_NOT_LAST = 0,
    XCB_CAP_STYLE_BUTT = 1,
    XCB_CAP_STYLE_ROUND = 2,
    XCB_CAP_STYLE_PROJECTING = 3
} xcb_cap_style_t;

typedef enum xcb_join_style_t {
    XCB_JOIN_STYLE_MITRE = 0,
    XCB_JOIN_STYLE_ROUND = 1,
    XCB_JOIN_STYLE_BEVEL = 2
} xcb_join_style_t;

typedef enum xcb_fill_style_t {
    XCB_FILL_STYLE_SOLID = 0,
    XCB_FILL_STYLE_TILED = 1,
    XCB_FILL_STYLE_STIPPLED = 2,
    XCB_FILL_STYLE_OPAQUE_STIPPLED = 3
} xcb_fill_style_t;

typedef enum xcb_fill_rule_t {
    XCB_FILL_RULE_EVEN_ODD = 0,
    XCB_FILL_RULE_WINDING = 1
} xcb_fill_rule_t;

typedef enum xcb_subwindow_mode_t {
    XCB_SUBWINDOW_MODE_CLIP_BY_CHILDREN = 0,
    XCB_SUBWINDOW_MODE_INCLUDE_INFERIORS = 1
} xcb_subwindow_mode_t;

typedef enum xcb_arc_mode_t {
    XCB_ARC_MODE_CHORD = 0,
    XCB_ARC_MODE_PIE_SLICE = 1
} xcb_arc_mode_t;

/** Opcode for xcb_create_gc. */
#define XCB_CREATE_GC 55

/**
 * @brief xcb_create_gc_request_t
 **/
typedef struct xcb_create_gc_request_t {
    uint8_t        major_opcode; /**<  */
    uint8_t        pad0; /**<  */
    uint16_t       length; /**<  */
    xcb_gcontext_t cid; /**<  */
    xcb_drawable_t drawable; /**<  */
    uint32_t       value_mask; /**<  */
} xcb_create_gc_request_t;

/** Opcode for xcb_change_gc. */
#define XCB_CHANGE_GC 56

/**
 * @brief xcb_change_gc_request_t
 **/
typedef struct xcb_change_gc_request_t {
    uint8_t        major_opcode; /**<  */
    uint8_t        pad0; /**<  */
    uint16_t       length; /**<  */
    xcb_gcontext_t gc; /**<  */
    uint32_t       value_mask; /**<  */
} xcb_change_gc_request_t;

/** Opcode for xcb_copy_gc. */
#define XCB_COPY_GC 57

/**
 * @brief xcb_copy_gc_request_t
 **/
typedef struct xcb_copy_gc_request_t {
    uint8_t        major_opcode; /**<  */
    uint8_t        pad0; /**<  */
    uint16_t       length; /**<  */
    xcb_gcontext_t src_gc; /**<  */
    xcb_gcontext_t dst_gc; /**<  */
    uint32_t       value_mask; /**<  */
} xcb_copy_gc_request_t;

/** Opcode for xcb_set_dashes. */
#define XCB_SET_DASHES 58

/**
 * @brief xcb_set_dashes_request_t
 **/
typedef struct xcb_set_dashes_request_t {
    uint8_t        major_opcode; /**<  */
    uint8_t        pad0; /**<  */
    uint16_t       length; /**<  */
    xcb_gcontext_t gc; /**<  */
    uint16_t       dash_offset; /**<  */
    uint16_t       dashes_len; /**<  */
} xcb_set_dashes_request_t;

typedef enum xcb_clip_ordering_t {
    XCB_CLIP_ORDERING_UNSORTED = 0,
    XCB_CLIP_ORDERING_Y_SORTED = 1,
    XCB_CLIP_ORDERING_YX_SORTED = 2,
    XCB_CLIP_ORDERING_YX_BANDED = 3
} xcb_clip_ordering_t;

/** Opcode for xcb_set_clip_rectangles. */
#define XCB_SET_CLIP_RECTANGLES 59

/**
 * @brief xcb_set_clip_rectangles_request_t
 **/
typedef struct xcb_set_clip_rectangles_request_t {
    uint8_t        major_opcode; /**<  */
    uint8_t        ordering; /**<  */
    uint16_t       length; /**<  */
    xcb_gcontext_t gc; /**<  */
    int16_t        clip_x_origin; /**<  */
    int16_t        clip_y_origin; /**<  */
} xcb_set_clip_rectangles_request_t;

/** Opcode for xcb_free_gc. */
#define XCB_FREE_GC 60

/**
 * @brief xcb_free_gc_request_t
 **/
typedef struct xcb_free_gc_request_t {
    uint8_t        major_opcode; /**<  */
    uint8_t        pad0; /**<  */
    uint16_t       length; /**<  */
    xcb_gcontext_t gc; /**<  */
} xcb_free_gc_request_t;

/** Opcode for xcb_clear_area. */
#define XCB_CLEAR_AREA 61

/**
 * @brief xcb_clear_area_request_t
 **/
typedef struct xcb_clear_area_request_t {
    uint8_t      major_opcode; /**<  */
    uint8_t      exposures; /**<  */
    uint16_t     length; /**<  */
    xcb_window_t window; /**<  */
    int16_t      x; /**<  */
    int16_t      y; /**<  */
    uint16_t     width; /**<  */
    uint16_t     height; /**<  */
} xcb_clear_area_request_t;

/** Opcode for xcb_copy_area. */
#define XCB_COPY_AREA 62

/**
 * @brief xcb_copy_area_request_t
 **/
typedef struct xcb_copy_area_request_t {
    uint8_t        major_opcode; /**<  */
    uint8_t        pad0; /**<  */
    uint16_t       length; /**<  */
    xcb_drawable_t src_drawable; /**<  */
    xcb_drawable_t dst_drawable; /**<  */
    xcb_gcontext_t gc; /**<  */
    int16_t        src_x; /**<  */
    int16_t        src_y; /**<  */
    int16_t        dst_x; /**<  */
    int16_t        dst_y; /**<  */
    uint16_t       width; /**<  */
    uint16_t       height; /**<  */
} xcb_copy_area_request_t;

/** Opcode for xcb_copy_plane. */
#define XCB_COPY_PLANE 63

/**
 * @brief xcb_copy_plane_request_t
 **/
typedef struct xcb_copy_plane_request_t {
    uint8_t        major_opcode; /**<  */
    uint8_t        pad0; /**<  */
    uint16_t       length; /**<  */
    xcb_drawable_t src_drawable; /**<  */
    xcb_drawable_t dst_drawable; /**<  */
    xcb_gcontext_t gc; /**<  */
    int16_t        src_x; /**<  */
    int16_t        src_y; /**<  */
    int16_t        dst_x; /**<  */
    int16_t        dst_y; /**<  */
    uint16_t       width; /**<  */
    uint16_t       height; /**<  */
    uint32_t       bit_plane; /**<  */
} xcb_copy_plane_request_t;

typedef enum xcb_coord_mode_t {
    XCB_COORD_MODE_ORIGIN = 0,
    XCB_COORD_MODE_PREVIOUS = 1
} xcb_coord_mode_t;

/** Opcode for xcb_poly_point. */
#define XCB_POLY_POINT 64

/**
 * @brief xcb_poly_point_request_t
 **/
typedef struct xcb_poly_point_request_t {
    uint8_t        major_opcode; /**<  */
    uint8_t        coordinate_mode; /**<  */
    uint16_t       length; /**<  */
    xcb_drawable_t drawable; /**<  */
    xcb_gcontext_t gc; /**<  */
} xcb_poly_point_request_t;

/** Opcode for xcb_poly_line. */
#define XCB_POLY_LINE 65

/**
 * @brief xcb_poly_line_request_t
 **/
typedef struct xcb_poly_line_request_t {
    uint8_t        major_opcode; /**<  */
    uint8_t        coordinate_mode; /**<  */
    uint16_t       length; /**<  */
    xcb_drawable_t drawable; /**<  */
    xcb_gcontext_t gc; /**<  */
} xcb_poly_line_request_t;

/**
 * @brief xcb_segment_t
 **/
typedef struct xcb_segment_t {
    int16_t x1; /**<  */
    int16_t y1; /**<  */
    int16_t x2; /**<  */
    int16_t y2; /**<  */
} xcb_segment_t;

/**
 * @brief xcb_segment_iterator_t
 **/
typedef struct xcb_segment_iterator_t {
    xcb_segment_t *data; /**<  */
    int            rem; /**<  */
    int            index; /**<  */
} xcb_segment_iterator_t;

/** Opcode for xcb_poly_segment. */
#define XCB_POLY_SEGMENT 66

/**
 * @brief xcb_poly_segment_request_t
 **/
typedef struct xcb_poly_segment_request_t {
    uint8_t        major_opcode; /**<  */
    uint8_t        pad0; /**<  */
    uint16_t       length; /**<  */
    xcb_drawable_t drawable; /**<  */
    xcb_gcontext_t gc; /**<  */
} xcb_poly_segment_request_t;

/** Opcode for xcb_poly_rectangle. */
#define XCB_POLY_RECTANGLE 67

/**
 * @brief xcb_poly_rectangle_request_t
 **/
typedef struct xcb_poly_rectangle_request_t {
    uint8_t        major_opcode; /**<  */
    uint8_t        pad0; /**<  */
    uint16_t       length; /**<  */
    xcb_drawable_t drawable; /**<  */
    xcb_gcontext_t gc; /**<  */
} xcb_poly_rectangle_request_t;

/** Opcode for xcb_poly_arc. */
#define XCB_POLY_ARC 68

/**
 * @brief xcb_poly_arc_request_t
 **/
typedef struct xcb_poly_arc_request_t {
    uint8_t        major_opcode; /**<  */
    uint8_t        pad0; /**<  */
    uint16_t       length; /**<  */
    xcb_drawable_t drawable; /**<  */
    xcb_gcontext_t gc; /**<  */
} xcb_poly_arc_request_t;

typedef enum xcb_poly_shape_t {
    XCB_POLY_SHAPE_COMPLEX = 0,
    XCB_POLY_SHAPE_NONCONVEX = 1,
    XCB_POLY_SHAPE_CONVEX = 2
} xcb_poly_shape_t;

/** Opcode for xcb_fill_poly. */
#define XCB_FILL_POLY 69

/**
 * @brief xcb_fill_poly_request_t
 **/
typedef struct xcb_fill_poly_request_t {
    uint8_t        major_opcode; /**<  */
    uint8_t        pad0; /**<  */
    uint16_t       length; /**<  */
    xcb_drawable_t drawable; /**<  */
    xcb_gcontext_t gc; /**<  */
    uint8_t        shape; /**<  */
    uint8_t        coordinate_mode; /**<  */
} xcb_fill_poly_request_t;

/** Opcode for xcb_poly_fill_rectangle. */
#define XCB_POLY_FILL_RECTANGLE 70

/**
 * @brief xcb_poly_fill_rectangle_request_t
 **/
typedef struct xcb_poly_fill_rectangle_request_t {
    uint8_t        major_opcode; /**<  */
    uint8_t        pad0; /**<  */
    uint16_t       length; /**<  */
    xcb_drawable_t drawable; /**<  */
    xcb_gcontext_t gc; /**<  */
} xcb_poly_fill_rectangle_request_t;

/** Opcode for xcb_poly_fill_arc. */
#define XCB_POLY_FILL_ARC 71

/**
 * @brief xcb_poly_fill_arc_request_t
 **/
typedef struct xcb_poly_fill_arc_request_t {
    uint8_t        major_opcode; /**<  */
    uint8_t        pad0; /**<  */
    uint16_t       length; /**<  */
    xcb_drawable_t drawable; /**<  */
    xcb_gcontext_t gc; /**<  */
} xcb_poly_fill_arc_request_t;

typedef enum xcb_image_format_t {
    XCB_IMAGE_FORMAT_XY_BITMAP = 0,
    XCB_IMAGE_FORMAT_XY_PIXMAP = 1,
    XCB_IMAGE_FORMAT_Z_PIXMAP = 2
} xcb_image_format_t;

/** Opcode for xcb_put_image. */
#define XCB_PUT_IMAGE 72

/**
 * @brief xcb_put_image_request_t
 **/
typedef struct xcb_put_image_request_t {
    uint8_t        major_opcode; /**<  */
    uint8_t        format; /**<  */
    uint16_t       length; /**<  */
    xcb_drawable_t drawable; /**<  */
    xcb_gcontext_t gc; /**<  */
    uint16_t       width; /**<  */
    uint16_t       height; /**<  */
    int16_t        dst_x; /**<  */
    int16_t        dst_y; /**<  */
    uint8_t        left_pad; /**<  */
    uint8_t        depth; /**<  */
} xcb_put_image_request_t;

/**
 * @brief xcb_get_image_cookie_t
 **/
typedef struct xcb_get_image_cookie_t {
    unsigned int sequence; /**<  */
} xcb_get_image_cookie_t;

/** Opcode for xcb_get_image. */
#define XCB_GET_IMAGE 73

/**
 * @brief xcb_get_image_request_t
 **/
typedef struct xcb_get_image_request_t {
    uint8_t        major_opcode; /**<  */
    uint8_t        format; /**<  */
    uint16_t       length; /**<  */
    xcb_drawable_t drawable; /**<  */
    int16_t        x; /**<  */
    int16_t        y; /**<  */
    uint16_t       width; /**<  */
    uint16_t       height; /**<  */
    uint32_t       plane_mask; /**<  */
} xcb_get_image_request_t;

/**
 * @brief xcb_get_image_reply_t
 **/
typedef struct xcb_get_image_reply_t {
    uint8_t        response_type; /**<  */
    uint8_t        depth; /**<  */
    uint16_t       sequence; /**<  */
    uint32_t       length; /**<  */
    xcb_visualid_t visual; /**<  */
    uint8_t        pad0[20]; /**<  */
} xcb_get_image_reply_t;

/** Opcode for xcb_poly_text_8. */
#define XCB_POLY_TEXT_8 74

/**
 * @brief xcb_poly_text_8_request_t
 **/
typedef struct xcb_poly_text_8_request_t {
    uint8_t        major_opcode; /**<  */
    uint8_t        pad0; /**<  */
    uint16_t       length; /**<  */
    xcb_drawable_t drawable; /**<  */
    xcb_gcontext_t gc; /**<  */
    int16_t        x; /**<  */
    int16_t        y; /**<  */
} xcb_poly_text_8_request_t;

/** Opcode for xcb_poly_text_16. */
#define XCB_POLY_TEXT_16 75

/**
 * @brief xcb_poly_text_16_request_t
 **/
typedef struct xcb_poly_text_16_request_t {
    uint8_t        major_opcode; /**<  */
    uint8_t        pad0; /**<  */
    uint16_t       length; /**<  */
    xcb_drawable_t drawable; /**<  */
    xcb_gcontext_t gc; /**<  */
    int16_t        x; /**<  */
    int16_t        y; /**<  */
} xcb_poly_text_16_request_t;

/** Opcode for xcb_image_text_8. */
#define XCB_IMAGE_TEXT_8 76

/**
 * @brief xcb_image_text_8_request_t
 **/
typedef struct xcb_image_text_8_request_t {
    uint8_t        major_opcode; /**<  */
    uint8_t        string_len; /**<  */
    uint16_t       length; /**<  */
    xcb_drawable_t drawable; /**<  */
    xcb_gcontext_t gc; /**<  */
    int16_t        x; /**<  */
    int16_t        y; /**<  */
} xcb_image_text_8_request_t;

/** Opcode for xcb_image_text_16. */
#define XCB_IMAGE_TEXT_16 77

/**
 * @brief xcb_image_text_16_request_t
 **/
typedef struct xcb_image_text_16_request_t {
    uint8_t        major_opcode; /**<  */
    uint8_t        string_len; /**<  */
    uint16_t       length; /**<  */
    xcb_drawable_t drawable; /**<  */
    xcb_gcontext_t gc; /**<  */
    int16_t        x; /**<  */
    int16_t        y; /**<  */
} xcb_image_text_16_request_t;

typedef enum xcb_colormap_alloc_t {
    XCB_COLORMAP_ALLOC_NONE = 0,
    XCB_COLORMAP_ALLOC_ALL = 1
} xcb_colormap_alloc_t;

/** Opcode for xcb_create_colormap. */
#define XCB_CREATE_COLORMAP 78

/**
 * @brief xcb_create_colormap_request_t
 **/
typedef struct xcb_create_colormap_request_t {
    uint8_t        major_opcode; /**<  */
    uint8_t        alloc; /**<  */
    uint16_t       length; /**<  */
    xcb_colormap_t mid; /**<  */
    xcb_window_t   window; /**<  */
    xcb_visualid_t visual; /**<  */
} xcb_create_colormap_request_t;

/** Opcode for xcb_free_colormap. */
#define XCB_FREE_COLORMAP 79

/**
 * @brief xcb_free_colormap_request_t
 **/
typedef struct xcb_free_colormap_request_t {
    uint8_t        major_opcode; /**<  */
    uint8_t        pad0; /**<  */
    uint16_t       length; /**<  */
    xcb_colormap_t cmap; /**<  */
} xcb_free_colormap_request_t;

/** Opcode for xcb_copy_colormap_and_free. */
#define XCB_COPY_COLORMAP_AND_FREE 80

/**
 * @brief xcb_copy_colormap_and_free_request_t
 **/
typedef struct xcb_copy_colormap_and_free_request_t {
    uint8_t        major_opcode; /**<  */
    uint8_t        pad0; /**<  */
    uint16_t       length; /**<  */
    xcb_colormap_t mid; /**<  */
    xcb_colormap_t src_cmap; /**<  */
} xcb_copy_colormap_and_free_request_t;

/** Opcode for xcb_install_colormap. */
#define XCB_INSTALL_COLORMAP 81

/**
 * @brief xcb_install_colormap_request_t
 **/
typedef struct xcb_install_colormap_request_t {
    uint8_t        major_opcode; /**<  */
    uint8_t        pad0; /**<  */
    uint16_t       length; /**<  */
    xcb_colormap_t cmap; /**<  */
} xcb_install_colormap_request_t;

/** Opcode for xcb_uninstall_colormap. */
#define XCB_UNINSTALL_COLORMAP 82

/**
 * @brief xcb_uninstall_colormap_request_t
 **/
typedef struct xcb_uninstall_colormap_request_t {
    uint8_t        major_opcode; /**<  */
    uint8_t        pad0; /**<  */
    uint16_t       length; /**<  */
    xcb_colormap_t cmap; /**<  */
} xcb_uninstall_colormap_request_t;

/**
 * @brief xcb_list_installed_colormaps_cookie_t
 **/
typedef struct xcb_list_installed_colormaps_cookie_t {
    unsigned int sequence; /**<  */
} xcb_list_installed_colormaps_cookie_t;

/** Opcode for xcb_list_installed_colormaps. */
#define XCB_LIST_INSTALLED_COLORMAPS 83

/**
 * @brief xcb_list_installed_colormaps_request_t
 **/
typedef struct xcb_list_installed_colormaps_request_t {
    uint8_t      major_opcode; /**<  */
    uint8_t      pad0; /**<  */
    uint16_t     length; /**<  */
    xcb_window_t window; /**<  */
} xcb_list_installed_colormaps_request_t;

/**
 * @brief xcb_list_installed_colormaps_reply_t
 **/
typedef struct xcb_list_installed_colormaps_reply_t {
    uint8_t  response_type; /**<  */
    uint8_t  pad0; /**<  */
    uint16_t sequence; /**<  */
    uint32_t length; /**<  */
    uint16_t cmaps_len; /**<  */
    uint8_t  pad1[22]; /**<  */
} xcb_list_installed_colormaps_reply_t;

/**
 * @brief xcb_alloc_color_cookie_t
 **/
typedef struct xcb_alloc_color_cookie_t {
    unsigned int sequence; /**<  */
} xcb_alloc_color_cookie_t;

/** Opcode for xcb_alloc_color. */
#define XCB_ALLOC_COLOR 84

/**
 * @brief xcb_alloc_color_request_t
 **/
typedef struct xcb_alloc_color_request_t {
    uint8_t        major_opcode; /**<  */
    uint8_t        pad0; /**<  */
    uint16_t       length; /**<  */
    xcb_colormap_t cmap; /**<  */
    uint16_t       red; /**<  */
    uint16_t       green; /**<  */
    uint16_t       blue; /**<  */
} xcb_alloc_color_request_t;

/**
 * @brief xcb_alloc_color_reply_t
 **/
typedef struct xcb_alloc_color_reply_t {
    uint8_t  response_type; /**<  */
    uint8_t  pad0; /**<  */
    uint16_t sequence; /**<  */
    uint32_t length; /**<  */
    uint16_t red; /**<  */
    uint16_t green; /**<  */
    uint16_t blue; /**<  */
    uint8_t  pad1[2]; /**<  */
    uint32_t pixel; /**<  */
} xcb_alloc_color_reply_t;

/**
 * @brief xcb_alloc_named_color_cookie_t
 **/
typedef struct xcb_alloc_named_color_cookie_t {
    unsigned int sequence; /**<  */
} xcb_alloc_named_color_cookie_t;

/** Opcode for xcb_alloc_named_color. */
#define XCB_ALLOC_NAMED_COLOR 85

/**
 * @brief xcb_alloc_named_color_request_t
 **/
typedef struct xcb_alloc_named_color_request_t {
    uint8_t        major_opcode; /**<  */
    uint8_t        pad0; /**<  */
    uint16_t       length; /**<  */
    xcb_colormap_t cmap; /**<  */
    uint16_t       name_len; /**<  */
} xcb_alloc_named_color_request_t;

/**
 * @brief xcb_alloc_named_color_reply_t
 **/
typedef struct xcb_alloc_named_color_reply_t {
    uint8_t  response_type; /**<  */
    uint8_t  pad0; /**<  */
    uint16_t sequence; /**<  */
    uint32_t length; /**<  */
    uint32_t pixel; /**<  */
    uint16_t exact_red; /**<  */
    uint16_t exact_green; /**<  */
    uint16_t exact_blue; /**<  */
    uint16_t visual_red; /**<  */
    uint16_t visual_green; /**<  */
    uint16_t visual_blue; /**<  */
} xcb_alloc_named_color_reply_t;

/**
 * @brief xcb_alloc_color_cells_cookie_t
 **/
typedef struct xcb_alloc_color_cells_cookie_t {
    unsigned int sequence; /**<  */
} xcb_alloc_color_cells_cookie_t;

/** Opcode for xcb_alloc_color_cells. */
#define XCB_ALLOC_COLOR_CELLS 86

/**
 * @brief xcb_alloc_color_cells_request_t
 **/
typedef struct xcb_alloc_color_cells_request_t {
    uint8_t        major_opcode; /**<  */
    uint8_t        contiguous; /**<  */
    uint16_t       length; /**<  */
    xcb_colormap_t cmap; /**<  */
    uint16_t       colors; /**<  */
    uint16_t       planes; /**<  */
} xcb_alloc_color_cells_request_t;

/**
 * @brief xcb_alloc_color_cells_reply_t
 **/
typedef struct xcb_alloc_color_cells_reply_t {
    uint8_t  response_type; /**<  */
    uint8_t  pad0; /**<  */
    uint16_t sequence; /**<  */
    uint32_t length; /**<  */
    uint16_t pixels_len; /**<  */
    uint16_t masks_len; /**<  */
    uint8_t  pad1[20]; /**<  */
} xcb_alloc_color_cells_reply_t;

/**
 * @brief xcb_alloc_color_planes_cookie_t
 **/
typedef struct xcb_alloc_color_planes_cookie_t {
    unsigned int sequence; /**<  */
} xcb_alloc_color_planes_cookie_t;

/** Opcode for xcb_alloc_color_planes. */
#define XCB_ALLOC_COLOR_PLANES 87

/**
 * @brief xcb_alloc_color_planes_request_t
 **/
typedef struct xcb_alloc_color_planes_request_t {
    uint8_t        major_opcode; /**<  */
    uint8_t        contiguous; /**<  */
    uint16_t       length; /**<  */
    xcb_colormap_t cmap; /**<  */
    uint16_t       colors; /**<  */
    uint16_t       reds; /**<  */
    uint16_t       greens; /**<  */
    uint16_t       blues; /**<  */
} xcb_alloc_color_planes_request_t;

/**
 * @brief xcb_alloc_color_planes_reply_t
 **/
typedef struct xcb_alloc_color_planes_reply_t {
    uint8_t  response_type; /**<  */
    uint8_t  pad0; /**<  */
    uint16_t sequence; /**<  */
    uint32_t length; /**<  */
    uint16_t pixels_len; /**<  */
    uint8_t  pad1[2]; /**<  */
    uint32_t red_mask; /**<  */
    uint32_t green_mask; /**<  */
    uint32_t blue_mask; /**<  */
    uint8_t  pad2[8]; /**<  */
} xcb_alloc_color_planes_reply_t;

/** Opcode for xcb_free_colors. */
#define XCB_FREE_COLORS 88

/**
 * @brief xcb_free_colors_request_t
 **/
typedef struct xcb_free_colors_request_t {
    uint8_t        major_opcode; /**<  */
    uint8_t        pad0; /**<  */
    uint16_t       length; /**<  */
    xcb_colormap_t cmap; /**<  */
    uint32_t       plane_mask; /**<  */
} xcb_free_colors_request_t;

typedef enum xcb_color_flag_t {
    XCB_COLOR_FLAG_RED = (1 << 0),
    XCB_COLOR_FLAG_GREEN = (1 << 1),
    XCB_COLOR_FLAG_BLUE = (1 << 2)
} xcb_color_flag_t;

/**
 * @brief xcb_coloritem_t
 **/
typedef struct xcb_coloritem_t {
    uint32_t pixel; /**<  */
    uint16_t red; /**<  */
    uint16_t green; /**<  */
    uint16_t blue; /**<  */
    uint8_t  flags; /**<  */
    uint8_t  pad0; /**<  */
} xcb_coloritem_t;

/**
 * @brief xcb_coloritem_iterator_t
 **/
typedef struct xcb_coloritem_iterator_t {
    xcb_coloritem_t *data; /**<  */
    int              rem; /**<  */
    int              index; /**<  */
} xcb_coloritem_iterator_t;

/** Opcode for xcb_store_colors. */
#define XCB_STORE_COLORS 89

/**
 * @brief xcb_store_colors_request_t
 **/
typedef struct xcb_store_colors_request_t {
    uint8_t        major_opcode; /**<  */
    uint8_t        pad0; /**<  */
    uint16_t       length; /**<  */
    xcb_colormap_t cmap; /**<  */
} xcb_store_colors_request_t;

/** Opcode for xcb_store_named_color. */
#define XCB_STORE_NAMED_COLOR 90

/**
 * @brief xcb_store_named_color_request_t
 **/
typedef struct xcb_store_named_color_request_t {
    uint8_t        major_opcode; /**<  */
    uint8_t        flags; /**<  */
    uint16_t       length; /**<  */
    xcb_colormap_t cmap; /**<  */
    uint32_t       pixel; /**<  */
    uint16_t       name_len; /**<  */
} xcb_store_named_color_request_t;

/**
 * @brief xcb_rgb_t
 **/
typedef struct xcb_rgb_t {
    uint16_t red; /**<  */
    uint16_t green; /**<  */
    uint16_t blue; /**<  */
    uint8_t  pad0[2]; /**<  */
} xcb_rgb_t;

/**
 * @brief xcb_rgb_iterator_t
 **/
typedef struct xcb_rgb_iterator_t {
    xcb_rgb_t *data; /**<  */
    int        rem; /**<  */
    int        index; /**<  */
} xcb_rgb_iterator_t;

/**
 * @brief xcb_query_colors_cookie_t
 **/
typedef struct xcb_query_colors_cookie_t {
    unsigned int sequence; /**<  */
} xcb_query_colors_cookie_t;

/** Opcode for xcb_query_colors. */
#define XCB_QUERY_COLORS 91

/**
 * @brief xcb_query_colors_request_t
 **/
typedef struct xcb_query_colors_request_t {
    uint8_t        major_opcode; /**<  */
    uint8_t        pad0; /**<  */
    uint16_t       length; /**<  */
    xcb_colormap_t cmap; /**<  */
} xcb_query_colors_request_t;

/**
 * @brief xcb_query_colors_reply_t
 **/
typedef struct xcb_query_colors_reply_t {
    uint8_t  response_type; /**<  */
    uint8_t  pad0; /**<  */
    uint16_t sequence; /**<  */
    uint32_t length; /**<  */
    uint16_t colors_len; /**<  */
    uint8_t  pad1[22]; /**<  */
} xcb_query_colors_reply_t;

/**
 * @brief xcb_lookup_color_cookie_t
 **/
typedef struct xcb_lookup_color_cookie_t {
    unsigned int sequence; /**<  */
} xcb_lookup_color_cookie_t;

/** Opcode for xcb_lookup_color. */
#define XCB_LOOKUP_COLOR 92

/**
 * @brief xcb_lookup_color_request_t
 **/
typedef struct xcb_lookup_color_request_t {
    uint8_t        major_opcode; /**<  */
    uint8_t        pad0; /**<  */
    uint16_t       length; /**<  */
    xcb_colormap_t cmap; /**<  */
    uint16_t       name_len; /**<  */
} xcb_lookup_color_request_t;

/**
 * @brief xcb_lookup_color_reply_t
 **/
typedef struct xcb_lookup_color_reply_t {
    uint8_t  response_type; /**<  */
    uint8_t  pad0; /**<  */
    uint16_t sequence; /**<  */
    uint32_t length; /**<  */
    uint16_t exact_red; /**<  */
    uint16_t exact_green; /**<  */
    uint16_t exact_blue; /**<  */
    uint16_t visual_red; /**<  */
    uint16_t visual_green; /**<  */
    uint16_t visual_blue; /**<  */
} xcb_lookup_color_reply_t;

/** Opcode for xcb_create_cursor. */
#define XCB_CREATE_CURSOR 93

/**
 * @brief xcb_create_cursor_request_t
 **/
typedef struct xcb_create_cursor_request_t {
    uint8_t      major_opcode; /**<  */
    uint8_t      pad0; /**<  */
    uint16_t     length; /**<  */
    xcb_cursor_t cid; /**<  */
    xcb_pixmap_t source; /**<  */
    xcb_pixmap_t mask; /**<  */
    uint16_t     fore_red; /**<  */
    uint16_t     fore_green; /**<  */
    uint16_t     fore_blue; /**<  */
    uint16_t     back_red; /**<  */
    uint16_t     back_green; /**<  */
    uint16_t     back_blue; /**<  */
    uint16_t     x; /**<  */
    uint16_t     y; /**<  */
} xcb_create_cursor_request_t;

/** Opcode for xcb_create_glyph_cursor. */
#define XCB_CREATE_GLYPH_CURSOR 94

/**
 * @brief xcb_create_glyph_cursor_request_t
 **/
typedef struct xcb_create_glyph_cursor_request_t {
    uint8_t      major_opcode; /**<  */
    uint8_t      pad0; /**<  */
    uint16_t     length; /**<  */
    xcb_cursor_t cid; /**<  */
    xcb_font_t   source_font; /**<  */
    xcb_font_t   mask_font; /**<  */
    uint16_t     source_char; /**<  */
    uint16_t     mask_char; /**<  */
    uint16_t     fore_red; /**<  */
    uint16_t     fore_green; /**<  */
    uint16_t     fore_blue; /**<  */
    uint16_t     back_red; /**<  */
    uint16_t     back_green; /**<  */
    uint16_t     back_blue; /**<  */
} xcb_create_glyph_cursor_request_t;

/** Opcode for xcb_free_cursor. */
#define XCB_FREE_CURSOR 95

/**
 * @brief xcb_free_cursor_request_t
 **/
typedef struct xcb_free_cursor_request_t {
    uint8_t      major_opcode; /**<  */
    uint8_t      pad0; /**<  */
    uint16_t     length; /**<  */
    xcb_cursor_t cursor; /**<  */
} xcb_free_cursor_request_t;

/** Opcode for xcb_recolor_cursor. */
#define XCB_RECOLOR_CURSOR 96

/**
 * @brief xcb_recolor_cursor_request_t
 **/
typedef struct xcb_recolor_cursor_request_t {
    uint8_t      major_opcode; /**<  */
    uint8_t      pad0; /**<  */
    uint16_t     length; /**<  */
    xcb_cursor_t cursor; /**<  */
    uint16_t     fore_red; /**<  */
    uint16_t     fore_green; /**<  */
    uint16_t     fore_blue; /**<  */
    uint16_t     back_red; /**<  */
    uint16_t     back_green; /**<  */
    uint16_t     back_blue; /**<  */
} xcb_recolor_cursor_request_t;

typedef enum xcb_query_shape_of_t {
    XCB_QUERY_SHAPE_OF_LARGEST_CURSOR = 0,
    XCB_QUERY_SHAPE_OF_FASTEST_TILE = 1,
    XCB_QUERY_SHAPE_OF_FASTEST_STIPPLE = 2
} xcb_query_shape_of_t;

/**
 * @brief xcb_query_best_size_cookie_t
 **/
typedef struct xcb_query_best_size_cookie_t {
    unsigned int sequence; /**<  */
} xcb_query_best_size_cookie_t;

/** Opcode for xcb_query_best_size. */
#define XCB_QUERY_BEST_SIZE 97

/**
 * @brief xcb_query_best_size_request_t
 **/
typedef struct xcb_query_best_size_request_t {
    uint8_t        major_opcode; /**<  */
    uint8_t        _class; /**<  */
    uint16_t       length; /**<  */
    xcb_drawable_t drawable; /**<  */
    uint16_t       width; /**<  */
    uint16_t       height; /**<  */
} xcb_query_best_size_request_t;

/**
 * @brief xcb_query_best_size_reply_t
 **/
typedef struct xcb_query_best_size_reply_t {
    uint8_t  response_type; /**<  */
    uint8_t  pad0; /**<  */
    uint16_t sequence; /**<  */
    uint32_t length; /**<  */
    uint16_t width; /**<  */
    uint16_t height; /**<  */
} xcb_query_best_size_reply_t;

/**
 * @brief xcb_query_extension_cookie_t
 **/
typedef struct xcb_query_extension_cookie_t {
    unsigned int sequence; /**<  */
} xcb_query_extension_cookie_t;

/** Opcode for xcb_query_extension. */
#define XCB_QUERY_EXTENSION 98

/**
 * @brief xcb_query_extension_request_t
 **/
typedef struct xcb_query_extension_request_t {
    uint8_t  major_opcode; /**<  */
    uint8_t  pad0; /**<  */
    uint16_t length; /**<  */
    uint16_t name_len; /**<  */
} xcb_query_extension_request_t;

/**
 * @brief xcb_query_extension_reply_t
 **/
typedef struct xcb_query_extension_reply_t {
    uint8_t  response_type; /**<  */
    uint8_t  pad0; /**<  */
    uint16_t sequence; /**<  */
    uint32_t length; /**<  */
    uint8_t  present; /**<  */
    uint8_t  major_opcode; /**<  */
    uint8_t  first_event; /**<  */
    uint8_t  first_error; /**<  */
} xcb_query_extension_reply_t;

/**
 * @brief xcb_list_extensions_cookie_t
 **/
typedef struct xcb_list_extensions_cookie_t {
    unsigned int sequence; /**<  */
} xcb_list_extensions_cookie_t;

/** Opcode for xcb_list_extensions. */
#define XCB_LIST_EXTENSIONS 99

/**
 * @brief xcb_list_extensions_request_t
 **/
typedef struct xcb_list_extensions_request_t {
    uint8_t  major_opcode; /**<  */
    uint8_t  pad0; /**<  */
    uint16_t length; /**<  */
} xcb_list_extensions_request_t;

/**
 * @brief xcb_list_extensions_reply_t
 **/
typedef struct xcb_list_extensions_reply_t {
    uint8_t  response_type; /**<  */
    uint8_t  names_len; /**<  */
    uint16_t sequence; /**<  */
    uint32_t length; /**<  */
    uint8_t  pad0[24]; /**<  */
} xcb_list_extensions_reply_t;

/** Opcode for xcb_change_keyboard_mapping. */
#define XCB_CHANGE_KEYBOARD_MAPPING 100

/**
 * @brief xcb_change_keyboard_mapping_request_t
 **/
typedef struct xcb_change_keyboard_mapping_request_t {
    uint8_t       major_opcode; /**<  */
    uint8_t       keycode_count; /**<  */
    uint16_t      length; /**<  */
    xcb_keycode_t first_keycode; /**<  */
    uint8_t       keysyms_per_keycode; /**<  */
} xcb_change_keyboard_mapping_request_t;

/**
 * @brief xcb_get_keyboard_mapping_cookie_t
 **/
typedef struct xcb_get_keyboard_mapping_cookie_t {
    unsigned int sequence; /**<  */
} xcb_get_keyboard_mapping_cookie_t;

/** Opcode for xcb_get_keyboard_mapping. */
#define XCB_GET_KEYBOARD_MAPPING 101

/**
 * @brief xcb_get_keyboard_mapping_request_t
 **/
typedef struct xcb_get_keyboard_mapping_request_t {
    uint8_t       major_opcode; /**<  */
    uint8_t       pad0; /**<  */
    uint16_t      length; /**<  */
    xcb_keycode_t first_keycode; /**<  */
    uint8_t       count; /**<  */
} xcb_get_keyboard_mapping_request_t;

/**
 * @brief xcb_get_keyboard_mapping_reply_t
 **/
typedef struct xcb_get_keyboard_mapping_reply_t {
    uint8_t  response_type; /**<  */
    uint8_t  keysyms_per_keycode; /**<  */
    uint16_t sequence; /**<  */
    uint32_t length; /**<  */
    uint8_t  pad0[24]; /**<  */
} xcb_get_keyboard_mapping_reply_t;

typedef enum xcb_kb_t {
    XCB_KB_KEY_CLICK_PERCENT = (1 << 0),
    XCB_KB_BELL_PERCENT = (1 << 1),
    XCB_KB_BELL_PITCH = (1 << 2),
    XCB_KB_BELL_DURATION = (1 << 3),
    XCB_KB_LED = (1 << 4),
    XCB_KB_LED_MODE = (1 << 5),
    XCB_KB_KEY = (1 << 6),
    XCB_KB_AUTO_REPEAT_MODE = (1 << 7)
} xcb_kb_t;

typedef enum xcb_led_mode_t {
    XCB_LED_MODE_OFF = 0,
    XCB_LED_MODE_ON = 1
} xcb_led_mode_t;

typedef enum xcb_auto_repeat_mode_t {
    XCB_AUTO_REPEAT_MODE_OFF = 0,
    XCB_AUTO_REPEAT_MODE_ON = 1,
    XCB_AUTO_REPEAT_MODE_DEFAULT = 2
} xcb_auto_repeat_mode_t;

/** Opcode for xcb_change_keyboard_control. */
#define XCB_CHANGE_KEYBOARD_CONTROL 102

/**
 * @brief xcb_change_keyboard_control_request_t
 **/
typedef struct xcb_change_keyboard_control_request_t {
    uint8_t  major_opcode; /**<  */
    uint8_t  pad0; /**<  */
    uint16_t length; /**<  */
    uint32_t value_mask; /**<  */
} xcb_change_keyboard_control_request_t;

/**
 * @brief xcb_get_keyboard_control_cookie_t
 **/
typedef struct xcb_get_keyboard_control_cookie_t {
    unsigned int sequence; /**<  */
} xcb_get_keyboard_control_cookie_t;

/** Opcode for xcb_get_keyboard_control. */
#define XCB_GET_KEYBOARD_CONTROL 103

/**
 * @brief xcb_get_keyboard_control_request_t
 **/
typedef struct xcb_get_keyboard_control_request_t {
    uint8_t  major_opcode; /**<  */
    uint8_t  pad0; /**<  */
    uint16_t length; /**<  */
} xcb_get_keyboard_control_request_t;

/**
 * @brief xcb_get_keyboard_control_reply_t
 **/
typedef struct xcb_get_keyboard_control_reply_t {
    uint8_t  response_type; /**<  */
    uint8_t  global_auto_repeat; /**<  */
    uint16_t sequence; /**<  */
    uint32_t length; /**<  */
    uint32_t led_mask; /**<  */
    uint8_t  key_click_percent; /**<  */
    uint8_t  bell_percent; /**<  */
    uint16_t bell_pitch; /**<  */
    uint16_t bell_duration; /**<  */
    uint8_t  pad0[2]; /**<  */
    uint8_t  auto_repeats[32]; /**<  */
} xcb_get_keyboard_control_reply_t;

/** Opcode for xcb_bell. */
#define XCB_BELL 104

/**
 * @brief xcb_bell_request_t
 **/
typedef struct xcb_bell_request_t {
    uint8_t  major_opcode; /**<  */
    int8_t   percent; /**<  */
    uint16_t length; /**<  */
} xcb_bell_request_t;

/** Opcode for xcb_change_pointer_control. */
#define XCB_CHANGE_POINTER_CONTROL 105

/**
 * @brief xcb_change_pointer_control_request_t
 **/
typedef struct xcb_change_pointer_control_request_t {
    uint8_t  major_opcode; /**<  */
    uint8_t  pad0; /**<  */
    uint16_t length; /**<  */
    int16_t  acceleration_numerator; /**<  */
    int16_t  acceleration_denominator; /**<  */
    int16_t  threshold; /**<  */
    uint8_t  do_acceleration; /**<  */
    uint8_t  do_threshold; /**<  */
} xcb_change_pointer_control_request_t;

/**
 * @brief xcb_get_pointer_control_cookie_t
 **/
typedef struct xcb_get_pointer_control_cookie_t {
    unsigned int sequence; /**<  */
} xcb_get_pointer_control_cookie_t;

/** Opcode for xcb_get_pointer_control. */
#define XCB_GET_POINTER_CONTROL 106

/**
 * @brief xcb_get_pointer_control_request_t
 **/
typedef struct xcb_get_pointer_control_request_t {
    uint8_t  major_opcode; /**<  */
    uint8_t  pad0; /**<  */
    uint16_t length; /**<  */
} xcb_get_pointer_control_request_t;

/**
 * @brief xcb_get_pointer_control_reply_t
 **/
typedef struct xcb_get_pointer_control_reply_t {
    uint8_t  response_type; /**<  */
    uint8_t  pad0; /**<  */
    uint16_t sequence; /**<  */
    uint32_t length; /**<  */
    uint16_t acceleration_numerator; /**<  */
    uint16_t acceleration_denominator; /**<  */
    uint16_t threshold; /**<  */
} xcb_get_pointer_control_reply_t;

typedef enum xcb_blanking_t {
    XCB_BLANKING_NOT_PREFERRED = 0,
    XCB_BLANKING_PREFERRED = 1,
    XCB_BLANKING_DEFAULT = 2
} xcb_blanking_t;

typedef enum xcb_exposures_t {
    XCB_EXPOSURES_NOT_ALLOWED = 0,
    XCB_EXPOSURES_ALLOWED = 1,
    XCB_EXPOSURES_DEFAULT = 2
} xcb_exposures_t;

/** Opcode for xcb_set_screen_saver. */
#define XCB_SET_SCREEN_SAVER 107

/**
 * @brief xcb_set_screen_saver_request_t
 **/
typedef struct xcb_set_screen_saver_request_t {
    uint8_t  major_opcode; /**<  */
    uint8_t  pad0; /**<  */
    uint16_t length; /**<  */
    int16_t  timeout; /**<  */
    int16_t  interval; /**<  */
    uint8_t  prefer_blanking; /**<  */
    uint8_t  allow_exposures; /**<  */
} xcb_set_screen_saver_request_t;

/**
 * @brief xcb_get_screen_saver_cookie_t
 **/
typedef struct xcb_get_screen_saver_cookie_t {
    unsigned int sequence; /**<  */
} xcb_get_screen_saver_cookie_t;

/** Opcode for xcb_get_screen_saver. */
#define XCB_GET_SCREEN_SAVER 108

/**
 * @brief xcb_get_screen_saver_request_t
 **/
typedef struct xcb_get_screen_saver_request_t {
    uint8_t  major_opcode; /**<  */
    uint8_t  pad0; /**<  */
    uint16_t length; /**<  */
} xcb_get_screen_saver_request_t;

/**
 * @brief xcb_get_screen_saver_reply_t
 **/
typedef struct xcb_get_screen_saver_reply_t {
    uint8_t  response_type; /**<  */
    uint8_t  pad0; /**<  */
    uint16_t sequence; /**<  */
    uint32_t length; /**<  */
    uint16_t timeout; /**<  */
    uint16_t interval; /**<  */
    uint8_t  prefer_blanking; /**<  */
    uint8_t  allow_exposures; /**<  */
} xcb_get_screen_saver_reply_t;

typedef enum xcb_host_mode_t {
    XCB_HOST_MODE_INSERT = 0,
    XCB_HOST_MODE_DELETE = 1
} xcb_host_mode_t;

typedef enum xcb_family_t {
    XCB_FAMILY_INTERNET = 0,
    XCB_FAMILY_DECNET = 1,
    XCB_FAMILY_CHAOS = 2,
    XCB_FAMILY_SERVER_INTERPRETED = 5,
    XCB_FAMILY_INTERNET_6 = 6
} xcb_family_t;

/** Opcode for xcb_change_hosts. */
#define XCB_CHANGE_HOSTS 109

/**
 * @brief xcb_change_hosts_request_t
 **/
typedef struct xcb_change_hosts_request_t {
    uint8_t  major_opcode; /**<  */
    uint8_t  mode; /**<  */
    uint16_t length; /**<  */
    uint8_t  family; /**<  */
    uint8_t  pad0; /**<  */
    uint16_t address_len; /**<  */
} xcb_change_hosts_request_t;

/**
 * @brief xcb_host_t
 **/
typedef struct xcb_host_t {
    uint8_t  family; /**<  */
    uint8_t  pad0; /**<  */
    uint16_t address_len; /**<  */
} xcb_host_t;

/**
 * @brief xcb_host_iterator_t
 **/
typedef struct xcb_host_iterator_t {
    xcb_host_t *data; /**<  */
    int         rem; /**<  */
    int         index; /**<  */
} xcb_host_iterator_t;

/**
 * @brief xcb_list_hosts_cookie_t
 **/
typedef struct xcb_list_hosts_cookie_t {
    unsigned int sequence; /**<  */
} xcb_list_hosts_cookie_t;

/** Opcode for xcb_list_hosts. */
#define XCB_LIST_HOSTS 110

/**
 * @brief xcb_list_hosts_request_t
 **/
typedef struct xcb_list_hosts_request_t {
    uint8_t  major_opcode; /**<  */
    uint8_t  pad0; /**<  */
    uint16_t length; /**<  */
} xcb_list_hosts_request_t;

/**
 * @brief xcb_list_hosts_reply_t
 **/
typedef struct xcb_list_hosts_reply_t {
    uint8_t  response_type; /**<  */
    uint8_t  mode; /**<  */
    uint16_t sequence; /**<  */
    uint32_t length; /**<  */
    uint16_t hosts_len; /**<  */
    uint8_t  pad0[22]; /**<  */
} xcb_list_hosts_reply_t;

typedef enum xcb_access_control_t {
    XCB_ACCESS_CONTROL_DISABLE = 0,
    XCB_ACCESS_CONTROL_ENABLE = 1
} xcb_access_control_t;

/** Opcode for xcb_set_access_control. */
#define XCB_SET_ACCESS_CONTROL 111

/**
 * @brief xcb_set_access_control_request_t
 **/
typedef struct xcb_set_access_control_request_t {
    uint8_t  major_opcode; /**<  */
    uint8_t  mode; /**<  */
    uint16_t length; /**<  */
} xcb_set_access_control_request_t;

typedef enum xcb_close_down_t {
    XCB_CLOSE_DOWN_DESTROY_ALL = 0,
    XCB_CLOSE_DOWN_RETAIN_PERMANENT = 1,
    XCB_CLOSE_DOWN_RETAIN_TEMPORARY = 2
} xcb_close_down_t;

/** Opcode for xcb_set_close_down_mode. */
#define XCB_SET_CLOSE_DOWN_MODE 112

/**
 * @brief xcb_set_close_down_mode_request_t
 **/
typedef struct xcb_set_close_down_mode_request_t {
    uint8_t  major_opcode; /**<  */
    uint8_t  mode; /**<  */
    uint16_t length; /**<  */
} xcb_set_close_down_mode_request_t;

typedef enum xcb_kill_t {
    XCB_KILL_ALL_TEMPORARY = 0
} xcb_kill_t;

/** Opcode for xcb_kill_client. */
#define XCB_KILL_CLIENT 113

/**
 * @brief xcb_kill_client_request_t
 **/
typedef struct xcb_kill_client_request_t {
    uint8_t  major_opcode; /**<  */
    uint8_t  pad0; /**<  */
    uint16_t length; /**<  */
    uint32_t resource; /**<  */
} xcb_kill_client_request_t;

/** Opcode for xcb_rotate_properties. */
#define XCB_ROTATE_PROPERTIES 114

/**
 * @brief xcb_rotate_properties_request_t
 **/
typedef struct xcb_rotate_properties_request_t {
    uint8_t      major_opcode; /**<  */
    xcb_window_t window; /**<  */
    uint16_t     length; /**<  */
    uint16_t     atoms_len; /**<  */
    int16_t      delta; /**<  */
} xcb_rotate_properties_request_t;

typedef enum xcb_screen_saver_t {
    XCB_SCREEN_SAVER_RESET = 0,
    XCB_SCREEN_SAVER_ACTIVE = 1
} xcb_screen_saver_t;

/** Opcode for xcb_force_screen_saver. */
#define XCB_FORCE_SCREEN_SAVER 115

/**
 * @brief xcb_force_screen_saver_request_t
 **/
typedef struct xcb_force_screen_saver_request_t {
    uint8_t  major_opcode; /**<  */
    uint8_t  mode; /**<  */
    uint16_t length; /**<  */
} xcb_force_screen_saver_request_t;

typedef enum xcb_mapping_status_t {
    XCB_MAPPING_STATUS_SUCCESS = 0,
    XCB_MAPPING_STATUS_BUSY = 1,
    XCB_MAPPING_STATUS_FAILURE = 2
} xcb_mapping_status_t;

/**
 * @brief xcb_set_pointer_mapping_cookie_t
 **/
typedef struct xcb_set_pointer_mapping_cookie_t {
    unsigned int sequence; /**<  */
} xcb_set_pointer_mapping_cookie_t;

/** Opcode for xcb_set_pointer_mapping. */
#define XCB_SET_POINTER_MAPPING 116

/**
 * @brief xcb_set_pointer_mapping_request_t
 **/
typedef struct xcb_set_pointer_mapping_request_t {
    uint8_t  major_opcode; /**<  */
    uint8_t  map_len; /**<  */
    uint16_t length; /**<  */
} xcb_set_pointer_mapping_request_t;

/**
 * @brief xcb_set_pointer_mapping_reply_t
 **/
typedef struct xcb_set_pointer_mapping_reply_t {
    uint8_t  response_type; /**<  */
    uint8_t  status; /**<  */
    uint16_t sequence; /**<  */
    uint32_t length; /**<  */
} xcb_set_pointer_mapping_reply_t;

/**
 * @brief xcb_get_pointer_mapping_cookie_t
 **/
typedef struct xcb_get_pointer_mapping_cookie_t {
    unsigned int sequence; /**<  */
} xcb_get_pointer_mapping_cookie_t;

/** Opcode for xcb_get_pointer_mapping. */
#define XCB_GET_POINTER_MAPPING 117

/**
 * @brief xcb_get_pointer_mapping_request_t
 **/
typedef struct xcb_get_pointer_mapping_request_t {
    uint8_t  major_opcode; /**<  */
    uint8_t  pad0; /**<  */
    uint16_t length; /**<  */
} xcb_get_pointer_mapping_request_t;

/**
 * @brief xcb_get_pointer_mapping_reply_t
 **/
typedef struct xcb_get_pointer_mapping_reply_t {
    uint8_t  response_type; /**<  */
    uint8_t  map_len; /**<  */
    uint16_t sequence; /**<  */
    uint32_t length; /**<  */
    uint8_t  pad0[24]; /**<  */
} xcb_get_pointer_mapping_reply_t;

typedef enum xcb_map_index_t {
    XCB_MAP_INDEX_SHIFT = 0,
    XCB_MAP_INDEX_LOCK = 1,
    XCB_MAP_INDEX_CONTROL = 2,
    XCB_MAP_INDEX_1 = 3,
    XCB_MAP_INDEX_2 = 4,
    XCB_MAP_INDEX_3 = 5,
    XCB_MAP_INDEX_4 = 6,
    XCB_MAP_INDEX_5 = 7
} xcb_map_index_t;

/**
 * @brief xcb_set_modifier_mapping_cookie_t
 **/
typedef struct xcb_set_modifier_mapping_cookie_t {
    unsigned int sequence; /**<  */
} xcb_set_modifier_mapping_cookie_t;

/** Opcode for xcb_set_modifier_mapping. */
#define XCB_SET_MODIFIER_MAPPING 118

/**
 * @brief xcb_set_modifier_mapping_request_t
 **/
typedef struct xcb_set_modifier_mapping_request_t {
    uint8_t  major_opcode; /**<  */
    uint8_t  keycodes_per_modifier; /**<  */
    uint16_t length; /**<  */
} xcb_set_modifier_mapping_request_t;

/**
 * @brief xcb_set_modifier_mapping_reply_t
 **/
typedef struct xcb_set_modifier_mapping_reply_t {
    uint8_t  response_type; /**<  */
    uint8_t  status; /**<  */
    uint16_t sequence; /**<  */
    uint32_t length; /**<  */
} xcb_set_modifier_mapping_reply_t;

/**
 * @brief xcb_get_modifier_mapping_cookie_t
 **/
typedef struct xcb_get_modifier_mapping_cookie_t {
    unsigned int sequence; /**<  */
} xcb_get_modifier_mapping_cookie_t;

/** Opcode for xcb_get_modifier_mapping. */
#define XCB_GET_MODIFIER_MAPPING 119

/**
 * @brief xcb_get_modifier_mapping_request_t
 **/
typedef struct xcb_get_modifier_mapping_request_t {
    uint8_t  major_opcode; /**<  */
    uint8_t  pad0; /**<  */
    uint16_t length; /**<  */
} xcb_get_modifier_mapping_request_t;

/**
 * @brief xcb_get_modifier_mapping_reply_t
 **/
typedef struct xcb_get_modifier_mapping_reply_t {
    uint8_t  response_type; /**<  */
    uint8_t  keycodes_per_modifier; /**<  */
    uint16_t sequence; /**<  */
    uint32_t length; /**<  */
    uint8_t  pad0[24]; /**<  */
} xcb_get_modifier_mapping_reply_t;

/** Opcode for xcb_no_operation. */
#define XCB_NO_OPERATION 127

/**
 * @brief xcb_no_operation_request_t
 **/
typedef struct xcb_no_operation_request_t {
    uint8_t  major_opcode; /**<  */
    uint8_t  pad0; /**<  */
    uint16_t length; /**<  */
} xcb_no_operation_request_t;

*)

implementation

end.

