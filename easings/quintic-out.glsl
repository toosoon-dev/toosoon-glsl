float quinticOut(float t) {
  float f = 1.0 - t;
  return 1.0 - f * f * f * f * f;
}

#pragma glslify: export(quinticOut)
