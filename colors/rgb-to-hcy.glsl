#pragma glslify: EPSILON = require(../constants/epsilon)
#pragma glslify: HCY_WEIGHTS = require(./constants/hcy-weights)
#pragma glslify: hueToRgb = require(./constants/hue-to-rgb)

vec3 rgbToHcy(in vec3 rgb) {
  vec3 hcv = rgbToHcv(rgb);
  float y = dot(rgb, HCY_WEIGHTS);
  float z = dot(hueToRgb(hcv.x), HCY_WEIGHTS);
  if (y < z) {
    hcv.y *= z / (EPSILON + y);
  } else {
    hcv.y *= (1.0 - z) / (EPSILON + 1.0 - y);
  }
  return vec3(hcv.x, hcv.y, y);
}

#pragma glslify: export(rgbToHcy)
