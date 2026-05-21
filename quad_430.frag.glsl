#version 430

layout(location=0) uniform vec3 uniform_array[4];

in vec2 position;

out vec4 output_color;

void main()
{
  vec3 forward = normalize(uniform_array[1]);
  vec3 right = normalize(cross(forward, uniform_array[2]));
  vec3 direction = normalize(position.x * uniform_array[3].y * right + position.y * normalize(cross(right, forward)) + forward);

  float product = dot(-uniform_array[0], direction);
  float radius = 1.0 + sin(uniform_array[3].x / 4e3) * 0.1;
  vec3 collision = product * direction + uniform_array[0];

  float squared = dot(collision, collision);
  output_color = vec4(0.0, 0.0, 0.0, 1.0);
  if(squared <= radius)
  {
    vec3 color = (product - sqrt(radius * radius - squared * squared)) * direction + uniform_array[0];
    output_color = vec4(color * dot(color, vec3(1.0)), 1.0);
  }
}
