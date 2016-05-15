module ApplicationHelper
  def get_season()
    time = Time.new

    if (time.month >= 3) && (time.month <= 5)
      "Weeeoo det är vår!"
    elsif (time.month > 5) && (time.month <= 8)
      "Alla älskar sommar!"
    elsif (time.month > 8) && (time.month <= 10)
      "På med jackan, hösten kommer!"
    else
      "K-k-k-kall vinter"
    end
  end

  def get_random_number(max_value = 10)
    rand(max_value)
  end

  def get_random_welcome()
    names = ["Annie", "Victor", "Anton", "Hanna", "Povel", "Nora"]
    fill = ["", "s kompis #{names.sample}"]
    statement = [" är bäst!", " är sämst!", " suger stenhårt!", " gillar #{names.sample}.", " älskar #{names.sample.strip}."]
    "#{names.sample + fill.sample + statement.sample}"
  end
end
