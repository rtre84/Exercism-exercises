defmodule Words do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t()) :: map
  def count(sentence) do
  	sentence 
  	|> String.downcase()
  	|> String.split([" ", ",", "_"], trim: true)
  	|> Enum.map(fn word -> String.replace(word, ~r/[\b!+|&+|@+|$+|%+|^+|:+]/, "") end)
  	|> Enum.reduce(%{}, fn word, acc -> Map.put(acc, word, if acc[word] != nil do acc[word]+1 else 1 end ) end)
  	|> Map.delete("")
  end
end
