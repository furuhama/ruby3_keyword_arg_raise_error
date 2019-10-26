## Prepare for a Ruby 3 Keyword argument breaking change

https://www.ruby-lang.org/ja/news/2019/10/22/ruby-2-7-0-preview2-released/

Ruby 3 introduces a breaking change for keyword arguments.

To care about this, we want to raise an error when warning occured on Ruby 2.7+. (For example, enable this monkey patch on CI.)

## References

https://github.com/ruby/ruby/blob/v2_7_0_preview2/test/ruby/test_keyword.rb

## Thanks

- nala san
- urabe san
