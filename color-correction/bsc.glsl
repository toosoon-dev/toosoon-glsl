// Brightness-Saturation-Contract (BSC)

vec3 bsc(in vec3 color, in float brightness, in float saturation, in float contrast) {
  vec3 brightnessColor = color * brightness;
  float intensity = dot(brightnessColor, vec3(0.2125, 0.7154, 0.0721));
  return mix(vec3(0.5), mix(vec3(intensity), brightnessColor, saturation), contrast);
}

vec4 bsc(in vec4 color, in float brightness, in float saturation, in float contrast) {
  return vec4(bsc(color.rgb, brightness, saturation, contrast), color.a);
}

#pragma glslify: export(bsc)
