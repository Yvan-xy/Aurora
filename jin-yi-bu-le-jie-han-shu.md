# 进一步了解函数

## 函数也是可以被返回的

如果要返回函数，只需返回其函数名即可如：

```text
def a(x):
	def b():
		print('dyf')
	def c():
		print('lmt')
	if x == '1':
		return b
	else:
		return c
x = input('请输入')
v = a(x)
v()
则输出结果为：
	请输入 1
	dyf
	请输入 2
	lmt
```

{% hint style="info" %}
## 注：

### 如果想打印函数返回值一定要用输出函数 如果print\(v\(\)\)输出其返回值。

###  如果print\(v\)则输出其地址。
{% endhint %}

return 可以返回多个值，其值可以被传递，但是应当注意，尽量不要用golbal返回值，涂添烦恼。

