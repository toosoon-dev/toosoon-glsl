#pragma glslify: PI = require(../constants/pi)
#pragma glslify: HALF_PI = require(../constants/half-pi)

float elasticInOut(float t) {
  return t < 0.5
    ? 0.5 * sin(+13.0 * PI * t) * pow(2.0, 10.0 * (2.0 * t - 1.0))
    : 0.5 * sin(-13.0 * HALF_PI * ((2.0 * t - 1.0) + 1.0)) * pow(2.0, -10.0 * (2.0 * t - 1.0)) + 1.0;
}

#pragma glslify: export(elasticInOut)
