package baidu.effects {
	import flash.utils.ByteArray;
	import flash.display.Shader;
	import flash.filters.ShaderFilter;

	/**
	 * @author leonskywalker
	 */
	public class ReflectionFilter extends ShaderFilter {
		[Embed(source="reflection.pbj", mimeType="application/octet-stream")]
		private var FilterDataClass : Class;
		private var _imageHeight : Number;
		private var _reflectionHeight : Number;
		private var _reflectionAlpha : Number;
		private var _reflectionOffset : Number;

		public function ReflectionFilter(imageHeight : Number, reflectionHeight : Number = 50, reflectionAlpha : Number = 0.5, reflectionOffset : Number = 0) {
			var shader : Shader = new Shader(new FilterDataClass() as ByteArray);

			_imageHeight = imageHeight;
			_reflectionHeight = reflectionHeight;
			_reflectionAlpha = reflectionAlpha;
			_reflectionOffset = reflectionOffset;
			
			
			super(shader);
			updateParameters();

			this.bottomExtension = reflectionHeight + reflectionOffset;
		}
		
		private function updateParameters():void{
			shader.data.imageHeight.value = [_imageHeight];
			shader.data.reflectionHeight.value = [_reflectionHeight];
			shader.data.reflectionAlpha.value = [_reflectionAlpha];
			shader.data.reflectionOffset.value = [_reflectionOffset];
			
		}

		public function get reflectionOffset() : Number {
			return _reflectionOffset;
		}

		public function set reflectionOffset(reflectionOffset : Number) : void {
			_reflectionOffset = reflectionOffset;
			updateParameters();
		}

		public function get reflectionAlpha() : Number {
			return _reflectionAlpha;
		}

		public function set reflectionAlpha(reflectionAlpha : Number) : void {
			_reflectionAlpha = reflectionAlpha;
			updateParameters();
		}

		public function get reflectionHeight() : Number {
			return _reflectionHeight;
		}

		public function set reflectionHeight(reflectionHeight : Number) : void {
			_reflectionHeight = reflectionHeight;
			updateParameters();
		}

		public function get imageHeight() : Number {
			return _imageHeight;
		}

		public function set imageHeight(imageHeight : Number) : void {
			_imageHeight = imageHeight;
			updateParameters();
		}
	}
}
