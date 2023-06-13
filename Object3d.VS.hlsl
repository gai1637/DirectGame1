struct TransformationMatrix {
	float32_t4x4 WVP;
};
struct VertexShaderOutput {
	float32_t4 position : SV_POSITION;
};
ConstantBuffer<TransformationMatrix> gTransformationMatrix : register(b0);
struct VertexShaderInput {
	float32_t4 position : POSITION0;
};

VertexShaderOutput main(VertexShaderInput input) {
	VertexShaderOutput output;
	output.position = mul(input.position,gTransformationMatrix.WVP);
	return output;
}