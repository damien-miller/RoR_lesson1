a = [621, 445, 147, 159, 430, 222, 482, 44, 194, 522, 652, 494, 14, 126, 532, 387, 441, 471, 337, 446, 18, 36, 202, 574, 556, 458, 16, 139, 222, 220, 107, 82, 264, 366, 501, 319, 314, 430, 55, 336]

#узнать количество элементов в массиве
a.length
#перевернуть массив
a.reverse
#найти наибольшее число
a.max
#найти наименьшее число
a.min
#отсортировать от меньшего к большему
a.sort
#отсортировать от большего к меньшему
a.sort.reverse
#удалить все нечетные числа
a.reject{ |i| i.odd? }
#оставить только те числа, которые без остатка делятся на 3
a.map{ |i| i if i % 3 == 0 }.compact
#удалить из массива числа, которые повторяются (то есть, нужно вывести массив, в котором нет повторов)
a.uniq
#разделить каждый элемент на 10, в результате элементы не должны быть округлены до целого
a.map{ |i|i.to_f/10 }
#получить новый массив, который бы содержал в себе те буквы английского алфавита, порядковый номер которых есть в нашем массиве
letters = ('a'..'z').to_a.values_at(*(a.reject{|i| i > 26}.sort))
#поменять местами минимальный и максимальный элементы массива
min_max, minIndex, maxIndex = [a.min] + [a.max], a.index(a.min), a.index(a.max)
a[*minIndex] = min_max[1]
a[*maxIndex] = min_max[0]
#найти элементы, которые находятся перед минимальным числом в массиве
a.take(a.index(a.min))
#необходимо найти три наименьших элемента
a.sort.take(3)
