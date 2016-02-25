class FraudsController < ApplicationController
  def index
    @search = Fraud.ransack(params[:q])
    if !params[:q].nil?
      @frauds = @search.result
    else
     @frauds=Fraud.all
    end
  end
  def new
    @fraud=Fraud.new
  end
  def create
    @fraud=Fraud.create!(fraud_params)

    unless params[:fraud][:cards].blank?
      params[:fraud][:cards].each do |card|
        @fraud.cards.create(card: card.last) # card.last - card.value
      end
    end
    unless params[:fraud][:phones].blank?
      params[:fraud][:phones].each do |phone|
        @fraud.phones.create(phone: phone.last) # card.last - card.value
      end
    end
    unless params[:fraud][:emails].blank?
      params[:fraud][:emails].each do |email|
        @fraud.emails.create(email: email.last) # card.last - card.value
      end
    end
    unless params[:fraud][:skypes].blank?
      params[:fraud][:skypes].each do |skype|
        @fraud.skypes.create(skype: skype.last) # card.last - card.value
      end
    end
    unless params[:fraud][:cities].blank?
      params[:fraud][:cities].each do |city|
        @fraud.cities.create(city: city.last) # card.last - card.value
      end
    end
    unless params[:fraud][:regions].blank?
      params[:fraud][:regions].each do |region|
        @fraud.regions.create(region: region.last) # card.last - card.value
      end
    end
    unless params[:fraud][:descriptions].blank?
      params[:fraud][:descriptions].each do |description|
        @fraud.descriptions.create(description: description.last) # card.last - card.value
      end
    end
    if @fraud.save
      redirect_to :root
    end
  end
  private
  def fraud_params
    params.require(:fraud).permit( :name,:firstname,:lastname,:patronymic,:icq,:type,:status,:user_id )
  end
end
