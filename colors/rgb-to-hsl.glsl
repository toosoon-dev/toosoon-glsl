#pragma glslify: EPSILON = require(../constants/epsilon)
#pragma glslify: rgbToHcv = require(./rgb-to-hcv)

vec3 rgbToHsl(in vec3 rgb) {
  vec3 hcv = rgbToHcv(rgb);
  float l = hcv.z - hcv.y * 0.5;
  float s = hcv.y / (1.0 - abs(l * 2.0 - 1.0) + EPSILON);
  return vec3(hcv.x, s, l);
}

#pragma glslify: export(rgbToHsl)
