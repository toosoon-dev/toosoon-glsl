float circle(in vec2 uv, in float radius) {
  vec2 l = uv - 0.5;
  return 1.0 - step(radius, dot(l, l));
}

float circle(in vec2 uv, in float radius, in float hardness) {
  vec2 l = uv - 0.5;
  return 1.0 - smoothstep(radius * min(hardness, 1.0), radius, dot(l, l));
}

#pragma glslify: export(circle)
