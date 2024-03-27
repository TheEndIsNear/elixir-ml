import torch
import torchvision

dummy_input = torch.randn(19, 3, 224, 224)
model = torchvision.models.resnet50(pretrained=True)
torch.onnx.export(model, dummy_input, "resnet_pytorch.onnx")
