#pragma glslify: TWO_PI = require(../constants/two-pi)

float polygon(in vec2 uv, in float radius, in int sides) {
  vec2 l = uv - 0.5;
  float angle = atan(uv.x, uv.y) + PI;
  float r = TWO_PI / float(sides);
  float d = cos(floor(0.5 + angle / r) * r - angle) * length(uv);
  return 1.0 - step(radius, d);
}

float polygon(in vec2 uv, in float radius, in int sides, in float hardness) {
  vec2 l = uv - 0.5;
  float angle = atan(uv.x, uv.y) + PI;
  float r = TWO_PI / float(sides);
  float d = cos(floor(0.5 + angle / r) * r - angle) * length(l);
  return 1.0 - smoothstep(radius * min(hardness, 1.0), radius, d);
}

#pragma glslify: export(polygon)
