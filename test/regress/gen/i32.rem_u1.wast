(module
  (func (export "m0") (param i32) (result i32)
    (i32.rem_u (i32.const 13338)(local.get 0))
  )
  (func (export "m1") (param i32) (result i32)
    (i32.rem_u (i32.const 99)(local.get 0))
  )
  (func (export "m2") (param i32) (result i32)
    (i32.rem_u (i32.const 1)(local.get 0))
  )
  (func (export "m3") (param i32) (result i32)
    (i32.rem_u (i32.const 555)(local.get 0))
  )
  (func (export "m4") (param i32) (result i32)
    (i32.rem_u (i32.const 2147483648)(local.get 0))
  )
)
(assert_return (invoke "m0" (i32.const 10)) (i32.const 8))
(assert_return (invoke "m1" (i32.const 4294967293)) (i32.const 99))
(assert_trap (invoke "m2" (i32.const 0)) "")
(assert_return (invoke "m3" (i32.const 1)) (i32.const 0))
(assert_return (invoke "m4" (i32.const 4294967295)) (i32.const 2147483648))