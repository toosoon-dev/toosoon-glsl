vec4 blur(in sampler2D image, in vec2 uv, in vec2 blurStrength) {
  vec4 sum = vec4(0.0);
  sum += texture2D(image, uv - vec2(4.0) * blurStrength) * 0.051;
  sum += texture2D(image, uv - vec2(3.0) * blurStrength) * 0.0918;
  sum += texture2D(image, uv - vec2(2.0) * blurStrength) * 0.12245;
  sum += texture2D(image, uv - blurStrength	           ) * 0.1531;
  sum += texture2D(image, uv               	           ) * 0.1633;
  sum += texture2D(image, uv + blurStrength	           ) * 0.1531;
  sum += texture2D(image, uv + vec2(2.0) * blurStrength) * 0.12245;
  sum += texture2D(image, uv + vec2(3.0) * blurStrength) * 0.0918;
  sum += texture2D(image, uv + vec2(4.0) * blurStrength) * 0.051;
  return sum;
}

vec4 blur(in sampler2D image, in vec2 uv, in float blurStrength) {
  vec4 sum = vec4(0.0);
  sum += texture2D(image, uv - vec2(4.0) * blurStrength) * 0.051;
  sum += texture2D(image, uv - vec2(3.0) * blurStrength) * 0.0918;
  sum += texture2D(image, uv - vec2(2.0) * blurStrength) * 0.12245;
  sum += texture2D(image, uv - blurStrength	           ) * 0.1531;
  sum += texture2D(image, uv               	           ) * 0.1633;
  sum += texture2D(image, uv + blurStrength	           ) * 0.1531;
  sum += texture2D(image, uv + vec2(2.0) * blurStrength) * 0.12245;
  sum += texture2D(image, uv + vec2(3.0) * blurStrength) * 0.0918;
  sum += texture2D(image, uv + vec2(4.0) * blurStrength) * 0.051;
  return sum;
}

#pragma glslify: export(blur)

