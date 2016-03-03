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
    # if @fraud.valid?
    #   @fraud.save
    # else
    #   render(:action => :new)
    # end
  end
  def create
    @fraud=Fraud.new(fraud_params)

    if @fraud.save
      # if params[:fraud][:cards].any? {|element| element.last!= '' }
      params[:fraud][:cards].each do |card|
        @fraud.cards.create(card: card.last) unless card.last.blank?
      end
      # end



      # unless params[:fraud][:cards].first.last.blank?
      #   params[:fraud][:cards].each do |card|
      #     @fraud.cards.create(card: card.last) # card.last - card.value
      #   end
      # end
      unless params[:fraud][:phones].first.last.blank?
        params[:fraud][:phones].each do |phone|
          # if @fraud.phones.new(phone: phone.last).valid?
          @fraud.phones.create!(phone: phone.last) # card.last - card.value
          # else
          #   render(:action => :new)
          # end
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
        redirect_to :root
    else
      render(:action => :new)
    end
  end
  private
  def fraud_params
    params.require(:fraud).permit( :name,:firstname,:lastname,:patronymic,:icq,:type,:status,:description,:cards,:user_id )
  end
end
