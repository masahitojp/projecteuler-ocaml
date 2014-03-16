def palindrome(n):
  n_str = str(n)
  return n_str == n_str[::-1]

def main():
  return max([i * j for i in range(1, 1000) for j in range (1,1000) if palindrome(i * j)])

if __name__ == "__main__":
  print(main())
