// Colour pixel/fragment shader
// Basic fragment shader outputting a colour

struct InputType
{
	float4 position : SV_POSITION;
	float2 colour : COLOR;
   // float2 texture_ : TEXTCOORD; //Bonus 
};

//float4
float4 main(InputType input) : SV_TARGET
{
	//return input.colour;
    //return float4(1.0f, 0.f, 0.f, 1.0f);
    //return input.texture_; 
    return float4(input.colour.y, input.colour.y, input.colour.y, 1);
}