this_dir = File.expand_path(File.dirname(__FILE__))
lib_dir = File.join(this_dir, 'lib')
$LOAD_PATH.unshift(lib_dir) unless $LOAD_PATH.include?(lib_dir)

require 'grpc'
require 'calculator_services_pb'

class CalculatorServer < Calculator::Calculator::Service
  # sum implements the Sum rpc method.
  def sum(calculator_req, _unused_call)
    Calculator::CalcReply.new(res: calculator_req.x + calculator_req.y)
  end

  # sum implements the Sub rpc method.
  def sub(calculator_req, _unused_call)
    Calculator::CalcReply.new(res: calculator_req.x - calculator_req.y)
  end

  # sum implements the Mul rpc method.
  def mul(calculator_req, _unused_call)
    Calculator::CalcReply.new(res: calculator_req.x * calculator_req.y)
  end

  # sum implements the Div rpc method.
  def div(calculator_req, _unused_call)
    Calculator::CalcReply.new(res: calculator_req.x / calculator_req.y)
  end
end

# main starts an RpcServer that receives requests to GreeterServer at the sample server port.
def main
  s = GRPC::RpcServer.new
  s.add_http2_port('0.0.0.0:50051', :this_port_is_insecure)
  s.handle(CalculatorServer)

  # Runs the server with SIGHUP, SIGINT and SIGTERM signal handlers to gracefully shutdown.
  # User could also choose to run server via call to run_till_terminated
  s.run_till_terminated_or_interrupted([1, 'int', 'SIGTERM'])
end

main
