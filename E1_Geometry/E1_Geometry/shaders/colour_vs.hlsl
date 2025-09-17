// colour vertex shader
// Simple geometry pass
// texture coordinates and normals will be ignored.

cbuffer MatrixBuffer : register(b0)
{
	matrix worldMatrix;
	matrix viewMatrix;
	matrix projectionMatrix;
  
};

struct InputType
{
	float4 position : POSITION;
	//float2 colour : COLOR;
	float2 texture_ : TEXCOORD;//Bonus
};

struct OutputType
{
	float4 position : SV_POSITION;
	//float2 colour : COLOR;
	float2 texture_ : TEXCOORD;
};

OutputType main(InputType input)
{
	OutputType output;
	
	// Change the position vector to be 4 units for proper matrix calculations.
	input.position.w = 0.5f;
	
    //matrix scaleMatrix =
    //{
    //    2, 0, 0, 0,
				//		  0, 2, 0, 0,
				//		  0, 0, 2, 0,
				//		  0, 0, 0, 1
    //};
	
	// Calculate the position of the vertex against the world, view, and projection matrices.
	output.position = mul(input.position, worldMatrix);
	//output.position = mul(input.position, scaleMatrix);
	output.position = mul(output.position, viewMatrix);
	output.position = mul(output.position, projectionMatrix);

	//output.colour = input.colour;
	output.texture_ = input.texture_;//Bonus
	

	return output;
}