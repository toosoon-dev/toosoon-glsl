float max4(in float a, in float b, in float c, in float d) {
  return max(max(max(a, b), c), d);
}

float max4(in vec4 v) {
  return max4(v.x, v.y, v.z, v.w);
}

#pragma glslify: export(max4)
