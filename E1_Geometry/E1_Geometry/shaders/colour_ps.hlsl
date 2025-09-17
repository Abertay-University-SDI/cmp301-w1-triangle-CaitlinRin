// Colour pixel/fragment shader
// Basic fragment shader outputting a colour

struct InputType
{
	float4 position : SV_POSITION;
	//float2 colour : COLOR;
    float2 texture_ : TEXCOORD; //Bonus 
};

//float4
float4 main(InputType input) : SV_TARGET
{
	//return input.colour;
    //return float4(1.0f, 0.f, 0.f, 1.0f);
    return float4(input.texture_.y, input.texture_.y, input.texture_.y, 1);
   // return float4(input.colour.y, input.colour.y, input.colour.y, 1);//THIS WORKED
}