Mix.install([
  {:axon_onnx, "~> 0.4"},
  {:axon, "~> 0.5.0"}
])

{model, _params} = AxonOnnx.import("resnet2/model.onnx")
IO.inspect(model)
