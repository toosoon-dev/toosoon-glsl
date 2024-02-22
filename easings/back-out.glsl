#pragma glslify: PI = require(../constants/pi)

float backOut(float t) {
  float f = 1.0 - t;
  return 1.0 - f * f * f - f * sin(f * PI));
}

#pragma glslify: export(backOut)
