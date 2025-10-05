require 'test_helper'

class UserTest < ActiveSupport::TestCase

    def setup
        @user = User.new(username: "aqsa", password: "password")
    end

    test "user should be valid" do 
        assert @user.valid? 
    end

    test "user should be present" do
        @user = User.new(username: " ", password: " ")
        assert_not @user.valid?
    end

    test "username should be unique" do 
        @user.save
        @user2 = User.new(username: "aqsa", password: "password")
        assert_not @user2.valid?
    end

    test "username should not be too long" do 
        @user.username = "aqsa" * 33
        assert_not @user.valid?
    end

    test "username should not be too short" do 
        @user.username = "a"
        assert_not @user.valid?
    end

end
