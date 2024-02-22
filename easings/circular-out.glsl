float circularOut(float t) {
  return sqrt(max((2.0 - t) * t, 0.0));
}

#pragma glslify: export(circularOut)
