(module
  (memory 1)

  (func $main (export "main")
    (call $start)
  )

  (func $start (export "start")
    (local $cnt i32)
    (local.set $cnt (i32.const 16))
    (loop $l
      (drop (i32.load (i32.add (i32.const 123) (local.get $cnt))))
      (local.tee $cnt (i32.sub (local.get $cnt) (i32.const 1)))
      (br_if $l)
    )
  )
)