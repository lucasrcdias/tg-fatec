require 'spec_helper'

describe UniqueCodeGenerator do
  let(:company) { create(:company) }

  describe "#generate_code" do
    it { expect(company.code).not_to eql(UniqueCodeGenerator.generate_code(Company)) }
  end
end