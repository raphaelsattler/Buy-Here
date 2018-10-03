module SearchHelper
  def profiles
    Profile.all
  end

  def buy_intentions
    BuyIntention.all
  end
end
