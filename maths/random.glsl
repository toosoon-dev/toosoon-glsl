float random(in float n) {
  return fract(sin(dot(n, 12.9898)) * 43758.5453);
}

float random(in vec2 v) {
  return fract(sin(dot(v.xy, vec2(12.9898, 78.233))) * 43758.5453);
}

#pragma glslify: export(random)
