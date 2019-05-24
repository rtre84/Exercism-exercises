defmodule NucleotideCount do
  @nucleotides [?A, ?C, ?G, ?T]

  @doc """
  Counts individual nucleotides in a DNA strand.

  ## Examples

  iex> NucleotideCount.count('AATAA', ?A)
  4

  iex> NucleotideCount.count('AATAA', ?T)
  1
  """

  @spec count([char], char) :: non_neg_integer
  def count('', nucleotide) do
    0
  end

  def count(strand, nucleotide, matches_count) do
    [head | tail] = strand
    matches_count = matches_count + match(head, nucleotide)

    if tail != [] do
      count(tail, nucleotide, matches_count)
    else
      matches_count
    end
  end

  def count(strand, nucleotide) do
    [head | tail] = strand
    match_count = match(head, nucleotide)

    if tail != [] do
      count(tail, nucleotide, match_count)
    end
  end
  
  def match(element, element_to_match) do
    if element == element_to_match, do: 1 , else: 0
  end

  @doc """
  Returns a summary of counts by nucleotide.

  ## Examples

  iex> NucleotideCount.histogram('AATAA')
  %{?A => 4, ?T => 1, ?C => 0, ?G => 0}
  """
  @spec histogram([char]) :: map
  def histogram(strand) do
    %{?A => count(strand, ?A), ?T => count(strand, ?T), ?C => count(strand, ?C), ?G => count(strand, ?G)}
  end
end
