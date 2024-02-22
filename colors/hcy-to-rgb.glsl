#pragma glslify: HCY_WEIGHTS = require(./constants/hcy-weights)
#pragma glslify: hueToRgb = require(./hue-to-rgb)

vec3 hcyToRgb(in vec3 hcy) {
  vec3 rgb = hueToRgb(hcy.x);
  float z = dot(rgb, HCY_WEIGHTS);
  if (hcy.z < z) {
    hcy.y *= hcy.z / z;
  } else if (z < 1.0) {
    hcy.y *= (1.0 - hcy.z) / (1.0 - z);
  }
  return (rgb - z) * hcy.y + hcy.z;
}

#pragma glslify: export(hcyToRgb)
