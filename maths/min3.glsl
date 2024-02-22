float min3(in float a, in float b, in float c) {
  return min(min(a, b), c);
}

float min3(in vec3 v) {
  return min3(v.x, v.y, v.z);
}

#pragma glslify: export(min3)
