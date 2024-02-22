#pragma glslify: hueToRgb = require(./hue-to-rgb)

vec3 hsvToRgb(in vec3 hsv) {
  vec3 rgb = hueToRgb(hsv.x);
  return ((rgb - vec3(1.0)) * hsv.y + vec3(1.0)) * hsv.z;
}

#pragma glslify: export(hsvToRgb)
