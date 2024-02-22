float min4(in float a, in float b, in float c, in float d) {
  return min(min(min(a, b), c), d);
}

float min4(in vec4 v) {
  return min4(v.x, v.y, v.z, v.w);
}

#pragma glslify: export(min4)
