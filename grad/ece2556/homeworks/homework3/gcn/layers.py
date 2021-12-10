import math
import torch

from torch.nn.parameter import Parameter
from torch.nn.modules.module import Module

class GCNLayer(Module):
    def __init__(self, input_features, output_features, bias=True):
        super(GCNLayer, self).__init__()

        self.input_features = input_features
        self.output_features = output_features

        self.weight = Parameter(torch.FloatTensor(input_features, output_features))

        if bias:
            self.bias = Parameter(torch.FloatTensor(output_features))
        else:
            self.register_parameter('bias', None)

        self.reset_parameters()

    def forward(self, input, adj): # input is H, adj is (D^-1/2)(A)(D^-1/2)
        support = torch.mm(input, self.weight)
        output = torch.spmm(adj, support)

        if self.bias is not None:
            return output + self.bias
        else:
            return output

    def reset_parameters(self):
        stdv = 1. / math.sqrt(self.weight.size(1))
        self.weight.data.uniform_(-stdv, stdv)

        if self.bias is not None:
            self.bias.data.uniform_(-stdv, stdv)


