# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: calculator.proto for package 'calculator'

require 'grpc'
require 'calculator_pb'

module Calculator
  module Calculator
    class Service

      include ::GRPC::GenericService

      self.marshal_class_method = :encode
      self.unmarshal_class_method = :decode
      self.service_name = 'calculator.Calculator'

      rpc :Sum, ::Calculator::CalcRequest, ::Calculator::CalcReply
      rpc :Sub, ::Calculator::CalcRequest, ::Calculator::CalcReply
      rpc :Mul, ::Calculator::CalcRequest, ::Calculator::CalcReply
      rpc :Div, ::Calculator::CalcRequest, ::Calculator::CalcReply
    end

    Stub = Service.rpc_stub_class
  end
end
