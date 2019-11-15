require 'test_helper'

class PostTest < ActiveSupport::TestCase
  def setup
    @post = posts(:red)
  end

  test "post should be valid" do 
    assert @post.valid?
  end

  test "user id should be present" do
    @post.user_id = nil
    assert_not @post.valid?
  end

  test "body should be present" do
    @post.body = '    '
    assert_not @post.valid?
  end

  test "title should be present" do
    @post.title = '    '
    assert_not @post.valid?
  end

  test "title should not be more than 255 chars" do
    @post.title = "a" * 258
    assert_not @post.valid?
  end

  test "title should be unique" do
    post2 = @post.dup
    @post.save
    assert_not post2.valid?
  end

  test "associated comments must be destroyed" do
    post = posts(:red)
    assert_difference "Comment.count", -1 do
      post.destroy
    end
  end

end
