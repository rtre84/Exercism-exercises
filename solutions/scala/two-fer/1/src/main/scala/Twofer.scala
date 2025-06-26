object Twofer {
  def twofer(name: String = null): String = 
    if (name == null || name.isEmpty) then
      "One for you, one for me."
    else 
      s"One for $name, one for me." 
}
