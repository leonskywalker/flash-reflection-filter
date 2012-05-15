Flash Reflection Filter
=======================
The filter will create a reflection of the original image at the bottom.

## Usage: ##

`filter = new ReflectionFilter(image.height, 50, 0.5, 3);
image.filters = [filter];`

## Prameters: ##
- **`imageHeight`**  the height of the original image(we need this because pixelbender kernels cannot get the info of the image)
- **`reflectionHeight`**  the height of the reflection
- **`reflectionAlpha`**  the alpha value at the begin of the reflection
- **`reflectionOffset`**  the gap between the image and the reflection








