
input = []


# size -> num rounds
# 128 --> 10  rounds
# 192 --> 12
# 256 --> 14

key_info = {128: 10,
            192: 12,
            256: 14}

key = []

key_size = 128
rounds = key_info[key_size]

for i in range(rounds):
  round_key = key[i]
  input = input ^ round_key

  #substitution
  input = sub_bytes(input)
  
  #permutation
  input = shift_rows(input)
  input = mix_columns(input)

  input = input + round_key



def sub_bytes(input):
  """
  Essentially a lookup table
  """