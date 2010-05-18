////////////////////////////////////////////////////////////////////////////////
//
// Copyright © 2008 ESRI
//
// All rights reserved under the copyright laws of the United States.
// You may freely redistribute and use this software, with or
// without modification, provided you include the original copyright
// and use restrictions.  See use restrictions in the file:
// <install location>/FlexViewer/License.txt
//
////////////////////////////////////////////////////////////////////////////////
package org
{
	import flash.events.Event;
	
	public class AppEvent extends Event
	{
		
		
		public static const APP_ERROR:String = "appError";
		public static const SWITCH_STATE:String = "switchState";
		public static const SHOWHUD:String = "showHUD";
		public static const HIDEHUD:String = "hideHUD";
		
		public static const DATA_ADDED:String       	= "dataAdded";
		
		/**
		 * For widget chain. TBD
		 */
		public static const DATA_UPDATED:String       	= "dataUpdated";
		
		/**
		 * for widget chain. TBD
		 */
		public static const DATA_FETCH:String       	= "dataFetch";
		
		
		//--------------------------------------------------------------------------
		//
		//  Constructor
		//
		//--------------------------------------------------------------------------	
		
		public function AppEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false, data:Object=null)
		{
			if (data != null) _data = data;
			super(type, bubbles, cancelable);
		}
		
		//--------------------------------------------------------------------------
		//
		//  Properties
		//
		//--------------------------------------------------------------------------
		
		private var _data:Object;
		
		/**
		 * The data will be passed via the event. It allows even dispatcher publishes
		 * data to event listener(s).
		 */
		public function get data():Object
		{
			return _data;
		} 
		
		/**
		 * @private
		 */
		public function set data(data:Object):void
		{
			_data = data;
		}
		
	}
}