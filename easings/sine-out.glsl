#pragma glslify: HALF_PI = require(../constants/half-pi)

float sineOut(float t) {
  return sin(t * HALF_PI);
}

#pragma glslify: export(sineOut)
