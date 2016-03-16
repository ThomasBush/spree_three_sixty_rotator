require 'rails_helper'

RSpec.describe "rotator_settings/show", type: :view do
  before(:each) do
    @rotator_setting = assign(:rotator_setting, RotatorSetting.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/Img List/)
    expect(rendered).to match(/Progress/)
    expect(rendered).to match(/Image Path/)
    expect(rendered).to match(/File Prefix/)
    expect(rendered).to match(/Ext/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/6/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
  end
end
