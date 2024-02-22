#pragma glslify: orthogonal = require(./orthogonal)

// https://discourse.threejs.org/t/calculating-vertex-normals-after-displacement-in-the-vertex-shader/16989

vec3 normalizeDisplaced(in vec3 newPosition, in vec3 position, in vec3 normal, in float offset) {
  vec3 tangent = orthogonal(normal);
  vec3 bitangent = normalize(cross(normal, tangent));

  vec3 tangentNeighbour = position + tangent * offset;
  vec3 bitangentNeighbour = position + bitangent * offset;

  vec3 displacedTangentNeighbour = displace(tangentNeighbour);
  vec3 displacedBitangentNeighbour = displace(bitangentNeighbour);

  vec3 displacedTangent = displacedTangentNeighbour - newPosition;
  vec3 displacedBitangent = displacedBitangentNeighbour - newPosition;

  return normalize(cross(displacedTangent, displacedBitangent));
}

vec3 normalizeDisplaced(in vec3 newPosition, in vec3 position, in vec3 normal) {
  return normalizeDisplaced(newPosition, position, normal, 0.001);
}

#pragma glslify: export(normalizePosition)
