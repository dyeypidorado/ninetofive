class Admin::SettingsController < Admin::BaseController
  def index
    @settings = Setting.all
  end

  def save_settings
    settings = params[:setting]
    for setting in settings
      Setting.send "#{setting[0]}=", setting[1]
    end
    redirect_to admin_settings_path, notice: "Settings saved"
  end
end

