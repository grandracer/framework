package org.flexlite.domUI.components.supportClasses
{


	import flash.events.IEventDispatcher;

	import org.flexlite.domUI.components.IItemRenderer;
	import org.flexlite.domUI.events.RendererExistenceEvent;

	[DXML(show="false")]

	/**
	 * 项呈示器基类
	 * @author DOM
	 */
	public class ItemRenderer extends ButtonBase implements IItemRenderer
	{
		public function ItemRenderer()
		{
			super();
			mouseChildren = true;
			buttonMode = false;
			useHandCursor = false;
		}

		/**
		 * @inheritDoc
		 */
		override protected function get hostComponentKey():Object
		{
			return ItemRenderer;
		}

		private var dataChangedFlag:Boolean = false;
		private var _untypedData:Object;
		/**
		 * @inheritDoc
		 */
		public function get data():Object
		{
			return _untypedData;
		}
		/**
		 * @inheritDoc
		 */
		public function set data(value:Object):void
		{
			_untypedData = value;

			if(initialized||parent)
			{
				dataChangedFlag = false;
				dataChanged();
			}
			else
			{
				dataChangedFlag = true;
				invalidateProperties();
			}
		}
		/**
		 * 子类复写此方法以在data数据源发生改变时跟新显示列表。
		 * 与直接复写data的setter方法不同，它会确保在皮肤已经附加完成后再被调用。
		 */
		protected function dataChanged():void
		{
			var event:RendererExistenceEvent = new RendererExistenceEvent(RendererExistenceEvent.RENDERER_DATA_CHANGE, false, false, this, _itemIndex, _untypedData);
			var iowner:IEventDispatcher = IEventDispatcher(owner);
			var iparent:IEventDispatcher = IEventDispatcher(parent);
			iparent.dispatchEvent(event);
			if (iowner != iparent) iowner.dispatchEvent(event);
		}

		private var _selected:Boolean = false;
		/**
		 * @inheritDoc
		 */
		public function get selected():Boolean
		{
			return _selected;
		}

		public function set selected(value:Boolean):void
		{
			if(_selected==value)
				return;
			_selected = value;
			invalidateSkinState();
		}

		private var _itemIndex:int = -1;
		/**
		 * @inheritDoc
		 */
		public function get itemIndex():int
		{
			return _itemIndex;
		}

		public function set itemIndex(value:int):void
		{
			_itemIndex = value;
		}

		/**
		 * @inheritDoc
		 */
		override protected function commitProperties():void
		{
			super.commitProperties();
			if (dataChangedFlag)
			{
				dataChangedFlag = false;
				dataChanged();
			}
		}

		/**
		 * @inheritDoc
		 */
		override protected function getCurrentSkinState():String
		{
			if(_selected)
				return "down";
			return super.getCurrentSkinState();
		}
	}
}
