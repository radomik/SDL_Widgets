
#ifndef _StackList_h_
	#define _StackList_h_
	#include "../Widget.h"
	#include "../../srcCommon/StdDefinitions.h"
	#include "../../srcCommon/Types.h"
	
	extern const Type *StackList_t;
	inline const Type *StackList_gt(); // getter for StackList_t
	
	struct StackList {
		Widget 			widget;
		StackListItem	*items;
		uint 			size;
		uint 			count;
		uint			first_to_valid;
		uint			bg_color;	
		layouttype		layout;
		Spacing			padding;
		bool			all_widgets_internal; /* default false; free(delete()) of items only on self destroy 	 */
	};										  /* setting widget->internal = true, done on append/add 		 	 */
											  /* StackList_removeWidget() does not destroys removed widget   	 */
											  /* instead it returns removed widget or NULL if nothing is deleted */

	// default constructor
	// if all_widgets_internal = true then StackList sets every added/appended widget .internal = true
	// then, on stacklist destroy all widgets with .internal = true are deleted
	// if all_widgets_internal=false then only deleted widgets are this with manually set flag .internal
	StackList *StackList_new(layouttype layout, uint size, bool all_widgets_internal);
	
	/// constructor used by classes inheriting from StackList
	inline void StackList_new2(StackList *this, layouttype layout, uint size, bool all_widgets_internal);
	
	// destructor called by inheriting classes
	inline void StackList_destroy(StackList *this);

	// Add single widget to end of StackList
	perr StackList_addWidgetLast(	StackList *this, Widget *widget, 
									alignment halign, alignment valign,
									usint marg_top, usint marg_left, 
									usint marg_bot, usint marg_right);
									
	// Add single widget to top of StackList
	perr StackList_addWidgetFirst(	StackList *this, Widget *widget, 
									alignment halign, alignment valign,
									usint marg_top, usint marg_left, 
									usint marg_bot, usint marg_right);
	
	// append widget at given (existing) index
	perr StackList_appendWidgetAt(	StackList *this, Widget *widget, 
									uint index,
									alignment halign, alignment valign,
									usint marg_top, usint marg_left, 
									usint marg_bot, usint marg_right
								 );

	// remove widget from given index
	// returns removed widget or NULL if nothing is removed
	Widget* StackList_removeWidget(StackList *this, uint index);

	// change widget attributes at given index
	perr StackList_setAttributesAt(StackList *this, uint index, 
									alignment halign, alignment valign,
									usint marg_top,  usint marg_left, 
									usint marg_bot,  usint marg_right);
	
	// change stacklist padding
	inline void StackList_setPadding(StackList *this, usint pad_top, usint pad_left, usint pad_bottom, usint pad_right);
	
	// change stacklist background color
	inline void StackList_setBgColor(StackList *this, uint bg_color);
	
	inline void StackList_print(StackList *this);
#endif
