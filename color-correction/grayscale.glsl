#pragma glslify: EPSILON = require(../constants/epsilon)

vec3 grayscale(in vec3 color, in float threshold) {
  float grey = dot(color, vec3(0.299, 0.587, 0.114));
  return mix(color, vec3(grey), threshold);
}

vec3 grayscale(in vec3 color) {
  return grayscale(color, 1.0);
}

vec4 grayscale(in vec4 color, in float threshold) {
  return vec4(grayscale(color.rgb, threshold), color.a);
}

vec4 grayscale(in vec4 color) {
  return vec4(grayscale(color.rgb, 1.0), color.a);
}
