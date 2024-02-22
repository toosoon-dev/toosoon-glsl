#pragma glslify: HALF_PI = require(../constants/half-pi)

float elasticIn(float t) {
  return sin(13.0 * t * HALF_PI) * pow(2.0, 10.0 * (t - 1.0));
}

#pragma glslify: export(elasticIn)
