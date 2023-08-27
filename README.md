## 封装Ruby中正则表达式
下载gem: `gem install ruby_regexp_wrapper`

### 使用示例
1. 引入: `require "regexp_wrapper/query_wrapper"`
2. 实例化QueryWrapper: `@queryWrapper = RegexpWrapper::QueryWrapper.new`
3. 以a开头: `@queryWrapper.start_with!("a")`
4. 以z结尾: `@queryWrapper.end_with!("z")`
5. 将QueryWrapper转为正则: `@queryWrapper.to_regexp`
6. 使用QueryWrapper进行匹配: 
   6. `@queryWrapper.start_with!("a").end_with!("c") =~ "abc"`
   7. `"abc" =~ @queryWrapper.start_with!("a").end_with!("c").to_regexp`
