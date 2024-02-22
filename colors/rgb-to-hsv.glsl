#pragma glslify: EPSILON = require(../constants/epsilon)
#pragma glslify: rgbToHcv = require(./rgb-to-hcv)

vec3 rgbToHsv(in vec3 rgb) {
  vec3 hcv = rgbToHcv(rgb);
  float s = hcv.y / (hcv.z + EPSILON);
  return vec3(hcv.x, s, hcv.z);
}

#pragma glslify: export(rgbToHsv)
