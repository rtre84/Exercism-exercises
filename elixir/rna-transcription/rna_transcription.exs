defmodule RNATranscription do
  @moduledoc """
  Transcribes a character list representing DNA nucleotides to RNA

  ## Examples

  iex> RNATranscription.to_rna('ACTG')
  'UGAC'
  """

  @doc """
    Charlists are represented as integers when mapped through. So the 
    input 'ACTG' is treated as a charlist and not a string because of the ''
    quotes. So the Map data structure is used since fetching is in constant
    time. 
    
    Each letter in the input is iterated through and finally the output is returned as int 
    but represents chars. Doing a "?A" or "?G" in iex gives you the corresponding 
    representation.
  """
  @spec to_rna([char]) :: [char]
  def to_rna(dna) do

    dna_to_rna_map = %{
      71 => 67,
      67 => 71,
      84 => 65,
      65 => 85
    }

    dna 
    |> Enum.map(fn letter -> Map.get(dna_to_rna_map, letter) end)
  end
end
