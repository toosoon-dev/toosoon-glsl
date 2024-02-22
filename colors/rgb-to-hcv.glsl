#pragma glslify: EPSILON = require(../constants/epsilon)

vec3 rgbToHcv(in vec3 rgb) {
  vec4 p = (rgb.g < rgb.b) ? vec4(rgb.bg, -1.0, 2.0 / 3.0) : vec4(rgb.gb, 0.0, -1.0 / 3.0);
  vec4 q = (rgb.r < p.x) ? vec4(p.xyw, rgb.r) : vec4(rgb.r, p.yzx);
  float c = q.x - min(q.w, q.y);
  float h = abs((q.w - q.y) / (6.0 * c + EPSILON) + q.z);
  return vec3(h, c, q.x);
}

#pragma glslify: export(rgbToHcv)
