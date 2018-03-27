class StravaController < ApplicationController

  def webhook
    hub_challenge = params['hub.challenge']
    render json: { 'hub.challenge': hub_challenge }, status: 200

  end

  def webhookpost
    pp params
    render json: { status: 'ok' }, status: 200
  end

end
