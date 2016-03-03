require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { User.create(name: "Karen", username: "khambro", password: "12345")}
  describe `#validates` do
    it "the presence of email" do
      user.update(email: nil)
      expect(user.valid?).to eq false
    end

    it "the presence of username" do
      user.update(username: nil)
      expect(user.valid?).to eq false
    end

    it "the presence of name" do
      user.update(username: nil)
      expect(user.valid?).to eq false
    end

    it "the presence of password" do
      user.update(username: nil)
      expect(user.valid?).to eq false
    end
  end

end
