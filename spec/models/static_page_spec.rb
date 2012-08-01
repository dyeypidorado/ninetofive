require 'spec_helper'

describe StaticPage do
  it { should respond_to(:name) }
  it { should respond_to(:region1) }
  it { should respond_to(:region2) }
  it { should respond_to(:region3) }
  it { should respond_to(:region4) }
  it { should respond_to(:region5) }
end
