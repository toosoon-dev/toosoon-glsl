#pragma glslify: PI = require(../constants/pi)
#pragma glslify: HCL_GAMMA = require(./constants/hcl-gamma)
#pragma glslify: HCL_Y0 = require(./constants/hcl-y0)
#pragma glslify: HCL_MAX_L = require(./constants/hcl-max-l)

vec3 hclToRgb(in vec3 hcl) {
  vec3 rgb = vec3(0.0);
  if (hcl.z != 0.0) {
    float h = hcl.x;
    float c = hcl.y;
    float l = hcl.z * HCL_MAX_L;
    float q = exp((1.0 - c / (2.0 * l)) * (HCL_GAMMA / HCL_Y0));
    float u = (2.0 * l - c) / (2.0 * q - 1.0);
    float v = c / q;
    float a = (h + min(fract(2.0 * h) / 4.0, fract(-2.0 * h) / 8.0)) * PI * 2.0;
    float t;
    h *= 6.0;
    if (h <= 0.999) {
      t = tan(a);
      rgb.r = 1.0;
      rgb.g = t / (1.0 + t);
    } else if (h <= 1.001) {
      rgb.r = 1.0;
      rgb.g = 1.0;
    } else if (h <= 2.0) {
      t = tan(a);
      rgb.r = (1.0 + t) / t;
      rgb.g = 1.0;
    } else if (h <= 3.0) {
      t = tan(a);
      rgb.g = 1.0;
      rgb.b = 1.0 + t;
    } else if (h <= 3.999) {
      t = tan(a);
      rgb.g = 1.0 / (1.0 + t);
      rgb.b = 1.0;
    } else if (h <= 4.001) {
      rgb.g = 0.0;
      rgb.b = 1.0;
    } else if (h <= 5.0) {
      t = tan(a);
      rgb.r = -1.0 / t;
      rgb.b = 1.0;
    } else {
      t = tan(a);
      rgb.r = 1.0;
      rgb.b = -t;
    }
    rgb = rgb * v + u;
  }
  return rgb;
}

#pragma glslify: export(hclToRgb)
