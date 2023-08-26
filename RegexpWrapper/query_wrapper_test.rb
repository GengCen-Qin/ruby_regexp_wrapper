# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'query_wrapper'
class QueryWrapperTest < Minitest::Test
  def setup
    @queryWrapper = RegexpWrapper::QueryWrapper.new
  end

  def test_start_with_and_end_with
    express = @queryWrapper.start_with!("a").end_with!("z").to_regexp
    assert_equal(/^a.*z\z/,express)
  end

  def test_has
    express = @queryWrapper.start_with!("a").has!("BBB").has!("DDD").end_with!("z").to_regexp
    assert_equal(/^a.*BBB.*DDD.*z\z/,express)
  end

  def test_match_start_with
    assert("abc" =~ @queryWrapper.start_with!("a").to_regexp)
  end

  def test_match_end_with
    assert("abc" =~ @queryWrapper.end_with!("c").to_regexp)
  end

  def test_match_start_with_a_and_end_with_c
    assert(@queryWrapper.start_with!("a").end_with!("c") =~ "abc")
    assert_match(@queryWrapper.start_with!("a").end_with!("c").to_regexp,"abc")
    refute_match(@queryWrapper.start_with!("a").end_with!("c").to_regexp,"abd")
  end
end
