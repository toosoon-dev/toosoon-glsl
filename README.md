# TOOSOON GLSL

GLSL utility functions.

## Installation

Yarn:

```properties
$ yarn add toosoon-glsl
```

NPM:

```properties
$ npm install toosoon-glsl
```

## Functions

### Color correction

```glsl
#pragma glslify: blur = require(toosoon-glsl/color-correction/blur)
#pragma glslify: bsc = require(toosoon-glsl/color-correction/bsc)
#pragma glslify: grayscale = require(toosoon-glsl/color-correction/grayscale)
```

### Colors

**Credits**: GLSL functions of [Ian Taylor HLSL implementations of RGB-to-HSV](https://www.chilliant.com/rgb2hsv.html).

```glsl
#pragma glslify: hclToRgb = require(toosoon-glsl/colors/hcl-to-rgb)
#pragma glslify: hcyToRgb = require(toosoon-glsl/colors/hcy-to-rgb)
#pragma glslify: hslToRgb = require(toosoon-glsl/colors/hsl-to-rgb)
#pragma glslify: hsvToRgb = require(toosoon-glsl/colors/hsv-to-rgb)
#pragma glslify: hueToRgb = require(toosoon-glsl/colors/hue-to-rgb)
#pragma glslify: rgbToHcl = require(toosoon-glsl/colors/rgb-to-hcl)
#pragma glslify: rgbToHcv = require(toosoon-glsl/colors/rgb-to-hcv)
#pragma glslify: rgbToHcy = require(toosoon-glsl/colors/rgb-to-hcy)
#pragma glslify: rgbToHsl = require(toosoon-glsl/colors/rgb-to-hsl)
#pragma glslify: rgbToHsv = require(toosoon-glsl/colors/rgb-to-hsv)
```

### Easings

**Credits**: [Robert Penner's easing functions](https://github.com/glslify/glsl-easings).

```glsl
#pragma glslify: backInOut = require(toosoon-glsl/easings/back-in-out)
#pragma glslify: backIn = require(toosoon-glsl/easings/back-in)
#pragma glslify: backOut = require(toosoon-glsl/easings/back-out)
#pragma glslify: bounceInOt = require(toosoon-glsl/easings/bounce-in-out)
#pragma glslify: bounceIn = require(toosoon-glsl/easings/bounce-in)
#pragma glslify: bounceOut = require(toosoon-glsl/easings/bounce-out)
#pragma glslify: circularInOut = require(toosoon-glsl/easings/circular-in-out)
#pragma glslify: circularIn = require(toosoon-glsl/easings/circular-in)
#pragma glslify: circularOut = require(toosoon-glsl/easings/circular-out)
#pragma glslify: cubicInOut = require(toosoon-glsl/easings/cubic-in-out)
#pragma glslify: cubicIn = require(toosoon-glsl/easings/cubic-in)
#pragma glslify: cubicOut = require(toosoon-glsl/easings/cubic-out)
#pragma glslify: elasticInOut = require(toosoon-glsl/easings/elastic-in-out)
#pragma glslify: elasticIn = require(toosoon-glsl/easings/elastic-in)
#pragma glslify: elasticOut = require(toosoon-glsl/easings/elastic-out)
#pragma glslify: exponentialInOut = require(toosoon-glsl/easings/exponential-in-out)
#pragma glslify: exponentialIn = require(toosoon-glsl/easings/exponential-in)
#pragma glslify: exponentialOut = require(toosoon-glsl/easings/exponential-out)
#pragma glslify: linear = require(toosoon-glsl/easings/linear)
#pragma glslify: quadraticInOut = require(toosoon-glsl/easings/quadratic-in-out)
#pragma glslify: quadraticIn = require(toosoon-glsl/easings/quadratic-in)
#pragma glslify: quadraticOut = require(toosoon-glsl/easings/quadratic-out)
#pragma glslify: quarticInOut = require(toosoon-glsl/easings/quartic-in-out)
#pragma glslify: quarticIn = require(toosoon-glsl/easings/quartic-in)
#pragma glslify: quarticOut = require(toosoon-glsl/easings/quartic-out)
#pragma glslify: quinticInOut = require(toosoon-glsl/easings/quintic-in-out)
#pragma glslify: quinticIn = require(toosoon-glsl/easings/quintic-in)
#pragma glslify: quinticOut = require(toosoon-glsl/easings/quintic-out)
#pragma glslify: sineInOut = require(toosoon-glsl/easings/sine-in-out)
#pragma glslify: sineIn = require(toosoon-glsl/easings/sine-in)
#pragma glslify: sineOut = require(toosoon-glsl/easings/sine-out)
```

### Geometry

```glsl
#pragma glslify: circle = require(toosoon-glsl/geometry/circle)
#pragma glslify: contain = require(toosoon-glsl/geometry/contain)
#pragma glslify: cover = require(toosoon-glsl/geometry/cover)
#pragma glslify: polygon = require(toosoon-glsl/geometry/polygon)
#pragma glslify: rotate = require(toosoon-glsl/geometry/rotate)
```

### Geometry 3D

```glsl
#pragma glslify: normalizeDisplaced = require(toosoon-glsl/geometry-3d/normalize-displaced)
#pragma glslify: orthogonal = require(toosoon-glsl/geometry-3d/orthogonal)
```

### Maths

```glsl
#pragma glslify: max3 = require(toosoon-glsl/maths/max3)
#pragma glslify: max4 = require(toosoon-glsl/maths/max4)
#pragma glslify: min3 = require(toosoon-glsl/maths/min3)
#pragma glslify: min4 = require(toosoon-glsl/maths/min4)
#pragma glslify: random = require(toosoon-glsl/maths/random)
#pragma glslify: sinCurve = require(toosoon-glsl/maths/sin-curve)
```

## Constants

```glsl
#pragma glslify: EPSILON = require(toosoon-glsl/constants/epsilon)
#pragma glslify: HALF_PI = require(toosoon-glsl/constants/half-pi)
#pragma glslify: PI = require(toosoon-glsl/constants/pi)
#pragma glslify: TWO_PI = require(toosoon-glsl/constants/two-pi)
```

## License

MIT License, see [LICENSE](https://github.com/toosoon-dev/toosoon-glsl/tree/master/LICENSE) for details
