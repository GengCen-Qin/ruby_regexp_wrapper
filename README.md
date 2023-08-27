## 封装Ruby中正则表达式

### 使用示例
1. 实例化QueryWrapper: `@queryWrapper = RegexpWrapper::QueryWrapper.new`
2. 以a开头: `@queryWrapper.start_with!("a")`
3. 以z结尾: `@queryWrapper.end_with!("z")`
4. 将QueryWrapper转为正则: `@queryWrapper.to_regexp`
5. 使用QueryWrapper进行匹配: 
   6. `@queryWrapper.start_with!("a").end_with!("c") =~ "abc"`
   7. `"abc" =~ @queryWrapper.start_with!("a").end_with!("c").to_regexp`