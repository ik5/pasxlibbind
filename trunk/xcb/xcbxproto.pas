unit xcbxproto;

{$mode fpc}{$PACKRECORDS C}{$MACRO ON}{$CALLING CDECL}

interface

uses
  ctypes, xcb_types;

(*
/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_char2b_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_char2b_t)
 */

/*****************************************************************************
 **
 ** void xcb_char2b_next
 **
 ** @param xcb_char2b_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/

void
xcb_char2b_next (xcb_char2b_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_char2b_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_char2b_end
 **
 ** @param xcb_char2b_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/

xcb_generic_iterator_t
xcb_char2b_end (xcb_char2b_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_window_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_window_t)
 */

/*****************************************************************************
 **
 ** void xcb_window_next
 **
 ** @param xcb_window_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/

void
xcb_window_next (xcb_window_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_window_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_window_end
 **
 ** @param xcb_window_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/

xcb_generic_iterator_t
xcb_window_end (xcb_window_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_pixmap_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_pixmap_t)
 */

/*****************************************************************************
 **
 ** void xcb_pixmap_next
 **
 ** @param xcb_pixmap_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/

void
xcb_pixmap_next (xcb_pixmap_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_pixmap_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_pixmap_end
 **
 ** @param xcb_pixmap_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/

xcb_generic_iterator_t
xcb_pixmap_end (xcb_pixmap_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_cursor_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_cursor_t)
 */

/*****************************************************************************
 **
 ** void xcb_cursor_next
 **
 ** @param xcb_cursor_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/

void
xcb_cursor_next (xcb_cursor_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_cursor_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_cursor_end
 **
 ** @param xcb_cursor_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/

xcb_generic_iterator_t
xcb_cursor_end (xcb_cursor_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_font_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_font_t)
 */

/*****************************************************************************
 **
 ** void xcb_font_next
 **
 ** @param xcb_font_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/

void
xcb_font_next (xcb_font_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_font_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_font_end
 **
 ** @param xcb_font_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/

xcb_generic_iterator_t
xcb_font_end (xcb_font_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_gcontext_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_gcontext_t)
 */

/*****************************************************************************
 **
 ** void xcb_gcontext_next
 **
 ** @param xcb_gcontext_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/

void
xcb_gcontext_next (xcb_gcontext_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_gcontext_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_gcontext_end
 **
 ** @param xcb_gcontext_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/

xcb_generic_iterator_t
xcb_gcontext_end (xcb_gcontext_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_colormap_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_colormap_t)
 */

/*****************************************************************************
 **
 ** void xcb_colormap_next
 **
 ** @param xcb_colormap_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/

void
xcb_colormap_next (xcb_colormap_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_colormap_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_colormap_end
 **
 ** @param xcb_colormap_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/

xcb_generic_iterator_t
xcb_colormap_end (xcb_colormap_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_atom_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_atom_t)
 */

/*****************************************************************************
 **
 ** void xcb_atom_next
 **
 ** @param xcb_atom_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/

void
xcb_atom_next (xcb_atom_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_atom_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_atom_end
 **
 ** @param xcb_atom_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/

xcb_generic_iterator_t
xcb_atom_end (xcb_atom_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_drawable_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_drawable_t)
 */

/*****************************************************************************
 **
 ** void xcb_drawable_next
 **
 ** @param xcb_drawable_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/

void
xcb_drawable_next (xcb_drawable_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_drawable_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_drawable_end
 **
 ** @param xcb_drawable_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/

xcb_generic_iterator_t
xcb_drawable_end (xcb_drawable_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_fontable_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_fontable_t)
 */

/*****************************************************************************
 **
 ** void xcb_fontable_next
 **
 ** @param xcb_fontable_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/

void
xcb_fontable_next (xcb_fontable_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_fontable_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_fontable_end
 **
 ** @param xcb_fontable_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/

xcb_generic_iterator_t
xcb_fontable_end (xcb_fontable_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_visualid_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_visualid_t)
 */

/*****************************************************************************
 **
 ** void xcb_visualid_next
 **
 ** @param xcb_visualid_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/

void
xcb_visualid_next (xcb_visualid_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_visualid_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_visualid_end
 **
 ** @param xcb_visualid_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/

xcb_generic_iterator_t
xcb_visualid_end (xcb_visualid_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_timestamp_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_timestamp_t)
 */

/*****************************************************************************
 **
 ** void xcb_timestamp_next
 **
 ** @param xcb_timestamp_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/

void
xcb_timestamp_next (xcb_timestamp_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_timestamp_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_timestamp_end
 **
 ** @param xcb_timestamp_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/

xcb_generic_iterator_t
xcb_timestamp_end (xcb_timestamp_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_keysym_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_keysym_t)
 */

/*****************************************************************************
 **
 ** void xcb_keysym_next
 **
 ** @param xcb_keysym_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/

void
xcb_keysym_next (xcb_keysym_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_keysym_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_keysym_end
 **
 ** @param xcb_keysym_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/

xcb_generic_iterator_t
xcb_keysym_end (xcb_keysym_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_keycode_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_keycode_t)
 */

/*****************************************************************************
 **
 ** void xcb_keycode_next
 **
 ** @param xcb_keycode_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/

void
xcb_keycode_next (xcb_keycode_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_keycode_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_keycode_end
 **
 ** @param xcb_keycode_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/

xcb_generic_iterator_t
xcb_keycode_end (xcb_keycode_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_button_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_button_t)
 */

/*****************************************************************************
 **
 ** void xcb_button_next
 **
 ** @param xcb_button_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/

void
xcb_button_next (xcb_button_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_button_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_button_end
 **
 ** @param xcb_button_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/

xcb_generic_iterator_t
xcb_button_end (xcb_button_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_point_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_point_t)
 */

/*****************************************************************************
 **
 ** void xcb_point_next
 **
 ** @param xcb_point_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/

void
xcb_point_next (xcb_point_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_point_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_point_end
 **
 ** @param xcb_point_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/

xcb_generic_iterator_t
xcb_point_end (xcb_point_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_rectangle_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_rectangle_t)
 */

/*****************************************************************************
 **
 ** void xcb_rectangle_next
 **
 ** @param xcb_rectangle_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/

void
xcb_rectangle_next (xcb_rectangle_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_rectangle_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_rectangle_end
 **
 ** @param xcb_rectangle_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/

xcb_generic_iterator_t
xcb_rectangle_end (xcb_rectangle_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_arc_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_arc_t)
 */

/*****************************************************************************
 **
 ** void xcb_arc_next
 **
 ** @param xcb_arc_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/

void
xcb_arc_next (xcb_arc_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_arc_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_arc_end
 **
 ** @param xcb_arc_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/

xcb_generic_iterator_t
xcb_arc_end (xcb_arc_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_format_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_format_t)
 */

/*****************************************************************************
 **
 ** void xcb_format_next
 **
 ** @param xcb_format_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/

void
xcb_format_next (xcb_format_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_format_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_format_end
 **
 ** @param xcb_format_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/

xcb_generic_iterator_t
xcb_format_end (xcb_format_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_visualtype_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_visualtype_t)
 */

/*****************************************************************************
 **
 ** void xcb_visualtype_next
 **
 ** @param xcb_visualtype_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/

void
xcb_visualtype_next (xcb_visualtype_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_visualtype_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_visualtype_end
 **
 ** @param xcb_visualtype_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/

xcb_generic_iterator_t
xcb_visualtype_end (xcb_visualtype_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** xcb_visualtype_t * xcb_depth_visuals
 **
 ** @param const xcb_depth_t *R
 ** @returns xcb_visualtype_t *
 **
 *****************************************************************************/

xcb_visualtype_t *
xcb_depth_visuals (const xcb_depth_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_depth_visuals_length
 **
 ** @param const xcb_depth_t *R
 ** @returns int
 **
 *****************************************************************************/

int
xcb_depth_visuals_length (const xcb_depth_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_visualtype_iterator_t xcb_depth_visuals_iterator
 **
 ** @param const xcb_depth_t *R
 ** @returns xcb_visualtype_iterator_t
 **
 *****************************************************************************/

xcb_visualtype_iterator_t
xcb_depth_visuals_iterator (const xcb_depth_t *R  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_depth_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_depth_t)
 */

/*****************************************************************************
 **
 ** void xcb_depth_next
 **
 ** @param xcb_depth_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/

void
xcb_depth_next (xcb_depth_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_depth_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_depth_end
 **
 ** @param xcb_depth_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/

xcb_generic_iterator_t
xcb_depth_end (xcb_depth_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** int xcb_screen_allowed_depths_length
 **
 ** @param const xcb_screen_t *R
 ** @returns int
 **
 *****************************************************************************/

int
xcb_screen_allowed_depths_length (const xcb_screen_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_depth_iterator_t xcb_screen_allowed_depths_iterator
 **
 ** @param const xcb_screen_t *R
 ** @returns xcb_depth_iterator_t
 **
 *****************************************************************************/

xcb_depth_iterator_t
xcb_screen_allowed_depths_iterator (const xcb_screen_t *R  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_screen_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_screen_t)
 */

/*****************************************************************************
 **
 ** void xcb_screen_next
 **
 ** @param xcb_screen_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/

void
xcb_screen_next (xcb_screen_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_screen_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_screen_end
 **
 ** @param xcb_screen_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/

xcb_generic_iterator_t
xcb_screen_end (xcb_screen_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** char * xcb_setup_request_authorization_protocol_name
 **
 ** @param const xcb_setup_request_t *R
 ** @returns char *
 **
 *****************************************************************************/

char *
xcb_setup_request_authorization_protocol_name (const xcb_setup_request_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_setup_request_authorization_protocol_name_length
 **
 ** @param const xcb_setup_request_t *R
 ** @returns int
 **
 *****************************************************************************/

int
xcb_setup_request_authorization_protocol_name_length (const xcb_setup_request_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_setup_request_authorization_protocol_name_end
 **
 ** @param const xcb_setup_request_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/

xcb_generic_iterator_t
xcb_setup_request_authorization_protocol_name_end (const xcb_setup_request_t *R  /**< */);


/*****************************************************************************
 **
 ** char * xcb_setup_request_authorization_protocol_data
 **
 ** @param const xcb_setup_request_t *R
 ** @returns char *
 **
 *****************************************************************************/

char *
xcb_setup_request_authorization_protocol_data (const xcb_setup_request_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_setup_request_authorization_protocol_data_length
 **
 ** @param const xcb_setup_request_t *R
 ** @returns int
 **
 *****************************************************************************/

int
xcb_setup_request_authorization_protocol_data_length (const xcb_setup_request_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_setup_request_authorization_protocol_data_end
 **
 ** @param const xcb_setup_request_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/

xcb_generic_iterator_t
xcb_setup_request_authorization_protocol_data_end (const xcb_setup_request_t *R  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_setup_request_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_setup_request_t)
 */

/*****************************************************************************
 **
 ** void xcb_setup_request_next
 **
 ** @param xcb_setup_request_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/

void
xcb_setup_request_next (xcb_setup_request_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_setup_request_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_setup_request_end
 **
 ** @param xcb_setup_request_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/

xcb_generic_iterator_t
xcb_setup_request_end (xcb_setup_request_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** char * xcb_setup_failed_reason
 **
 ** @param const xcb_setup_failed_t *R
 ** @returns char *
 **
 *****************************************************************************/

char *
xcb_setup_failed_reason (const xcb_setup_failed_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_setup_failed_reason_length
 **
 ** @param const xcb_setup_failed_t *R
 ** @returns int
 **
 *****************************************************************************/

int
xcb_setup_failed_reason_length (const xcb_setup_failed_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_setup_failed_reason_end
 **
 ** @param const xcb_setup_failed_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/

xcb_generic_iterator_t
xcb_setup_failed_reason_end (const xcb_setup_failed_t *R  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_setup_failed_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_setup_failed_t)
 */

/*****************************************************************************
 **
 ** void xcb_setup_failed_next
 **
 ** @param xcb_setup_failed_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/

void
xcb_setup_failed_next (xcb_setup_failed_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_setup_failed_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_setup_failed_end
 **
 ** @param xcb_setup_failed_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/

xcb_generic_iterator_t
xcb_setup_failed_end (xcb_setup_failed_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** char * xcb_setup_authenticate_reason
 **
 ** @param const xcb_setup_authenticate_t *R
 ** @returns char *
 **
 *****************************************************************************/

char *
xcb_setup_authenticate_reason (const xcb_setup_authenticate_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_setup_authenticate_reason_length
 **
 ** @param const xcb_setup_authenticate_t *R
 ** @returns int
 **
 *****************************************************************************/

int
xcb_setup_authenticate_reason_length (const xcb_setup_authenticate_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_setup_authenticate_reason_end
 **
 ** @param const xcb_setup_authenticate_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/

xcb_generic_iterator_t
xcb_setup_authenticate_reason_end (const xcb_setup_authenticate_t *R  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_setup_authenticate_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_setup_authenticate_t)
 */

/*****************************************************************************
 **
 ** void xcb_setup_authenticate_next
 **
 ** @param xcb_setup_authenticate_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/

void
xcb_setup_authenticate_next (xcb_setup_authenticate_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_setup_authenticate_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_setup_authenticate_end
 **
 ** @param xcb_setup_authenticate_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/

xcb_generic_iterator_t
xcb_setup_authenticate_end (xcb_setup_authenticate_iterator_t i  /**< */);


/*****************************************************************************
 **
 ** char * xcb_setup_vendor
 **
 ** @param const xcb_setup_t *R
 ** @returns char *
 **
 *****************************************************************************/

char *
xcb_setup_vendor (const xcb_setup_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_setup_vendor_length
 **
 ** @param const xcb_setup_t *R
 ** @returns int
 **
 *****************************************************************************/

int
xcb_setup_vendor_length (const xcb_setup_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_setup_vendor_end
 **
 ** @param const xcb_setup_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/

xcb_generic_iterator_t
xcb_setup_vendor_end (const xcb_setup_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_format_t * xcb_setup_pixmap_formats
 **
 ** @param const xcb_setup_t *R
 ** @returns xcb_format_t *
 **
 *****************************************************************************/

xcb_format_t *
xcb_setup_pixmap_formats (const xcb_setup_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_setup_pixmap_formats_length
 **
 ** @param const xcb_setup_t *R
 ** @returns int
 **
 *****************************************************************************/

int
xcb_setup_pixmap_formats_length (const xcb_setup_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_format_iterator_t xcb_setup_pixmap_formats_iterator
 **
 ** @param const xcb_setup_t *R
 ** @returns xcb_format_iterator_t
 **
 *****************************************************************************/

xcb_format_iterator_t
xcb_setup_pixmap_formats_iterator (const xcb_setup_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_setup_roots_length
 **
 ** @param const xcb_setup_t *R
 ** @returns int
 **
 *****************************************************************************/

int
xcb_setup_roots_length (const xcb_setup_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_screen_iterator_t xcb_setup_roots_iterator
 **
 ** @param const xcb_setup_t *R
 ** @returns xcb_screen_iterator_t
 **
 *****************************************************************************/

xcb_screen_iterator_t
xcb_setup_roots_iterator (const xcb_setup_t *R  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_setup_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_setup_t)
 */

/*****************************************************************************
 **
 ** void xcb_setup_next
 **
 ** @param xcb_setup_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/

void
xcb_setup_next (xcb_setup_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_setup_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_setup_end
 **
 ** @param xcb_setup_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/

xcb_generic_iterator_t
xcb_setup_end (xcb_setup_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_client_message_data_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_client_message_data_t)
 */

/*****************************************************************************
 **
 ** void xcb_client_message_data_next
 **
 ** @param xcb_client_message_data_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/

void
xcb_client_message_data_next (xcb_client_message_data_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_client_message_data_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_client_message_data_end
 **
 ** @param xcb_client_message_data_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/

xcb_generic_iterator_t
xcb_client_message_data_end (xcb_client_message_data_iterator_t i  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_create_window_checked
 **
 ** @param xcb_connection_t *c
 ** @param uint8_t           depth
 ** @param xcb_window_t      wid
 ** @param xcb_window_t      parent
 ** @param int16_t           x
 ** @param int16_t           y
 ** @param uint16_t          width
 ** @param uint16_t          height
 ** @param uint16_t          border_width
 ** @param uint16_t          _class
 ** @param xcb_visualid_t    visual
 ** @param uint32_t          value_mask
 ** @param const uint32_t   *value_list
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_create_window_checked (xcb_connection_t *c  /**< */,
                           uint8_t           depth  /**< */,
                           xcb_window_t      wid  /**< */,
                           xcb_window_t      parent  /**< */,
                           int16_t           x  /**< */,
                           int16_t           y  /**< */,
                           uint16_t          width  /**< */,
                           uint16_t          height  /**< */,
                           uint16_t          border_width  /**< */,
                           uint16_t          _class  /**< */,
                           xcb_visualid_t    visual  /**< */,
                           uint32_t          value_mask  /**< */,
                           const uint32_t   *value_list  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_create_window
 **
 ** @param xcb_connection_t *c
 ** @param uint8_t           depth
 ** @param xcb_window_t      wid
 ** @param xcb_window_t      parent
 ** @param int16_t           x
 ** @param int16_t           y
 ** @param uint16_t          width
 ** @param uint16_t          height
 ** @param uint16_t          border_width
 ** @param uint16_t          _class
 ** @param xcb_visualid_t    visual
 ** @param uint32_t          value_mask
 ** @param const uint32_t   *value_list
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_create_window (xcb_connection_t *c  /**< */,
                   uint8_t           depth  /**< */,
                   xcb_window_t      wid  /**< */,
                   xcb_window_t      parent  /**< */,
                   int16_t           x  /**< */,
                   int16_t           y  /**< */,
                   uint16_t          width  /**< */,
                   uint16_t          height  /**< */,
                   uint16_t          border_width  /**< */,
                   uint16_t          _class  /**< */,
                   xcb_visualid_t    visual  /**< */,
                   uint32_t          value_mask  /**< */,
                   const uint32_t   *value_list  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_change_window_attributes_checked
 **
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @param uint32_t          value_mask
 ** @param const uint32_t   *value_list
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_change_window_attributes_checked (xcb_connection_t *c  /**< */,
                                      xcb_window_t      window  /**< */,
                                      uint32_t          value_mask  /**< */,
                                      const uint32_t   *value_list  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_change_window_attributes
 **
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @param uint32_t          value_mask
 ** @param const uint32_t   *value_list
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_change_window_attributes (xcb_connection_t *c  /**< */,
                              xcb_window_t      window  /**< */,
                              uint32_t          value_mask  /**< */,
                              const uint32_t   *value_list  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_get_window_attributes_cookie_t xcb_get_window_attributes
 **
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @returns xcb_get_window_attributes_cookie_t
 **
 *****************************************************************************/

xcb_get_window_attributes_cookie_t
xcb_get_window_attributes (xcb_connection_t *c  /**< */,
                           xcb_window_t      window  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */

/*****************************************************************************
 **
 ** xcb_get_window_attributes_cookie_t xcb_get_window_attributes_unchecked
 **
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @returns xcb_get_window_attributes_cookie_t
 **
 *****************************************************************************/

xcb_get_window_attributes_cookie_t
xcb_get_window_attributes_unchecked (xcb_connection_t *c  /**< */,
                                     xcb_window_t      window  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_get_window_attributes_unchecked(). is used.
 * Otherwise, it stores the error if any.
 */

/*****************************************************************************
 **
 ** xcb_get_window_attributes_reply_t * xcb_get_window_attributes_reply
 **
 ** @param xcb_connection_t                    *c
 ** @param xcb_get_window_attributes_cookie_t   cookie
 ** @param xcb_generic_error_t                **e
 ** @returns xcb_get_window_attributes_reply_t *
 **
 *****************************************************************************/

xcb_get_window_attributes_reply_t *
xcb_get_window_attributes_reply (xcb_connection_t                    *c  /**< */,
                                 xcb_get_window_attributes_cookie_t   cookie  /**< */,
                                 xcb_generic_error_t                **e  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_destroy_window_checked
 **
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_destroy_window_checked (xcb_connection_t *c  /**< */,
                            xcb_window_t      window  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_destroy_window
 **
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_destroy_window (xcb_connection_t *c  /**< */,
                    xcb_window_t      window  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_destroy_subwindows_checked
 **
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_destroy_subwindows_checked (xcb_connection_t *c  /**< */,
                                xcb_window_t      window  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_destroy_subwindows
 **
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_destroy_subwindows (xcb_connection_t *c  /**< */,
                        xcb_window_t      window  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_change_save_set_checked
 **
 ** @param xcb_connection_t *c
 ** @param uint8_t           mode
 ** @param xcb_window_t      window
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_change_save_set_checked (xcb_connection_t *c  /**< */,
                             uint8_t           mode  /**< */,
                             xcb_window_t      window  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_change_save_set
 **
 ** @param xcb_connection_t *c
 ** @param uint8_t           mode
 ** @param xcb_window_t      window
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_change_save_set (xcb_connection_t *c  /**< */,
                     uint8_t           mode  /**< */,
                     xcb_window_t      window  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_reparent_window_checked
 **
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @param xcb_window_t      parent
 ** @param int16_t           x
 ** @param int16_t           y
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_reparent_window_checked (xcb_connection_t *c  /**< */,
                             xcb_window_t      window  /**< */,
                             xcb_window_t      parent  /**< */,
                             int16_t           x  /**< */,
                             int16_t           y  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_reparent_window
 **
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @param xcb_window_t      parent
 ** @param int16_t           x
 ** @param int16_t           y
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_reparent_window (xcb_connection_t *c  /**< */,
                     xcb_window_t      window  /**< */,
                     xcb_window_t      parent  /**< */,
                     int16_t           x  /**< */,
                     int16_t           y  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_map_window_checked
 **
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_map_window_checked (xcb_connection_t *c  /**< */,
                        xcb_window_t      window  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_map_window
 **
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_map_window (xcb_connection_t *c  /**< */,
                xcb_window_t      window  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_map_subwindows_checked
 **
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_map_subwindows_checked (xcb_connection_t *c  /**< */,
                            xcb_window_t      window  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_map_subwindows
 **
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_map_subwindows (xcb_connection_t *c  /**< */,
                    xcb_window_t      window  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_unmap_window_checked
 **
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_unmap_window_checked (xcb_connection_t *c  /**< */,
                          xcb_window_t      window  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_unmap_window
 **
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_unmap_window (xcb_connection_t *c  /**< */,
                  xcb_window_t      window  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_unmap_subwindows_checked
 **
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_unmap_subwindows_checked (xcb_connection_t *c  /**< */,
                              xcb_window_t      window  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_unmap_subwindows
 **
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_unmap_subwindows (xcb_connection_t *c  /**< */,
                      xcb_window_t      window  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_configure_window_checked
 **
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @param uint16_t          value_mask
 ** @param const uint32_t   *value_list
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_configure_window_checked (xcb_connection_t *c  /**< */,
                              xcb_window_t      window  /**< */,
                              uint16_t          value_mask  /**< */,
                              const uint32_t   *value_list  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_configure_window
 **
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @param uint16_t          value_mask
 ** @param const uint32_t   *value_list
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_configure_window (xcb_connection_t *c  /**< */,
                      xcb_window_t      window  /**< */,
                      uint16_t          value_mask  /**< */,
                      const uint32_t   *value_list  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_circulate_window_checked
 **
 ** @param xcb_connection_t *c
 ** @param uint8_t           direction
 ** @param xcb_window_t      window
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_circulate_window_checked (xcb_connection_t *c  /**< */,
                              uint8_t           direction  /**< */,
                              xcb_window_t      window  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_circulate_window
 **
 ** @param xcb_connection_t *c
 ** @param uint8_t           direction
 ** @param xcb_window_t      window
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_circulate_window (xcb_connection_t *c  /**< */,
                      uint8_t           direction  /**< */,
                      xcb_window_t      window  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_get_geometry_cookie_t xcb_get_geometry
 **
 ** @param xcb_connection_t *c
 ** @param xcb_drawable_t    drawable
 ** @returns xcb_get_geometry_cookie_t
 **
 *****************************************************************************/

xcb_get_geometry_cookie_t
xcb_get_geometry (xcb_connection_t *c  /**< */,
                  xcb_drawable_t    drawable  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */

/*****************************************************************************
 **
 ** xcb_get_geometry_cookie_t xcb_get_geometry_unchecked
 **
 ** @param xcb_connection_t *c
 ** @param xcb_drawable_t    drawable
 ** @returns xcb_get_geometry_cookie_t
 **
 *****************************************************************************/

xcb_get_geometry_cookie_t
xcb_get_geometry_unchecked (xcb_connection_t *c  /**< */,
                            xcb_drawable_t    drawable  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_get_geometry_unchecked(). is used.
 * Otherwise, it stores the error if any.
 */

/*****************************************************************************
 **
 ** xcb_get_geometry_reply_t * xcb_get_geometry_reply
 **
 ** @param xcb_connection_t           *c
 ** @param xcb_get_geometry_cookie_t   cookie
 ** @param xcb_generic_error_t       **e
 ** @returns xcb_get_geometry_reply_t *
 **
 *****************************************************************************/

xcb_get_geometry_reply_t *
xcb_get_geometry_reply (xcb_connection_t           *c  /**< */,
                        xcb_get_geometry_cookie_t   cookie  /**< */,
                        xcb_generic_error_t       **e  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_query_tree_cookie_t xcb_query_tree
 **
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @returns xcb_query_tree_cookie_t
 **
 *****************************************************************************/

xcb_query_tree_cookie_t
xcb_query_tree (xcb_connection_t *c  /**< */,
                xcb_window_t      window  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */

/*****************************************************************************
 **
 ** xcb_query_tree_cookie_t xcb_query_tree_unchecked
 **
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @returns xcb_query_tree_cookie_t
 **
 *****************************************************************************/

xcb_query_tree_cookie_t
xcb_query_tree_unchecked (xcb_connection_t *c  /**< */,
                          xcb_window_t      window  /**< */);


/*****************************************************************************
 **
 ** xcb_window_t * xcb_query_tree_children
 **
 ** @param const xcb_query_tree_reply_t *R
 ** @returns xcb_window_t *
 **
 *****************************************************************************/

xcb_window_t *
xcb_query_tree_children (const xcb_query_tree_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_query_tree_children_length
 **
 ** @param const xcb_query_tree_reply_t *R
 ** @returns int
 **
 *****************************************************************************/

int
xcb_query_tree_children_length (const xcb_query_tree_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_window_iterator_t xcb_query_tree_children_iterator
 **
 ** @param const xcb_query_tree_reply_t *R
 ** @returns xcb_window_iterator_t
 **
 *****************************************************************************/

xcb_window_iterator_t
xcb_query_tree_children_iterator (const xcb_query_tree_reply_t *R  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_query_tree_unchecked(). is used.
 * Otherwise, it stores the error if any.
 */

/*****************************************************************************
 **
 ** xcb_query_tree_reply_t * xcb_query_tree_reply
 **
 ** @param xcb_connection_t         *c
 ** @param xcb_query_tree_cookie_t   cookie
 ** @param xcb_generic_error_t     **e
 ** @returns xcb_query_tree_reply_t *
 **
 *****************************************************************************/

xcb_query_tree_reply_t *
xcb_query_tree_reply (xcb_connection_t         *c  /**< */,
                      xcb_query_tree_cookie_t   cookie  /**< */,
                      xcb_generic_error_t     **e  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_intern_atom_cookie_t xcb_intern_atom
 **
 ** @param xcb_connection_t *c
 ** @param uint8_t           only_if_exists
 ** @param uint16_t          name_len
 ** @param const char       *name
 ** @returns xcb_intern_atom_cookie_t
 **
 *****************************************************************************/

xcb_intern_atom_cookie_t
xcb_intern_atom (xcb_connection_t *c  /**< */,
                 uint8_t           only_if_exists  /**< */,
                 uint16_t          name_len  /**< */,
                 const char       *name  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */

/*****************************************************************************
 **
 ** xcb_intern_atom_cookie_t xcb_intern_atom_unchecked
 **
 ** @param xcb_connection_t *c
 ** @param uint8_t           only_if_exists
 ** @param uint16_t          name_len
 ** @param const char       *name
 ** @returns xcb_intern_atom_cookie_t
 **
 *****************************************************************************/

xcb_intern_atom_cookie_t
xcb_intern_atom_unchecked (xcb_connection_t *c  /**< */,
                           uint8_t           only_if_exists  /**< */,
                           uint16_t          name_len  /**< */,
                           const char       *name  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_intern_atom_unchecked(). is used.
 * Otherwise, it stores the error if any.
 */

/*****************************************************************************
 **
 ** xcb_intern_atom_reply_t * xcb_intern_atom_reply
 **
 ** @param xcb_connection_t          *c
 ** @param xcb_intern_atom_cookie_t   cookie
 ** @param xcb_generic_error_t      **e
 ** @returns xcb_intern_atom_reply_t *
 **
 *****************************************************************************/

xcb_intern_atom_reply_t *
xcb_intern_atom_reply (xcb_connection_t          *c  /**< */,
                       xcb_intern_atom_cookie_t   cookie  /**< */,
                       xcb_generic_error_t      **e  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_get_atom_name_cookie_t xcb_get_atom_name
 **
 ** @param xcb_connection_t *c
 ** @param xcb_atom_t        atom
 ** @returns xcb_get_atom_name_cookie_t
 **
 *****************************************************************************/

xcb_get_atom_name_cookie_t
xcb_get_atom_name (xcb_connection_t *c  /**< */,
                   xcb_atom_t        atom  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */

/*****************************************************************************
 **
 ** xcb_get_atom_name_cookie_t xcb_get_atom_name_unchecked
 **
 ** @param xcb_connection_t *c
 ** @param xcb_atom_t        atom
 ** @returns xcb_get_atom_name_cookie_t
 **
 *****************************************************************************/

xcb_get_atom_name_cookie_t
xcb_get_atom_name_unchecked (xcb_connection_t *c  /**< */,
                             xcb_atom_t        atom  /**< */);


/*****************************************************************************
 **
 ** uint8_t * xcb_get_atom_name_name
 **
 ** @param const xcb_get_atom_name_reply_t *R
 ** @returns uint8_t *
 **
 *****************************************************************************/

uint8_t *
xcb_get_atom_name_name (const xcb_get_atom_name_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_get_atom_name_name_length
 **
 ** @param const xcb_get_atom_name_reply_t *R
 ** @returns int
 **
 *****************************************************************************/

int
xcb_get_atom_name_name_length (const xcb_get_atom_name_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_get_atom_name_name_end
 **
 ** @param const xcb_get_atom_name_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/

xcb_generic_iterator_t
xcb_get_atom_name_name_end (const xcb_get_atom_name_reply_t *R  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_get_atom_name_unchecked(). is used.
 * Otherwise, it stores the error if any.
 */

/*****************************************************************************
 **
 ** xcb_get_atom_name_reply_t * xcb_get_atom_name_reply
 **
 ** @param xcb_connection_t            *c
 ** @param xcb_get_atom_name_cookie_t   cookie
 ** @param xcb_generic_error_t        **e
 ** @returns xcb_get_atom_name_reply_t *
 **
 *****************************************************************************/

xcb_get_atom_name_reply_t *
xcb_get_atom_name_reply (xcb_connection_t            *c  /**< */,
                         xcb_get_atom_name_cookie_t   cookie  /**< */,
                         xcb_generic_error_t        **e  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_change_property_checked
 **
 ** @param xcb_connection_t *c
 ** @param uint8_t           mode
 ** @param xcb_window_t      window
 ** @param xcb_atom_t        property
 ** @param xcb_atom_t        type
 ** @param uint8_t           format
 ** @param uint32_t          data_len
 ** @param const void       *data
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_change_property_checked (xcb_connection_t *c  /**< */,
                             uint8_t           mode  /**< */,
                             xcb_window_t      window  /**< */,
                             xcb_atom_t        property  /**< */,
                             xcb_atom_t        type  /**< */,
                             uint8_t           format  /**< */,
                             uint32_t          data_len  /**< */,
                             const void       *data  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_change_property
 **
 ** @param xcb_connection_t *c
 ** @param uint8_t           mode
 ** @param xcb_window_t      window
 ** @param xcb_atom_t        property
 ** @param xcb_atom_t        type
 ** @param uint8_t           format
 ** @param uint32_t          data_len
 ** @param const void       *data
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_change_property (xcb_connection_t *c  /**< */,
                     uint8_t           mode  /**< */,
                     xcb_window_t      window  /**< */,
                     xcb_atom_t        property  /**< */,
                     xcb_atom_t        type  /**< */,
                     uint8_t           format  /**< */,
                     uint32_t          data_len  /**< */,
                     const void       *data  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_delete_property_checked
 **
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @param xcb_atom_t        property
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_delete_property_checked (xcb_connection_t *c  /**< */,
                             xcb_window_t      window  /**< */,
                             xcb_atom_t        property  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_delete_property
 **
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @param xcb_atom_t        property
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_delete_property (xcb_connection_t *c  /**< */,
                     xcb_window_t      window  /**< */,
                     xcb_atom_t        property  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_get_property_cookie_t xcb_get_property
 **
 ** @param xcb_connection_t *c
 ** @param uint8_t           _delete
 ** @param xcb_window_t      window
 ** @param xcb_atom_t        property
 ** @param xcb_atom_t        type
 ** @param uint32_t          long_offset
 ** @param uint32_t          long_length
 ** @returns xcb_get_property_cookie_t
 **
 *****************************************************************************/

xcb_get_property_cookie_t
xcb_get_property (xcb_connection_t *c  /**< */,
                  uint8_t           _delete  /**< */,
                  xcb_window_t      window  /**< */,
                  xcb_atom_t        property  /**< */,
                  xcb_atom_t        type  /**< */,
                  uint32_t          long_offset  /**< */,
                  uint32_t          long_length  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */

/*****************************************************************************
 **
 ** xcb_get_property_cookie_t xcb_get_property_unchecked
 **
 ** @param xcb_connection_t *c
 ** @param uint8_t           _delete
 ** @param xcb_window_t      window
 ** @param xcb_atom_t        property
 ** @param xcb_atom_t        type
 ** @param uint32_t          long_offset
 ** @param uint32_t          long_length
 ** @returns xcb_get_property_cookie_t
 **
 *****************************************************************************/

xcb_get_property_cookie_t
xcb_get_property_unchecked (xcb_connection_t *c  /**< */,
                            uint8_t           _delete  /**< */,
                            xcb_window_t      window  /**< */,
                            xcb_atom_t        property  /**< */,
                            xcb_atom_t        type  /**< */,
                            uint32_t          long_offset  /**< */,
                            uint32_t          long_length  /**< */);


/*****************************************************************************
 **
 ** void * xcb_get_property_value
 **
 ** @param const xcb_get_property_reply_t *R
 ** @returns void *
 **
 *****************************************************************************/

void *
xcb_get_property_value (const xcb_get_property_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_get_property_value_length
 **
 ** @param const xcb_get_property_reply_t *R
 ** @returns int
 **
 *****************************************************************************/

int
xcb_get_property_value_length (const xcb_get_property_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_get_property_value_end
 **
 ** @param const xcb_get_property_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/

xcb_generic_iterator_t
xcb_get_property_value_end (const xcb_get_property_reply_t *R  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_get_property_unchecked(). is used.
 * Otherwise, it stores the error if any.
 */

/*****************************************************************************
 **
 ** xcb_get_property_reply_t * xcb_get_property_reply
 **
 ** @param xcb_connection_t           *c
 ** @param xcb_get_property_cookie_t   cookie
 ** @param xcb_generic_error_t       **e
 ** @returns xcb_get_property_reply_t *
 **
 *****************************************************************************/

xcb_get_property_reply_t *
xcb_get_property_reply (xcb_connection_t           *c  /**< */,
                        xcb_get_property_cookie_t   cookie  /**< */,
                        xcb_generic_error_t       **e  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_list_properties_cookie_t xcb_list_properties
 **
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @returns xcb_list_properties_cookie_t
 **
 *****************************************************************************/

xcb_list_properties_cookie_t
xcb_list_properties (xcb_connection_t *c  /**< */,
                     xcb_window_t      window  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */

/*****************************************************************************
 **
 ** xcb_list_properties_cookie_t xcb_list_properties_unchecked
 **
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @returns xcb_list_properties_cookie_t
 **
 *****************************************************************************/

xcb_list_properties_cookie_t
xcb_list_properties_unchecked (xcb_connection_t *c  /**< */,
                               xcb_window_t      window  /**< */);


/*****************************************************************************
 **
 ** xcb_atom_t * xcb_list_properties_atoms
 **
 ** @param const xcb_list_properties_reply_t *R
 ** @returns xcb_atom_t *
 **
 *****************************************************************************/

xcb_atom_t *
xcb_list_properties_atoms (const xcb_list_properties_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_list_properties_atoms_length
 **
 ** @param const xcb_list_properties_reply_t *R
 ** @returns int
 **
 *****************************************************************************/

int
xcb_list_properties_atoms_length (const xcb_list_properties_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_atom_iterator_t xcb_list_properties_atoms_iterator
 **
 ** @param const xcb_list_properties_reply_t *R
 ** @returns xcb_atom_iterator_t
 **
 *****************************************************************************/

xcb_atom_iterator_t
xcb_list_properties_atoms_iterator (const xcb_list_properties_reply_t *R  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_list_properties_unchecked(). is used.
 * Otherwise, it stores the error if any.
 */

/*****************************************************************************
 **
 ** xcb_list_properties_reply_t * xcb_list_properties_reply
 **
 ** @param xcb_connection_t              *c
 ** @param xcb_list_properties_cookie_t   cookie
 ** @param xcb_generic_error_t          **e
 ** @returns xcb_list_properties_reply_t *
 **
 *****************************************************************************/

xcb_list_properties_reply_t *
xcb_list_properties_reply (xcb_connection_t              *c  /**< */,
                           xcb_list_properties_cookie_t   cookie  /**< */,
                           xcb_generic_error_t          **e  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_set_selection_owner_checked
 **
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      owner
 ** @param xcb_atom_t        selection
 ** @param xcb_timestamp_t   time
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_set_selection_owner_checked (xcb_connection_t *c  /**< */,
                                 xcb_window_t      owner  /**< */,
                                 xcb_atom_t        selection  /**< */,
                                 xcb_timestamp_t   time  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_set_selection_owner
 **
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      owner
 ** @param xcb_atom_t        selection
 ** @param xcb_timestamp_t   time
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_set_selection_owner (xcb_connection_t *c  /**< */,
                         xcb_window_t      owner  /**< */,
                         xcb_atom_t        selection  /**< */,
                         xcb_timestamp_t   time  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_get_selection_owner_cookie_t xcb_get_selection_owner
 **
 ** @param xcb_connection_t *c
 ** @param xcb_atom_t        selection
 ** @returns xcb_get_selection_owner_cookie_t
 **
 *****************************************************************************/

xcb_get_selection_owner_cookie_t
xcb_get_selection_owner (xcb_connection_t *c  /**< */,
                         xcb_atom_t        selection  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */

/*****************************************************************************
 **
 ** xcb_get_selection_owner_cookie_t xcb_get_selection_owner_unchecked
 **
 ** @param xcb_connection_t *c
 ** @param xcb_atom_t        selection
 ** @returns xcb_get_selection_owner_cookie_t
 **
 *****************************************************************************/

xcb_get_selection_owner_cookie_t
xcb_get_selection_owner_unchecked (xcb_connection_t *c  /**< */,
                                   xcb_atom_t        selection  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_get_selection_owner_unchecked(). is used.
 * Otherwise, it stores the error if any.
 */

/*****************************************************************************
 **
 ** xcb_get_selection_owner_reply_t * xcb_get_selection_owner_reply
 **
 ** @param xcb_connection_t                  *c
 ** @param xcb_get_selection_owner_cookie_t   cookie
 ** @param xcb_generic_error_t              **e
 ** @returns xcb_get_selection_owner_reply_t *
 **
 *****************************************************************************/

xcb_get_selection_owner_reply_t *
xcb_get_selection_owner_reply (xcb_connection_t                  *c  /**< */,
                               xcb_get_selection_owner_cookie_t   cookie  /**< */,
                               xcb_generic_error_t              **e  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_convert_selection_checked
 **
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      requestor
 ** @param xcb_atom_t        selection
 ** @param xcb_atom_t        target
 ** @param xcb_atom_t        property
 ** @param xcb_timestamp_t   time
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_convert_selection_checked (xcb_connection_t *c  /**< */,
                               xcb_window_t      requestor  /**< */,
                               xcb_atom_t        selection  /**< */,
                               xcb_atom_t        target  /**< */,
                               xcb_atom_t        property  /**< */,
                               xcb_timestamp_t   time  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_convert_selection
 **
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      requestor
 ** @param xcb_atom_t        selection
 ** @param xcb_atom_t        target
 ** @param xcb_atom_t        property
 ** @param xcb_timestamp_t   time
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_convert_selection (xcb_connection_t *c  /**< */,
                       xcb_window_t      requestor  /**< */,
                       xcb_atom_t        selection  /**< */,
                       xcb_atom_t        target  /**< */,
                       xcb_atom_t        property  /**< */,
                       xcb_timestamp_t   time  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_send_event_checked
 **
 ** @param xcb_connection_t *c
 ** @param uint8_t           propagate
 ** @param xcb_window_t      destination
 ** @param uint32_t          event_mask
 ** @param const char       *event
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_send_event_checked (xcb_connection_t *c  /**< */,
                        uint8_t           propagate  /**< */,
                        xcb_window_t      destination  /**< */,
                        uint32_t          event_mask  /**< */,
                        const char       *event  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_send_event
 **
 ** @param xcb_connection_t *c
 ** @param uint8_t           propagate
 ** @param xcb_window_t      destination
 ** @param uint32_t          event_mask
 ** @param const char       *event
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_send_event (xcb_connection_t *c  /**< */,
                uint8_t           propagate  /**< */,
                xcb_window_t      destination  /**< */,
                uint32_t          event_mask  /**< */,
                const char       *event  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_grab_pointer_cookie_t xcb_grab_pointer
 **
 ** @param xcb_connection_t *c
 ** @param uint8_t           owner_events
 ** @param xcb_window_t      grab_window
 ** @param uint16_t          event_mask
 ** @param uint8_t           pointer_mode
 ** @param uint8_t           keyboard_mode
 ** @param xcb_window_t      confine_to
 ** @param xcb_cursor_t      cursor
 ** @param xcb_timestamp_t   time
 ** @returns xcb_grab_pointer_cookie_t
 **
 *****************************************************************************/

xcb_grab_pointer_cookie_t
xcb_grab_pointer (xcb_connection_t *c  /**< */,
                  uint8_t           owner_events  /**< */,
                  xcb_window_t      grab_window  /**< */,
                  uint16_t          event_mask  /**< */,
                  uint8_t           pointer_mode  /**< */,
                  uint8_t           keyboard_mode  /**< */,
                  xcb_window_t      confine_to  /**< */,
                  xcb_cursor_t      cursor  /**< */,
                  xcb_timestamp_t   time  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */

/*****************************************************************************
 **
 ** xcb_grab_pointer_cookie_t xcb_grab_pointer_unchecked
 **
 ** @param xcb_connection_t *c
 ** @param uint8_t           owner_events
 ** @param xcb_window_t      grab_window
 ** @param uint16_t          event_mask
 ** @param uint8_t           pointer_mode
 ** @param uint8_t           keyboard_mode
 ** @param xcb_window_t      confine_to
 ** @param xcb_cursor_t      cursor
 ** @param xcb_timestamp_t   time
 ** @returns xcb_grab_pointer_cookie_t
 **
 *****************************************************************************/

xcb_grab_pointer_cookie_t
xcb_grab_pointer_unchecked (xcb_connection_t *c  /**< */,
                            uint8_t           owner_events  /**< */,
                            xcb_window_t      grab_window  /**< */,
                            uint16_t          event_mask  /**< */,
                            uint8_t           pointer_mode  /**< */,
                            uint8_t           keyboard_mode  /**< */,
                            xcb_window_t      confine_to  /**< */,
                            xcb_cursor_t      cursor  /**< */,
                            xcb_timestamp_t   time  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_grab_pointer_unchecked(). is used.
 * Otherwise, it stores the error if any.
 */

/*****************************************************************************
 **
 ** xcb_grab_pointer_reply_t * xcb_grab_pointer_reply
 **
 ** @param xcb_connection_t           *c
 ** @param xcb_grab_pointer_cookie_t   cookie
 ** @param xcb_generic_error_t       **e
 ** @returns xcb_grab_pointer_reply_t *
 **
 *****************************************************************************/

xcb_grab_pointer_reply_t *
xcb_grab_pointer_reply (xcb_connection_t           *c  /**< */,
                        xcb_grab_pointer_cookie_t   cookie  /**< */,
                        xcb_generic_error_t       **e  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_ungrab_pointer_checked
 **
 ** @param xcb_connection_t *c
 ** @param xcb_timestamp_t   time
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_ungrab_pointer_checked (xcb_connection_t *c  /**< */,
                            xcb_timestamp_t   time  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_ungrab_pointer
 **
 ** @param xcb_connection_t *c
 ** @param xcb_timestamp_t   time
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_ungrab_pointer (xcb_connection_t *c  /**< */,
                    xcb_timestamp_t   time  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_grab_button_checked
 **
 ** @param xcb_connection_t *c
 ** @param uint8_t           owner_events
 ** @param xcb_window_t      grab_window
 ** @param uint16_t          event_mask
 ** @param uint8_t           pointer_mode
 ** @param uint8_t           keyboard_mode
 ** @param xcb_window_t      confine_to
 ** @param xcb_cursor_t      cursor
 ** @param uint8_t           button
 ** @param uint16_t          modifiers
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_grab_button_checked (xcb_connection_t *c  /**< */,
                         uint8_t           owner_events  /**< */,
                         xcb_window_t      grab_window  /**< */,
                         uint16_t          event_mask  /**< */,
                         uint8_t           pointer_mode  /**< */,
                         uint8_t           keyboard_mode  /**< */,
                         xcb_window_t      confine_to  /**< */,
                         xcb_cursor_t      cursor  /**< */,
                         uint8_t           button  /**< */,
                         uint16_t          modifiers  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_grab_button
 **
 ** @param xcb_connection_t *c
 ** @param uint8_t           owner_events
 ** @param xcb_window_t      grab_window
 ** @param uint16_t          event_mask
 ** @param uint8_t           pointer_mode
 ** @param uint8_t           keyboard_mode
 ** @param xcb_window_t      confine_to
 ** @param xcb_cursor_t      cursor
 ** @param uint8_t           button
 ** @param uint16_t          modifiers
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_grab_button (xcb_connection_t *c  /**< */,
                 uint8_t           owner_events  /**< */,
                 xcb_window_t      grab_window  /**< */,
                 uint16_t          event_mask  /**< */,
                 uint8_t           pointer_mode  /**< */,
                 uint8_t           keyboard_mode  /**< */,
                 xcb_window_t      confine_to  /**< */,
                 xcb_cursor_t      cursor  /**< */,
                 uint8_t           button  /**< */,
                 uint16_t          modifiers  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_ungrab_button_checked
 **
 ** @param xcb_connection_t *c
 ** @param uint8_t           button
 ** @param xcb_window_t      grab_window
 ** @param uint16_t          modifiers
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_ungrab_button_checked (xcb_connection_t *c  /**< */,
                           uint8_t           button  /**< */,
                           xcb_window_t      grab_window  /**< */,
                           uint16_t          modifiers  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_ungrab_button
 **
 ** @param xcb_connection_t *c
 ** @param uint8_t           button
 ** @param xcb_window_t      grab_window
 ** @param uint16_t          modifiers
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_ungrab_button (xcb_connection_t *c  /**< */,
                   uint8_t           button  /**< */,
                   xcb_window_t      grab_window  /**< */,
                   uint16_t          modifiers  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_change_active_pointer_grab_checked
 **
 ** @param xcb_connection_t *c
 ** @param xcb_cursor_t      cursor
 ** @param xcb_timestamp_t   time
 ** @param uint16_t          event_mask
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_change_active_pointer_grab_checked (xcb_connection_t *c  /**< */,
                                        xcb_cursor_t      cursor  /**< */,
                                        xcb_timestamp_t   time  /**< */,
                                        uint16_t          event_mask  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_change_active_pointer_grab
 **
 ** @param xcb_connection_t *c
 ** @param xcb_cursor_t      cursor
 ** @param xcb_timestamp_t   time
 ** @param uint16_t          event_mask
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_change_active_pointer_grab (xcb_connection_t *c  /**< */,
                                xcb_cursor_t      cursor  /**< */,
                                xcb_timestamp_t   time  /**< */,
                                uint16_t          event_mask  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_grab_keyboard_cookie_t xcb_grab_keyboard
 **
 ** @param xcb_connection_t *c
 ** @param uint8_t           owner_events
 ** @param xcb_window_t      grab_window
 ** @param xcb_timestamp_t   time
 ** @param uint8_t           pointer_mode
 ** @param uint8_t           keyboard_mode
 ** @returns xcb_grab_keyboard_cookie_t
 **
 *****************************************************************************/

xcb_grab_keyboard_cookie_t
xcb_grab_keyboard (xcb_connection_t *c  /**< */,
                   uint8_t           owner_events  /**< */,
                   xcb_window_t      grab_window  /**< */,
                   xcb_timestamp_t   time  /**< */,
                   uint8_t           pointer_mode  /**< */,
                   uint8_t           keyboard_mode  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */

/*****************************************************************************
 **
 ** xcb_grab_keyboard_cookie_t xcb_grab_keyboard_unchecked
 **
 ** @param xcb_connection_t *c
 ** @param uint8_t           owner_events
 ** @param xcb_window_t      grab_window
 ** @param xcb_timestamp_t   time
 ** @param uint8_t           pointer_mode
 ** @param uint8_t           keyboard_mode
 ** @returns xcb_grab_keyboard_cookie_t
 **
 *****************************************************************************/

xcb_grab_keyboard_cookie_t
xcb_grab_keyboard_unchecked (xcb_connection_t *c  /**< */,
                             uint8_t           owner_events  /**< */,
                             xcb_window_t      grab_window  /**< */,
                             xcb_timestamp_t   time  /**< */,
                             uint8_t           pointer_mode  /**< */,
                             uint8_t           keyboard_mode  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_grab_keyboard_unchecked(). is used.
 * Otherwise, it stores the error if any.
 */

/*****************************************************************************
 **
 ** xcb_grab_keyboard_reply_t * xcb_grab_keyboard_reply
 **
 ** @param xcb_connection_t            *c
 ** @param xcb_grab_keyboard_cookie_t   cookie
 ** @param xcb_generic_error_t        **e
 ** @returns xcb_grab_keyboard_reply_t *
 **
 *****************************************************************************/

xcb_grab_keyboard_reply_t *
xcb_grab_keyboard_reply (xcb_connection_t            *c  /**< */,
                         xcb_grab_keyboard_cookie_t   cookie  /**< */,
                         xcb_generic_error_t        **e  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_ungrab_keyboard_checked
 **
 ** @param xcb_connection_t *c
 ** @param xcb_timestamp_t   time
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_ungrab_keyboard_checked (xcb_connection_t *c  /**< */,
                             xcb_timestamp_t   time  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_ungrab_keyboard
 **
 ** @param xcb_connection_t *c
 ** @param xcb_timestamp_t   time
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_ungrab_keyboard (xcb_connection_t *c  /**< */,
                     xcb_timestamp_t   time  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_grab_key_checked
 **
 ** @param xcb_connection_t *c
 ** @param uint8_t           owner_events
 ** @param xcb_window_t      grab_window
 ** @param uint16_t          modifiers
 ** @param xcb_keycode_t     key
 ** @param uint8_t           pointer_mode
 ** @param uint8_t           keyboard_mode
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_grab_key_checked (xcb_connection_t *c  /**< */,
                      uint8_t           owner_events  /**< */,
                      xcb_window_t      grab_window  /**< */,
                      uint16_t          modifiers  /**< */,
                      xcb_keycode_t     key  /**< */,
                      uint8_t           pointer_mode  /**< */,
                      uint8_t           keyboard_mode  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_grab_key
 **
 ** @param xcb_connection_t *c
 ** @param uint8_t           owner_events
 ** @param xcb_window_t      grab_window
 ** @param uint16_t          modifiers
 ** @param xcb_keycode_t     key
 ** @param uint8_t           pointer_mode
 ** @param uint8_t           keyboard_mode
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_grab_key (xcb_connection_t *c  /**< */,
              uint8_t           owner_events  /**< */,
              xcb_window_t      grab_window  /**< */,
              uint16_t          modifiers  /**< */,
              xcb_keycode_t     key  /**< */,
              uint8_t           pointer_mode  /**< */,
              uint8_t           keyboard_mode  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_ungrab_key_checked
 **
 ** @param xcb_connection_t *c
 ** @param xcb_keycode_t     key
 ** @param xcb_window_t      grab_window
 ** @param uint16_t          modifiers
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_ungrab_key_checked (xcb_connection_t *c  /**< */,
                        xcb_keycode_t     key  /**< */,
                        xcb_window_t      grab_window  /**< */,
                        uint16_t          modifiers  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_ungrab_key
 **
 ** @param xcb_connection_t *c
 ** @param xcb_keycode_t     key
 ** @param xcb_window_t      grab_window
 ** @param uint16_t          modifiers
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_ungrab_key (xcb_connection_t *c  /**< */,
                xcb_keycode_t     key  /**< */,
                xcb_window_t      grab_window  /**< */,
                uint16_t          modifiers  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_allow_events_checked
 **
 ** @param xcb_connection_t *c
 ** @param uint8_t           mode
 ** @param xcb_timestamp_t   time
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_allow_events_checked (xcb_connection_t *c  /**< */,
                          uint8_t           mode  /**< */,
                          xcb_timestamp_t   time  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_allow_events
 **
 ** @param xcb_connection_t *c
 ** @param uint8_t           mode
 ** @param xcb_timestamp_t   time
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_allow_events (xcb_connection_t *c  /**< */,
                  uint8_t           mode  /**< */,
                  xcb_timestamp_t   time  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_grab_server_checked
 **
 ** @param xcb_connection_t *c
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_grab_server_checked (xcb_connection_t *c  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_grab_server
 **
 ** @param xcb_connection_t *c
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_grab_server (xcb_connection_t *c  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_ungrab_server_checked
 **
 ** @param xcb_connection_t *c
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_ungrab_server_checked (xcb_connection_t *c  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_ungrab_server
 **
 ** @param xcb_connection_t *c
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_ungrab_server (xcb_connection_t *c  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_query_pointer_cookie_t xcb_query_pointer
 **
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @returns xcb_query_pointer_cookie_t
 **
 *****************************************************************************/

xcb_query_pointer_cookie_t
xcb_query_pointer (xcb_connection_t *c  /**< */,
                   xcb_window_t      window  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */

/*****************************************************************************
 **
 ** xcb_query_pointer_cookie_t xcb_query_pointer_unchecked
 **
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @returns xcb_query_pointer_cookie_t
 **
 *****************************************************************************/

xcb_query_pointer_cookie_t
xcb_query_pointer_unchecked (xcb_connection_t *c  /**< */,
                             xcb_window_t      window  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_query_pointer_unchecked(). is used.
 * Otherwise, it stores the error if any.
 */

/*****************************************************************************
 **
 ** xcb_query_pointer_reply_t * xcb_query_pointer_reply
 **
 ** @param xcb_connection_t            *c
 ** @param xcb_query_pointer_cookie_t   cookie
 ** @param xcb_generic_error_t        **e
 ** @returns xcb_query_pointer_reply_t *
 **
 *****************************************************************************/

xcb_query_pointer_reply_t *
xcb_query_pointer_reply (xcb_connection_t            *c  /**< */,
                         xcb_query_pointer_cookie_t   cookie  /**< */,
                         xcb_generic_error_t        **e  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_timecoord_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_timecoord_t)
 */

/*****************************************************************************
 **
 ** void xcb_timecoord_next
 **
 ** @param xcb_timecoord_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/

void
xcb_timecoord_next (xcb_timecoord_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_timecoord_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_timecoord_end
 **
 ** @param xcb_timecoord_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/

xcb_generic_iterator_t
xcb_timecoord_end (xcb_timecoord_iterator_t i  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_get_motion_events_cookie_t xcb_get_motion_events
 **
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @param xcb_timestamp_t   start
 ** @param xcb_timestamp_t   stop
 ** @returns xcb_get_motion_events_cookie_t
 **
 *****************************************************************************/

xcb_get_motion_events_cookie_t
xcb_get_motion_events (xcb_connection_t *c  /**< */,
                       xcb_window_t      window  /**< */,
                       xcb_timestamp_t   start  /**< */,
                       xcb_timestamp_t   stop  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */

/*****************************************************************************
 **
 ** xcb_get_motion_events_cookie_t xcb_get_motion_events_unchecked
 **
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @param xcb_timestamp_t   start
 ** @param xcb_timestamp_t   stop
 ** @returns xcb_get_motion_events_cookie_t
 **
 *****************************************************************************/

xcb_get_motion_events_cookie_t
xcb_get_motion_events_unchecked (xcb_connection_t *c  /**< */,
                                 xcb_window_t      window  /**< */,
                                 xcb_timestamp_t   start  /**< */,
                                 xcb_timestamp_t   stop  /**< */);


/*****************************************************************************
 **
 ** xcb_timecoord_t * xcb_get_motion_events_events
 **
 ** @param const xcb_get_motion_events_reply_t *R
 ** @returns xcb_timecoord_t *
 **
 *****************************************************************************/

xcb_timecoord_t *
xcb_get_motion_events_events (const xcb_get_motion_events_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_get_motion_events_events_length
 **
 ** @param const xcb_get_motion_events_reply_t *R
 ** @returns int
 **
 *****************************************************************************/

int
xcb_get_motion_events_events_length (const xcb_get_motion_events_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_timecoord_iterator_t xcb_get_motion_events_events_iterator
 **
 ** @param const xcb_get_motion_events_reply_t *R
 ** @returns xcb_timecoord_iterator_t
 **
 *****************************************************************************/

xcb_timecoord_iterator_t
xcb_get_motion_events_events_iterator (const xcb_get_motion_events_reply_t *R  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_get_motion_events_unchecked(). is used.
 * Otherwise, it stores the error if any.
 */

/*****************************************************************************
 **
 ** xcb_get_motion_events_reply_t * xcb_get_motion_events_reply
 **
 ** @param xcb_connection_t                *c
 ** @param xcb_get_motion_events_cookie_t   cookie
 ** @param xcb_generic_error_t            **e
 ** @returns xcb_get_motion_events_reply_t *
 **
 *****************************************************************************/

xcb_get_motion_events_reply_t *
xcb_get_motion_events_reply (xcb_connection_t                *c  /**< */,
                             xcb_get_motion_events_cookie_t   cookie  /**< */,
                             xcb_generic_error_t            **e  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_translate_coordinates_cookie_t xcb_translate_coordinates
 **
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      src_window
 ** @param xcb_window_t      dst_window
 ** @param int16_t           src_x
 ** @param int16_t           src_y
 ** @returns xcb_translate_coordinates_cookie_t
 **
 *****************************************************************************/

xcb_translate_coordinates_cookie_t
xcb_translate_coordinates (xcb_connection_t *c  /**< */,
                           xcb_window_t      src_window  /**< */,
                           xcb_window_t      dst_window  /**< */,
                           int16_t           src_x  /**< */,
                           int16_t           src_y  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */

/*****************************************************************************
 **
 ** xcb_translate_coordinates_cookie_t xcb_translate_coordinates_unchecked
 **
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      src_window
 ** @param xcb_window_t      dst_window
 ** @param int16_t           src_x
 ** @param int16_t           src_y
 ** @returns xcb_translate_coordinates_cookie_t
 **
 *****************************************************************************/

xcb_translate_coordinates_cookie_t
xcb_translate_coordinates_unchecked (xcb_connection_t *c  /**< */,
                                     xcb_window_t      src_window  /**< */,
                                     xcb_window_t      dst_window  /**< */,
                                     int16_t           src_x  /**< */,
                                     int16_t           src_y  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_translate_coordinates_unchecked(). is used.
 * Otherwise, it stores the error if any.
 */

/*****************************************************************************
 **
 ** xcb_translate_coordinates_reply_t * xcb_translate_coordinates_reply
 **
 ** @param xcb_connection_t                    *c
 ** @param xcb_translate_coordinates_cookie_t   cookie
 ** @param xcb_generic_error_t                **e
 ** @returns xcb_translate_coordinates_reply_t *
 **
 *****************************************************************************/

xcb_translate_coordinates_reply_t *
xcb_translate_coordinates_reply (xcb_connection_t                    *c  /**< */,
                                 xcb_translate_coordinates_cookie_t   cookie  /**< */,
                                 xcb_generic_error_t                **e  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_warp_pointer_checked
 **
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      src_window
 ** @param xcb_window_t      dst_window
 ** @param int16_t           src_x
 ** @param int16_t           src_y
 ** @param uint16_t          src_width
 ** @param uint16_t          src_height
 ** @param int16_t           dst_x
 ** @param int16_t           dst_y
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_warp_pointer_checked (xcb_connection_t *c  /**< */,
                          xcb_window_t      src_window  /**< */,
                          xcb_window_t      dst_window  /**< */,
                          int16_t           src_x  /**< */,
                          int16_t           src_y  /**< */,
                          uint16_t          src_width  /**< */,
                          uint16_t          src_height  /**< */,
                          int16_t           dst_x  /**< */,
                          int16_t           dst_y  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_warp_pointer
 **
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      src_window
 ** @param xcb_window_t      dst_window
 ** @param int16_t           src_x
 ** @param int16_t           src_y
 ** @param uint16_t          src_width
 ** @param uint16_t          src_height
 ** @param int16_t           dst_x
 ** @param int16_t           dst_y
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_warp_pointer (xcb_connection_t *c  /**< */,
                  xcb_window_t      src_window  /**< */,
                  xcb_window_t      dst_window  /**< */,
                  int16_t           src_x  /**< */,
                  int16_t           src_y  /**< */,
                  uint16_t          src_width  /**< */,
                  uint16_t          src_height  /**< */,
                  int16_t           dst_x  /**< */,
                  int16_t           dst_y  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_set_input_focus_checked
 **
 ** @param xcb_connection_t *c
 ** @param uint8_t           revert_to
 ** @param xcb_window_t      focus
 ** @param xcb_timestamp_t   time
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_set_input_focus_checked (xcb_connection_t *c  /**< */,
                             uint8_t           revert_to  /**< */,
                             xcb_window_t      focus  /**< */,
                             xcb_timestamp_t   time  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_set_input_focus
 **
 ** @param xcb_connection_t *c
 ** @param uint8_t           revert_to
 ** @param xcb_window_t      focus
 ** @param xcb_timestamp_t   time
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_set_input_focus (xcb_connection_t *c  /**< */,
                     uint8_t           revert_to  /**< */,
                     xcb_window_t      focus  /**< */,
                     xcb_timestamp_t   time  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_get_input_focus_cookie_t xcb_get_input_focus
 **
 ** @param xcb_connection_t *c
 ** @returns xcb_get_input_focus_cookie_t
 **
 *****************************************************************************/

xcb_get_input_focus_cookie_t
xcb_get_input_focus (xcb_connection_t *c  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */

/*****************************************************************************
 **
 ** xcb_get_input_focus_cookie_t xcb_get_input_focus_unchecked
 **
 ** @param xcb_connection_t *c
 ** @returns xcb_get_input_focus_cookie_t
 **
 *****************************************************************************/

xcb_get_input_focus_cookie_t
xcb_get_input_focus_unchecked (xcb_connection_t *c  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_get_input_focus_unchecked(). is used.
 * Otherwise, it stores the error if any.
 */

/*****************************************************************************
 **
 ** xcb_get_input_focus_reply_t * xcb_get_input_focus_reply
 **
 ** @param xcb_connection_t              *c
 ** @param xcb_get_input_focus_cookie_t   cookie
 ** @param xcb_generic_error_t          **e
 ** @returns xcb_get_input_focus_reply_t *
 **
 *****************************************************************************/

xcb_get_input_focus_reply_t *
xcb_get_input_focus_reply (xcb_connection_t              *c  /**< */,
                           xcb_get_input_focus_cookie_t   cookie  /**< */,
                           xcb_generic_error_t          **e  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_query_keymap_cookie_t xcb_query_keymap
 **
 ** @param xcb_connection_t *c
 ** @returns xcb_query_keymap_cookie_t
 **
 *****************************************************************************/

xcb_query_keymap_cookie_t
xcb_query_keymap (xcb_connection_t *c  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */

/*****************************************************************************
 **
 ** xcb_query_keymap_cookie_t xcb_query_keymap_unchecked
 **
 ** @param xcb_connection_t *c
 ** @returns xcb_query_keymap_cookie_t
 **
 *****************************************************************************/

xcb_query_keymap_cookie_t
xcb_query_keymap_unchecked (xcb_connection_t *c  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_query_keymap_unchecked(). is used.
 * Otherwise, it stores the error if any.
 */

/*****************************************************************************
 **
 ** xcb_query_keymap_reply_t * xcb_query_keymap_reply
 **
 ** @param xcb_connection_t           *c
 ** @param xcb_query_keymap_cookie_t   cookie
 ** @param xcb_generic_error_t       **e
 ** @returns xcb_query_keymap_reply_t *
 **
 *****************************************************************************/

xcb_query_keymap_reply_t *
xcb_query_keymap_reply (xcb_connection_t           *c  /**< */,
                        xcb_query_keymap_cookie_t   cookie  /**< */,
                        xcb_generic_error_t       **e  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_open_font_checked
 **
 ** @param xcb_connection_t *c
 ** @param xcb_font_t        fid
 ** @param uint16_t          name_len
 ** @param const char       *name
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_open_font_checked (xcb_connection_t *c  /**< */,
                       xcb_font_t        fid  /**< */,
                       uint16_t          name_len  /**< */,
                       const char       *name  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_open_font
 **
 ** @param xcb_connection_t *c
 ** @param xcb_font_t        fid
 ** @param uint16_t          name_len
 ** @param const char       *name
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_open_font (xcb_connection_t *c  /**< */,
               xcb_font_t        fid  /**< */,
               uint16_t          name_len  /**< */,
               const char       *name  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_close_font_checked
 **
 ** @param xcb_connection_t *c
 ** @param xcb_font_t        font
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_close_font_checked (xcb_connection_t *c  /**< */,
                        xcb_font_t        font  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_close_font
 **
 ** @param xcb_connection_t *c
 ** @param xcb_font_t        font
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_close_font (xcb_connection_t *c  /**< */,
                xcb_font_t        font  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_fontprop_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_fontprop_t)
 */

/*****************************************************************************
 **
 ** void xcb_fontprop_next
 **
 ** @param xcb_fontprop_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/

void
xcb_fontprop_next (xcb_fontprop_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_fontprop_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_fontprop_end
 **
 ** @param xcb_fontprop_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/

xcb_generic_iterator_t
xcb_fontprop_end (xcb_fontprop_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_charinfo_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_charinfo_t)
 */

/*****************************************************************************
 **
 ** void xcb_charinfo_next
 **
 ** @param xcb_charinfo_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/

void
xcb_charinfo_next (xcb_charinfo_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_charinfo_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_charinfo_end
 **
 ** @param xcb_charinfo_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/

xcb_generic_iterator_t
xcb_charinfo_end (xcb_charinfo_iterator_t i  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_query_font_cookie_t xcb_query_font
 **
 ** @param xcb_connection_t *c
 ** @param xcb_fontable_t    font
 ** @returns xcb_query_font_cookie_t
 **
 *****************************************************************************/

xcb_query_font_cookie_t
xcb_query_font (xcb_connection_t *c  /**< */,
                xcb_fontable_t    font  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */

/*****************************************************************************
 **
 ** xcb_query_font_cookie_t xcb_query_font_unchecked
 **
 ** @param xcb_connection_t *c
 ** @param xcb_fontable_t    font
 ** @returns xcb_query_font_cookie_t
 **
 *****************************************************************************/

xcb_query_font_cookie_t
xcb_query_font_unchecked (xcb_connection_t *c  /**< */,
                          xcb_fontable_t    font  /**< */);


/*****************************************************************************
 **
 ** xcb_fontprop_t * xcb_query_font_properties
 **
 ** @param const xcb_query_font_reply_t *R
 ** @returns xcb_fontprop_t *
 **
 *****************************************************************************/

xcb_fontprop_t *
xcb_query_font_properties (const xcb_query_font_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_query_font_properties_length
 **
 ** @param const xcb_query_font_reply_t *R
 ** @returns int
 **
 *****************************************************************************/

int
xcb_query_font_properties_length (const xcb_query_font_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_fontprop_iterator_t xcb_query_font_properties_iterator
 **
 ** @param const xcb_query_font_reply_t *R
 ** @returns xcb_fontprop_iterator_t
 **
 *****************************************************************************/

xcb_fontprop_iterator_t
xcb_query_font_properties_iterator (const xcb_query_font_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_charinfo_t * xcb_query_font_char_infos
 **
 ** @param const xcb_query_font_reply_t *R
 ** @returns xcb_charinfo_t *
 **
 *****************************************************************************/

xcb_charinfo_t *
xcb_query_font_char_infos (const xcb_query_font_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_query_font_char_infos_length
 **
 ** @param const xcb_query_font_reply_t *R
 ** @returns int
 **
 *****************************************************************************/

int
xcb_query_font_char_infos_length (const xcb_query_font_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_charinfo_iterator_t xcb_query_font_char_infos_iterator
 **
 ** @param const xcb_query_font_reply_t *R
 ** @returns xcb_charinfo_iterator_t
 **
 *****************************************************************************/

xcb_charinfo_iterator_t
xcb_query_font_char_infos_iterator (const xcb_query_font_reply_t *R  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_query_font_unchecked(). is used.
 * Otherwise, it stores the error if any.
 */

/*****************************************************************************
 **
 ** xcb_query_font_reply_t * xcb_query_font_reply
 **
 ** @param xcb_connection_t         *c
 ** @param xcb_query_font_cookie_t   cookie
 ** @param xcb_generic_error_t     **e
 ** @returns xcb_query_font_reply_t *
 **
 *****************************************************************************/

xcb_query_font_reply_t *
xcb_query_font_reply (xcb_connection_t         *c  /**< */,
                      xcb_query_font_cookie_t   cookie  /**< */,
                      xcb_generic_error_t     **e  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_query_text_extents_cookie_t xcb_query_text_extents
 **
 ** @param xcb_connection_t   *c
 ** @param xcb_fontable_t      font
 ** @param uint32_t            string_len
 ** @param const xcb_char2b_t *string
 ** @returns xcb_query_text_extents_cookie_t
 **
 *****************************************************************************/

xcb_query_text_extents_cookie_t
xcb_query_text_extents (xcb_connection_t   *c  /**< */,
                        xcb_fontable_t      font  /**< */,
                        uint32_t            string_len  /**< */,
                        const xcb_char2b_t *string  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */

/*****************************************************************************
 **
 ** xcb_query_text_extents_cookie_t xcb_query_text_extents_unchecked
 **
 ** @param xcb_connection_t   *c
 ** @param xcb_fontable_t      font
 ** @param uint32_t            string_len
 ** @param const xcb_char2b_t *string
 ** @returns xcb_query_text_extents_cookie_t
 **
 *****************************************************************************/

xcb_query_text_extents_cookie_t
xcb_query_text_extents_unchecked (xcb_connection_t   *c  /**< */,
                                  xcb_fontable_t      font  /**< */,
                                  uint32_t            string_len  /**< */,
                                  const xcb_char2b_t *string  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_query_text_extents_unchecked(). is used.
 * Otherwise, it stores the error if any.
 */

/*****************************************************************************
 **
 ** xcb_query_text_extents_reply_t * xcb_query_text_extents_reply
 **
 ** @param xcb_connection_t                 *c
 ** @param xcb_query_text_extents_cookie_t   cookie
 ** @param xcb_generic_error_t             **e
 ** @returns xcb_query_text_extents_reply_t *
 **
 *****************************************************************************/

xcb_query_text_extents_reply_t *
xcb_query_text_extents_reply (xcb_connection_t                 *c  /**< */,
                              xcb_query_text_extents_cookie_t   cookie  /**< */,
                              xcb_generic_error_t             **e  /**< */);


/*****************************************************************************
 **
 ** char * xcb_str_name
 **
 ** @param const xcb_str_t *R
 ** @returns char *
 **
 *****************************************************************************/

char *
xcb_str_name (const xcb_str_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_str_name_length
 **
 ** @param const xcb_str_t *R
 ** @returns int
 **
 *****************************************************************************/

int
xcb_str_name_length (const xcb_str_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_str_name_end
 **
 ** @param const xcb_str_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/

xcb_generic_iterator_t
xcb_str_name_end (const xcb_str_t *R  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_str_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_str_t)
 */

/*****************************************************************************
 **
 ** void xcb_str_next
 **
 ** @param xcb_str_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/

void
xcb_str_next (xcb_str_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_str_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_str_end
 **
 ** @param xcb_str_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/

xcb_generic_iterator_t
xcb_str_end (xcb_str_iterator_t i  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_list_fonts_cookie_t xcb_list_fonts
 **
 ** @param xcb_connection_t *c
 ** @param uint16_t          max_names
 ** @param uint16_t          pattern_len
 ** @param const char       *pattern
 ** @returns xcb_list_fonts_cookie_t
 **
 *****************************************************************************/

xcb_list_fonts_cookie_t
xcb_list_fonts (xcb_connection_t *c  /**< */,
                uint16_t          max_names  /**< */,
                uint16_t          pattern_len  /**< */,
                const char       *pattern  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */

/*****************************************************************************
 **
 ** xcb_list_fonts_cookie_t xcb_list_fonts_unchecked
 **
 ** @param xcb_connection_t *c
 ** @param uint16_t          max_names
 ** @param uint16_t          pattern_len
 ** @param const char       *pattern
 ** @returns xcb_list_fonts_cookie_t
 **
 *****************************************************************************/

xcb_list_fonts_cookie_t
xcb_list_fonts_unchecked (xcb_connection_t *c  /**< */,
                          uint16_t          max_names  /**< */,
                          uint16_t          pattern_len  /**< */,
                          const char       *pattern  /**< */);


/*****************************************************************************
 **
 ** int xcb_list_fonts_names_length
 **
 ** @param const xcb_list_fonts_reply_t *R
 ** @returns int
 **
 *****************************************************************************/

int
xcb_list_fonts_names_length (const xcb_list_fonts_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_str_iterator_t xcb_list_fonts_names_iterator
 **
 ** @param const xcb_list_fonts_reply_t *R
 ** @returns xcb_str_iterator_t
 **
 *****************************************************************************/

xcb_str_iterator_t
xcb_list_fonts_names_iterator (const xcb_list_fonts_reply_t *R  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_list_fonts_unchecked(). is used.
 * Otherwise, it stores the error if any.
 */

/*****************************************************************************
 **
 ** xcb_list_fonts_reply_t * xcb_list_fonts_reply
 **
 ** @param xcb_connection_t         *c
 ** @param xcb_list_fonts_cookie_t   cookie
 ** @param xcb_generic_error_t     **e
 ** @returns xcb_list_fonts_reply_t *
 **
 *****************************************************************************/

xcb_list_fonts_reply_t *
xcb_list_fonts_reply (xcb_connection_t         *c  /**< */,
                      xcb_list_fonts_cookie_t   cookie  /**< */,
                      xcb_generic_error_t     **e  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_list_fonts_with_info_cookie_t xcb_list_fonts_with_info
 **
 ** @param xcb_connection_t *c
 ** @param uint16_t          max_names
 ** @param uint16_t          pattern_len
 ** @param const char       *pattern
 ** @returns xcb_list_fonts_with_info_cookie_t
 **
 *****************************************************************************/

xcb_list_fonts_with_info_cookie_t
xcb_list_fonts_with_info (xcb_connection_t *c  /**< */,
                          uint16_t          max_names  /**< */,
                          uint16_t          pattern_len  /**< */,
                          const char       *pattern  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */

/*****************************************************************************
 **
 ** xcb_list_fonts_with_info_cookie_t xcb_list_fonts_with_info_unchecked
 **
 ** @param xcb_connection_t *c
 ** @param uint16_t          max_names
 ** @param uint16_t          pattern_len
 ** @param const char       *pattern
 ** @returns xcb_list_fonts_with_info_cookie_t
 **
 *****************************************************************************/

xcb_list_fonts_with_info_cookie_t
xcb_list_fonts_with_info_unchecked (xcb_connection_t *c  /**< */,
                                    uint16_t          max_names  /**< */,
                                    uint16_t          pattern_len  /**< */,
                                    const char       *pattern  /**< */);


/*****************************************************************************
 **
 ** xcb_fontprop_t * xcb_list_fonts_with_info_properties
 **
 ** @param const xcb_list_fonts_with_info_reply_t *R
 ** @returns xcb_fontprop_t *
 **
 *****************************************************************************/

xcb_fontprop_t *
xcb_list_fonts_with_info_properties (const xcb_list_fonts_with_info_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_list_fonts_with_info_properties_length
 **
 ** @param const xcb_list_fonts_with_info_reply_t *R
 ** @returns int
 **
 *****************************************************************************/

int
xcb_list_fonts_with_info_properties_length (const xcb_list_fonts_with_info_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_fontprop_iterator_t xcb_list_fonts_with_info_properties_iterator
 **
 ** @param const xcb_list_fonts_with_info_reply_t *R
 ** @returns xcb_fontprop_iterator_t
 **
 *****************************************************************************/

xcb_fontprop_iterator_t
xcb_list_fonts_with_info_properties_iterator (const xcb_list_fonts_with_info_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** char * xcb_list_fonts_with_info_name
 **
 ** @param const xcb_list_fonts_with_info_reply_t *R
 ** @returns char *
 **
 *****************************************************************************/

char *
xcb_list_fonts_with_info_name (const xcb_list_fonts_with_info_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_list_fonts_with_info_name_length
 **
 ** @param const xcb_list_fonts_with_info_reply_t *R
 ** @returns int
 **
 *****************************************************************************/

int
xcb_list_fonts_with_info_name_length (const xcb_list_fonts_with_info_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_list_fonts_with_info_name_end
 **
 ** @param const xcb_list_fonts_with_info_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/

xcb_generic_iterator_t
xcb_list_fonts_with_info_name_end (const xcb_list_fonts_with_info_reply_t *R  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_list_fonts_with_info_unchecked(). is used.
 * Otherwise, it stores the error if any.
 */

/*****************************************************************************
 **
 ** xcb_list_fonts_with_info_reply_t * xcb_list_fonts_with_info_reply
 **
 ** @param xcb_connection_t                   *c
 ** @param xcb_list_fonts_with_info_cookie_t   cookie
 ** @param xcb_generic_error_t               **e
 ** @returns xcb_list_fonts_with_info_reply_t *
 **
 *****************************************************************************/

xcb_list_fonts_with_info_reply_t *
xcb_list_fonts_with_info_reply (xcb_connection_t                   *c  /**< */,
                                xcb_list_fonts_with_info_cookie_t   cookie  /**< */,
                                xcb_generic_error_t               **e  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_set_font_path_checked
 **
 ** @param xcb_connection_t *c
 ** @param uint16_t          font_qty
 ** @param uint32_t          path_len
 ** @param const char       *path
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_set_font_path_checked (xcb_connection_t *c  /**< */,
                           uint16_t          font_qty  /**< */,
                           uint32_t          path_len  /**< */,
                           const char       *path  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_set_font_path
 **
 ** @param xcb_connection_t *c
 ** @param uint16_t          font_qty
 ** @param uint32_t          path_len
 ** @param const char       *path
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_set_font_path (xcb_connection_t *c  /**< */,
                   uint16_t          font_qty  /**< */,
                   uint32_t          path_len  /**< */,
                   const char       *path  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_get_font_path_cookie_t xcb_get_font_path
 **
 ** @param xcb_connection_t *c
 ** @returns xcb_get_font_path_cookie_t
 **
 *****************************************************************************/

xcb_get_font_path_cookie_t
xcb_get_font_path (xcb_connection_t *c  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */

/*****************************************************************************
 **
 ** xcb_get_font_path_cookie_t xcb_get_font_path_unchecked
 **
 ** @param xcb_connection_t *c
 ** @returns xcb_get_font_path_cookie_t
 **
 *****************************************************************************/

xcb_get_font_path_cookie_t
xcb_get_font_path_unchecked (xcb_connection_t *c  /**< */);


/*****************************************************************************
 **
 ** int xcb_get_font_path_path_length
 **
 ** @param const xcb_get_font_path_reply_t *R
 ** @returns int
 **
 *****************************************************************************/

int
xcb_get_font_path_path_length (const xcb_get_font_path_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_str_iterator_t xcb_get_font_path_path_iterator
 **
 ** @param const xcb_get_font_path_reply_t *R
 ** @returns xcb_str_iterator_t
 **
 *****************************************************************************/

xcb_str_iterator_t
xcb_get_font_path_path_iterator (const xcb_get_font_path_reply_t *R  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_get_font_path_unchecked(). is used.
 * Otherwise, it stores the error if any.
 */

/*****************************************************************************
 **
 ** xcb_get_font_path_reply_t * xcb_get_font_path_reply
 **
 ** @param xcb_connection_t            *c
 ** @param xcb_get_font_path_cookie_t   cookie
 ** @param xcb_generic_error_t        **e
 ** @returns xcb_get_font_path_reply_t *
 **
 *****************************************************************************/

xcb_get_font_path_reply_t *
xcb_get_font_path_reply (xcb_connection_t            *c  /**< */,
                         xcb_get_font_path_cookie_t   cookie  /**< */,
                         xcb_generic_error_t        **e  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_create_pixmap_checked
 **
 ** @param xcb_connection_t *c
 ** @param uint8_t           depth
 ** @param xcb_pixmap_t      pid
 ** @param xcb_drawable_t    drawable
 ** @param uint16_t          width
 ** @param uint16_t          height
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_create_pixmap_checked (xcb_connection_t *c  /**< */,
                           uint8_t           depth  /**< */,
                           xcb_pixmap_t      pid  /**< */,
                           xcb_drawable_t    drawable  /**< */,
                           uint16_t          width  /**< */,
                           uint16_t          height  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_create_pixmap
 **
 ** @param xcb_connection_t *c
 ** @param uint8_t           depth
 ** @param xcb_pixmap_t      pid
 ** @param xcb_drawable_t    drawable
 ** @param uint16_t          width
 ** @param uint16_t          height
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_create_pixmap (xcb_connection_t *c  /**< */,
                   uint8_t           depth  /**< */,
                   xcb_pixmap_t      pid  /**< */,
                   xcb_drawable_t    drawable  /**< */,
                   uint16_t          width  /**< */,
                   uint16_t          height  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_free_pixmap_checked
 **
 ** @param xcb_connection_t *c
 ** @param xcb_pixmap_t      pixmap
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_free_pixmap_checked (xcb_connection_t *c  /**< */,
                         xcb_pixmap_t      pixmap  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_free_pixmap
 **
 ** @param xcb_connection_t *c
 ** @param xcb_pixmap_t      pixmap
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_free_pixmap (xcb_connection_t *c  /**< */,
                 xcb_pixmap_t      pixmap  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_create_gc_checked
 **
 ** @param xcb_connection_t *c
 ** @param xcb_gcontext_t    cid
 ** @param xcb_drawable_t    drawable
 ** @param uint32_t          value_mask
 ** @param const uint32_t   *value_list
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_create_gc_checked (xcb_connection_t *c  /**< */,
                       xcb_gcontext_t    cid  /**< */,
                       xcb_drawable_t    drawable  /**< */,
                       uint32_t          value_mask  /**< */,
                       const uint32_t   *value_list  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_create_gc
 **
 ** @param xcb_connection_t *c
 ** @param xcb_gcontext_t    cid
 ** @param xcb_drawable_t    drawable
 ** @param uint32_t          value_mask
 ** @param const uint32_t   *value_list
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_create_gc (xcb_connection_t *c  /**< */,
               xcb_gcontext_t    cid  /**< */,
               xcb_drawable_t    drawable  /**< */,
               uint32_t          value_mask  /**< */,
               const uint32_t   *value_list  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_change_gc_checked
 **
 ** @param xcb_connection_t *c
 ** @param xcb_gcontext_t    gc
 ** @param uint32_t          value_mask
 ** @param const uint32_t   *value_list
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_change_gc_checked (xcb_connection_t *c  /**< */,
                       xcb_gcontext_t    gc  /**< */,
                       uint32_t          value_mask  /**< */,
                       const uint32_t   *value_list  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_change_gc
 **
 ** @param xcb_connection_t *c
 ** @param xcb_gcontext_t    gc
 ** @param uint32_t          value_mask
 ** @param const uint32_t   *value_list
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_change_gc (xcb_connection_t *c  /**< */,
               xcb_gcontext_t    gc  /**< */,
               uint32_t          value_mask  /**< */,
               const uint32_t   *value_list  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_copy_gc_checked
 **
 ** @param xcb_connection_t *c
 ** @param xcb_gcontext_t    src_gc
 ** @param xcb_gcontext_t    dst_gc
 ** @param uint32_t          value_mask
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_copy_gc_checked (xcb_connection_t *c  /**< */,
                     xcb_gcontext_t    src_gc  /**< */,
                     xcb_gcontext_t    dst_gc  /**< */,
                     uint32_t          value_mask  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_copy_gc
 **
 ** @param xcb_connection_t *c
 ** @param xcb_gcontext_t    src_gc
 ** @param xcb_gcontext_t    dst_gc
 ** @param uint32_t          value_mask
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_copy_gc (xcb_connection_t *c  /**< */,
             xcb_gcontext_t    src_gc  /**< */,
             xcb_gcontext_t    dst_gc  /**< */,
             uint32_t          value_mask  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_set_dashes_checked
 **
 ** @param xcb_connection_t *c
 ** @param xcb_gcontext_t    gc
 ** @param uint16_t          dash_offset
 ** @param uint16_t          dashes_len
 ** @param const uint8_t    *dashes
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_set_dashes_checked (xcb_connection_t *c  /**< */,
                        xcb_gcontext_t    gc  /**< */,
                        uint16_t          dash_offset  /**< */,
                        uint16_t          dashes_len  /**< */,
                        const uint8_t    *dashes  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_set_dashes
 **
 ** @param xcb_connection_t *c
 ** @param xcb_gcontext_t    gc
 ** @param uint16_t          dash_offset
 ** @param uint16_t          dashes_len
 ** @param const uint8_t    *dashes
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_set_dashes (xcb_connection_t *c  /**< */,
                xcb_gcontext_t    gc  /**< */,
                uint16_t          dash_offset  /**< */,
                uint16_t          dashes_len  /**< */,
                const uint8_t    *dashes  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_set_clip_rectangles_checked
 **
 ** @param xcb_connection_t      *c
 ** @param uint8_t                ordering
 ** @param xcb_gcontext_t         gc
 ** @param int16_t                clip_x_origin
 ** @param int16_t                clip_y_origin
 ** @param uint32_t               rectangles_len
 ** @param const xcb_rectangle_t *rectangles
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_set_clip_rectangles_checked (xcb_connection_t      *c  /**< */,
                                 uint8_t                ordering  /**< */,
                                 xcb_gcontext_t         gc  /**< */,
                                 int16_t                clip_x_origin  /**< */,
                                 int16_t                clip_y_origin  /**< */,
                                 uint32_t               rectangles_len  /**< */,
                                 const xcb_rectangle_t *rectangles  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_set_clip_rectangles
 **
 ** @param xcb_connection_t      *c
 ** @param uint8_t                ordering
 ** @param xcb_gcontext_t         gc
 ** @param int16_t                clip_x_origin
 ** @param int16_t                clip_y_origin
 ** @param uint32_t               rectangles_len
 ** @param const xcb_rectangle_t *rectangles
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_set_clip_rectangles (xcb_connection_t      *c  /**< */,
                         uint8_t                ordering  /**< */,
                         xcb_gcontext_t         gc  /**< */,
                         int16_t                clip_x_origin  /**< */,
                         int16_t                clip_y_origin  /**< */,
                         uint32_t               rectangles_len  /**< */,
                         const xcb_rectangle_t *rectangles  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_free_gc_checked
 **
 ** @param xcb_connection_t *c
 ** @param xcb_gcontext_t    gc
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_free_gc_checked (xcb_connection_t *c  /**< */,
                     xcb_gcontext_t    gc  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_free_gc
 **
 ** @param xcb_connection_t *c
 ** @param xcb_gcontext_t    gc
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_free_gc (xcb_connection_t *c  /**< */,
             xcb_gcontext_t    gc  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_clear_area_checked
 **
 ** @param xcb_connection_t *c
 ** @param uint8_t           exposures
 ** @param xcb_window_t      window
 ** @param int16_t           x
 ** @param int16_t           y
 ** @param uint16_t          width
 ** @param uint16_t          height
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_clear_area_checked (xcb_connection_t *c  /**< */,
                        uint8_t           exposures  /**< */,
                        xcb_window_t      window  /**< */,
                        int16_t           x  /**< */,
                        int16_t           y  /**< */,
                        uint16_t          width  /**< */,
                        uint16_t          height  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_clear_area
 **
 ** @param xcb_connection_t *c
 ** @param uint8_t           exposures
 ** @param xcb_window_t      window
 ** @param int16_t           x
 ** @param int16_t           y
 ** @param uint16_t          width
 ** @param uint16_t          height
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_clear_area (xcb_connection_t *c  /**< */,
                uint8_t           exposures  /**< */,
                xcb_window_t      window  /**< */,
                int16_t           x  /**< */,
                int16_t           y  /**< */,
                uint16_t          width  /**< */,
                uint16_t          height  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_copy_area_checked
 **
 ** @param xcb_connection_t *c
 ** @param xcb_drawable_t    src_drawable
 ** @param xcb_drawable_t    dst_drawable
 ** @param xcb_gcontext_t    gc
 ** @param int16_t           src_x
 ** @param int16_t           src_y
 ** @param int16_t           dst_x
 ** @param int16_t           dst_y
 ** @param uint16_t          width
 ** @param uint16_t          height
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_copy_area_checked (xcb_connection_t *c  /**< */,
                       xcb_drawable_t    src_drawable  /**< */,
                       xcb_drawable_t    dst_drawable  /**< */,
                       xcb_gcontext_t    gc  /**< */,
                       int16_t           src_x  /**< */,
                       int16_t           src_y  /**< */,
                       int16_t           dst_x  /**< */,
                       int16_t           dst_y  /**< */,
                       uint16_t          width  /**< */,
                       uint16_t          height  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_copy_area
 **
 ** @param xcb_connection_t *c
 ** @param xcb_drawable_t    src_drawable
 ** @param xcb_drawable_t    dst_drawable
 ** @param xcb_gcontext_t    gc
 ** @param int16_t           src_x
 ** @param int16_t           src_y
 ** @param int16_t           dst_x
 ** @param int16_t           dst_y
 ** @param uint16_t          width
 ** @param uint16_t          height
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_copy_area (xcb_connection_t *c  /**< */,
               xcb_drawable_t    src_drawable  /**< */,
               xcb_drawable_t    dst_drawable  /**< */,
               xcb_gcontext_t    gc  /**< */,
               int16_t           src_x  /**< */,
               int16_t           src_y  /**< */,
               int16_t           dst_x  /**< */,
               int16_t           dst_y  /**< */,
               uint16_t          width  /**< */,
               uint16_t          height  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_copy_plane_checked
 **
 ** @param xcb_connection_t *c
 ** @param xcb_drawable_t    src_drawable
 ** @param xcb_drawable_t    dst_drawable
 ** @param xcb_gcontext_t    gc
 ** @param int16_t           src_x
 ** @param int16_t           src_y
 ** @param int16_t           dst_x
 ** @param int16_t           dst_y
 ** @param uint16_t          width
 ** @param uint16_t          height
 ** @param uint32_t          bit_plane
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_copy_plane_checked (xcb_connection_t *c  /**< */,
                        xcb_drawable_t    src_drawable  /**< */,
                        xcb_drawable_t    dst_drawable  /**< */,
                        xcb_gcontext_t    gc  /**< */,
                        int16_t           src_x  /**< */,
                        int16_t           src_y  /**< */,
                        int16_t           dst_x  /**< */,
                        int16_t           dst_y  /**< */,
                        uint16_t          width  /**< */,
                        uint16_t          height  /**< */,
                        uint32_t          bit_plane  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_copy_plane
 **
 ** @param xcb_connection_t *c
 ** @param xcb_drawable_t    src_drawable
 ** @param xcb_drawable_t    dst_drawable
 ** @param xcb_gcontext_t    gc
 ** @param int16_t           src_x
 ** @param int16_t           src_y
 ** @param int16_t           dst_x
 ** @param int16_t           dst_y
 ** @param uint16_t          width
 ** @param uint16_t          height
 ** @param uint32_t          bit_plane
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_copy_plane (xcb_connection_t *c  /**< */,
                xcb_drawable_t    src_drawable  /**< */,
                xcb_drawable_t    dst_drawable  /**< */,
                xcb_gcontext_t    gc  /**< */,
                int16_t           src_x  /**< */,
                int16_t           src_y  /**< */,
                int16_t           dst_x  /**< */,
                int16_t           dst_y  /**< */,
                uint16_t          width  /**< */,
                uint16_t          height  /**< */,
                uint32_t          bit_plane  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_poly_point_checked
 **
 ** @param xcb_connection_t  *c
 ** @param uint8_t            coordinate_mode
 ** @param xcb_drawable_t     drawable
 ** @param xcb_gcontext_t     gc
 ** @param uint32_t           points_len
 ** @param const xcb_point_t *points
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_poly_point_checked (xcb_connection_t  *c  /**< */,
                        uint8_t            coordinate_mode  /**< */,
                        xcb_drawable_t     drawable  /**< */,
                        xcb_gcontext_t     gc  /**< */,
                        uint32_t           points_len  /**< */,
                        const xcb_point_t *points  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_poly_point
 **
 ** @param xcb_connection_t  *c
 ** @param uint8_t            coordinate_mode
 ** @param xcb_drawable_t     drawable
 ** @param xcb_gcontext_t     gc
 ** @param uint32_t           points_len
 ** @param const xcb_point_t *points
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_poly_point (xcb_connection_t  *c  /**< */,
                uint8_t            coordinate_mode  /**< */,
                xcb_drawable_t     drawable  /**< */,
                xcb_gcontext_t     gc  /**< */,
                uint32_t           points_len  /**< */,
                const xcb_point_t *points  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_poly_line_checked
 **
 ** @param xcb_connection_t  *c
 ** @param uint8_t            coordinate_mode
 ** @param xcb_drawable_t     drawable
 ** @param xcb_gcontext_t     gc
 ** @param uint32_t           points_len
 ** @param const xcb_point_t *points
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_poly_line_checked (xcb_connection_t  *c  /**< */,
                       uint8_t            coordinate_mode  /**< */,
                       xcb_drawable_t     drawable  /**< */,
                       xcb_gcontext_t     gc  /**< */,
                       uint32_t           points_len  /**< */,
                       const xcb_point_t *points  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_poly_line
 **
 ** @param xcb_connection_t  *c
 ** @param uint8_t            coordinate_mode
 ** @param xcb_drawable_t     drawable
 ** @param xcb_gcontext_t     gc
 ** @param uint32_t           points_len
 ** @param const xcb_point_t *points
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_poly_line (xcb_connection_t  *c  /**< */,
               uint8_t            coordinate_mode  /**< */,
               xcb_drawable_t     drawable  /**< */,
               xcb_gcontext_t     gc  /**< */,
               uint32_t           points_len  /**< */,
               const xcb_point_t *points  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_segment_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_segment_t)
 */

/*****************************************************************************
 **
 ** void xcb_segment_next
 **
 ** @param xcb_segment_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/

void
xcb_segment_next (xcb_segment_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_segment_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_segment_end
 **
 ** @param xcb_segment_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/

xcb_generic_iterator_t
xcb_segment_end (xcb_segment_iterator_t i  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_poly_segment_checked
 **
 ** @param xcb_connection_t    *c
 ** @param xcb_drawable_t       drawable
 ** @param xcb_gcontext_t       gc
 ** @param uint32_t             segments_len
 ** @param const xcb_segment_t *segments
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_poly_segment_checked (xcb_connection_t    *c  /**< */,
                          xcb_drawable_t       drawable  /**< */,
                          xcb_gcontext_t       gc  /**< */,
                          uint32_t             segments_len  /**< */,
                          const xcb_segment_t *segments  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_poly_segment
 **
 ** @param xcb_connection_t    *c
 ** @param xcb_drawable_t       drawable
 ** @param xcb_gcontext_t       gc
 ** @param uint32_t             segments_len
 ** @param const xcb_segment_t *segments
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_poly_segment (xcb_connection_t    *c  /**< */,
                  xcb_drawable_t       drawable  /**< */,
                  xcb_gcontext_t       gc  /**< */,
                  uint32_t             segments_len  /**< */,
                  const xcb_segment_t *segments  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_poly_rectangle_checked
 **
 ** @param xcb_connection_t      *c
 ** @param xcb_drawable_t         drawable
 ** @param xcb_gcontext_t         gc
 ** @param uint32_t               rectangles_len
 ** @param const xcb_rectangle_t *rectangles
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_poly_rectangle_checked (xcb_connection_t      *c  /**< */,
                            xcb_drawable_t         drawable  /**< */,
                            xcb_gcontext_t         gc  /**< */,
                            uint32_t               rectangles_len  /**< */,
                            const xcb_rectangle_t *rectangles  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_poly_rectangle
 **
 ** @param xcb_connection_t      *c
 ** @param xcb_drawable_t         drawable
 ** @param xcb_gcontext_t         gc
 ** @param uint32_t               rectangles_len
 ** @param const xcb_rectangle_t *rectangles
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_poly_rectangle (xcb_connection_t      *c  /**< */,
                    xcb_drawable_t         drawable  /**< */,
                    xcb_gcontext_t         gc  /**< */,
                    uint32_t               rectangles_len  /**< */,
                    const xcb_rectangle_t *rectangles  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_poly_arc_checked
 **
 ** @param xcb_connection_t *c
 ** @param xcb_drawable_t    drawable
 ** @param xcb_gcontext_t    gc
 ** @param uint32_t          arcs_len
 ** @param const xcb_arc_t  *arcs
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_poly_arc_checked (xcb_connection_t *c  /**< */,
                      xcb_drawable_t    drawable  /**< */,
                      xcb_gcontext_t    gc  /**< */,
                      uint32_t          arcs_len  /**< */,
                      const xcb_arc_t  *arcs  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_poly_arc
 **
 ** @param xcb_connection_t *c
 ** @param xcb_drawable_t    drawable
 ** @param xcb_gcontext_t    gc
 ** @param uint32_t          arcs_len
 ** @param const xcb_arc_t  *arcs
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_poly_arc (xcb_connection_t *c  /**< */,
              xcb_drawable_t    drawable  /**< */,
              xcb_gcontext_t    gc  /**< */,
              uint32_t          arcs_len  /**< */,
              const xcb_arc_t  *arcs  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_fill_poly_checked
 **
 ** @param xcb_connection_t  *c
 ** @param xcb_drawable_t     drawable
 ** @param xcb_gcontext_t     gc
 ** @param uint8_t            shape
 ** @param uint8_t            coordinate_mode
 ** @param uint32_t           points_len
 ** @param const xcb_point_t *points
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_fill_poly_checked (xcb_connection_t  *c  /**< */,
                       xcb_drawable_t     drawable  /**< */,
                       xcb_gcontext_t     gc  /**< */,
                       uint8_t            shape  /**< */,
                       uint8_t            coordinate_mode  /**< */,
                       uint32_t           points_len  /**< */,
                       const xcb_point_t *points  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_fill_poly
 **
 ** @param xcb_connection_t  *c
 ** @param xcb_drawable_t     drawable
 ** @param xcb_gcontext_t     gc
 ** @param uint8_t            shape
 ** @param uint8_t            coordinate_mode
 ** @param uint32_t           points_len
 ** @param const xcb_point_t *points
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_fill_poly (xcb_connection_t  *c  /**< */,
               xcb_drawable_t     drawable  /**< */,
               xcb_gcontext_t     gc  /**< */,
               uint8_t            shape  /**< */,
               uint8_t            coordinate_mode  /**< */,
               uint32_t           points_len  /**< */,
               const xcb_point_t *points  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_poly_fill_rectangle_checked
 **
 ** @param xcb_connection_t      *c
 ** @param xcb_drawable_t         drawable
 ** @param xcb_gcontext_t         gc
 ** @param uint32_t               rectangles_len
 ** @param const xcb_rectangle_t *rectangles
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_poly_fill_rectangle_checked (xcb_connection_t      *c  /**< */,
                                 xcb_drawable_t         drawable  /**< */,
                                 xcb_gcontext_t         gc  /**< */,
                                 uint32_t               rectangles_len  /**< */,
                                 const xcb_rectangle_t *rectangles  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_poly_fill_rectangle
 **
 ** @param xcb_connection_t      *c
 ** @param xcb_drawable_t         drawable
 ** @param xcb_gcontext_t         gc
 ** @param uint32_t               rectangles_len
 ** @param const xcb_rectangle_t *rectangles
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_poly_fill_rectangle (xcb_connection_t      *c  /**< */,
                         xcb_drawable_t         drawable  /**< */,
                         xcb_gcontext_t         gc  /**< */,
                         uint32_t               rectangles_len  /**< */,
                         const xcb_rectangle_t *rectangles  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_poly_fill_arc_checked
 **
 ** @param xcb_connection_t *c
 ** @param xcb_drawable_t    drawable
 ** @param xcb_gcontext_t    gc
 ** @param uint32_t          arcs_len
 ** @param const xcb_arc_t  *arcs
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_poly_fill_arc_checked (xcb_connection_t *c  /**< */,
                           xcb_drawable_t    drawable  /**< */,
                           xcb_gcontext_t    gc  /**< */,
                           uint32_t          arcs_len  /**< */,
                           const xcb_arc_t  *arcs  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_poly_fill_arc
 **
 ** @param xcb_connection_t *c
 ** @param xcb_drawable_t    drawable
 ** @param xcb_gcontext_t    gc
 ** @param uint32_t          arcs_len
 ** @param const xcb_arc_t  *arcs
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_poly_fill_arc (xcb_connection_t *c  /**< */,
                   xcb_drawable_t    drawable  /**< */,
                   xcb_gcontext_t    gc  /**< */,
                   uint32_t          arcs_len  /**< */,
                   const xcb_arc_t  *arcs  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_put_image_checked
 **
 ** @param xcb_connection_t *c
 ** @param uint8_t           format
 ** @param xcb_drawable_t    drawable
 ** @param xcb_gcontext_t    gc
 ** @param uint16_t          width
 ** @param uint16_t          height
 ** @param int16_t           dst_x
 ** @param int16_t           dst_y
 ** @param uint8_t           left_pad
 ** @param uint8_t           depth
 ** @param uint32_t          data_len
 ** @param const uint8_t    *data
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_put_image_checked (xcb_connection_t *c  /**< */,
                       uint8_t           format  /**< */,
                       xcb_drawable_t    drawable  /**< */,
                       xcb_gcontext_t    gc  /**< */,
                       uint16_t          width  /**< */,
                       uint16_t          height  /**< */,
                       int16_t           dst_x  /**< */,
                       int16_t           dst_y  /**< */,
                       uint8_t           left_pad  /**< */,
                       uint8_t           depth  /**< */,
                       uint32_t          data_len  /**< */,
                       const uint8_t    *data  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_put_image
 **
 ** @param xcb_connection_t *c
 ** @param uint8_t           format
 ** @param xcb_drawable_t    drawable
 ** @param xcb_gcontext_t    gc
 ** @param uint16_t          width
 ** @param uint16_t          height
 ** @param int16_t           dst_x
 ** @param int16_t           dst_y
 ** @param uint8_t           left_pad
 ** @param uint8_t           depth
 ** @param uint32_t          data_len
 ** @param const uint8_t    *data
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_put_image (xcb_connection_t *c  /**< */,
               uint8_t           format  /**< */,
               xcb_drawable_t    drawable  /**< */,
               xcb_gcontext_t    gc  /**< */,
               uint16_t          width  /**< */,
               uint16_t          height  /**< */,
               int16_t           dst_x  /**< */,
               int16_t           dst_y  /**< */,
               uint8_t           left_pad  /**< */,
               uint8_t           depth  /**< */,
               uint32_t          data_len  /**< */,
               const uint8_t    *data  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_get_image_cookie_t xcb_get_image
 **
 ** @param xcb_connection_t *c
 ** @param uint8_t           format
 ** @param xcb_drawable_t    drawable
 ** @param int16_t           x
 ** @param int16_t           y
 ** @param uint16_t          width
 ** @param uint16_t          height
 ** @param uint32_t          plane_mask
 ** @returns xcb_get_image_cookie_t
 **
 *****************************************************************************/

xcb_get_image_cookie_t
xcb_get_image (xcb_connection_t *c  /**< */,
               uint8_t           format  /**< */,
               xcb_drawable_t    drawable  /**< */,
               int16_t           x  /**< */,
               int16_t           y  /**< */,
               uint16_t          width  /**< */,
               uint16_t          height  /**< */,
               uint32_t          plane_mask  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */

/*****************************************************************************
 **
 ** xcb_get_image_cookie_t xcb_get_image_unchecked
 **
 ** @param xcb_connection_t *c
 ** @param uint8_t           format
 ** @param xcb_drawable_t    drawable
 ** @param int16_t           x
 ** @param int16_t           y
 ** @param uint16_t          width
 ** @param uint16_t          height
 ** @param uint32_t          plane_mask
 ** @returns xcb_get_image_cookie_t
 **
 *****************************************************************************/

xcb_get_image_cookie_t
xcb_get_image_unchecked (xcb_connection_t *c  /**< */,
                         uint8_t           format  /**< */,
                         xcb_drawable_t    drawable  /**< */,
                         int16_t           x  /**< */,
                         int16_t           y  /**< */,
                         uint16_t          width  /**< */,
                         uint16_t          height  /**< */,
                         uint32_t          plane_mask  /**< */);


/*****************************************************************************
 **
 ** uint8_t * xcb_get_image_data
 **
 ** @param const xcb_get_image_reply_t *R
 ** @returns uint8_t *
 **
 *****************************************************************************/

uint8_t *
xcb_get_image_data (const xcb_get_image_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_get_image_data_length
 **
 ** @param const xcb_get_image_reply_t *R
 ** @returns int
 **
 *****************************************************************************/

int
xcb_get_image_data_length (const xcb_get_image_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_get_image_data_end
 **
 ** @param const xcb_get_image_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/

xcb_generic_iterator_t
xcb_get_image_data_end (const xcb_get_image_reply_t *R  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_get_image_unchecked(). is used.
 * Otherwise, it stores the error if any.
 */

/*****************************************************************************
 **
 ** xcb_get_image_reply_t * xcb_get_image_reply
 **
 ** @param xcb_connection_t        *c
 ** @param xcb_get_image_cookie_t   cookie
 ** @param xcb_generic_error_t    **e
 ** @returns xcb_get_image_reply_t *
 **
 *****************************************************************************/

xcb_get_image_reply_t *
xcb_get_image_reply (xcb_connection_t        *c  /**< */,
                     xcb_get_image_cookie_t   cookie  /**< */,
                     xcb_generic_error_t    **e  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_poly_text_8_checked
 **
 ** @param xcb_connection_t *c
 ** @param xcb_drawable_t    drawable
 ** @param xcb_gcontext_t    gc
 ** @param int16_t           x
 ** @param int16_t           y
 ** @param uint32_t          items_len
 ** @param const uint8_t    *items
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_poly_text_8_checked (xcb_connection_t *c  /**< */,
                         xcb_drawable_t    drawable  /**< */,
                         xcb_gcontext_t    gc  /**< */,
                         int16_t           x  /**< */,
                         int16_t           y  /**< */,
                         uint32_t          items_len  /**< */,
                         const uint8_t    *items  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_poly_text_8
 **
 ** @param xcb_connection_t *c
 ** @param xcb_drawable_t    drawable
 ** @param xcb_gcontext_t    gc
 ** @param int16_t           x
 ** @param int16_t           y
 ** @param uint32_t          items_len
 ** @param const uint8_t    *items
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_poly_text_8 (xcb_connection_t *c  /**< */,
                 xcb_drawable_t    drawable  /**< */,
                 xcb_gcontext_t    gc  /**< */,
                 int16_t           x  /**< */,
                 int16_t           y  /**< */,
                 uint32_t          items_len  /**< */,
                 const uint8_t    *items  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_poly_text_16_checked
 **
 ** @param xcb_connection_t *c
 ** @param xcb_drawable_t    drawable
 ** @param xcb_gcontext_t    gc
 ** @param int16_t           x
 ** @param int16_t           y
 ** @param uint32_t          items_len
 ** @param const uint8_t    *items
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_poly_text_16_checked (xcb_connection_t *c  /**< */,
                          xcb_drawable_t    drawable  /**< */,
                          xcb_gcontext_t    gc  /**< */,
                          int16_t           x  /**< */,
                          int16_t           y  /**< */,
                          uint32_t          items_len  /**< */,
                          const uint8_t    *items  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_poly_text_16
 **
 ** @param xcb_connection_t *c
 ** @param xcb_drawable_t    drawable
 ** @param xcb_gcontext_t    gc
 ** @param int16_t           x
 ** @param int16_t           y
 ** @param uint32_t          items_len
 ** @param const uint8_t    *items
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_poly_text_16 (xcb_connection_t *c  /**< */,
                  xcb_drawable_t    drawable  /**< */,
                  xcb_gcontext_t    gc  /**< */,
                  int16_t           x  /**< */,
                  int16_t           y  /**< */,
                  uint32_t          items_len  /**< */,
                  const uint8_t    *items  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_image_text_8_checked
 **
 ** @param xcb_connection_t *c
 ** @param uint8_t           string_len
 ** @param xcb_drawable_t    drawable
 ** @param xcb_gcontext_t    gc
 ** @param int16_t           x
 ** @param int16_t           y
 ** @param const char       *string
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_image_text_8_checked (xcb_connection_t *c  /**< */,
                          uint8_t           string_len  /**< */,
                          xcb_drawable_t    drawable  /**< */,
                          xcb_gcontext_t    gc  /**< */,
                          int16_t           x  /**< */,
                          int16_t           y  /**< */,
                          const char       *string  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_image_text_8
 **
 ** @param xcb_connection_t *c
 ** @param uint8_t           string_len
 ** @param xcb_drawable_t    drawable
 ** @param xcb_gcontext_t    gc
 ** @param int16_t           x
 ** @param int16_t           y
 ** @param const char       *string
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_image_text_8 (xcb_connection_t *c  /**< */,
                  uint8_t           string_len  /**< */,
                  xcb_drawable_t    drawable  /**< */,
                  xcb_gcontext_t    gc  /**< */,
                  int16_t           x  /**< */,
                  int16_t           y  /**< */,
                  const char       *string  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_image_text_16_checked
 **
 ** @param xcb_connection_t   *c
 ** @param uint8_t             string_len
 ** @param xcb_drawable_t      drawable
 ** @param xcb_gcontext_t      gc
 ** @param int16_t             x
 ** @param int16_t             y
 ** @param const xcb_char2b_t *string
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_image_text_16_checked (xcb_connection_t   *c  /**< */,
                           uint8_t             string_len  /**< */,
                           xcb_drawable_t      drawable  /**< */,
                           xcb_gcontext_t      gc  /**< */,
                           int16_t             x  /**< */,
                           int16_t             y  /**< */,
                           const xcb_char2b_t *string  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_image_text_16
 **
 ** @param xcb_connection_t   *c
 ** @param uint8_t             string_len
 ** @param xcb_drawable_t      drawable
 ** @param xcb_gcontext_t      gc
 ** @param int16_t             x
 ** @param int16_t             y
 ** @param const xcb_char2b_t *string
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_image_text_16 (xcb_connection_t   *c  /**< */,
                   uint8_t             string_len  /**< */,
                   xcb_drawable_t      drawable  /**< */,
                   xcb_gcontext_t      gc  /**< */,
                   int16_t             x  /**< */,
                   int16_t             y  /**< */,
                   const xcb_char2b_t *string  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_create_colormap_checked
 **
 ** @param xcb_connection_t *c
 ** @param uint8_t           alloc
 ** @param xcb_colormap_t    mid
 ** @param xcb_window_t      window
 ** @param xcb_visualid_t    visual
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_create_colormap_checked (xcb_connection_t *c  /**< */,
                             uint8_t           alloc  /**< */,
                             xcb_colormap_t    mid  /**< */,
                             xcb_window_t      window  /**< */,
                             xcb_visualid_t    visual  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_create_colormap
 **
 ** @param xcb_connection_t *c
 ** @param uint8_t           alloc
 ** @param xcb_colormap_t    mid
 ** @param xcb_window_t      window
 ** @param xcb_visualid_t    visual
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_create_colormap (xcb_connection_t *c  /**< */,
                     uint8_t           alloc  /**< */,
                     xcb_colormap_t    mid  /**< */,
                     xcb_window_t      window  /**< */,
                     xcb_visualid_t    visual  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_free_colormap_checked
 **
 ** @param xcb_connection_t *c
 ** @param xcb_colormap_t    cmap
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_free_colormap_checked (xcb_connection_t *c  /**< */,
                           xcb_colormap_t    cmap  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_free_colormap
 **
 ** @param xcb_connection_t *c
 ** @param xcb_colormap_t    cmap
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_free_colormap (xcb_connection_t *c  /**< */,
                   xcb_colormap_t    cmap  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_copy_colormap_and_free_checked
 **
 ** @param xcb_connection_t *c
 ** @param xcb_colormap_t    mid
 ** @param xcb_colormap_t    src_cmap
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_copy_colormap_and_free_checked (xcb_connection_t *c  /**< */,
                                    xcb_colormap_t    mid  /**< */,
                                    xcb_colormap_t    src_cmap  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_copy_colormap_and_free
 **
 ** @param xcb_connection_t *c
 ** @param xcb_colormap_t    mid
 ** @param xcb_colormap_t    src_cmap
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_copy_colormap_and_free (xcb_connection_t *c  /**< */,
                            xcb_colormap_t    mid  /**< */,
                            xcb_colormap_t    src_cmap  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_install_colormap_checked
 **
 ** @param xcb_connection_t *c
 ** @param xcb_colormap_t    cmap
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_install_colormap_checked (xcb_connection_t *c  /**< */,
                              xcb_colormap_t    cmap  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_install_colormap
 **
 ** @param xcb_connection_t *c
 ** @param xcb_colormap_t    cmap
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_install_colormap (xcb_connection_t *c  /**< */,
                      xcb_colormap_t    cmap  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_uninstall_colormap_checked
 **
 ** @param xcb_connection_t *c
 ** @param xcb_colormap_t    cmap
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_uninstall_colormap_checked (xcb_connection_t *c  /**< */,
                                xcb_colormap_t    cmap  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_uninstall_colormap
 **
 ** @param xcb_connection_t *c
 ** @param xcb_colormap_t    cmap
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_uninstall_colormap (xcb_connection_t *c  /**< */,
                        xcb_colormap_t    cmap  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_list_installed_colormaps_cookie_t xcb_list_installed_colormaps
 **
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @returns xcb_list_installed_colormaps_cookie_t
 **
 *****************************************************************************/

xcb_list_installed_colormaps_cookie_t
xcb_list_installed_colormaps (xcb_connection_t *c  /**< */,
                              xcb_window_t      window  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */

/*****************************************************************************
 **
 ** xcb_list_installed_colormaps_cookie_t xcb_list_installed_colormaps_unchecked
 **
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @returns xcb_list_installed_colormaps_cookie_t
 **
 *****************************************************************************/

xcb_list_installed_colormaps_cookie_t
xcb_list_installed_colormaps_unchecked (xcb_connection_t *c  /**< */,
                                        xcb_window_t      window  /**< */);


/*****************************************************************************
 **
 ** xcb_colormap_t * xcb_list_installed_colormaps_cmaps
 **
 ** @param const xcb_list_installed_colormaps_reply_t *R
 ** @returns xcb_colormap_t *
 **
 *****************************************************************************/

xcb_colormap_t *
xcb_list_installed_colormaps_cmaps (const xcb_list_installed_colormaps_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_list_installed_colormaps_cmaps_length
 **
 ** @param const xcb_list_installed_colormaps_reply_t *R
 ** @returns int
 **
 *****************************************************************************/

int
xcb_list_installed_colormaps_cmaps_length (const xcb_list_installed_colormaps_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_colormap_iterator_t xcb_list_installed_colormaps_cmaps_iterator
 **
 ** @param const xcb_list_installed_colormaps_reply_t *R
 ** @returns xcb_colormap_iterator_t
 **
 *****************************************************************************/

xcb_colormap_iterator_t
xcb_list_installed_colormaps_cmaps_iterator (const xcb_list_installed_colormaps_reply_t *R  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_list_installed_colormaps_unchecked(). is used.
 * Otherwise, it stores the error if any.
 */

/*****************************************************************************
 **
 ** xcb_list_installed_colormaps_reply_t * xcb_list_installed_colormaps_reply
 **
 ** @param xcb_connection_t                       *c
 ** @param xcb_list_installed_colormaps_cookie_t   cookie
 ** @param xcb_generic_error_t                   **e
 ** @returns xcb_list_installed_colormaps_reply_t *
 **
 *****************************************************************************/

xcb_list_installed_colormaps_reply_t *
xcb_list_installed_colormaps_reply (xcb_connection_t                       *c  /**< */,
                                    xcb_list_installed_colormaps_cookie_t   cookie  /**< */,
                                    xcb_generic_error_t                   **e  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_alloc_color_cookie_t xcb_alloc_color
 **
 ** @param xcb_connection_t *c
 ** @param xcb_colormap_t    cmap
 ** @param uint16_t          red
 ** @param uint16_t          green
 ** @param uint16_t          blue
 ** @returns xcb_alloc_color_cookie_t
 **
 *****************************************************************************/

xcb_alloc_color_cookie_t
xcb_alloc_color (xcb_connection_t *c  /**< */,
                 xcb_colormap_t    cmap  /**< */,
                 uint16_t          red  /**< */,
                 uint16_t          green  /**< */,
                 uint16_t          blue  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */

/*****************************************************************************
 **
 ** xcb_alloc_color_cookie_t xcb_alloc_color_unchecked
 **
 ** @param xcb_connection_t *c
 ** @param xcb_colormap_t    cmap
 ** @param uint16_t          red
 ** @param uint16_t          green
 ** @param uint16_t          blue
 ** @returns xcb_alloc_color_cookie_t
 **
 *****************************************************************************/

xcb_alloc_color_cookie_t
xcb_alloc_color_unchecked (xcb_connection_t *c  /**< */,
                           xcb_colormap_t    cmap  /**< */,
                           uint16_t          red  /**< */,
                           uint16_t          green  /**< */,
                           uint16_t          blue  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_alloc_color_unchecked(). is used.
 * Otherwise, it stores the error if any.
 */

/*****************************************************************************
 **
 ** xcb_alloc_color_reply_t * xcb_alloc_color_reply
 **
 ** @param xcb_connection_t          *c
 ** @param xcb_alloc_color_cookie_t   cookie
 ** @param xcb_generic_error_t      **e
 ** @returns xcb_alloc_color_reply_t *
 **
 *****************************************************************************/

xcb_alloc_color_reply_t *
xcb_alloc_color_reply (xcb_connection_t          *c  /**< */,
                       xcb_alloc_color_cookie_t   cookie  /**< */,
                       xcb_generic_error_t      **e  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_alloc_named_color_cookie_t xcb_alloc_named_color
 **
 ** @param xcb_connection_t *c
 ** @param xcb_colormap_t    cmap
 ** @param uint16_t          name_len
 ** @param const char       *name
 ** @returns xcb_alloc_named_color_cookie_t
 **
 *****************************************************************************/

xcb_alloc_named_color_cookie_t
xcb_alloc_named_color (xcb_connection_t *c  /**< */,
                       xcb_colormap_t    cmap  /**< */,
                       uint16_t          name_len  /**< */,
                       const char       *name  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */

/*****************************************************************************
 **
 ** xcb_alloc_named_color_cookie_t xcb_alloc_named_color_unchecked
 **
 ** @param xcb_connection_t *c
 ** @param xcb_colormap_t    cmap
 ** @param uint16_t          name_len
 ** @param const char       *name
 ** @returns xcb_alloc_named_color_cookie_t
 **
 *****************************************************************************/

xcb_alloc_named_color_cookie_t
xcb_alloc_named_color_unchecked (xcb_connection_t *c  /**< */,
                                 xcb_colormap_t    cmap  /**< */,
                                 uint16_t          name_len  /**< */,
                                 const char       *name  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_alloc_named_color_unchecked(). is used.
 * Otherwise, it stores the error if any.
 */

/*****************************************************************************
 **
 ** xcb_alloc_named_color_reply_t * xcb_alloc_named_color_reply
 **
 ** @param xcb_connection_t                *c
 ** @param xcb_alloc_named_color_cookie_t   cookie
 ** @param xcb_generic_error_t            **e
 ** @returns xcb_alloc_named_color_reply_t *
 **
 *****************************************************************************/

xcb_alloc_named_color_reply_t *
xcb_alloc_named_color_reply (xcb_connection_t                *c  /**< */,
                             xcb_alloc_named_color_cookie_t   cookie  /**< */,
                             xcb_generic_error_t            **e  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_alloc_color_cells_cookie_t xcb_alloc_color_cells
 **
 ** @param xcb_connection_t *c
 ** @param uint8_t           contiguous
 ** @param xcb_colormap_t    cmap
 ** @param uint16_t          colors
 ** @param uint16_t          planes
 ** @returns xcb_alloc_color_cells_cookie_t
 **
 *****************************************************************************/

xcb_alloc_color_cells_cookie_t
xcb_alloc_color_cells (xcb_connection_t *c  /**< */,
                       uint8_t           contiguous  /**< */,
                       xcb_colormap_t    cmap  /**< */,
                       uint16_t          colors  /**< */,
                       uint16_t          planes  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */

/*****************************************************************************
 **
 ** xcb_alloc_color_cells_cookie_t xcb_alloc_color_cells_unchecked
 **
 ** @param xcb_connection_t *c
 ** @param uint8_t           contiguous
 ** @param xcb_colormap_t    cmap
 ** @param uint16_t          colors
 ** @param uint16_t          planes
 ** @returns xcb_alloc_color_cells_cookie_t
 **
 *****************************************************************************/

xcb_alloc_color_cells_cookie_t
xcb_alloc_color_cells_unchecked (xcb_connection_t *c  /**< */,
                                 uint8_t           contiguous  /**< */,
                                 xcb_colormap_t    cmap  /**< */,
                                 uint16_t          colors  /**< */,
                                 uint16_t          planes  /**< */);


/*****************************************************************************
 **
 ** uint32_t * xcb_alloc_color_cells_pixels
 **
 ** @param const xcb_alloc_color_cells_reply_t *R
 ** @returns uint32_t *
 **
 *****************************************************************************/

uint32_t *
xcb_alloc_color_cells_pixels (const xcb_alloc_color_cells_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_alloc_color_cells_pixels_length
 **
 ** @param const xcb_alloc_color_cells_reply_t *R
 ** @returns int
 **
 *****************************************************************************/

int
xcb_alloc_color_cells_pixels_length (const xcb_alloc_color_cells_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_alloc_color_cells_pixels_end
 **
 ** @param const xcb_alloc_color_cells_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/

xcb_generic_iterator_t
xcb_alloc_color_cells_pixels_end (const xcb_alloc_color_cells_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** uint32_t * xcb_alloc_color_cells_masks
 **
 ** @param const xcb_alloc_color_cells_reply_t *R
 ** @returns uint32_t *
 **
 *****************************************************************************/

uint32_t *
xcb_alloc_color_cells_masks (const xcb_alloc_color_cells_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_alloc_color_cells_masks_length
 **
 ** @param const xcb_alloc_color_cells_reply_t *R
 ** @returns int
 **
 *****************************************************************************/

int
xcb_alloc_color_cells_masks_length (const xcb_alloc_color_cells_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_alloc_color_cells_masks_end
 **
 ** @param const xcb_alloc_color_cells_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/

xcb_generic_iterator_t
xcb_alloc_color_cells_masks_end (const xcb_alloc_color_cells_reply_t *R  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_alloc_color_cells_unchecked(). is used.
 * Otherwise, it stores the error if any.
 */

/*****************************************************************************
 **
 ** xcb_alloc_color_cells_reply_t * xcb_alloc_color_cells_reply
 **
 ** @param xcb_connection_t                *c
 ** @param xcb_alloc_color_cells_cookie_t   cookie
 ** @param xcb_generic_error_t            **e
 ** @returns xcb_alloc_color_cells_reply_t *
 **
 *****************************************************************************/

xcb_alloc_color_cells_reply_t *
xcb_alloc_color_cells_reply (xcb_connection_t                *c  /**< */,
                             xcb_alloc_color_cells_cookie_t   cookie  /**< */,
                             xcb_generic_error_t            **e  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_alloc_color_planes_cookie_t xcb_alloc_color_planes
 **
 ** @param xcb_connection_t *c
 ** @param uint8_t           contiguous
 ** @param xcb_colormap_t    cmap
 ** @param uint16_t          colors
 ** @param uint16_t          reds
 ** @param uint16_t          greens
 ** @param uint16_t          blues
 ** @returns xcb_alloc_color_planes_cookie_t
 **
 *****************************************************************************/

xcb_alloc_color_planes_cookie_t
xcb_alloc_color_planes (xcb_connection_t *c  /**< */,
                        uint8_t           contiguous  /**< */,
                        xcb_colormap_t    cmap  /**< */,
                        uint16_t          colors  /**< */,
                        uint16_t          reds  /**< */,
                        uint16_t          greens  /**< */,
                        uint16_t          blues  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */

/*****************************************************************************
 **
 ** xcb_alloc_color_planes_cookie_t xcb_alloc_color_planes_unchecked
 **
 ** @param xcb_connection_t *c
 ** @param uint8_t           contiguous
 ** @param xcb_colormap_t    cmap
 ** @param uint16_t          colors
 ** @param uint16_t          reds
 ** @param uint16_t          greens
 ** @param uint16_t          blues
 ** @returns xcb_alloc_color_planes_cookie_t
 **
 *****************************************************************************/

xcb_alloc_color_planes_cookie_t
xcb_alloc_color_planes_unchecked (xcb_connection_t *c  /**< */,
                                  uint8_t           contiguous  /**< */,
                                  xcb_colormap_t    cmap  /**< */,
                                  uint16_t          colors  /**< */,
                                  uint16_t          reds  /**< */,
                                  uint16_t          greens  /**< */,
                                  uint16_t          blues  /**< */);


/*****************************************************************************
 **
 ** uint32_t * xcb_alloc_color_planes_pixels
 **
 ** @param const xcb_alloc_color_planes_reply_t *R
 ** @returns uint32_t *
 **
 *****************************************************************************/

uint32_t *
xcb_alloc_color_planes_pixels (const xcb_alloc_color_planes_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_alloc_color_planes_pixels_length
 **
 ** @param const xcb_alloc_color_planes_reply_t *R
 ** @returns int
 **
 *****************************************************************************/

int
xcb_alloc_color_planes_pixels_length (const xcb_alloc_color_planes_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_alloc_color_planes_pixels_end
 **
 ** @param const xcb_alloc_color_planes_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/

xcb_generic_iterator_t
xcb_alloc_color_planes_pixels_end (const xcb_alloc_color_planes_reply_t *R  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_alloc_color_planes_unchecked(). is used.
 * Otherwise, it stores the error if any.
 */

/*****************************************************************************
 **
 ** xcb_alloc_color_planes_reply_t * xcb_alloc_color_planes_reply
 **
 ** @param xcb_connection_t                 *c
 ** @param xcb_alloc_color_planes_cookie_t   cookie
 ** @param xcb_generic_error_t             **e
 ** @returns xcb_alloc_color_planes_reply_t *
 **
 *****************************************************************************/

xcb_alloc_color_planes_reply_t *
xcb_alloc_color_planes_reply (xcb_connection_t                 *c  /**< */,
                              xcb_alloc_color_planes_cookie_t   cookie  /**< */,
                              xcb_generic_error_t             **e  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_free_colors_checked
 **
 ** @param xcb_connection_t *c
 ** @param xcb_colormap_t    cmap
 ** @param uint32_t          plane_mask
 ** @param uint32_t          pixels_len
 ** @param const uint32_t   *pixels
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_free_colors_checked (xcb_connection_t *c  /**< */,
                         xcb_colormap_t    cmap  /**< */,
                         uint32_t          plane_mask  /**< */,
                         uint32_t          pixels_len  /**< */,
                         const uint32_t   *pixels  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_free_colors
 **
 ** @param xcb_connection_t *c
 ** @param xcb_colormap_t    cmap
 ** @param uint32_t          plane_mask
 ** @param uint32_t          pixels_len
 ** @param const uint32_t   *pixels
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_free_colors (xcb_connection_t *c  /**< */,
                 xcb_colormap_t    cmap  /**< */,
                 uint32_t          plane_mask  /**< */,
                 uint32_t          pixels_len  /**< */,
                 const uint32_t   *pixels  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_coloritem_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_coloritem_t)
 */

/*****************************************************************************
 **
 ** void xcb_coloritem_next
 **
 ** @param xcb_coloritem_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/

void
xcb_coloritem_next (xcb_coloritem_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_coloritem_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_coloritem_end
 **
 ** @param xcb_coloritem_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/

xcb_generic_iterator_t
xcb_coloritem_end (xcb_coloritem_iterator_t i  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_store_colors_checked
 **
 ** @param xcb_connection_t      *c
 ** @param xcb_colormap_t         cmap
 ** @param uint32_t               items_len
 ** @param const xcb_coloritem_t *items
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_store_colors_checked (xcb_connection_t      *c  /**< */,
                          xcb_colormap_t         cmap  /**< */,
                          uint32_t               items_len  /**< */,
                          const xcb_coloritem_t *items  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_store_colors
 **
 ** @param xcb_connection_t      *c
 ** @param xcb_colormap_t         cmap
 ** @param uint32_t               items_len
 ** @param const xcb_coloritem_t *items
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_store_colors (xcb_connection_t      *c  /**< */,
                  xcb_colormap_t         cmap  /**< */,
                  uint32_t               items_len  /**< */,
                  const xcb_coloritem_t *items  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_store_named_color_checked
 **
 ** @param xcb_connection_t *c
 ** @param uint8_t           flags
 ** @param xcb_colormap_t    cmap
 ** @param uint32_t          pixel
 ** @param uint16_t          name_len
 ** @param const char       *name
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_store_named_color_checked (xcb_connection_t *c  /**< */,
                               uint8_t           flags  /**< */,
                               xcb_colormap_t    cmap  /**< */,
                               uint32_t          pixel  /**< */,
                               uint16_t          name_len  /**< */,
                               const char       *name  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_store_named_color
 **
 ** @param xcb_connection_t *c
 ** @param uint8_t           flags
 ** @param xcb_colormap_t    cmap
 ** @param uint32_t          pixel
 ** @param uint16_t          name_len
 ** @param const char       *name
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_store_named_color (xcb_connection_t *c  /**< */,
                       uint8_t           flags  /**< */,
                       xcb_colormap_t    cmap  /**< */,
                       uint32_t          pixel  /**< */,
                       uint16_t          name_len  /**< */,
                       const char       *name  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_rgb_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_rgb_t)
 */

/*****************************************************************************
 **
 ** void xcb_rgb_next
 **
 ** @param xcb_rgb_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/

void
xcb_rgb_next (xcb_rgb_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_rgb_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_rgb_end
 **
 ** @param xcb_rgb_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/

xcb_generic_iterator_t
xcb_rgb_end (xcb_rgb_iterator_t i  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_query_colors_cookie_t xcb_query_colors
 **
 ** @param xcb_connection_t *c
 ** @param xcb_colormap_t    cmap
 ** @param uint32_t          pixels_len
 ** @param const uint32_t   *pixels
 ** @returns xcb_query_colors_cookie_t
 **
 *****************************************************************************/

xcb_query_colors_cookie_t
xcb_query_colors (xcb_connection_t *c  /**< */,
                  xcb_colormap_t    cmap  /**< */,
                  uint32_t          pixels_len  /**< */,
                  const uint32_t   *pixels  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */

/*****************************************************************************
 **
 ** xcb_query_colors_cookie_t xcb_query_colors_unchecked
 **
 ** @param xcb_connection_t *c
 ** @param xcb_colormap_t    cmap
 ** @param uint32_t          pixels_len
 ** @param const uint32_t   *pixels
 ** @returns xcb_query_colors_cookie_t
 **
 *****************************************************************************/

xcb_query_colors_cookie_t
xcb_query_colors_unchecked (xcb_connection_t *c  /**< */,
                            xcb_colormap_t    cmap  /**< */,
                            uint32_t          pixels_len  /**< */,
                            const uint32_t   *pixels  /**< */);


/*****************************************************************************
 **
 ** xcb_rgb_t * xcb_query_colors_colors
 **
 ** @param const xcb_query_colors_reply_t *R
 ** @returns xcb_rgb_t *
 **
 *****************************************************************************/

xcb_rgb_t *
xcb_query_colors_colors (const xcb_query_colors_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_query_colors_colors_length
 **
 ** @param const xcb_query_colors_reply_t *R
 ** @returns int
 **
 *****************************************************************************/

int
xcb_query_colors_colors_length (const xcb_query_colors_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_rgb_iterator_t xcb_query_colors_colors_iterator
 **
 ** @param const xcb_query_colors_reply_t *R
 ** @returns xcb_rgb_iterator_t
 **
 *****************************************************************************/

xcb_rgb_iterator_t
xcb_query_colors_colors_iterator (const xcb_query_colors_reply_t *R  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_query_colors_unchecked(). is used.
 * Otherwise, it stores the error if any.
 */

/*****************************************************************************
 **
 ** xcb_query_colors_reply_t * xcb_query_colors_reply
 **
 ** @param xcb_connection_t           *c
 ** @param xcb_query_colors_cookie_t   cookie
 ** @param xcb_generic_error_t       **e
 ** @returns xcb_query_colors_reply_t *
 **
 *****************************************************************************/

xcb_query_colors_reply_t *
xcb_query_colors_reply (xcb_connection_t           *c  /**< */,
                        xcb_query_colors_cookie_t   cookie  /**< */,
                        xcb_generic_error_t       **e  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_lookup_color_cookie_t xcb_lookup_color
 **
 ** @param xcb_connection_t *c
 ** @param xcb_colormap_t    cmap
 ** @param uint16_t          name_len
 ** @param const char       *name
 ** @returns xcb_lookup_color_cookie_t
 **
 *****************************************************************************/

xcb_lookup_color_cookie_t
xcb_lookup_color (xcb_connection_t *c  /**< */,
                  xcb_colormap_t    cmap  /**< */,
                  uint16_t          name_len  /**< */,
                  const char       *name  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */

/*****************************************************************************
 **
 ** xcb_lookup_color_cookie_t xcb_lookup_color_unchecked
 **
 ** @param xcb_connection_t *c
 ** @param xcb_colormap_t    cmap
 ** @param uint16_t          name_len
 ** @param const char       *name
 ** @returns xcb_lookup_color_cookie_t
 **
 *****************************************************************************/

xcb_lookup_color_cookie_t
xcb_lookup_color_unchecked (xcb_connection_t *c  /**< */,
                            xcb_colormap_t    cmap  /**< */,
                            uint16_t          name_len  /**< */,
                            const char       *name  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_lookup_color_unchecked(). is used.
 * Otherwise, it stores the error if any.
 */

/*****************************************************************************
 **
 ** xcb_lookup_color_reply_t * xcb_lookup_color_reply
 **
 ** @param xcb_connection_t           *c
 ** @param xcb_lookup_color_cookie_t   cookie
 ** @param xcb_generic_error_t       **e
 ** @returns xcb_lookup_color_reply_t *
 **
 *****************************************************************************/

xcb_lookup_color_reply_t *
xcb_lookup_color_reply (xcb_connection_t           *c  /**< */,
                        xcb_lookup_color_cookie_t   cookie  /**< */,
                        xcb_generic_error_t       **e  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_create_cursor_checked
 **
 ** @param xcb_connection_t *c
 ** @param xcb_cursor_t      cid
 ** @param xcb_pixmap_t      source
 ** @param xcb_pixmap_t      mask
 ** @param uint16_t          fore_red
 ** @param uint16_t          fore_green
 ** @param uint16_t          fore_blue
 ** @param uint16_t          back_red
 ** @param uint16_t          back_green
 ** @param uint16_t          back_blue
 ** @param uint16_t          x
 ** @param uint16_t          y
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_create_cursor_checked (xcb_connection_t *c  /**< */,
                           xcb_cursor_t      cid  /**< */,
                           xcb_pixmap_t      source  /**< */,
                           xcb_pixmap_t      mask  /**< */,
                           uint16_t          fore_red  /**< */,
                           uint16_t          fore_green  /**< */,
                           uint16_t          fore_blue  /**< */,
                           uint16_t          back_red  /**< */,
                           uint16_t          back_green  /**< */,
                           uint16_t          back_blue  /**< */,
                           uint16_t          x  /**< */,
                           uint16_t          y  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_create_cursor
 **
 ** @param xcb_connection_t *c
 ** @param xcb_cursor_t      cid
 ** @param xcb_pixmap_t      source
 ** @param xcb_pixmap_t      mask
 ** @param uint16_t          fore_red
 ** @param uint16_t          fore_green
 ** @param uint16_t          fore_blue
 ** @param uint16_t          back_red
 ** @param uint16_t          back_green
 ** @param uint16_t          back_blue
 ** @param uint16_t          x
 ** @param uint16_t          y
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_create_cursor (xcb_connection_t *c  /**< */,
                   xcb_cursor_t      cid  /**< */,
                   xcb_pixmap_t      source  /**< */,
                   xcb_pixmap_t      mask  /**< */,
                   uint16_t          fore_red  /**< */,
                   uint16_t          fore_green  /**< */,
                   uint16_t          fore_blue  /**< */,
                   uint16_t          back_red  /**< */,
                   uint16_t          back_green  /**< */,
                   uint16_t          back_blue  /**< */,
                   uint16_t          x  /**< */,
                   uint16_t          y  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_create_glyph_cursor_checked
 **
 ** @param xcb_connection_t *c
 ** @param xcb_cursor_t      cid
 ** @param xcb_font_t        source_font
 ** @param xcb_font_t        mask_font
 ** @param uint16_t          source_char
 ** @param uint16_t          mask_char
 ** @param uint16_t          fore_red
 ** @param uint16_t          fore_green
 ** @param uint16_t          fore_blue
 ** @param uint16_t          back_red
 ** @param uint16_t          back_green
 ** @param uint16_t          back_blue
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_create_glyph_cursor_checked (xcb_connection_t *c  /**< */,
                                 xcb_cursor_t      cid  /**< */,
                                 xcb_font_t        source_font  /**< */,
                                 xcb_font_t        mask_font  /**< */,
                                 uint16_t          source_char  /**< */,
                                 uint16_t          mask_char  /**< */,
                                 uint16_t          fore_red  /**< */,
                                 uint16_t          fore_green  /**< */,
                                 uint16_t          fore_blue  /**< */,
                                 uint16_t          back_red  /**< */,
                                 uint16_t          back_green  /**< */,
                                 uint16_t          back_blue  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_create_glyph_cursor
 **
 ** @param xcb_connection_t *c
 ** @param xcb_cursor_t      cid
 ** @param xcb_font_t        source_font
 ** @param xcb_font_t        mask_font
 ** @param uint16_t          source_char
 ** @param uint16_t          mask_char
 ** @param uint16_t          fore_red
 ** @param uint16_t          fore_green
 ** @param uint16_t          fore_blue
 ** @param uint16_t          back_red
 ** @param uint16_t          back_green
 ** @param uint16_t          back_blue
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_create_glyph_cursor (xcb_connection_t *c  /**< */,
                         xcb_cursor_t      cid  /**< */,
                         xcb_font_t        source_font  /**< */,
                         xcb_font_t        mask_font  /**< */,
                         uint16_t          source_char  /**< */,
                         uint16_t          mask_char  /**< */,
                         uint16_t          fore_red  /**< */,
                         uint16_t          fore_green  /**< */,
                         uint16_t          fore_blue  /**< */,
                         uint16_t          back_red  /**< */,
                         uint16_t          back_green  /**< */,
                         uint16_t          back_blue  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_free_cursor_checked
 **
 ** @param xcb_connection_t *c
 ** @param xcb_cursor_t      cursor
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_free_cursor_checked (xcb_connection_t *c  /**< */,
                         xcb_cursor_t      cursor  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_free_cursor
 **
 ** @param xcb_connection_t *c
 ** @param xcb_cursor_t      cursor
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_free_cursor (xcb_connection_t *c  /**< */,
                 xcb_cursor_t      cursor  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_recolor_cursor_checked
 **
 ** @param xcb_connection_t *c
 ** @param xcb_cursor_t      cursor
 ** @param uint16_t          fore_red
 ** @param uint16_t          fore_green
 ** @param uint16_t          fore_blue
 ** @param uint16_t          back_red
 ** @param uint16_t          back_green
 ** @param uint16_t          back_blue
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_recolor_cursor_checked (xcb_connection_t *c  /**< */,
                            xcb_cursor_t      cursor  /**< */,
                            uint16_t          fore_red  /**< */,
                            uint16_t          fore_green  /**< */,
                            uint16_t          fore_blue  /**< */,
                            uint16_t          back_red  /**< */,
                            uint16_t          back_green  /**< */,
                            uint16_t          back_blue  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_recolor_cursor
 **
 ** @param xcb_connection_t *c
 ** @param xcb_cursor_t      cursor
 ** @param uint16_t          fore_red
 ** @param uint16_t          fore_green
 ** @param uint16_t          fore_blue
 ** @param uint16_t          back_red
 ** @param uint16_t          back_green
 ** @param uint16_t          back_blue
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_recolor_cursor (xcb_connection_t *c  /**< */,
                    xcb_cursor_t      cursor  /**< */,
                    uint16_t          fore_red  /**< */,
                    uint16_t          fore_green  /**< */,
                    uint16_t          fore_blue  /**< */,
                    uint16_t          back_red  /**< */,
                    uint16_t          back_green  /**< */,
                    uint16_t          back_blue  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_query_best_size_cookie_t xcb_query_best_size
 **
 ** @param xcb_connection_t *c
 ** @param uint8_t           _class
 ** @param xcb_drawable_t    drawable
 ** @param uint16_t          width
 ** @param uint16_t          height
 ** @returns xcb_query_best_size_cookie_t
 **
 *****************************************************************************/

xcb_query_best_size_cookie_t
xcb_query_best_size (xcb_connection_t *c  /**< */,
                     uint8_t           _class  /**< */,
                     xcb_drawable_t    drawable  /**< */,
                     uint16_t          width  /**< */,
                     uint16_t          height  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */

/*****************************************************************************
 **
 ** xcb_query_best_size_cookie_t xcb_query_best_size_unchecked
 **
 ** @param xcb_connection_t *c
 ** @param uint8_t           _class
 ** @param xcb_drawable_t    drawable
 ** @param uint16_t          width
 ** @param uint16_t          height
 ** @returns xcb_query_best_size_cookie_t
 **
 *****************************************************************************/

xcb_query_best_size_cookie_t
xcb_query_best_size_unchecked (xcb_connection_t *c  /**< */,
                               uint8_t           _class  /**< */,
                               xcb_drawable_t    drawable  /**< */,
                               uint16_t          width  /**< */,
                               uint16_t          height  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_query_best_size_unchecked(). is used.
 * Otherwise, it stores the error if any.
 */

/*****************************************************************************
 **
 ** xcb_query_best_size_reply_t * xcb_query_best_size_reply
 **
 ** @param xcb_connection_t              *c
 ** @param xcb_query_best_size_cookie_t   cookie
 ** @param xcb_generic_error_t          **e
 ** @returns xcb_query_best_size_reply_t *
 **
 *****************************************************************************/

xcb_query_best_size_reply_t *
xcb_query_best_size_reply (xcb_connection_t              *c  /**< */,
                           xcb_query_best_size_cookie_t   cookie  /**< */,
                           xcb_generic_error_t          **e  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_query_extension_cookie_t xcb_query_extension
 **
 ** @param xcb_connection_t *c
 ** @param uint16_t          name_len
 ** @param const char       *name
 ** @returns xcb_query_extension_cookie_t
 **
 *****************************************************************************/

xcb_query_extension_cookie_t
xcb_query_extension (xcb_connection_t *c  /**< */,
                     uint16_t          name_len  /**< */,
                     const char       *name  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */

/*****************************************************************************
 **
 ** xcb_query_extension_cookie_t xcb_query_extension_unchecked
 **
 ** @param xcb_connection_t *c
 ** @param uint16_t          name_len
 ** @param const char       *name
 ** @returns xcb_query_extension_cookie_t
 **
 *****************************************************************************/

xcb_query_extension_cookie_t
xcb_query_extension_unchecked (xcb_connection_t *c  /**< */,
                               uint16_t          name_len  /**< */,
                               const char       *name  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_query_extension_unchecked(). is used.
 * Otherwise, it stores the error if any.
 */

/*****************************************************************************
 **
 ** xcb_query_extension_reply_t * xcb_query_extension_reply
 **
 ** @param xcb_connection_t              *c
 ** @param xcb_query_extension_cookie_t   cookie
 ** @param xcb_generic_error_t          **e
 ** @returns xcb_query_extension_reply_t *
 **
 *****************************************************************************/

xcb_query_extension_reply_t *
xcb_query_extension_reply (xcb_connection_t              *c  /**< */,
                           xcb_query_extension_cookie_t   cookie  /**< */,
                           xcb_generic_error_t          **e  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_list_extensions_cookie_t xcb_list_extensions
 **
 ** @param xcb_connection_t *c
 ** @returns xcb_list_extensions_cookie_t
 **
 *****************************************************************************/

xcb_list_extensions_cookie_t
xcb_list_extensions (xcb_connection_t *c  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */

/*****************************************************************************
 **
 ** xcb_list_extensions_cookie_t xcb_list_extensions_unchecked
 **
 ** @param xcb_connection_t *c
 ** @returns xcb_list_extensions_cookie_t
 **
 *****************************************************************************/

xcb_list_extensions_cookie_t
xcb_list_extensions_unchecked (xcb_connection_t *c  /**< */);


/*****************************************************************************
 **
 ** int xcb_list_extensions_names_length
 **
 ** @param const xcb_list_extensions_reply_t *R
 ** @returns int
 **
 *****************************************************************************/

int
xcb_list_extensions_names_length (const xcb_list_extensions_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_str_iterator_t xcb_list_extensions_names_iterator
 **
 ** @param const xcb_list_extensions_reply_t *R
 ** @returns xcb_str_iterator_t
 **
 *****************************************************************************/

xcb_str_iterator_t
xcb_list_extensions_names_iterator (const xcb_list_extensions_reply_t *R  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_list_extensions_unchecked(). is used.
 * Otherwise, it stores the error if any.
 */

/*****************************************************************************
 **
 ** xcb_list_extensions_reply_t * xcb_list_extensions_reply
 **
 ** @param xcb_connection_t              *c
 ** @param xcb_list_extensions_cookie_t   cookie
 ** @param xcb_generic_error_t          **e
 ** @returns xcb_list_extensions_reply_t *
 **
 *****************************************************************************/

xcb_list_extensions_reply_t *
xcb_list_extensions_reply (xcb_connection_t              *c  /**< */,
                           xcb_list_extensions_cookie_t   cookie  /**< */,
                           xcb_generic_error_t          **e  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_change_keyboard_mapping_checked
 **
 ** @param xcb_connection_t   *c
 ** @param uint8_t             keycode_count
 ** @param xcb_keycode_t       first_keycode
 ** @param uint8_t             keysyms_per_keycode
 ** @param const xcb_keysym_t *keysyms
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_change_keyboard_mapping_checked (xcb_connection_t   *c  /**< */,
                                     uint8_t             keycode_count  /**< */,
                                     xcb_keycode_t       first_keycode  /**< */,
                                     uint8_t             keysyms_per_keycode  /**< */,
                                     const xcb_keysym_t *keysyms  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_change_keyboard_mapping
 **
 ** @param xcb_connection_t   *c
 ** @param uint8_t             keycode_count
 ** @param xcb_keycode_t       first_keycode
 ** @param uint8_t             keysyms_per_keycode
 ** @param const xcb_keysym_t *keysyms
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_change_keyboard_mapping (xcb_connection_t   *c  /**< */,
                             uint8_t             keycode_count  /**< */,
                             xcb_keycode_t       first_keycode  /**< */,
                             uint8_t             keysyms_per_keycode  /**< */,
                             const xcb_keysym_t *keysyms  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_get_keyboard_mapping_cookie_t xcb_get_keyboard_mapping
 **
 ** @param xcb_connection_t *c
 ** @param xcb_keycode_t     first_keycode
 ** @param uint8_t           count
 ** @returns xcb_get_keyboard_mapping_cookie_t
 **
 *****************************************************************************/

xcb_get_keyboard_mapping_cookie_t
xcb_get_keyboard_mapping (xcb_connection_t *c  /**< */,
                          xcb_keycode_t     first_keycode  /**< */,
                          uint8_t           count  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */

/*****************************************************************************
 **
 ** xcb_get_keyboard_mapping_cookie_t xcb_get_keyboard_mapping_unchecked
 **
 ** @param xcb_connection_t *c
 ** @param xcb_keycode_t     first_keycode
 ** @param uint8_t           count
 ** @returns xcb_get_keyboard_mapping_cookie_t
 **
 *****************************************************************************/

xcb_get_keyboard_mapping_cookie_t
xcb_get_keyboard_mapping_unchecked (xcb_connection_t *c  /**< */,
                                    xcb_keycode_t     first_keycode  /**< */,
                                    uint8_t           count  /**< */);


/*****************************************************************************
 **
 ** xcb_keysym_t * xcb_get_keyboard_mapping_keysyms
 **
 ** @param const xcb_get_keyboard_mapping_reply_t *R
 ** @returns xcb_keysym_t *
 **
 *****************************************************************************/

xcb_keysym_t *
xcb_get_keyboard_mapping_keysyms (const xcb_get_keyboard_mapping_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_get_keyboard_mapping_keysyms_length
 **
 ** @param const xcb_get_keyboard_mapping_reply_t *R
 ** @returns int
 **
 *****************************************************************************/

int
xcb_get_keyboard_mapping_keysyms_length (const xcb_get_keyboard_mapping_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_keysym_iterator_t xcb_get_keyboard_mapping_keysyms_iterator
 **
 ** @param const xcb_get_keyboard_mapping_reply_t *R
 ** @returns xcb_keysym_iterator_t
 **
 *****************************************************************************/

xcb_keysym_iterator_t
xcb_get_keyboard_mapping_keysyms_iterator (const xcb_get_keyboard_mapping_reply_t *R  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_get_keyboard_mapping_unchecked(). is used.
 * Otherwise, it stores the error if any.
 */

/*****************************************************************************
 **
 ** xcb_get_keyboard_mapping_reply_t * xcb_get_keyboard_mapping_reply
 **
 ** @param xcb_connection_t                   *c
 ** @param xcb_get_keyboard_mapping_cookie_t   cookie
 ** @param xcb_generic_error_t               **e
 ** @returns xcb_get_keyboard_mapping_reply_t *
 **
 *****************************************************************************/

xcb_get_keyboard_mapping_reply_t *
xcb_get_keyboard_mapping_reply (xcb_connection_t                   *c  /**< */,
                                xcb_get_keyboard_mapping_cookie_t   cookie  /**< */,
                                xcb_generic_error_t               **e  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_change_keyboard_control_checked
 **
 ** @param xcb_connection_t *c
 ** @param uint32_t          value_mask
 ** @param const uint32_t   *value_list
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_change_keyboard_control_checked (xcb_connection_t *c  /**< */,
                                     uint32_t          value_mask  /**< */,
                                     const uint32_t   *value_list  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_change_keyboard_control
 **
 ** @param xcb_connection_t *c
 ** @param uint32_t          value_mask
 ** @param const uint32_t   *value_list
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_change_keyboard_control (xcb_connection_t *c  /**< */,
                             uint32_t          value_mask  /**< */,
                             const uint32_t   *value_list  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_get_keyboard_control_cookie_t xcb_get_keyboard_control
 **
 ** @param xcb_connection_t *c
 ** @returns xcb_get_keyboard_control_cookie_t
 **
 *****************************************************************************/

xcb_get_keyboard_control_cookie_t
xcb_get_keyboard_control (xcb_connection_t *c  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */

/*****************************************************************************
 **
 ** xcb_get_keyboard_control_cookie_t xcb_get_keyboard_control_unchecked
 **
 ** @param xcb_connection_t *c
 ** @returns xcb_get_keyboard_control_cookie_t
 **
 *****************************************************************************/

xcb_get_keyboard_control_cookie_t
xcb_get_keyboard_control_unchecked (xcb_connection_t *c  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_get_keyboard_control_unchecked(). is used.
 * Otherwise, it stores the error if any.
 */

/*****************************************************************************
 **
 ** xcb_get_keyboard_control_reply_t * xcb_get_keyboard_control_reply
 **
 ** @param xcb_connection_t                   *c
 ** @param xcb_get_keyboard_control_cookie_t   cookie
 ** @param xcb_generic_error_t               **e
 ** @returns xcb_get_keyboard_control_reply_t *
 **
 *****************************************************************************/

xcb_get_keyboard_control_reply_t *
xcb_get_keyboard_control_reply (xcb_connection_t                   *c  /**< */,
                                xcb_get_keyboard_control_cookie_t   cookie  /**< */,
                                xcb_generic_error_t               **e  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_bell_checked
 **
 ** @param xcb_connection_t *c
 ** @param int8_t            percent
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_bell_checked (xcb_connection_t *c  /**< */,
                  int8_t            percent  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_bell
 **
 ** @param xcb_connection_t *c
 ** @param int8_t            percent
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_bell (xcb_connection_t *c  /**< */,
          int8_t            percent  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_change_pointer_control_checked
 **
 ** @param xcb_connection_t *c
 ** @param int16_t           acceleration_numerator
 ** @param int16_t           acceleration_denominator
 ** @param int16_t           threshold
 ** @param uint8_t           do_acceleration
 ** @param uint8_t           do_threshold
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_change_pointer_control_checked (xcb_connection_t *c  /**< */,
                                    int16_t           acceleration_numerator  /**< */,
                                    int16_t           acceleration_denominator  /**< */,
                                    int16_t           threshold  /**< */,
                                    uint8_t           do_acceleration  /**< */,
                                    uint8_t           do_threshold  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_change_pointer_control
 **
 ** @param xcb_connection_t *c
 ** @param int16_t           acceleration_numerator
 ** @param int16_t           acceleration_denominator
 ** @param int16_t           threshold
 ** @param uint8_t           do_acceleration
 ** @param uint8_t           do_threshold
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_change_pointer_control (xcb_connection_t *c  /**< */,
                            int16_t           acceleration_numerator  /**< */,
                            int16_t           acceleration_denominator  /**< */,
                            int16_t           threshold  /**< */,
                            uint8_t           do_acceleration  /**< */,
                            uint8_t           do_threshold  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_get_pointer_control_cookie_t xcb_get_pointer_control
 **
 ** @param xcb_connection_t *c
 ** @returns xcb_get_pointer_control_cookie_t
 **
 *****************************************************************************/

xcb_get_pointer_control_cookie_t
xcb_get_pointer_control (xcb_connection_t *c  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */

/*****************************************************************************
 **
 ** xcb_get_pointer_control_cookie_t xcb_get_pointer_control_unchecked
 **
 ** @param xcb_connection_t *c
 ** @returns xcb_get_pointer_control_cookie_t
 **
 *****************************************************************************/

xcb_get_pointer_control_cookie_t
xcb_get_pointer_control_unchecked (xcb_connection_t *c  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_get_pointer_control_unchecked(). is used.
 * Otherwise, it stores the error if any.
 */

/*****************************************************************************
 **
 ** xcb_get_pointer_control_reply_t * xcb_get_pointer_control_reply
 **
 ** @param xcb_connection_t                  *c
 ** @param xcb_get_pointer_control_cookie_t   cookie
 ** @param xcb_generic_error_t              **e
 ** @returns xcb_get_pointer_control_reply_t *
 **
 *****************************************************************************/

xcb_get_pointer_control_reply_t *
xcb_get_pointer_control_reply (xcb_connection_t                  *c  /**< */,
                               xcb_get_pointer_control_cookie_t   cookie  /**< */,
                               xcb_generic_error_t              **e  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_set_screen_saver_checked
 **
 ** @param xcb_connection_t *c
 ** @param int16_t           timeout
 ** @param int16_t           interval
 ** @param uint8_t           prefer_blanking
 ** @param uint8_t           allow_exposures
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_set_screen_saver_checked (xcb_connection_t *c  /**< */,
                              int16_t           timeout  /**< */,
                              int16_t           interval  /**< */,
                              uint8_t           prefer_blanking  /**< */,
                              uint8_t           allow_exposures  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_set_screen_saver
 **
 ** @param xcb_connection_t *c
 ** @param int16_t           timeout
 ** @param int16_t           interval
 ** @param uint8_t           prefer_blanking
 ** @param uint8_t           allow_exposures
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_set_screen_saver (xcb_connection_t *c  /**< */,
                      int16_t           timeout  /**< */,
                      int16_t           interval  /**< */,
                      uint8_t           prefer_blanking  /**< */,
                      uint8_t           allow_exposures  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_get_screen_saver_cookie_t xcb_get_screen_saver
 **
 ** @param xcb_connection_t *c
 ** @returns xcb_get_screen_saver_cookie_t
 **
 *****************************************************************************/

xcb_get_screen_saver_cookie_t
xcb_get_screen_saver (xcb_connection_t *c  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */

/*****************************************************************************
 **
 ** xcb_get_screen_saver_cookie_t xcb_get_screen_saver_unchecked
 **
 ** @param xcb_connection_t *c
 ** @returns xcb_get_screen_saver_cookie_t
 **
 *****************************************************************************/

xcb_get_screen_saver_cookie_t
xcb_get_screen_saver_unchecked (xcb_connection_t *c  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_get_screen_saver_unchecked(). is used.
 * Otherwise, it stores the error if any.
 */

/*****************************************************************************
 **
 ** xcb_get_screen_saver_reply_t * xcb_get_screen_saver_reply
 **
 ** @param xcb_connection_t               *c
 ** @param xcb_get_screen_saver_cookie_t   cookie
 ** @param xcb_generic_error_t           **e
 ** @returns xcb_get_screen_saver_reply_t *
 **
 *****************************************************************************/

xcb_get_screen_saver_reply_t *
xcb_get_screen_saver_reply (xcb_connection_t               *c  /**< */,
                            xcb_get_screen_saver_cookie_t   cookie  /**< */,
                            xcb_generic_error_t           **e  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_change_hosts_checked
 **
 ** @param xcb_connection_t *c
 ** @param uint8_t           mode
 ** @param uint8_t           family
 ** @param uint16_t          address_len
 ** @param const char       *address
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_change_hosts_checked (xcb_connection_t *c  /**< */,
                          uint8_t           mode  /**< */,
                          uint8_t           family  /**< */,
                          uint16_t          address_len  /**< */,
                          const char       *address  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_change_hosts
 **
 ** @param xcb_connection_t *c
 ** @param uint8_t           mode
 ** @param uint8_t           family
 ** @param uint16_t          address_len
 ** @param const char       *address
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_change_hosts (xcb_connection_t *c  /**< */,
                  uint8_t           mode  /**< */,
                  uint8_t           family  /**< */,
                  uint16_t          address_len  /**< */,
                  const char       *address  /**< */);


/*****************************************************************************
 **
 ** uint8_t * xcb_host_address
 **
 ** @param const xcb_host_t *R
 ** @returns uint8_t *
 **
 *****************************************************************************/

uint8_t *
xcb_host_address (const xcb_host_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_host_address_length
 **
 ** @param const xcb_host_t *R
 ** @returns int
 **
 *****************************************************************************/

int
xcb_host_address_length (const xcb_host_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_host_address_end
 **
 ** @param const xcb_host_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/

xcb_generic_iterator_t
xcb_host_address_end (const xcb_host_t *R  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_host_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_host_t)
 */

/*****************************************************************************
 **
 ** void xcb_host_next
 **
 ** @param xcb_host_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/

void
xcb_host_next (xcb_host_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_host_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_host_end
 **
 ** @param xcb_host_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/

xcb_generic_iterator_t
xcb_host_end (xcb_host_iterator_t i  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_list_hosts_cookie_t xcb_list_hosts
 **
 ** @param xcb_connection_t *c
 ** @returns xcb_list_hosts_cookie_t
 **
 *****************************************************************************/

xcb_list_hosts_cookie_t
xcb_list_hosts (xcb_connection_t *c  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */

/*****************************************************************************
 **
 ** xcb_list_hosts_cookie_t xcb_list_hosts_unchecked
 **
 ** @param xcb_connection_t *c
 ** @returns xcb_list_hosts_cookie_t
 **
 *****************************************************************************/

xcb_list_hosts_cookie_t
xcb_list_hosts_unchecked (xcb_connection_t *c  /**< */);


/*****************************************************************************
 **
 ** int xcb_list_hosts_hosts_length
 **
 ** @param const xcb_list_hosts_reply_t *R
 ** @returns int
 **
 *****************************************************************************/

int
xcb_list_hosts_hosts_length (const xcb_list_hosts_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_host_iterator_t xcb_list_hosts_hosts_iterator
 **
 ** @param const xcb_list_hosts_reply_t *R
 ** @returns xcb_host_iterator_t
 **
 *****************************************************************************/

xcb_host_iterator_t
xcb_list_hosts_hosts_iterator (const xcb_list_hosts_reply_t *R  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_list_hosts_unchecked(). is used.
 * Otherwise, it stores the error if any.
 */

/*****************************************************************************
 **
 ** xcb_list_hosts_reply_t * xcb_list_hosts_reply
 **
 ** @param xcb_connection_t         *c
 ** @param xcb_list_hosts_cookie_t   cookie
 ** @param xcb_generic_error_t     **e
 ** @returns xcb_list_hosts_reply_t *
 **
 *****************************************************************************/

xcb_list_hosts_reply_t *
xcb_list_hosts_reply (xcb_connection_t         *c  /**< */,
                      xcb_list_hosts_cookie_t   cookie  /**< */,
                      xcb_generic_error_t     **e  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_set_access_control_checked
 **
 ** @param xcb_connection_t *c
 ** @param uint8_t           mode
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_set_access_control_checked (xcb_connection_t *c  /**< */,
                                uint8_t           mode  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_set_access_control
 **
 ** @param xcb_connection_t *c
 ** @param uint8_t           mode
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_set_access_control (xcb_connection_t *c  /**< */,
                        uint8_t           mode  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_set_close_down_mode_checked
 **
 ** @param xcb_connection_t *c
 ** @param uint8_t           mode
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_set_close_down_mode_checked (xcb_connection_t *c  /**< */,
                                 uint8_t           mode  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_set_close_down_mode
 **
 ** @param xcb_connection_t *c
 ** @param uint8_t           mode
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_set_close_down_mode (xcb_connection_t *c  /**< */,
                         uint8_t           mode  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_kill_client_checked
 **
 ** @param xcb_connection_t *c
 ** @param uint32_t          resource
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_kill_client_checked (xcb_connection_t *c  /**< */,
                         uint32_t          resource  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_kill_client
 **
 ** @param xcb_connection_t *c
 ** @param uint32_t          resource
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_kill_client (xcb_connection_t *c  /**< */,
                 uint32_t          resource  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_rotate_properties_checked
 **
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @param uint16_t          atoms_len
 ** @param int16_t           delta
 ** @param const xcb_atom_t *atoms
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_rotate_properties_checked (xcb_connection_t *c  /**< */,
                               xcb_window_t      window  /**< */,
                               uint16_t          atoms_len  /**< */,
                               int16_t           delta  /**< */,
                               const xcb_atom_t *atoms  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_rotate_properties
 **
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @param uint16_t          atoms_len
 ** @param int16_t           delta
 ** @param const xcb_atom_t *atoms
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_rotate_properties (xcb_connection_t *c  /**< */,
                       xcb_window_t      window  /**< */,
                       uint16_t          atoms_len  /**< */,
                       int16_t           delta  /**< */,
                       const xcb_atom_t *atoms  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_force_screen_saver_checked
 **
 ** @param xcb_connection_t *c
 ** @param uint8_t           mode
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_force_screen_saver_checked (xcb_connection_t *c  /**< */,
                                uint8_t           mode  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_force_screen_saver
 **
 ** @param xcb_connection_t *c
 ** @param uint8_t           mode
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_force_screen_saver (xcb_connection_t *c  /**< */,
                        uint8_t           mode  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_set_pointer_mapping_cookie_t xcb_set_pointer_mapping
 **
 ** @param xcb_connection_t *c
 ** @param uint8_t           map_len
 ** @param const uint8_t    *map
 ** @returns xcb_set_pointer_mapping_cookie_t
 **
 *****************************************************************************/

xcb_set_pointer_mapping_cookie_t
xcb_set_pointer_mapping (xcb_connection_t *c  /**< */,
                         uint8_t           map_len  /**< */,
                         const uint8_t    *map  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */

/*****************************************************************************
 **
 ** xcb_set_pointer_mapping_cookie_t xcb_set_pointer_mapping_unchecked
 **
 ** @param xcb_connection_t *c
 ** @param uint8_t           map_len
 ** @param const uint8_t    *map
 ** @returns xcb_set_pointer_mapping_cookie_t
 **
 *****************************************************************************/

xcb_set_pointer_mapping_cookie_t
xcb_set_pointer_mapping_unchecked (xcb_connection_t *c  /**< */,
                                   uint8_t           map_len  /**< */,
                                   const uint8_t    *map  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_set_pointer_mapping_unchecked(). is used.
 * Otherwise, it stores the error if any.
 */

/*****************************************************************************
 **
 ** xcb_set_pointer_mapping_reply_t * xcb_set_pointer_mapping_reply
 **
 ** @param xcb_connection_t                  *c
 ** @param xcb_set_pointer_mapping_cookie_t   cookie
 ** @param xcb_generic_error_t              **e
 ** @returns xcb_set_pointer_mapping_reply_t *
 **
 *****************************************************************************/

xcb_set_pointer_mapping_reply_t *
xcb_set_pointer_mapping_reply (xcb_connection_t                  *c  /**< */,
                               xcb_set_pointer_mapping_cookie_t   cookie  /**< */,
                               xcb_generic_error_t              **e  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_get_pointer_mapping_cookie_t xcb_get_pointer_mapping
 **
 ** @param xcb_connection_t *c
 ** @returns xcb_get_pointer_mapping_cookie_t
 **
 *****************************************************************************/

xcb_get_pointer_mapping_cookie_t
xcb_get_pointer_mapping (xcb_connection_t *c  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */

/*****************************************************************************
 **
 ** xcb_get_pointer_mapping_cookie_t xcb_get_pointer_mapping_unchecked
 **
 ** @param xcb_connection_t *c
 ** @returns xcb_get_pointer_mapping_cookie_t
 **
 *****************************************************************************/

xcb_get_pointer_mapping_cookie_t
xcb_get_pointer_mapping_unchecked (xcb_connection_t *c  /**< */);


/*****************************************************************************
 **
 ** uint8_t * xcb_get_pointer_mapping_map
 **
 ** @param const xcb_get_pointer_mapping_reply_t *R
 ** @returns uint8_t *
 **
 *****************************************************************************/

uint8_t *
xcb_get_pointer_mapping_map (const xcb_get_pointer_mapping_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_get_pointer_mapping_map_length
 **
 ** @param const xcb_get_pointer_mapping_reply_t *R
 ** @returns int
 **
 *****************************************************************************/

int
xcb_get_pointer_mapping_map_length (const xcb_get_pointer_mapping_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_get_pointer_mapping_map_end
 **
 ** @param const xcb_get_pointer_mapping_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/

xcb_generic_iterator_t
xcb_get_pointer_mapping_map_end (const xcb_get_pointer_mapping_reply_t *R  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_get_pointer_mapping_unchecked(). is used.
 * Otherwise, it stores the error if any.
 */

/*****************************************************************************
 **
 ** xcb_get_pointer_mapping_reply_t * xcb_get_pointer_mapping_reply
 **
 ** @param xcb_connection_t                  *c
 ** @param xcb_get_pointer_mapping_cookie_t   cookie
 ** @param xcb_generic_error_t              **e
 ** @returns xcb_get_pointer_mapping_reply_t *
 **
 *****************************************************************************/

xcb_get_pointer_mapping_reply_t *
xcb_get_pointer_mapping_reply (xcb_connection_t                  *c  /**< */,
                               xcb_get_pointer_mapping_cookie_t   cookie  /**< */,
                               xcb_generic_error_t              **e  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_set_modifier_mapping_cookie_t xcb_set_modifier_mapping
 **
 ** @param xcb_connection_t    *c
 ** @param uint8_t              keycodes_per_modifier
 ** @param const xcb_keycode_t *keycodes
 ** @returns xcb_set_modifier_mapping_cookie_t
 **
 *****************************************************************************/

xcb_set_modifier_mapping_cookie_t
xcb_set_modifier_mapping (xcb_connection_t    *c  /**< */,
                          uint8_t              keycodes_per_modifier  /**< */,
                          const xcb_keycode_t *keycodes  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */

/*****************************************************************************
 **
 ** xcb_set_modifier_mapping_cookie_t xcb_set_modifier_mapping_unchecked
 **
 ** @param xcb_connection_t    *c
 ** @param uint8_t              keycodes_per_modifier
 ** @param const xcb_keycode_t *keycodes
 ** @returns xcb_set_modifier_mapping_cookie_t
 **
 *****************************************************************************/

xcb_set_modifier_mapping_cookie_t
xcb_set_modifier_mapping_unchecked (xcb_connection_t    *c  /**< */,
                                    uint8_t              keycodes_per_modifier  /**< */,
                                    const xcb_keycode_t *keycodes  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_set_modifier_mapping_unchecked(). is used.
 * Otherwise, it stores the error if any.
 */

/*****************************************************************************
 **
 ** xcb_set_modifier_mapping_reply_t * xcb_set_modifier_mapping_reply
 **
 ** @param xcb_connection_t                   *c
 ** @param xcb_set_modifier_mapping_cookie_t   cookie
 ** @param xcb_generic_error_t               **e
 ** @returns xcb_set_modifier_mapping_reply_t *
 **
 *****************************************************************************/

xcb_set_modifier_mapping_reply_t *
xcb_set_modifier_mapping_reply (xcb_connection_t                   *c  /**< */,
                                xcb_set_modifier_mapping_cookie_t   cookie  /**< */,
                                xcb_generic_error_t               **e  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_get_modifier_mapping_cookie_t xcb_get_modifier_mapping
 **
 ** @param xcb_connection_t *c
 ** @returns xcb_get_modifier_mapping_cookie_t
 **
 *****************************************************************************/

xcb_get_modifier_mapping_cookie_t
xcb_get_modifier_mapping (xcb_connection_t *c  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */

/*****************************************************************************
 **
 ** xcb_get_modifier_mapping_cookie_t xcb_get_modifier_mapping_unchecked
 **
 ** @param xcb_connection_t *c
 ** @returns xcb_get_modifier_mapping_cookie_t
 **
 *****************************************************************************/

xcb_get_modifier_mapping_cookie_t
xcb_get_modifier_mapping_unchecked (xcb_connection_t *c  /**< */);


/*****************************************************************************
 **
 ** xcb_keycode_t * xcb_get_modifier_mapping_keycodes
 **
 ** @param const xcb_get_modifier_mapping_reply_t *R
 ** @returns xcb_keycode_t *
 **
 *****************************************************************************/

xcb_keycode_t *
xcb_get_modifier_mapping_keycodes (const xcb_get_modifier_mapping_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_get_modifier_mapping_keycodes_length
 **
 ** @param const xcb_get_modifier_mapping_reply_t *R
 ** @returns int
 **
 *****************************************************************************/

int
xcb_get_modifier_mapping_keycodes_length (const xcb_get_modifier_mapping_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_keycode_iterator_t xcb_get_modifier_mapping_keycodes_iterator
 **
 ** @param const xcb_get_modifier_mapping_reply_t *R
 ** @returns xcb_keycode_iterator_t
 **
 *****************************************************************************/

xcb_keycode_iterator_t
xcb_get_modifier_mapping_keycodes_iterator (const xcb_get_modifier_mapping_reply_t *R  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_get_modifier_mapping_unchecked(). is used.
 * Otherwise, it stores the error if any.
 */

/*****************************************************************************
 **
 ** xcb_get_modifier_mapping_reply_t * xcb_get_modifier_mapping_reply
 **
 ** @param xcb_connection_t                   *c
 ** @param xcb_get_modifier_mapping_cookie_t   cookie
 ** @param xcb_generic_error_t               **e
 ** @returns xcb_get_modifier_mapping_reply_t *
 **
 *****************************************************************************/

xcb_get_modifier_mapping_reply_t *
xcb_get_modifier_mapping_reply (xcb_connection_t                   *c  /**< */,
                                xcb_get_modifier_mapping_cookie_t   cookie  /**< */,
                                xcb_generic_error_t               **e  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_no_operation_checked
 **
 ** @param xcb_connection_t *c
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_no_operation_checked (xcb_connection_t *c  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_no_operation
 **
 ** @param xcb_connection_t *c
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/

xcb_void_cookie_t
xcb_no_operation (xcb_connection_t *c  /**< */);
*)


implementation

end.

