class PhonesController < ApplicationController
  def register
    judge_auth = params[:auth].to_i
    if judge_auth == 1 || judge_auth == 2
      phone = Phone.new
      phone.auth = params[:auth]
      phone.phone_num = params[:phone_num]
      phone.save
      phone_rend = Phone.last
      p "123"
      p phone_rend
      render json: phone_rend.id
    end
  end

  def auth
    user_id = params[:user_id]
    mac_add = params[:mac_add]
    user = Phone.find(user_id)
    if user
      if user.auth == 2
        phone_record = Record.new
        phone_record.phone_id = user_id
        phone_record.phone_num = user.phone_num
        phone_record.mac_add = mac_add
        phone_record.time_consuming = rand(50)
        phone_record.time_start = Time.now
        phone_record.save
        p phone_record
        rend_json = Hash.new
        rend_json[:status] = true
        rend_json[:time] = phone_record.time_consuming
        render json: rend_json
      elsif user.auth == 1
        bad_record = BadAuthRecord.new
        bad_record.phone_num = user.phone_num
        bad_record.information = "#{Time.now.utc},用户#{user.phone_num}试图非授权启动#{mac_add}设备"
        bad_record.save
        rend_json = Hash.new
        rend_json[:status] = false
        render json: rend_json
      end
    end
  end

  def get_record
    record = Record.all
    render json: record
  end

  def get_bad_record
    bad_record = BadAuthRecord.all
    render json: bad_record
  end

  def get_phones
    phones = Phone.all
    render json: phones
  end
end
