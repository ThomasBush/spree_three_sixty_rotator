module Spree
  module Admin
    class RotatorSettingsController < Spree::Admin::BaseController
      before_action :set_rotator_setting, only: [:show, :edit, :update]

      def show
      end

      def new
        @rotator_setting = RotatorSetting.new
      end

      def edit
      end

      def create
        @rotator_setting = RotatorSetting.new(rotator_setting_params)

        if @rotator_setting.save
          redirect_to admin_rotator_settings_path, notice: 'Rotator setting was successfully created.'
        else
          render :new
        end
      end

      def update
        if @rotator_setting.update(rotator_setting_params)
          redirect_to admin_rotator_settings_path, notice: 'Rotator setting was successfully updated.'
        else
          render :edit
        end
      end

      private
        def set_rotator_setting
          @rotator_setting = RotatorSetting.first()
        end

        def rotator_setting_params
          params.require(:rotator_setting).permit(:totalFrames, :endFrame, :currentFrame, :framerate, :imgList, :progress, :imagePath, :filePrefix, :ext, :height, :width, :disableSpin, :zeroPadding, :navigation)
        end
    end
  end
end
