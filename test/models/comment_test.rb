require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  def setup
   @comment = comments(:glass)
  end

  test "comment should be valid" do
    assert @comment.valid?
  end

  test "comment should have user_id" do
    @comment.user_id = nil
    assert_not @comment.valid?
  end

  test "comment should have post_id" do
    @comment.post_id = nil
    assert_not @comment.valid?
  end

  test "comment should have content (neither empty nor blank)" do
    @comment.content = "  " 
    assert_not @comment.valid?
  end

end
