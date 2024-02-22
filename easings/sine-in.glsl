#pragma glslify: HALF_PI = require(../constants/half-pi)

float sineIn(float t) {
  return sin((t - 1.0) * HALF_PI) + 1.0;
}

#pragma glslify: export(sineIn)
