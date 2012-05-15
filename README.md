Flash Reflection Filter
=======================
Add reflection effect in your flash project in no-sweat way!

![](https://github.com/leonskywalker/flash-reflection-filter/raw/master/preview.jpg)

## Usage: ##

`filter = new ReflectionFilter(image.height, 50, 0.5, 3);
image.filters = [filter];`

## Prameters: ##
- **`imageHeight`**  the height of the original image(we need this because pixelbender kernels cannot get the info of the image)
- **`reflectionHeight`**  the height of the reflection
- **`reflectionAlpha`**  the alpha value at the begin of the reflection
- **`reflectionOffset`**  the gap between the image and the reflection








