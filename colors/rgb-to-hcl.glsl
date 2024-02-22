#pragma glslify: HCL_GAMMA = require(./constants/hcl-gamma)
#pragma glslify: HCL_Y0 = require(./constants/hcl-y0)
#pragma glslify: HCL_MAX_L = require(./constants/hcl-max-l)

vec3 rgbToHcl(in vec3 rgb) {
  vec3 hcl;
  float h = 0.0;
  float u = min(rgb.r, min(rgb.g, rgb.b));
  float v = max(rgb.r, max(rgb.g, rgb.b));
  float q = HCL_GAMMA / HCL_Y0;
  hcl.y = v - u;
  if (hcl.y != 0.0) {
    h = atan(rgb.g - rgb.b, rgb.r - rgb.g) / PI;
    q *= u / v;
  }
  q = exp(q);
  hcl.x = fract(h / 2.0 - min(fract(h), fract(-h)) / 6.0);
  hcl.y *= q;
  hcl.z = mix(-u, v, q) / (HCL_MAX_L * 2.0);
  return hcl;
}

#pragma glslify: export(rgbToHcl)
