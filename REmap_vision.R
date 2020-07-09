#sessionInfo(),查看R相关信息
#运行源生例子
#baidu API.ak: Gixt1YjEX9DwnW5IeyYFUQ1qLLW9O96L
Sys.setlocale("LC_CTYPE", "English_United Kingdom.1252")

library(REmap)
set.seed(125)
out = remap(demoC,title = "REmap",subtitle = "theme:Dark")
plot(out)
summary(out)

city_vec = c("贵阳")
#Encoding(city_vec)='UTF-8' 

get_geo_position (city_vec)


set.seed(125)
origin = c('上海','广州','大连','南宁')
destination = c('南昌', '拉萨','长春','包头')
dat = data.frame(origin,destination)
out = remap(dat,title = "REmap",subtitle = "theme:Dark")
out
#plot(out)
#这个plot有点问题，直接输入out取出结果，目前还没更好的方法解决
#Warning message:
#In get_geo_position(city_vec) :
#北京 not found.上海 not found.广州 not found.大连 not found.......
#解决上述问题的方法运行：
#Sys.setlocale("LC_CTYPE", "English_United Kingdom.1252")
#必须设置成英文格式，才能显示UTF-8编码格式，但是打开其他程序，中文就成乱码，如果要转换使用下面的codes
#注意：在运行其他程序时要设置如下语言，否则会出现乱码
#Sys.setlocale("LC_CTYPE","Chinese (Simplified)_People's Republic of China.936")

get_city_coord('shanghai')
get_city_coord('上海' )