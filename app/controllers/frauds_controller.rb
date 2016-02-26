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



    if params[:fraud][:cards].any? {|element| element.last!= '' }
      params[:fraud][:cards].each do |card|
        @fraud.cards.create(card: card.last) unless card.last.blank?
      end
    end



    # unless params[:fraud][:cards].first.last.blank?
    #   params[:fraud][:cards].each do |card|
    #     @fraud.cards.create(card: card.last) # card.last - card.value
    #   end
    # end
    unless params[:fraud][:phones].first.last.blank?
      params[:fraud][:phones].each do |phone|
        @fraud.phones.create(phone: phone.last) # card.last - card.value
      end
    end
    unless params[:fraud][:emails].first.last.blank?
      params[:fraud][:emails].each do |email|
        @fraud.emails.create(email: email.last) # card.last - card.value
      end
    end
    unless params[:fraud][:skypes].first.last.blank?
      params[:fraud][:skypes].each do |skype|
        @fraud.skypes.create(skype: skype.last) # card.last - card.value
      end
    end
    unless params[:fraud][:cities].first.last.blank?
      params[:fraud][:cities].each do |city|
        @fraud.cities.create(city: city.last) # card.last - card.value
      end
    end
    unless params[:fraud][:regions].first.last.blank?
      params[:fraud][:regions].each do |region|
        @fraud.regions.create(region: region.last) # card.last - card.value
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
