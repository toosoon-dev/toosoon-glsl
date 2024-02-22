float sinCurve(in float n) {
  return (sin(n) + sin(2.2 * n + 5.52) + sin(2.9 * n + 0.93) + sin(4.6 * n + 8.94)) / 4.0;
}

float sinCurve(in vec2 v) {
  return (sin(v.y) + sin(2.2 * v.x + 5.52) + sin(2.9 * v.y + 0.93) + sin(4.6 * v.x + 8.94)) / 4.0;
}

float sinCurve(in vec3 v) {
  return (sin(v.z) + sin(2.2 * v.y + 5.52) + sin(2.9 * v.x + 0.93) + sin(4.6 * v.z + 8.94)) / 4.0;
}

#pragma glslify: export(sinCurve)
