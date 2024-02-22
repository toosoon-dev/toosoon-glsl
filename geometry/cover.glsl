vec2 cover(in vec2 uv, in vec2 container, in vec2 content) {
  vec2 ratio = vec2(
    min((container.x / container.y) / (content.x / content.y), 1.0),
    min((container.y / container.x) / (content.y / content.x), 1.0)
  );

  return vec2(
    uv.x * ratio.x + (1.0 - ratio.x) * 0.5,
    uv.y * ratio.y + (1.0 - ratio.y) * 0.5
  );
}

#pragma glslify: export(cover)
