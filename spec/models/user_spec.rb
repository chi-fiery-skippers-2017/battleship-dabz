require 'rails_helper'

describe User do
  let(:user) { User.new(email: "alan@english.com", password: "password") }

  describe "new-user" do
    context "when a user is being created" do

      it "has a readable email" do
        user.save
        expect(user.email).to eq "alan@english.com"
      end

      it "has a writable email" do
        user.email = "english@alan.com"
        user.save
        expect(user.email).to eq "english@alan.com"
      end

      it "is a valid user if email and password are present" do
        expect(user.valid?).to be true
      end

      it "is not valid when email is not present" do
        user = User.new(password: "password")
        expect(user.valid?).to be false
      end

      it "is not valid when password is not present" do
        user = User.new(email: "alan@english.com")
        expect(user.valid?).to be false
      end

      it "creates a User object when valid and saved" do
        user.save
        expect(user).to be_instance_of User
      end

    end
  end
end
