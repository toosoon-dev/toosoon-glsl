float max3(in float a, in float b, in float c) {
  return max(max(a, b), c);
}

float max3(in vec3 v) {
  return max3(v.x, v.y, v.z);
}

#pragma glslify: export(max3)
