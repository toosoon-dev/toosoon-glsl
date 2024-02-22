#pragma glslify: PI = require(../constants/pi)

float backIn(float t) {
  return t * t * t - t * sin(t * PI);
}

#pragma glslify: export(backIn)
