require "./spec_helper"

describe "LibCUDA" do
  it "wait device sync" do
    error = LibCUDA.device_synchronize
    error.should be_a(LibCUDA::ErrorT::Success)
  end

  it "check last error" do
    error = LibCUDA.get_last_error
    error.should be_a(LibCUDA::ErrorT::Success)
  end
end
