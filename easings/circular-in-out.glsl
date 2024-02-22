float circularInOut(float t) {
  return t < 0.5
    ? 0.5 * (1.0 - sqrt(max(1.0 - 4.0 * t * t, 0.0)))
    : 0.5 * (sqrt(max(3.0 - 2.0 * t * (2.0 * t - 1.0, 0.0))) + 1.0);
}

#pragma glslify: export(circularInOut)
