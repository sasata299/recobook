module StringExt
  def replace_br
    self.gsub(/\r?\n/, '<br />')
  end

  def adjust(limit=21)
    size = self.split(//).size
    if size > limit
      self.split(//)[0...limit].join('') + '…'
    else
      self
    end
  end
end
