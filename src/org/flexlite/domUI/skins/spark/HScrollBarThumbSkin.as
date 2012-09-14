package org.flexlite.domUI.skins.spark
{
	import org.flexlite.domUI.skins.SparkSkin;
	import org.flexlite.domUI.primitives.Rect;
	import org.flexlite.domUI.primitives.graphic.GradientEntry;
	import org.flexlite.domUI.primitives.graphic.LinearGradient;
	import org.flexlite.domUI.primitives.graphic.LinearGradientStroke;
	import org.flexlite.domUI.primitives.graphic.SolidColor;
	import org.flexlite.domUI.primitives.graphic.SolidColorStroke;
	import org.flexlite.domUI.states.SetProperty;
	import org.flexlite.domUI.states.State;
	
	/**
	 * 水平滚动条滑块按钮默认皮肤
	 * @author DOM
	 */
	public class HScrollBarThumbSkin extends SparkSkin
	{
		//==========================================================================
		//                                定义成员变量
		//==========================================================================
		public var __HScrollBarThumbSkin_GradientEntry1:GradientEntry;
		
		public var __HScrollBarThumbSkin_GradientEntry2:GradientEntry;
		
		public var __HScrollBarThumbSkin_GradientEntry3:GradientEntry;
		
		public var __HScrollBarThumbSkin_GradientEntry4:GradientEntry;
		
		public var __HScrollBarThumbSkin_SolidColor2:SolidColor;
		
		
		//==========================================================================
		//                                定义构造函数
		//==========================================================================
		public function HScrollBarThumbSkin()
		{
			super();
			
			this.elementsContent = [_HScrollBarThumbSkin_Rect1_i(),_HScrollBarThumbSkin_Rect2_i(),_HScrollBarThumbSkin_Rect3_i(),_HScrollBarThumbSkin_Rect4_i(),_HScrollBarThumbSkin_Rect5_i(),_HScrollBarThumbSkin_Rect6_i(),_HScrollBarThumbSkin_Rect7_i()];
			this.currentState = "up";
			
			states = [
				new State ({name: "up",
					overrides: [
					]
				})
				,
				new State ({name: "over",
					overrides: [
						new SetProperty().initializeFromObject({
							target:"__HScrollBarThumbSkin_GradientEntry1",
							name:"color",
							value:0xC7C7C7
						})
						,
						new SetProperty().initializeFromObject({
							target:"__HScrollBarThumbSkin_GradientEntry2",
							name:"color",
							value:0xB2B2B2
						})
						,
						new SetProperty().initializeFromObject({
							target:"__HScrollBarThumbSkin_SolidColor2",
							name:"alpha",
							value:0.33
						})
						,
						new SetProperty().initializeFromObject({
							target:"__HScrollBarThumbSkin_GradientEntry3",
							name:"alpha",
							value:0.55
						})
						,
						new SetProperty().initializeFromObject({
							target:"__HScrollBarThumbSkin_GradientEntry4",
							name:"alpha",
							value:0.121
						})
					]
				})
				,
				new State ({name: "down",
					overrides: [
						new SetProperty().initializeFromObject({
							target:"__HScrollBarThumbSkin_GradientEntry1",
							name:"color",
							value:0xBBBBBB
						})
						,
						new SetProperty().initializeFromObject({
							target:"__HScrollBarThumbSkin_GradientEntry2",
							name:"color",
							value:0x8B8B8B
						})
						,
						new SetProperty().initializeFromObject({
							target:"__HScrollBarThumbSkin_SolidColor2",
							name:"alpha",
							value:0.33
						})
						,
						new SetProperty().initializeFromObject({
							target:"__HScrollBarThumbSkin_GradientEntry3",
							name:"alpha",
							value:0.12
						})
						,
						new SetProperty().initializeFromObject({
							target:"__HScrollBarThumbSkin_GradientEntry4",
							name:"alpha",
							value:0.0264
						})
					]
				})
				,
				new State ({name: "disabled",
					overrides: [
					]
				})
			];
		}
		
		
		//==========================================================================
		//                                定义成员方法
		//==========================================================================
		private function _HScrollBarThumbSkin_GradientEntry1_i():GradientEntry
		{
			var temp:GradientEntry = new GradientEntry();
			__HScrollBarThumbSkin_GradientEntry1 = temp;
			temp.color = 0xFAFAFA;
			return temp;
		}
		
		private function _HScrollBarThumbSkin_GradientEntry2_i():GradientEntry
		{
			var temp:GradientEntry = new GradientEntry();
			__HScrollBarThumbSkin_GradientEntry2 = temp;
			temp.color = 0xF0F0F0;
			return temp;
		}
		
		private function _HScrollBarThumbSkin_GradientEntry3_i():GradientEntry
		{
			var temp:GradientEntry = new GradientEntry();
			__HScrollBarThumbSkin_GradientEntry3 = temp;
			temp.color = 0xFFFFFF;
			temp.alpha = 1;
			return temp;
		}
		
		private function _HScrollBarThumbSkin_GradientEntry4_i():GradientEntry
		{
			var temp:GradientEntry = new GradientEntry();
			__HScrollBarThumbSkin_GradientEntry4 = temp;
			temp.color = 0xFFFFFF;
			temp.alpha = 0.22;
			return temp;
		}
		
		private function _HScrollBarThumbSkin_LinearGradient1_i():LinearGradient
		{
			var temp:LinearGradient = new LinearGradient();
			temp.rotation = 90;
			temp.entries = [_HScrollBarThumbSkin_GradientEntry1_i(),_HScrollBarThumbSkin_GradientEntry2_i()];
			return temp;
		}
		
		private function _HScrollBarThumbSkin_LinearGradientStroke1_i():LinearGradientStroke
		{
			var temp:LinearGradientStroke = new LinearGradientStroke();
			temp.rotation = 90;
			temp.weight = 1;
			temp.entries = [_HScrollBarThumbSkin_GradientEntry3_i(),_HScrollBarThumbSkin_GradientEntry4_i()];
			return temp;
		}
		
		private function _HScrollBarThumbSkin_Rect1_i():Rect
		{
			var temp:Rect = new Rect();
			temp.left = 1;
			temp.top = 0;
			temp.right = 2;
			temp.bottom = 0;
			temp.minWidth = 14;
			temp.minHeight = 14;
			temp.stroke = _HScrollBarThumbSkin_SolidColorStroke1_i();
			temp.fill = _HScrollBarThumbSkin_SolidColor1_i();
			return temp;
		}
		
		private function _HScrollBarThumbSkin_Rect2_i():Rect
		{
			var temp:Rect = new Rect();
			temp.left = 2;
			temp.top = 1;
			temp.right = 3;
			temp.bottom = 1;
			temp.fill = _HScrollBarThumbSkin_LinearGradient1_i();
			return temp;
		}
		
		private function _HScrollBarThumbSkin_Rect3_i():Rect
		{
			var temp:Rect = new Rect();
			temp.left = 2;
			temp.top = 1;
			temp.right = 3;
			temp.height = 6;
			temp.fill = _HScrollBarThumbSkin_SolidColor2_i();
			return temp;
		}
		
		private function _HScrollBarThumbSkin_Rect4_i():Rect
		{
			var temp:Rect = new Rect();
			temp.left = 2;
			temp.top = 1;
			temp.right = 3;
			temp.bottom = 1;
			temp.stroke = _HScrollBarThumbSkin_LinearGradientStroke1_i();
			return temp;
		}
		
		private function _HScrollBarThumbSkin_Rect5_i():Rect
		{
			var temp:Rect = new Rect();
			temp.left = 0;
			temp.top = 1;
			temp.bottom = 1;
			temp.width = 1;
			temp.fill = _HScrollBarThumbSkin_SolidColor3_i();
			return temp;
		}
		
		private function _HScrollBarThumbSkin_Rect6_i():Rect
		{
			var temp:Rect = new Rect();
			temp.right = 0;
			temp.top = 1;
			temp.bottom = 1;
			temp.width = 2;
			temp.fill = _HScrollBarThumbSkin_SolidColor4_i();
			return temp;
		}
		
		private function _HScrollBarThumbSkin_Rect7_i():Rect
		{
			var temp:Rect = new Rect();
			temp.right = 1;
			temp.top = 1;
			temp.bottom = 1;
			temp.width = 1;
			temp.fill = _HScrollBarThumbSkin_SolidColor5_i();
			return temp;
		}
		
		private function _HScrollBarThumbSkin_SolidColor1_i():SolidColor
		{
			var temp:SolidColor = new SolidColor();
			temp.color = 0xFFFFFF;
			return temp;
		}
		
		private function _HScrollBarThumbSkin_SolidColor2_i():SolidColor
		{
			var temp:SolidColor = new SolidColor();
			__HScrollBarThumbSkin_SolidColor2 = temp;
			temp.color = 0xFFFFFF;
			temp.alpha = 0.75;
			return temp;
		}
		
		private function _HScrollBarThumbSkin_SolidColor3_i():SolidColor
		{
			var temp:SolidColor = new SolidColor();
			temp.color = 0x000000;
			temp.alpha = 0.12;
			return temp;
		}
		
		private function _HScrollBarThumbSkin_SolidColor4_i():SolidColor
		{
			var temp:SolidColor = new SolidColor();
			temp.color = 0x000000;
			temp.alpha = 0.12;
			return temp;
		}
		
		private function _HScrollBarThumbSkin_SolidColor5_i():SolidColor
		{
			var temp:SolidColor = new SolidColor();
			temp.color = 0x000000;
			temp.alpha = 0.12;
			return temp;
		}
		
		private function _HScrollBarThumbSkin_SolidColorStroke1_i():SolidColorStroke
		{
			var temp:SolidColorStroke = new SolidColorStroke();
			temp.color = 0x5C5C5C;
			temp.weight = 1;
			return temp;
		}
		
	}
}