class Report

  def call
    file=File.open('report.txt', 'w+') do |f|
      f << info
    end
    file.path
  end

  def info
   info=[]
    Guest.all.find_each do |guest|
      info<< [guest.code,'Guest:'+guest.email,
              guest.status.capitalize+' '+guest.entity+' at '+guest.updated_at.to_s]
                 .join('. ')
    end
   info.join("\n")
  end
end

