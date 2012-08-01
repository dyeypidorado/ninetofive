require 'spec_helper'

describe Step do
  it { should respond_to(:is_first) }
  it { should respond_to(:next_id) }
  it { should respond_to(:promotion_name) }
  it { should respond_to(:next_step) }
  it { should respond_to(:set_next_step) }
  it { should respond_to(:set_step_array) }
  it { should respond_to(:is_first) }
end
