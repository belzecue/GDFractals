RSRC                     Shader                                                                       resource_local_to_scene    resource_name    code    script        .   res://fractals/shaders/sierpinski_cartpet.shd �          Shader          �  shader_type canvas_item;

// Description : Sierpinski carpet fractal

uniform vec2 Scale;

uniform vec2 Offset;

void fragment()
{
	float x = UV.x * Scale.x + Offset.x;
	float y = UV.y * Scale.y + Offset.y;
	
	int i = 0;
	while(x > 0.0 || y > 0.0)
	{
		i += 1;
		if(int(x) % 3 == 1 && int(y) % 3 == 1)
		{
			i = 0;
			break;
		}
		x /= 3.0;
		y /= 3.0;
	}
	float result = float(i);
	COLOR = vec4(result, result, result, result);
} RSRC