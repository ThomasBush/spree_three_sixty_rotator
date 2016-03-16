class CreateRotatorSettings < ActiveRecord::Migration
  def change
    create_table :spree_rotator_settings do |t|
      t.integer :totalFrames, default: 36
      t.integer :endFrame, default: 36
      t.integer :currentFrame, default: 1
      t.integer :framerate, default: 60
      t.string :imgList, default: '.threesixty_images', null: false
      t.string :progress, default: '.spinner', null: false
      t.string :imagePath, default: 'https://some-cdn-base-url.com/', null: false
      t.string :filePrefix, default: ''
      t.string :ext, default: '.jpg', null: false
      t.integer :height, default: 480
      t.integer :width, default: 360
      t.boolean :disableSpin, default: true
      t.boolean :zeroPadding, default: true
      t.boolean :navigation, default: false

      t.timestamps null: false
    end
  end
end
