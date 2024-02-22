#pragma glslify: PI = require(../constants/pi)

float sineInOut(float t) {
  return -0.5 * (cos(PI * t) - 1.0);
}

#pragma glslify: export(sineInOut)
