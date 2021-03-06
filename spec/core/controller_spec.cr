require "../spec_helper"

describe OpenAPI::Generator::Controller do
  it "should register methods names mapped with their openapi operation representation" do
    Controller::CONTROLLER_OPS.size.should eq 1
    Controller::CONTROLLER_OPS["Controller::method"].should eq YAML.parse(Controller::OP_STR)
  end
end
