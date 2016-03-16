require 'rails_helper'

RSpec.describe "rotator_settings/index", type: :view do
  before(:each) do
    assign(:rotator_settings, [
      RotatorSetting.create!(
        :totalFrames => 1,
        :endFrame => 2,
        :currentFrame => 3,
        :framerate => 4,
        :imgList => "Img List",
        :progress => "Progress",
        :imagePath => "Image Path",
        :filePrefix => "File Prefix",
        :ext => "Ext",
        :height => 5,
        :width => 6,
        :disableSpin => false,
        :zeroPadding => false,
        :navigation => false
      ),
      RotatorSetting.create!(
        :totalFrames => 1,
        :endFrame => 2,
        :currentFrame => 3,
        :framerate => 4,
        :imgList => "Img List",
        :progress => "Progress",
        :imagePath => "Image Path",
        :filePrefix => "File Prefix",
        :ext => "Ext",
        :height => 5,
        :width => 6,
        :disableSpin => false,
        :zeroPadding => false,
        :navigation => false
      )
    ])
  end

  it "renders a list of rotator_settings" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => "Img List".to_s, :count => 2
    assert_select "tr>td", :text => "Progress".to_s, :count => 2
    assert_select "tr>td", :text => "Image Path".to_s, :count => 2
    assert_select "tr>td", :text => "File Prefix".to_s, :count => 2
    assert_select "tr>td", :text => "Ext".to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
