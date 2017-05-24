pig = 'ay'
word1 = raw_input('Enter first word: ')
word2 = raw_input('Enter second word: ')

first1 = word1[0]
first2 = word2[0]
new_word = word1[0:] + first1 + pig + ' ' + word2[0:]  + first2 + pig
print('Your new word is: ' + new_word)
#Katya Pogodaeva