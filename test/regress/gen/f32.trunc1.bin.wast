(module binary
  "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
  "\00\01\7d\03\85\80\80\80\00\04\00\00\00\00\07\95"
  "\80\80\80\00\04\02\6d\30\00\00\02\6d\31\00\01\02"
  "\6d\32\00\02\02\6d\33\00\03\0a\b5\80\80\80\00\04"
  "\88\80\80\80\00\00\43\00\00\c0\3f\8f\0b\88\80\80"
  "\80\00\00\43\9a\99\d9\3f\8f\0b\88\80\80\80\00\00"
  "\43\9a\99\d9\bf\8f\0b\88\80\80\80\00\00\43\00\00"
  "\c0\bf\8f\0b"
)
(assert_return (invoke "m0") (f32.const 0x1p+0))
(assert_return (invoke "m1") (f32.const 0x1p+0))
(assert_return (invoke "m2") (f32.const -0x1p+0))
(assert_return (invoke "m3") (f32.const -0x1p+0))