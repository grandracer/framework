package org.flexlite.domUI.components
{
	import org.flexlite.domUI.components.supportClasses.ButtonBase;
	import org.flexlite.domUI.core.IMovieClip;
	import org.flexlite.domUI.utils.MovieClipUtil;
	
	import flash.display.DisplayObject;
	import flash.display.MovieClip;
	import flash.utils.Dictionary;
	
	[DXML(show="true")]
	
	/**
	 * 按钮控件
	 * @author DOM
	 */	
	public class Button extends ButtonBase
	{
		public function Button()
		{
			super();
			buttonMode = true;
			useHandCursor = true;
		}   
		
		override protected function get hostComponentKey():Object
		{
			return Button;
		}
		
		/**
		 * 影片剪辑的状态帧标签索引字典
		 */		
		private var frameDic:Dictionary;
		
		override protected function attachSkin(skin:Object):void
		{
			super.attachSkin(skin);
			if(skin is MovieClip||skin is IMovieClip)
			{
				frameDic = MovieClipUtil.getFrameDic(skin,["up","over","down"]);
				frameDic["disabled"] = frameDic["up"];
			}
			if(skin is MovieClip)
			{
				(skin as MovieClip).gotoAndStop(frameDic["up"]);
			}
			else if(skin is IMovieClip)
			{
				(skin as IMovieClip).gotoAndStop(frameDic["up"]);
			}
		}
		
		override protected function validateSkinState():void
		{
			super.validateSkinState();
			var curSkin:Object = getCurrentSkin();
			if(curSkin is MovieClip)
			{
				(curSkin as MovieClip).gotoAndStop(frameDic[getCurrentSkinState()]);
			}
			else if(curSkin is IMovieClip)
			{
				(curSkin as IMovieClip).gotoAndStop(frameDic[getCurrentSkinState()]);
			}
		}
		
	}
}