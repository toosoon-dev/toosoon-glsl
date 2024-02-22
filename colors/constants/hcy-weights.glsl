// The weights of RGB contributions to luminance should sum to unity (1)
  const vec3 HCY_WEIGHTS = vec3(0.299, 0.587, 0.114);

  #pragma glslify: export(HCY_WEIGHTS)
