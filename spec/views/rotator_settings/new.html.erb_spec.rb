require 'rails_helper'

RSpec.describe "rotator_settings/new", type: :view do
  before(:each) do
    assign(:rotator_setting, RotatorSetting.new(
      :totalFrames => 1,
      :endFrame => 1,
      :currentFrame => 1,
      :framerate => 1,
      :imgList => "MyString",
      :progress => "MyString",
      :imagePath => "MyString",
      :filePrefix => "MyString",
      :ext => "MyString",
      :height => 1,
      :width => 1,
      :disableSpin => false,
      :zeroPadding => false,
      :navigation => false
    ))
  end

  it "renders new rotator_setting form" do
    render

    assert_select "form[action=?][method=?]", rotator_settings_path, "post" do

      assert_select "input#rotator_setting_totalFrames[name=?]", "rotator_setting[totalFrames]"

      assert_select "input#rotator_setting_endFrame[name=?]", "rotator_setting[endFrame]"

      assert_select "input#rotator_setting_currentFrame[name=?]", "rotator_setting[currentFrame]"

      assert_select "input#rotator_setting_framerate[name=?]", "rotator_setting[framerate]"

      assert_select "input#rotator_setting_imgList[name=?]", "rotator_setting[imgList]"

      assert_select "input#rotator_setting_progress[name=?]", "rotator_setting[progress]"

      assert_select "input#rotator_setting_imagePath[name=?]", "rotator_setting[imagePath]"

      assert_select "input#rotator_setting_filePrefix[name=?]", "rotator_setting[filePrefix]"

      assert_select "input#rotator_setting_ext[name=?]", "rotator_setting[ext]"

      assert_select "input#rotator_setting_height[name=?]", "rotator_setting[height]"

      assert_select "input#rotator_setting_width[name=?]", "rotator_setting[width]"

      assert_select "input#rotator_setting_disableSpin[name=?]", "rotator_setting[disableSpin]"

      assert_select "input#rotator_setting_zeroPadding[name=?]", "rotator_setting[zeroPadding]"

      assert_select "input#rotator_setting_navigation[name=?]", "rotator_setting[navigation]"
    end
  end
end
