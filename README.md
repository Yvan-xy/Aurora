---
description: 顺便想你
---

# 对装饰器的理解

我们首先应该对函数进一步了解。

函数也可以被传递，比如：

```text
def a():
	print("a")
v = a
v()
输出结果为：a
```

这里我并没有加（）即v = a\(\)，因为v（）此时将返回TypeError，而print（v）则由于无返回值而返回None

{% hint style="info" %}
而v = a则将函数名作为参数传递，想要运行该函数只需要v（），此时print（v）将返回v的地址。 函数内也可以声明函数，但是此函数并不能在函数外访问，如：
{% endhint %}

```text
def a():
	def v():
		print('00')
	v()
v()
此时运行结果为：00
							NameError: name 'v' is not defined
```

```

```



