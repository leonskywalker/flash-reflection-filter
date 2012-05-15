package {
	import baidu.effects.ReflectionFilter;

	import flash.display.Bitmap;
	import flash.display.Sprite;
	import flash.display.StageScaleMode;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.filters.ShaderFilter;

	[SWF(backgroundColor="#FFFFFF", frameRate="31", width="640", height="640")]
	public class Example extends Sprite {
		[Embed(source="YellowFlowers.png")]
		private var imageClass : Class;
		private var image : Bitmap;
		private var filter : ShaderFilter;

		public function Main() {
			this.addEventListener(Event.ADDED_TO_STAGE, addHandler);
		}

		private function addHandler(event : Event) : void {
			stage.scaleMode = StageScaleMode.NO_SCALE;

			image = new imageClass();
			addChild(image);
			image.x = 10;
			image.y = 10;

			filter = new ReflectionFilter(image.height, 50, 0.5, 3);
			image.filters = [filter];

			stage.addEventListener(MouseEvent.CLICK, clickHandler);
		}


		private function clickHandler(event : MouseEvent) : void {
			if (image.filters.length > 0) {
				image.filters = [];
			} else {
				image.filters = [filter];
			}
			
			/*
			this.graphics.clear();
			this.graphics.lineStyle(4,0xff0000);
			this.graphics.drawRect(image.x, image.y, image.width, image.height);
			trace(image.getBounds(this).height);
			 * 
			 */
		}
	}
}
