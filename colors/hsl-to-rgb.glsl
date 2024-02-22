#pragma glslify: hueToRgb = require(./hue-to-rgb)

vec3 hslToRgb(in vec3 hsl) {
  vec3 rgb = hueToRgb(hsl.x);
  float c = (1.0 - abs(2.0 * hsl.z - 1.0)) * hsl.y;
  return (rgb - vec3(0.5)) * c + hsl.z;
}

#pragma glslify: export(hslToRgb)
