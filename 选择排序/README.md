## 1.2 选择排序

### *分类* [算法](https://www.runoob.com/w3cnote_genre/algorithm)

选择排序是一种简单直观的排序算法，无论什么数据进去都是 O(n²) 的时间复杂度。所以用到它的时候，数据规模越小越好。唯一的好处可能就是不占用额外的内存空间了吧。

### 1. 算法步骤

首先在未排序序列中找到最小（大）元素，存放到排序序列的起始位置。

再从剩余未排序元素中继续寻找最小（大）元素，然后放到已排序序列的末尾。

重复第二步，直到所有元素均排序完毕。

### 2. 动图演示

![image](https://github.com/BeyChan/Swift-Algorithm/blob/master/images/selectionSort.gif)
