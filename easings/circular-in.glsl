float circularIn(float t) {
  return 1.0 - sqrt(max(1.0 - t * t, 0.0));
}

#pragma glslify: export(circularIn)
