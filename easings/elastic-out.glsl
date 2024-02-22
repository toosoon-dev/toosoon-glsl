#pragma glslify: HALF_PI = require(../constants/half-pi)

float elasticOut(float t) {
  return sin(-13.0 * (t + 1.0) * HALF_PI) * pow(2.0, -10.0 * t) + 1.0;
}

#pragma glslify: export(elasticOut)
