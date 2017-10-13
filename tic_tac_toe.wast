(module
 (type $FUNCSIG$ijjjii (func (param i64 i64 i64 i32 i32) (result i32)))
 (type $FUNCSIG$vj (func (param i64)))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$ijjii (func (param i64 i64 i32 i32) (result i32)))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (import "env" "assert" (func $assert (param i32 i32)))
 (import "env" "load_i64" (func $load_i64 (param i64 i64 i64 i32 i32) (result i32)))
 (import "env" "readMessage" (func $readMessage (param i32 i32) (result i32)))
 (import "env" "requireAuth" (func $requireAuth (param i64)))
 (import "env" "store_i64" (func $store_i64 (param i64 i64 i32 i32) (result i32)))
 (import "env" "update_i64" (func $update_i64 (param i64 i64 i32 i32) (result i32)))
 (table 0 anyfunc)
 (memory $0 1)
 (data (i32.const 4) "pA\00\00")
 (data (i32.const 16) "-\00")
 (data (i32.const 32) "x\00")
 (data (i32.const 48) "o\00")
 (data (i32.const 64) "draw\00")
 (data (i32.const 80) "none\00")
 (data (i32.const 96) "challenger shouldn\'t be the same as host\00")
 (data (i32.const 144) "game doesn\'t exist!\00")
 (data (i32.const 176) "this is not your game!\00")
 (data (i32.const 208) "it\'s not your turn yet!\00")
 (data (i32.const 240) "not a valid movement!\00")
 (data (i32.const 272) "tic.tac.toe\00")
 (data (i32.const 288) "create\00")
 (data (i32.const 304) "message shorter than expected\00")
 (data (i32.const 336) "restart\00")
 (data (i32.const 352) "move\00")
 (export "memory" (memory $0))
 (export "_ZN11tic_tac_toe17is_valid_movementERKNS_8MovementERKNS_4GameE" (func $_ZN11tic_tac_toe17is_valid_movementERKNS_8MovementERKNS_4GameE))
 (export "_ZN11tic_tac_toe8get_gameEyy" (func $_ZN11tic_tac_toe8get_gameEyy))
 (export "_ZN11tic_tac_toe12check_winnerERKNS_4GameE" (func $_ZN11tic_tac_toe12check_winnerERKNS_4GameE))
 (export "_ZN11tic_tac_toe12apply_createERKNS_6CreateE" (func $_ZN11tic_tac_toe12apply_createERKNS_6CreateE))
 (export "_ZN11tic_tac_toe13apply_restartERKNS_7RestartE" (func $_ZN11tic_tac_toe13apply_restartERKNS_7RestartE))
 (export "_ZN11tic_tac_toe10apply_moveERKNS_4MoveE" (func $_ZN11tic_tac_toe10apply_moveERKNS_4MoveE))
 (export "init" (func $init))
 (export "apply" (func $apply))
 (func $_ZN11tic_tac_toe17is_valid_movementERKNS_8MovementERKNS_4GameE (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  (local $3 i32)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (set_local $3
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.gt_u
     (tee_local $0
      (i32.add
       (i32.mul
        (i32.load
         (get_local $0)
        )
        (i32.const 3)
       )
       (i32.load offset=4
        (get_local $0)
       )
      )
     )
     (i32.const 8)
    )
   )
   (set_local $2
    (i64.load
     (i32.add
      (i32.add
       (get_local $1)
       (i32.shl
        (get_local $0)
        (i32.const 3)
       )
      )
      (i32.const 32)
     )
    )
   )
   (set_local $4
    (i64.const 59)
   )
   (set_local $0
    (i32.const 16)
   )
   (set_local $5
    (i64.const 0)
   )
   (set_local $6
    (i64.const 0)
   )
   (loop $label$1
    (block $label$2
     (block $label$3
      (block $label$4
       (br_if $label$4
        (i64.eq
         (get_local $5)
         (i64.const 0)
        )
       )
       (set_local $7
        (i64.const 0)
       )
       (br_if $label$3
        (i64.le_u
         (get_local $5)
         (i64.const 11)
        )
       )
       (br $label$2)
      )
      (block $label$5
       (block $label$6
        (br_if $label$6
         (i32.gt_u
          (i32.and
           (i32.add
            (tee_local $3
             (i32.load8_s
              (get_local $0)
             )
            )
            (i32.const -97)
           )
           (i32.const 255)
          )
          (i32.const 25)
         )
        )
        (set_local $3
         (i32.add
          (get_local $3)
          (i32.const 165)
         )
        )
        (br $label$5)
       )
       (set_local $3
        (select
         (i32.add
          (get_local $3)
          (i32.const 208)
         )
         (i32.const 0)
         (i32.lt_u
          (i32.and
           (i32.add
            (get_local $3)
            (i32.const -49)
           )
           (i32.const 255)
          )
          (i32.const 5)
         )
        )
       )
      )
      (set_local $7
       (i64.shr_s
        (i64.shl
         (i64.extend_u/i32
          (get_local $3)
         )
         (i64.const 56)
        )
        (i64.const 56)
       )
      )
     )
     (set_local $7
      (i64.shl
       (i64.and
        (get_local $7)
        (i64.const 31)
       )
       (i64.and
        (get_local $4)
        (i64.const 4294967295)
       )
      )
     )
    )
    (set_local $0
     (i32.add
      (get_local $0)
      (i32.const 1)
     )
    )
    (set_local $5
     (i64.add
      (get_local $5)
      (i64.const 1)
     )
    )
    (set_local $6
     (i64.or
      (get_local $7)
      (get_local $6)
     )
    )
    (br_if $label$1
     (i64.ne
      (tee_local $4
       (i64.add
        (get_local $4)
        (i64.const -5)
       )
      )
      (i64.const -6)
     )
    )
   )
   (set_local $3
    (i64.eq
     (get_local $2)
     (get_local $6)
    )
   )
  )
  (get_local $3)
 )
 (func $_ZN11tic_tac_toe8get_gameEyy (param $0 i32) (param $1 i64) (param $2 i64)
  (i64.store
   (get_local $0)
   (get_local $1)
  )
  (drop
   (call $load_i64
    (get_local $2)
    (i64.const -3778506236080876544)
    (i64.const 7035924439720001536)
    (get_local $0)
    (i32.const 104)
   )
  )
 )
 (func $_ZN11tic_tac_toe12check_winnerERKNS_4GameE (param $0 i32) (result i64)
  (local $1 i64)
  (local $2 i64)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  (local $8 i64)
  (local $9 i64)
  (local $10 i64)
  (block $label$0
   (block $label$1
    (block $label$2
     (block $label$3
      (block $label$4
       (block $label$5
        (block $label$6
         (br_if $label$6
          (i64.ne
           (tee_local $1
            (i64.load offset=32
             (get_local $0)
            )
           )
           (tee_local $2
            (i64.load
             (i32.add
              (get_local $0)
              (i32.const 64)
             )
            )
           )
          )
         )
         (br_if $label$5
          (i64.eq
           (get_local $1)
           (i64.load
            (i32.add
             (get_local $0)
             (i32.const 96)
            )
           )
          )
         )
        )
        (block $label$7
         (br_if $label$7
          (i64.ne
           (tee_local $8
            (i64.load
             (i32.add
              (get_local $0)
              (i32.const 40)
             )
            )
           )
           (get_local $2)
          )
         )
         (br_if $label$5
          (i64.eq
           (get_local $2)
           (i64.load
            (i32.add
             (get_local $0)
             (i32.const 88)
            )
           )
          )
         )
        )
        (block $label$8
         (br_if $label$8
          (i64.ne
           (tee_local $4
            (i64.load
             (i32.add
              (get_local $0)
              (i32.const 48)
             )
            )
           )
           (get_local $2)
          )
         )
         (br_if $label$5
          (i64.eq
           (get_local $2)
           (i64.load
            (i32.add
             (get_local $0)
             (i32.const 80)
            )
           )
          )
         )
        )
        (br_if $label$4
         (i64.ne
          (tee_local $10
           (i64.load
            (i32.add
             (get_local $0)
             (i32.const 56)
            )
           )
          )
          (get_local $2)
         )
        )
        (br_if $label$4
         (i64.ne
          (get_local $2)
          (i64.load
           (i32.add
            (get_local $0)
            (i32.const 72)
           )
          )
         )
        )
       )
       (set_local $7
        (i64.const 59)
       )
       (set_local $6
        (i32.const 32)
       )
       (set_local $8
        (i64.const 0)
       )
       (set_local $9
        (i64.const 0)
       )
       (loop $label$9
        (block $label$10
         (block $label$11
          (block $label$12
           (br_if $label$12
            (i64.eq
             (get_local $8)
             (i64.const 0)
            )
           )
           (set_local $10
            (i64.const 0)
           )
           (br_if $label$11
            (i64.le_u
             (get_local $8)
             (i64.const 11)
            )
           )
           (br $label$10)
          )
          (block $label$13
           (block $label$14
            (br_if $label$14
             (i32.gt_u
              (i32.and
               (i32.add
                (tee_local $3
                 (i32.load8_s
                  (get_local $6)
                 )
                )
                (i32.const -97)
               )
               (i32.const 255)
              )
              (i32.const 25)
             )
            )
            (set_local $3
             (i32.add
              (get_local $3)
              (i32.const 165)
             )
            )
            (br $label$13)
           )
           (set_local $3
            (select
             (i32.add
              (get_local $3)
              (i32.const 208)
             )
             (i32.const 0)
             (i32.lt_u
              (i32.and
               (i32.add
                (get_local $3)
                (i32.const -49)
               )
               (i32.const 255)
              )
              (i32.const 5)
             )
            )
           )
          )
          (set_local $10
           (i64.shr_s
            (i64.shl
             (i64.extend_u/i32
              (get_local $3)
             )
             (i64.const 56)
            )
            (i64.const 56)
           )
          )
         )
         (set_local $10
          (i64.shl
           (i64.and
            (get_local $10)
            (i64.const 31)
           )
           (i64.and
            (get_local $7)
            (i64.const 4294967295)
           )
          )
         )
        )
        (set_local $6
         (i32.add
          (get_local $6)
          (i32.const 1)
         )
        )
        (set_local $8
         (i64.add
          (get_local $8)
          (i64.const 1)
         )
        )
        (set_local $9
         (i64.or
          (get_local $10)
          (get_local $9)
         )
        )
        (br_if $label$9
         (i64.ne
          (tee_local $7
           (i64.add
            (get_local $7)
            (i64.const -5)
           )
          )
          (i64.const -6)
         )
        )
       )
       (br_if $label$0
        (i64.eq
         (get_local $2)
         (get_local $9)
        )
       )
       (set_local $7
        (i64.const 59)
       )
       (set_local $6
        (i32.const 48)
       )
       (set_local $8
        (i64.const 0)
       )
       (set_local $9
        (i64.const 0)
       )
       (loop $label$15
        (block $label$16
         (block $label$17
          (block $label$18
           (br_if $label$18
            (i64.eq
             (get_local $8)
             (i64.const 0)
            )
           )
           (set_local $10
            (i64.const 0)
           )
           (br_if $label$17
            (i64.le_u
             (get_local $8)
             (i64.const 11)
            )
           )
           (br $label$16)
          )
          (block $label$19
           (block $label$20
            (br_if $label$20
             (i32.gt_u
              (i32.and
               (i32.add
                (tee_local $3
                 (i32.load8_s
                  (get_local $6)
                 )
                )
                (i32.const -97)
               )
               (i32.const 255)
              )
              (i32.const 25)
             )
            )
            (set_local $3
             (i32.add
              (get_local $3)
              (i32.const 165)
             )
            )
            (br $label$19)
           )
           (set_local $3
            (select
             (i32.add
              (get_local $3)
              (i32.const 208)
             )
             (i32.const 0)
             (i32.lt_u
              (i32.and
               (i32.add
                (get_local $3)
                (i32.const -49)
               )
               (i32.const 255)
              )
              (i32.const 5)
             )
            )
           )
          )
          (set_local $10
           (i64.shr_s
            (i64.shl
             (i64.extend_u/i32
              (get_local $3)
             )
             (i64.const 56)
            )
            (i64.const 56)
           )
          )
         )
         (set_local $10
          (i64.shl
           (i64.and
            (get_local $10)
            (i64.const 31)
           )
           (i64.and
            (get_local $7)
            (i64.const 4294967295)
           )
          )
         )
        )
        (set_local $6
         (i32.add
          (get_local $6)
          (i32.const 1)
         )
        )
        (set_local $8
         (i64.add
          (get_local $8)
          (i64.const 1)
         )
        )
        (set_local $9
         (i64.or
          (get_local $10)
          (get_local $9)
         )
        )
        (br_if $label$15
         (i64.ne
          (tee_local $7
           (i64.add
            (get_local $7)
            (i64.const -5)
           )
          )
          (i64.const -6)
         )
        )
       )
       (br_if $label$3
        (i64.ne
         (get_local $2)
         (get_local $9)
        )
       )
       (return
        (i64.load
         (get_local $0)
        )
       )
      )
      (block $label$21
       (block $label$22
        (block $label$23
         (block $label$24
          (block $label$25
           (br_if $label$25
            (i64.ne
             (get_local $1)
             (get_local $8)
            )
           )
           (br_if $label$24
            (i64.eq
             (get_local $8)
             (get_local $4)
            )
           )
          )
          (br_if $label$23
           (i64.ne
            (get_local $1)
            (get_local $10)
           )
          )
          (br_if $label$23
           (i64.ne
            (get_local $1)
            (i64.load
             (i32.add
              (get_local $0)
              (i32.const 80)
             )
            )
           )
          )
         )
         (set_local $7
          (i64.const 59)
         )
         (set_local $6
          (i32.const 32)
         )
         (set_local $8
          (i64.const 0)
         )
         (set_local $9
          (i64.const 0)
         )
         (loop $label$26
          (block $label$27
           (block $label$28
            (block $label$29
             (br_if $label$29
              (i64.eq
               (get_local $8)
               (i64.const 0)
              )
             )
             (set_local $10
              (i64.const 0)
             )
             (br_if $label$28
              (i64.le_u
               (get_local $8)
               (i64.const 11)
              )
             )
             (br $label$27)
            )
            (block $label$30
             (block $label$31
              (br_if $label$31
               (i32.gt_u
                (i32.and
                 (i32.add
                  (tee_local $3
                   (i32.load8_s
                    (get_local $6)
                   )
                  )
                  (i32.const -97)
                 )
                 (i32.const 255)
                )
                (i32.const 25)
               )
              )
              (set_local $3
               (i32.add
                (get_local $3)
                (i32.const 165)
               )
              )
              (br $label$30)
             )
             (set_local $3
              (select
               (i32.add
                (get_local $3)
                (i32.const 208)
               )
               (i32.const 0)
               (i32.lt_u
                (i32.and
                 (i32.add
                  (get_local $3)
                  (i32.const -49)
                 )
                 (i32.const 255)
                )
                (i32.const 5)
               )
              )
             )
            )
            (set_local $10
             (i64.shr_s
              (i64.shl
               (i64.extend_u/i32
                (get_local $3)
               )
               (i64.const 56)
              )
              (i64.const 56)
             )
            )
           )
           (set_local $10
            (i64.shl
             (i64.and
              (get_local $10)
              (i64.const 31)
             )
             (i64.and
              (get_local $7)
              (i64.const 4294967295)
             )
            )
           )
          )
          (set_local $6
           (i32.add
            (get_local $6)
            (i32.const 1)
           )
          )
          (set_local $8
           (i64.add
            (get_local $8)
            (i64.const 1)
           )
          )
          (set_local $9
           (i64.or
            (get_local $10)
            (get_local $9)
           )
          )
          (br_if $label$26
           (i64.ne
            (tee_local $7
             (i64.add
              (get_local $7)
              (i64.const -5)
             )
            )
            (i64.const -6)
           )
          )
         )
         (br_if $label$22
          (i64.ne
           (get_local $1)
           (get_local $9)
          )
         )
         (br $label$0)
        )
        (block $label$32
         (block $label$33
          (br_if $label$33
           (i64.ne
            (get_local $4)
            (i64.load
             (i32.add
              (get_local $0)
              (i32.const 72)
             )
            )
           )
          )
          (br_if $label$32
           (i64.eq
            (get_local $4)
            (i64.load
             (i32.add
              (get_local $0)
              (i32.const 96)
             )
            )
           )
          )
         )
         (br_if $label$21
          (i64.ne
           (tee_local $4
            (i64.load
             (i32.add
              (get_local $0)
              (i32.const 80)
             )
            )
           )
           (i64.load
            (i32.add
             (get_local $0)
             (i32.const 88)
            )
           )
          )
         )
         (br_if $label$21
          (i64.ne
           (get_local $4)
           (i64.load
            (i32.add
             (get_local $0)
             (i32.const 96)
            )
           )
          )
         )
        )
        (set_local $7
         (i64.const 59)
        )
        (set_local $6
         (i32.const 32)
        )
        (set_local $8
         (i64.const 0)
        )
        (set_local $9
         (i64.const 0)
        )
        (loop $label$34
         (block $label$35
          (block $label$36
           (block $label$37
            (br_if $label$37
             (i64.eq
              (get_local $8)
              (i64.const 0)
             )
            )
            (set_local $10
             (i64.const 0)
            )
            (br_if $label$36
             (i64.le_u
              (get_local $8)
              (i64.const 11)
             )
            )
            (br $label$35)
           )
           (block $label$38
            (block $label$39
             (br_if $label$39
              (i32.gt_u
               (i32.and
                (i32.add
                 (tee_local $3
                  (i32.load8_s
                   (get_local $6)
                  )
                 )
                 (i32.const -97)
                )
                (i32.const 255)
               )
               (i32.const 25)
              )
             )
             (set_local $3
              (i32.add
               (get_local $3)
               (i32.const 165)
              )
             )
             (br $label$38)
            )
            (set_local $3
             (select
              (i32.add
               (get_local $3)
               (i32.const 208)
              )
              (i32.const 0)
              (i32.lt_u
               (i32.and
                (i32.add
                 (get_local $3)
                 (i32.const -49)
                )
                (i32.const 255)
               )
               (i32.const 5)
              )
             )
            )
           )
           (set_local $10
            (i64.shr_s
             (i64.shl
              (i64.extend_u/i32
               (get_local $3)
              )
              (i64.const 56)
             )
             (i64.const 56)
            )
           )
          )
          (set_local $10
           (i64.shl
            (i64.and
             (get_local $10)
             (i64.const 31)
            )
            (i64.and
             (get_local $7)
             (i64.const 4294967295)
            )
           )
          )
         )
         (set_local $6
          (i32.add
           (get_local $6)
           (i32.const 1)
          )
         )
         (set_local $8
          (i64.add
           (get_local $8)
           (i64.const 1)
          )
         )
         (set_local $9
          (i64.or
           (get_local $10)
           (get_local $9)
          )
         )
         (br_if $label$34
          (i64.ne
           (tee_local $7
            (i64.add
             (get_local $7)
             (i64.const -5)
            )
           )
           (i64.const -6)
          )
         )
        )
        (br_if $label$0
         (i64.eq
          (get_local $4)
          (get_local $9)
         )
        )
        (set_local $7
         (i64.const 59)
        )
        (set_local $6
         (i32.const 48)
        )
        (set_local $8
         (i64.const 0)
        )
        (set_local $9
         (i64.const 0)
        )
        (loop $label$40
         (block $label$41
          (block $label$42
           (block $label$43
            (br_if $label$43
             (i64.eq
              (get_local $8)
              (i64.const 0)
             )
            )
            (set_local $10
             (i64.const 0)
            )
            (br_if $label$42
             (i64.le_u
              (get_local $8)
              (i64.const 11)
             )
            )
            (br $label$41)
           )
           (block $label$44
            (block $label$45
             (br_if $label$45
              (i32.gt_u
               (i32.and
                (i32.add
                 (tee_local $3
                  (i32.load8_s
                   (get_local $6)
                  )
                 )
                 (i32.const -97)
                )
                (i32.const 255)
               )
               (i32.const 25)
              )
             )
             (set_local $3
              (i32.add
               (get_local $3)
               (i32.const 165)
              )
             )
             (br $label$44)
            )
            (set_local $3
             (select
              (i32.add
               (get_local $3)
               (i32.const 208)
              )
              (i32.const 0)
              (i32.lt_u
               (i32.and
                (i32.add
                 (get_local $3)
                 (i32.const -49)
                )
                (i32.const 255)
               )
               (i32.const 5)
              )
             )
            )
           )
           (set_local $10
            (i64.shr_s
             (i64.shl
              (i64.extend_u/i32
               (get_local $3)
              )
              (i64.const 56)
             )
             (i64.const 56)
            )
           )
          )
          (set_local $10
           (i64.shl
            (i64.and
             (get_local $10)
             (i64.const 31)
            )
            (i64.and
             (get_local $7)
             (i64.const 4294967295)
            )
           )
          )
         )
         (set_local $6
          (i32.add
           (get_local $6)
           (i32.const 1)
          )
         )
         (set_local $8
          (i64.add
           (get_local $8)
           (i64.const 1)
          )
         )
         (set_local $9
          (i64.or
           (get_local $10)
           (get_local $9)
          )
         )
         (br_if $label$40
          (i64.ne
           (tee_local $7
            (i64.add
             (get_local $7)
             (i64.const -5)
            )
           )
           (i64.const -6)
          )
         )
        )
        (br_if $label$3
         (i64.ne
          (get_local $2)
          (get_local $9)
         )
        )
        (return
         (i64.load
          (get_local $0)
         )
        )
       )
       (set_local $7
        (i64.const 59)
       )
       (set_local $6
        (i32.const 48)
       )
       (set_local $8
        (i64.const 0)
       )
       (set_local $9
        (i64.const 0)
       )
       (loop $label$46
        (block $label$47
         (block $label$48
          (block $label$49
           (br_if $label$49
            (i64.eq
             (get_local $8)
             (i64.const 0)
            )
           )
           (set_local $10
            (i64.const 0)
           )
           (br_if $label$48
            (i64.le_u
             (get_local $8)
             (i64.const 11)
            )
           )
           (br $label$47)
          )
          (block $label$50
           (block $label$51
            (br_if $label$51
             (i32.gt_u
              (i32.and
               (i32.add
                (tee_local $3
                 (i32.load8_s
                  (get_local $6)
                 )
                )
                (i32.const -97)
               )
               (i32.const 255)
              )
              (i32.const 25)
             )
            )
            (set_local $3
             (i32.add
              (get_local $3)
              (i32.const 165)
             )
            )
            (br $label$50)
           )
           (set_local $3
            (select
             (i32.add
              (get_local $3)
              (i32.const 208)
             )
             (i32.const 0)
             (i32.lt_u
              (i32.and
               (i32.add
                (get_local $3)
                (i32.const -49)
               )
               (i32.const 255)
              )
              (i32.const 5)
             )
            )
           )
          )
          (set_local $10
           (i64.shr_s
            (i64.shl
             (i64.extend_u/i32
              (get_local $3)
             )
             (i64.const 56)
            )
            (i64.const 56)
           )
          )
         )
         (set_local $10
          (i64.shl
           (i64.and
            (get_local $10)
            (i64.const 31)
           )
           (i64.and
            (get_local $7)
            (i64.const 4294967295)
           )
          )
         )
        )
        (set_local $6
         (i32.add
          (get_local $6)
          (i32.const 1)
         )
        )
        (set_local $8
         (i64.add
          (get_local $8)
          (i64.const 1)
         )
        )
        (set_local $9
         (i64.or
          (get_local $10)
          (get_local $9)
         )
        )
        (br_if $label$46
         (i64.ne
          (tee_local $7
           (i64.add
            (get_local $7)
            (i64.const -5)
           )
          )
          (i64.const -6)
         )
        )
       )
       (br_if $label$3
        (i64.ne
         (get_local $2)
         (get_local $9)
        )
       )
       (return
        (i64.load
         (get_local $0)
        )
       )
      )
      (set_local $5
       (i32.const 0)
      )
      (loop $label$52
       (set_local $7
        (i64.const 59)
       )
       (set_local $6
        (i32.const 16)
       )
       (set_local $8
        (i64.const 0)
       )
       (set_local $9
        (i64.const 0)
       )
       (loop $label$53
        (block $label$54
         (block $label$55
          (block $label$56
           (br_if $label$56
            (i64.eq
             (get_local $8)
             (i64.const 0)
            )
           )
           (set_local $10
            (i64.const 0)
           )
           (br_if $label$55
            (i64.le_u
             (get_local $8)
             (i64.const 11)
            )
           )
           (br $label$54)
          )
          (block $label$57
           (block $label$58
            (br_if $label$58
             (i32.gt_u
              (i32.and
               (i32.add
                (tee_local $3
                 (i32.load8_s
                  (get_local $6)
                 )
                )
                (i32.const -97)
               )
               (i32.const 255)
              )
              (i32.const 25)
             )
            )
            (set_local $3
             (i32.add
              (get_local $3)
              (i32.const 165)
             )
            )
            (br $label$57)
           )
           (set_local $3
            (select
             (i32.add
              (get_local $3)
              (i32.const 208)
             )
             (i32.const 0)
             (i32.lt_u
              (i32.and
               (i32.add
                (get_local $3)
                (i32.const -49)
               )
               (i32.const 255)
              )
              (i32.const 5)
             )
            )
           )
          )
          (set_local $10
           (i64.shr_s
            (i64.shl
             (i64.extend_u/i32
              (get_local $3)
             )
             (i64.const 56)
            )
            (i64.const 56)
           )
          )
         )
         (set_local $10
          (i64.shl
           (i64.and
            (get_local $10)
            (i64.const 31)
           )
           (i64.and
            (get_local $7)
            (i64.const 4294967295)
           )
          )
         )
        )
        (set_local $6
         (i32.add
          (get_local $6)
          (i32.const 1)
         )
        )
        (set_local $8
         (i64.add
          (get_local $8)
          (i64.const 1)
         )
        )
        (set_local $9
         (i64.or
          (get_local $10)
          (get_local $9)
         )
        )
        (br_if $label$53
         (i64.ne
          (tee_local $7
           (i64.add
            (get_local $7)
            (i64.const -5)
           )
          )
          (i64.const -6)
         )
        )
       )
       (br_if $label$3
        (i64.eq
         (get_local $1)
         (get_local $9)
        )
       )
       (br_if $label$2
        (i32.ge_s
         (tee_local $5
          (i32.add
           (get_local $5)
           (i32.const 1)
          )
         )
         (i32.const 9)
        )
       )
       (set_local $1
        (i64.load
         (i32.add
          (i32.add
           (get_local $0)
           (i32.shl
            (get_local $5)
            (i32.const 3)
           )
          )
          (i32.const 32)
         )
        )
       )
       (br $label$52)
      )
     )
     (set_local $8
      (i64.const 0)
     )
     (set_local $7
      (i64.const 59)
     )
     (set_local $6
      (i32.const 80)
     )
     (set_local $9
      (i64.const 0)
     )
     (loop $label$59
      (block $label$60
       (block $label$61
        (block $label$62
         (block $label$63
          (block $label$64
           (br_if $label$64
            (i64.gt_u
             (get_local $8)
             (i64.const 3)
            )
           )
           (br_if $label$63
            (i32.gt_u
             (i32.and
              (i32.add
               (tee_local $3
                (i32.load8_s
                 (get_local $6)
                )
               )
               (i32.const -97)
              )
              (i32.const 255)
             )
             (i32.const 25)
            )
           )
           (set_local $3
            (i32.add
             (get_local $3)
             (i32.const 165)
            )
           )
           (br $label$62)
          )
          (set_local $10
           (i64.const 0)
          )
          (br_if $label$61
           (i64.le_u
            (get_local $8)
            (i64.const 11)
           )
          )
          (br $label$60)
         )
         (set_local $3
          (select
           (i32.add
            (get_local $3)
            (i32.const 208)
           )
           (i32.const 0)
           (i32.lt_u
            (i32.and
             (i32.add
              (get_local $3)
              (i32.const -49)
             )
             (i32.const 255)
            )
            (i32.const 5)
           )
          )
         )
        )
        (set_local $10
         (i64.shr_s
          (i64.shl
           (i64.extend_u/i32
            (get_local $3)
           )
           (i64.const 56)
          )
          (i64.const 56)
         )
        )
       )
       (set_local $10
        (i64.shl
         (i64.and
          (get_local $10)
          (i64.const 31)
         )
         (i64.and
          (get_local $7)
          (i64.const 4294967295)
         )
        )
       )
      )
      (set_local $6
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (set_local $8
       (i64.add
        (get_local $8)
        (i64.const 1)
       )
      )
      (set_local $9
       (i64.or
        (get_local $10)
        (get_local $9)
       )
      )
      (br_if $label$59
       (i64.ne
        (tee_local $7
         (i64.add
          (get_local $7)
          (i64.const -5)
         )
        )
        (i64.const -6)
       )
      )
      (br $label$1)
     )
    )
    (set_local $8
     (i64.const 0)
    )
    (set_local $7
     (i64.const 59)
    )
    (set_local $6
     (i32.const 64)
    )
    (set_local $9
     (i64.const 0)
    )
    (loop $label$65
     (block $label$66
      (block $label$67
       (block $label$68
        (block $label$69
         (block $label$70
          (br_if $label$70
           (i64.gt_u
            (get_local $8)
            (i64.const 3)
           )
          )
          (br_if $label$69
           (i32.gt_u
            (i32.and
             (i32.add
              (tee_local $3
               (i32.load8_s
                (get_local $6)
               )
              )
              (i32.const -97)
             )
             (i32.const 255)
            )
            (i32.const 25)
           )
          )
          (set_local $3
           (i32.add
            (get_local $3)
            (i32.const 165)
           )
          )
          (br $label$68)
         )
         (set_local $10
          (i64.const 0)
         )
         (br_if $label$67
          (i64.le_u
           (get_local $8)
           (i64.const 11)
          )
         )
         (br $label$66)
        )
        (set_local $3
         (select
          (i32.add
           (get_local $3)
           (i32.const 208)
          )
          (i32.const 0)
          (i32.lt_u
           (i32.and
            (i32.add
             (get_local $3)
             (i32.const -49)
            )
            (i32.const 255)
           )
           (i32.const 5)
          )
         )
        )
       )
       (set_local $10
        (i64.shr_s
         (i64.shl
          (i64.extend_u/i32
           (get_local $3)
          )
          (i64.const 56)
         )
         (i64.const 56)
        )
       )
      )
      (set_local $10
       (i64.shl
        (i64.and
         (get_local $10)
         (i64.const 31)
        )
        (i64.and
         (get_local $7)
         (i64.const 4294967295)
        )
       )
      )
     )
     (set_local $6
      (i32.add
       (get_local $6)
       (i32.const 1)
      )
     )
     (set_local $8
      (i64.add
       (get_local $8)
       (i64.const 1)
      )
     )
     (set_local $9
      (i64.or
       (get_local $10)
       (get_local $9)
      )
     )
     (br_if $label$65
      (i64.ne
       (tee_local $7
        (i64.add
         (get_local $7)
         (i64.const -5)
        )
       )
       (i64.const -6)
      )
     )
    )
   )
   (return
    (get_local $9)
   )
  )
  (i64.load offset=8
   (get_local $0)
  )
 )
 (func $_ZN11tic_tac_toe12apply_createERKNS_6CreateE (param $0 i32)
  (local $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (local $8 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $8
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 208)
    )
   )
  )
  (call $requireAuth
   (i64.load offset=8
    (get_local $0)
   )
  )
  (call $assert
   (i64.ne
    (i64.load
     (get_local $0)
    )
    (i64.load offset=8
     (get_local $0)
    )
   )
   (i32.const 96)
  )
  (i64.store offset=104
   (get_local $8)
   (i64.load
    (get_local $0)
   )
  )
  (drop
   (call $load_i64
    (i64.load offset=8
     (get_local $0)
    )
    (i64.const -3778506236080876544)
    (i64.const 7035924439720001536)
    (i32.add
     (get_local $8)
     (i32.const 104)
    )
    (i32.const 104)
   )
  )
  (i64.store
   (get_local $8)
   (i64.load
    (get_local $0)
   )
  )
  (i64.store offset=8
   (get_local $8)
   (tee_local $1
    (i64.load offset=8
     (get_local $0)
    )
   )
  )
  (i64.store offset=16
   (get_local $8)
   (get_local $1)
  )
  (set_local $3
   (i32.const 0)
  )
  (loop $label$0
   (set_local $4
    (i64.const 59)
   )
   (set_local $0
    (i32.const 16)
   )
   (set_local $5
    (i64.const 0)
   )
   (set_local $6
    (i64.const 0)
   )
   (loop $label$1
    (block $label$2
     (block $label$3
      (block $label$4
       (br_if $label$4
        (i64.eq
         (get_local $5)
         (i64.const 0)
        )
       )
       (set_local $7
        (i64.const 0)
       )
       (br_if $label$3
        (i64.le_u
         (get_local $5)
         (i64.const 11)
        )
       )
       (br $label$2)
      )
      (block $label$5
       (block $label$6
        (br_if $label$6
         (i32.gt_u
          (i32.and
           (i32.add
            (tee_local $2
             (i32.load8_s
              (get_local $0)
             )
            )
            (i32.const -97)
           )
           (i32.const 255)
          )
          (i32.const 25)
         )
        )
        (set_local $2
         (i32.add
          (get_local $2)
          (i32.const 165)
         )
        )
        (br $label$5)
       )
       (set_local $2
        (select
         (i32.add
          (get_local $2)
          (i32.const 208)
         )
         (i32.const 0)
         (i32.lt_u
          (i32.and
           (i32.add
            (get_local $2)
            (i32.const -49)
           )
           (i32.const 255)
          )
          (i32.const 5)
         )
        )
       )
      )
      (set_local $7
       (i64.shr_s
        (i64.shl
         (i64.extend_u/i32
          (get_local $2)
         )
         (i64.const 56)
        )
        (i64.const 56)
       )
      )
     )
     (set_local $7
      (i64.shl
       (i64.and
        (get_local $7)
        (i64.const 31)
       )
       (i64.and
        (get_local $4)
        (i64.const 4294967295)
       )
      )
     )
    )
    (set_local $0
     (i32.add
      (get_local $0)
      (i32.const 1)
     )
    )
    (set_local $5
     (i64.add
      (get_local $5)
      (i64.const 1)
     )
    )
    (set_local $6
     (i64.or
      (get_local $7)
      (get_local $6)
     )
    )
    (br_if $label$1
     (i64.ne
      (tee_local $4
       (i64.add
        (get_local $4)
        (i64.const -5)
       )
      )
      (i64.const -6)
     )
    )
   )
   (i64.store
    (i32.add
     (i32.add
      (get_local $8)
      (i32.shl
       (get_local $3)
       (i32.const 3)
      )
     )
     (i32.const 32)
    )
    (get_local $6)
   )
   (br_if $label$0
    (i32.ne
     (tee_local $3
      (i32.add
       (get_local $3)
       (i32.const 1)
      )
     )
     (i32.const 9)
    )
   )
  )
  (drop
   (call $store_i64
    (get_local $1)
    (i64.const 7035924439720001536)
    (get_local $8)
    (i32.const 104)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 208)
   )
  )
 )
 (func $_ZN11tic_tac_toe13apply_restartERKNS_7RestartE (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $7
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 112)
    )
   )
  )
  (call $requireAuth
   (i64.load offset=16
    (get_local $0)
   )
  )
  (i64.store offset=8
   (get_local $7)
   (i64.load
    (get_local $0)
   )
  )
  (call $assert
   (i32.eq
    (call $load_i64
     (i64.load offset=8
      (get_local $0)
     )
     (i64.const -3778506236080876544)
     (i64.const 7035924439720001536)
     (i32.add
      (get_local $7)
      (i32.const 8)
     )
     (i32.const 104)
    )
    (i32.const 104)
   )
   (i32.const 144)
  )
  (call $assert
   (i32.or
    (i64.eq
     (tee_local $4
      (i64.load offset=16
       (get_local $0)
      )
     )
     (i64.load offset=16
      (get_local $7)
     )
    )
    (i64.eq
     (get_local $4)
     (i64.load offset=8
      (get_local $7)
     )
    )
   )
   (i32.const 176)
  )
  (set_local $2
   (i32.const 0)
  )
  (loop $label$0
   (set_local $3
    (i64.const 59)
   )
   (set_local $0
    (i32.const 16)
   )
   (set_local $4
    (i64.const 0)
   )
   (set_local $5
    (i64.const 0)
   )
   (loop $label$1
    (block $label$2
     (block $label$3
      (block $label$4
       (br_if $label$4
        (i64.eq
         (get_local $4)
         (i64.const 0)
        )
       )
       (set_local $6
        (i64.const 0)
       )
       (br_if $label$3
        (i64.le_u
         (get_local $4)
         (i64.const 11)
        )
       )
       (br $label$2)
      )
      (block $label$5
       (block $label$6
        (br_if $label$6
         (i32.gt_u
          (i32.and
           (i32.add
            (tee_local $1
             (i32.load8_s
              (get_local $0)
             )
            )
            (i32.const -97)
           )
           (i32.const 255)
          )
          (i32.const 25)
         )
        )
        (set_local $1
         (i32.add
          (get_local $1)
          (i32.const 165)
         )
        )
        (br $label$5)
       )
       (set_local $1
        (select
         (i32.add
          (get_local $1)
          (i32.const 208)
         )
         (i32.const 0)
         (i32.lt_u
          (i32.and
           (i32.add
            (get_local $1)
            (i32.const -49)
           )
           (i32.const 255)
          )
          (i32.const 5)
         )
        )
       )
      )
      (set_local $6
       (i64.shr_s
        (i64.shl
         (i64.extend_u/i32
          (get_local $1)
         )
         (i64.const 56)
        )
        (i64.const 56)
       )
      )
     )
     (set_local $6
      (i64.shl
       (i64.and
        (get_local $6)
        (i64.const 31)
       )
       (i64.and
        (get_local $3)
        (i64.const 4294967295)
       )
      )
     )
    )
    (set_local $0
     (i32.add
      (get_local $0)
      (i32.const 1)
     )
    )
    (set_local $4
     (i64.add
      (get_local $4)
      (i64.const 1)
     )
    )
    (set_local $5
     (i64.or
      (get_local $6)
      (get_local $5)
     )
    )
    (br_if $label$1
     (i64.ne
      (tee_local $3
       (i64.add
        (get_local $3)
        (i64.const -5)
       )
      )
      (i64.const -6)
     )
    )
   )
   (i64.store
    (i32.add
     (i32.add
      (i32.add
       (get_local $7)
       (i32.const 8)
      )
      (i32.shl
       (get_local $2)
       (i32.const 3)
      )
     )
     (i32.const 32)
    )
    (get_local $5)
   )
   (br_if $label$0
    (i32.ne
     (tee_local $2
      (i32.add
       (get_local $2)
       (i32.const 1)
      )
     )
     (i32.const 9)
    )
   )
  )
  (i64.store offset=32
   (get_local $7)
   (i64.const 0)
  )
  (i64.store offset=24
   (get_local $7)
   (tee_local $4
    (i64.load
     (i32.add
      (get_local $7)
      (i32.const 16)
     )
    )
   )
  )
  (drop
   (call $update_i64
    (get_local $4)
    (i64.const 7035924439720001536)
    (i32.add
     (get_local $7)
     (i32.const 8)
    )
    (i32.const 104)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $7)
    (i32.const 112)
   )
  )
 )
 (func $_ZN11tic_tac_toe10apply_moveERKNS_4MoveE (param $0 i32)
  (local $1 i32)
  (local $2 i64)
  (local $3 i32)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (local $8 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $8
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 112)
    )
   )
  )
  (call $requireAuth
   (i64.load offset=16
    (get_local $0)
   )
  )
  (i64.store offset=8
   (get_local $8)
   (i64.load
    (get_local $0)
   )
  )
  (call $assert
   (i32.eq
    (call $load_i64
     (i64.load offset=8
      (get_local $0)
     )
     (i64.const -3778506236080876544)
     (i64.const 7035924439720001536)
     (i32.add
      (get_local $8)
      (i32.const 8)
     )
     (i32.const 104)
    )
    (i32.const 104)
   )
   (i32.const 144)
  )
  (call $assert
   (i32.or
    (i64.eq
     (tee_local $6
      (i64.load offset=16
       (get_local $0)
      )
     )
     (i64.load offset=16
      (get_local $8)
     )
    )
    (i64.eq
     (get_local $6)
     (i64.load offset=8
      (get_local $8)
     )
    )
   )
   (i32.const 176)
  )
  (call $assert
   (i64.eq
    (i64.load offset=16
     (get_local $0)
    )
    (i64.load offset=24
     (get_local $8)
    )
   )
   (i32.const 208)
  )
  (set_local $3
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.gt_u
     (tee_local $1
      (i32.add
       (i32.mul
        (i32.load offset=24
         (get_local $0)
        )
        (i32.const 3)
       )
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 28)
        )
       )
      )
     )
     (i32.const 8)
    )
   )
   (set_local $2
    (i64.load
     (i32.add
      (i32.add
       (i32.add
        (get_local $8)
        (i32.const 8)
       )
       (i32.shl
        (get_local $1)
        (i32.const 3)
       )
      )
      (i32.const 32)
     )
    )
   )
   (set_local $7
    (i64.const 59)
   )
   (set_local $3
    (i32.const 16)
   )
   (set_local $6
    (i64.const 0)
   )
   (set_local $4
    (i64.const 0)
   )
   (loop $label$1
    (block $label$2
     (block $label$3
      (block $label$4
       (br_if $label$4
        (i64.eq
         (get_local $6)
         (i64.const 0)
        )
       )
       (set_local $5
        (i64.const 0)
       )
       (br_if $label$3
        (i64.le_u
         (get_local $6)
         (i64.const 11)
        )
       )
       (br $label$2)
      )
      (block $label$5
       (block $label$6
        (br_if $label$6
         (i32.gt_u
          (i32.and
           (i32.add
            (tee_local $1
             (i32.load8_s
              (get_local $3)
             )
            )
            (i32.const -97)
           )
           (i32.const 255)
          )
          (i32.const 25)
         )
        )
        (set_local $1
         (i32.add
          (get_local $1)
          (i32.const 165)
         )
        )
        (br $label$5)
       )
       (set_local $1
        (select
         (i32.add
          (get_local $1)
          (i32.const 208)
         )
         (i32.const 0)
         (i32.lt_u
          (i32.and
           (i32.add
            (get_local $1)
            (i32.const -49)
           )
           (i32.const 255)
          )
          (i32.const 5)
         )
        )
       )
      )
      (set_local $5
       (i64.shr_s
        (i64.shl
         (i64.extend_u/i32
          (get_local $1)
         )
         (i64.const 56)
        )
        (i64.const 56)
       )
      )
     )
     (set_local $5
      (i64.shl
       (i64.and
        (get_local $5)
        (i64.const 31)
       )
       (i64.and
        (get_local $7)
        (i64.const 4294967295)
       )
      )
     )
    )
    (set_local $3
     (i32.add
      (get_local $3)
      (i32.const 1)
     )
    )
    (set_local $6
     (i64.add
      (get_local $6)
      (i64.const 1)
     )
    )
    (set_local $4
     (i64.or
      (get_local $5)
      (get_local $4)
     )
    )
    (br_if $label$1
     (i64.ne
      (tee_local $7
       (i64.add
        (get_local $7)
        (i64.const -5)
       )
      )
      (i64.const -6)
     )
    )
   )
   (set_local $3
    (i64.eq
     (get_local $2)
     (get_local $4)
    )
   )
  )
  (call $assert
   (get_local $3)
   (i32.const 240)
  )
  (block $label$7
   (block $label$8
    (br_if $label$8
     (i64.ne
      (i64.load
       (i32.add
        (get_local $0)
        (i32.const 16)
       )
      )
      (tee_local $2
       (i64.load
        (i32.add
         (i32.add
          (get_local $8)
          (i32.const 8)
         )
         (i32.const 8)
        )
       )
      )
     )
    )
    (set_local $4
     (i64.const 59)
    )
    (set_local $3
     (i32.const 32)
    )
    (set_local $5
     (i64.const 0)
    )
    (set_local $6
     (i64.const 0)
    )
    (loop $label$9
     (block $label$10
      (block $label$11
       (block $label$12
        (br_if $label$12
         (i64.eq
          (get_local $5)
          (i64.const 0)
         )
        )
        (set_local $7
         (i64.const 0)
        )
        (br_if $label$11
         (i64.le_u
          (get_local $5)
          (i64.const 11)
         )
        )
        (br $label$10)
       )
       (block $label$13
        (block $label$14
         (br_if $label$14
          (i32.gt_u
           (i32.and
            (i32.add
             (tee_local $1
              (i32.load8_s
               (get_local $3)
              )
             )
             (i32.const -97)
            )
            (i32.const 255)
           )
           (i32.const 25)
          )
         )
         (set_local $1
          (i32.add
           (get_local $1)
           (i32.const 165)
          )
         )
         (br $label$13)
        )
        (set_local $1
         (select
          (i32.add
           (get_local $1)
           (i32.const 208)
          )
          (i32.const 0)
          (i32.lt_u
           (i32.and
            (i32.add
             (get_local $1)
             (i32.const -49)
            )
            (i32.const 255)
           )
           (i32.const 5)
          )
         )
        )
       )
       (set_local $7
        (i64.shr_s
         (i64.shl
          (i64.extend_u/i32
           (get_local $1)
          )
          (i64.const 56)
         )
         (i64.const 56)
        )
       )
      )
      (set_local $7
       (i64.shl
        (i64.and
         (get_local $7)
         (i64.const 31)
        )
        (i64.and
         (get_local $4)
         (i64.const 4294967295)
        )
       )
      )
     )
     (set_local $3
      (i32.add
       (get_local $3)
       (i32.const 1)
      )
     )
     (set_local $5
      (i64.add
       (get_local $5)
       (i64.const 1)
      )
     )
     (set_local $6
      (i64.or
       (get_local $7)
       (get_local $6)
      )
     )
     (br_if $label$9
      (i64.ne
       (tee_local $4
        (i64.add
         (get_local $4)
         (i64.const -5)
        )
       )
       (i64.const -6)
      )
     )
    )
    (set_local $5
     (i64.load offset=8
      (get_local $8)
     )
    )
    (br $label$7)
   )
   (set_local $4
    (i64.const 59)
   )
   (set_local $3
    (i32.const 48)
   )
   (set_local $5
    (i64.const 0)
   )
   (set_local $6
    (i64.const 0)
   )
   (loop $label$15
    (block $label$16
     (block $label$17
      (block $label$18
       (br_if $label$18
        (i64.eq
         (get_local $5)
         (i64.const 0)
        )
       )
       (set_local $7
        (i64.const 0)
       )
       (br_if $label$17
        (i64.le_u
         (get_local $5)
         (i64.const 11)
        )
       )
       (br $label$16)
      )
      (block $label$19
       (block $label$20
        (br_if $label$20
         (i32.gt_u
          (i32.and
           (i32.add
            (tee_local $1
             (i32.load8_s
              (get_local $3)
             )
            )
            (i32.const -97)
           )
           (i32.const 255)
          )
          (i32.const 25)
         )
        )
        (set_local $1
         (i32.add
          (get_local $1)
          (i32.const 165)
         )
        )
        (br $label$19)
       )
       (set_local $1
        (select
         (i32.add
          (get_local $1)
          (i32.const 208)
         )
         (i32.const 0)
         (i32.lt_u
          (i32.and
           (i32.add
            (get_local $1)
            (i32.const -49)
           )
           (i32.const 255)
          )
          (i32.const 5)
         )
        )
       )
      )
      (set_local $7
       (i64.shr_s
        (i64.shl
         (i64.extend_u/i32
          (get_local $1)
         )
         (i64.const 56)
        )
        (i64.const 56)
       )
      )
     )
     (set_local $7
      (i64.shl
       (i64.and
        (get_local $7)
        (i64.const 31)
       )
       (i64.and
        (get_local $4)
        (i64.const 4294967295)
       )
      )
     )
    )
    (set_local $3
     (i32.add
      (get_local $3)
      (i32.const 1)
     )
    )
    (set_local $5
     (i64.add
      (get_local $5)
      (i64.const 1)
     )
    )
    (set_local $6
     (i64.or
      (get_local $7)
      (get_local $6)
     )
    )
    (br_if $label$15
     (i64.ne
      (tee_local $4
       (i64.add
        (get_local $4)
        (i64.const -5)
       )
      )
      (i64.const -6)
     )
    )
   )
   (set_local $5
    (get_local $2)
   )
  )
  (i64.store
   (i32.add
    (get_local $8)
    (i32.const 24)
   )
   (get_local $5)
  )
  (i64.store
   (i32.add
    (i32.add
     (i32.add
      (get_local $8)
      (i32.const 8)
     )
     (i32.shl
      (i32.add
       (i32.mul
        (i32.load
         (i32.add
          (get_local $0)
          (i32.const 24)
         )
        )
        (i32.const 3)
       )
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 28)
        )
       )
      )
      (i32.const 3)
     )
    )
    (i32.const 32)
   )
   (get_local $6)
  )
  (i64.store offset=32
   (get_local $8)
   (call $_ZN11tic_tac_toe12check_winnerERKNS_4GameE
    (i32.add
     (get_local $8)
     (i32.const 8)
    )
   )
  )
  (drop
   (call $update_i64
    (get_local $2)
    (i64.const 7035924439720001536)
    (i32.add
     (get_local $8)
     (i32.const 8)
    )
    (i32.const 104)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 112)
   )
  )
 )
 (func $init
 )
 (func $apply (param $0 i64) (param $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (local $8 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $8
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 32)
    )
   )
  )
  (set_local $5
   (i64.const 0)
  )
  (set_local $4
   (i64.const 59)
  )
  (set_local $3
   (i32.const 272)
  )
  (set_local $6
   (i64.const 0)
  )
  (loop $label$0
   (block $label$1
    (block $label$2
     (block $label$3
      (block $label$4
       (block $label$5
        (br_if $label$5
         (i64.gt_u
          (get_local $5)
          (i64.const 10)
         )
        )
        (br_if $label$4
         (i32.gt_u
          (i32.and
           (i32.add
            (tee_local $2
             (i32.load8_s
              (get_local $3)
             )
            )
            (i32.const -97)
           )
           (i32.const 255)
          )
          (i32.const 25)
         )
        )
        (set_local $2
         (i32.add
          (get_local $2)
          (i32.const 165)
         )
        )
        (br $label$3)
       )
       (set_local $7
        (i64.const 0)
       )
       (br_if $label$2
        (i64.eq
         (get_local $5)
         (i64.const 11)
        )
       )
       (br $label$1)
      )
      (set_local $2
       (select
        (i32.add
         (get_local $2)
         (i32.const 208)
        )
        (i32.const 0)
        (i32.lt_u
         (i32.and
          (i32.add
           (get_local $2)
           (i32.const -49)
          )
          (i32.const 255)
         )
         (i32.const 5)
        )
       )
      )
     )
     (set_local $7
      (i64.shr_s
       (i64.shl
        (i64.extend_u/i32
         (get_local $2)
        )
        (i64.const 56)
       )
       (i64.const 56)
      )
     )
    )
    (set_local $7
     (i64.shl
      (i64.and
       (get_local $7)
       (i64.const 31)
      )
      (i64.and
       (get_local $4)
       (i64.const 4294967295)
      )
     )
    )
   )
   (set_local $3
    (i32.add
     (get_local $3)
     (i32.const 1)
    )
   )
   (set_local $4
    (i64.add
     (get_local $4)
     (i64.const -5)
    )
   )
   (set_local $6
    (i64.or
     (get_local $7)
     (get_local $6)
    )
   )
   (br_if $label$0
    (i64.ne
     (tee_local $5
      (i64.add
       (get_local $5)
       (i64.const 1)
      )
     )
     (i64.const 13)
    )
   )
  )
  (block $label$6
   (br_if $label$6
    (i64.ne
     (get_local $6)
     (get_local $0)
    )
   )
   (set_local $5
    (i64.const 0)
   )
   (set_local $4
    (i64.const 59)
   )
   (set_local $3
    (i32.const 288)
   )
   (set_local $6
    (i64.const 0)
   )
   (loop $label$7
    (block $label$8
     (block $label$9
      (block $label$10
       (block $label$11
        (block $label$12
         (br_if $label$12
          (i64.gt_u
           (get_local $5)
           (i64.const 5)
          )
         )
         (br_if $label$11
          (i32.gt_u
           (i32.and
            (i32.add
             (tee_local $2
              (i32.load8_s
               (get_local $3)
              )
             )
             (i32.const -97)
            )
            (i32.const 255)
           )
           (i32.const 25)
          )
         )
         (set_local $2
          (i32.add
           (get_local $2)
           (i32.const 165)
          )
         )
         (br $label$10)
        )
        (set_local $7
         (i64.const 0)
        )
        (br_if $label$9
         (i64.le_u
          (get_local $5)
          (i64.const 11)
         )
        )
        (br $label$8)
       )
       (set_local $2
        (select
         (i32.add
          (get_local $2)
          (i32.const 208)
         )
         (i32.const 0)
         (i32.lt_u
          (i32.and
           (i32.add
            (get_local $2)
            (i32.const -49)
           )
           (i32.const 255)
          )
          (i32.const 5)
         )
        )
       )
      )
      (set_local $7
       (i64.shr_s
        (i64.shl
         (i64.extend_u/i32
          (get_local $2)
         )
         (i64.const 56)
        )
        (i64.const 56)
       )
      )
     )
     (set_local $7
      (i64.shl
       (i64.and
        (get_local $7)
        (i64.const 31)
       )
       (i64.and
        (get_local $4)
        (i64.const 4294967295)
       )
      )
     )
    )
    (set_local $3
     (i32.add
      (get_local $3)
      (i32.const 1)
     )
    )
    (set_local $5
     (i64.add
      (get_local $5)
      (i64.const 1)
     )
    )
    (set_local $6
     (i64.or
      (get_local $7)
      (get_local $6)
     )
    )
    (br_if $label$7
     (i64.ne
      (tee_local $4
       (i64.add
        (get_local $4)
        (i64.const -5)
       )
      )
      (i64.const -6)
     )
    )
   )
   (block $label$13
    (br_if $label$13
     (i64.ne
      (get_local $6)
      (get_local $1)
     )
    )
    (call $assert
     (i32.gt_u
      (call $readMessage
       (get_local $8)
       (i32.const 16)
      )
      (i32.const 15)
     )
     (i32.const 304)
    )
    (call $_ZN11tic_tac_toe12apply_createERKNS_6CreateE
     (get_local $8)
    )
    (br $label$6)
   )
   (set_local $5
    (i64.const 0)
   )
   (set_local $4
    (i64.const 59)
   )
   (set_local $3
    (i32.const 336)
   )
   (set_local $6
    (i64.const 0)
   )
   (loop $label$14
    (block $label$15
     (block $label$16
      (block $label$17
       (block $label$18
        (block $label$19
         (br_if $label$19
          (i64.gt_u
           (get_local $5)
           (i64.const 6)
          )
         )
         (br_if $label$18
          (i32.gt_u
           (i32.and
            (i32.add
             (tee_local $2
              (i32.load8_s
               (get_local $3)
              )
             )
             (i32.const -97)
            )
            (i32.const 255)
           )
           (i32.const 25)
          )
         )
         (set_local $2
          (i32.add
           (get_local $2)
           (i32.const 165)
          )
         )
         (br $label$17)
        )
        (set_local $7
         (i64.const 0)
        )
        (br_if $label$16
         (i64.le_u
          (get_local $5)
          (i64.const 11)
         )
        )
        (br $label$15)
       )
       (set_local $2
        (select
         (i32.add
          (get_local $2)
          (i32.const 208)
         )
         (i32.const 0)
         (i32.lt_u
          (i32.and
           (i32.add
            (get_local $2)
            (i32.const -49)
           )
           (i32.const 255)
          )
          (i32.const 5)
         )
        )
       )
      )
      (set_local $7
       (i64.shr_s
        (i64.shl
         (i64.extend_u/i32
          (get_local $2)
         )
         (i64.const 56)
        )
        (i64.const 56)
       )
      )
     )
     (set_local $7
      (i64.shl
       (i64.and
        (get_local $7)
        (i64.const 31)
       )
       (i64.and
        (get_local $4)
        (i64.const 4294967295)
       )
      )
     )
    )
    (set_local $3
     (i32.add
      (get_local $3)
      (i32.const 1)
     )
    )
    (set_local $5
     (i64.add
      (get_local $5)
      (i64.const 1)
     )
    )
    (set_local $6
     (i64.or
      (get_local $7)
      (get_local $6)
     )
    )
    (br_if $label$14
     (i64.ne
      (tee_local $4
       (i64.add
        (get_local $4)
        (i64.const -5)
       )
      )
      (i64.const -6)
     )
    )
   )
   (block $label$20
    (br_if $label$20
     (i64.ne
      (get_local $6)
      (get_local $1)
     )
    )
    (call $assert
     (i32.gt_u
      (call $readMessage
       (get_local $8)
       (i32.const 24)
      )
      (i32.const 23)
     )
     (i32.const 304)
    )
    (call $_ZN11tic_tac_toe13apply_restartERKNS_7RestartE
     (get_local $8)
    )
    (br $label$6)
   )
   (set_local $5
    (i64.const 0)
   )
   (set_local $4
    (i64.const 59)
   )
   (set_local $3
    (i32.const 352)
   )
   (set_local $6
    (i64.const 0)
   )
   (loop $label$21
    (block $label$22
     (block $label$23
      (block $label$24
       (block $label$25
        (block $label$26
         (br_if $label$26
          (i64.gt_u
           (get_local $5)
           (i64.const 3)
          )
         )
         (br_if $label$25
          (i32.gt_u
           (i32.and
            (i32.add
             (tee_local $2
              (i32.load8_s
               (get_local $3)
              )
             )
             (i32.const -97)
            )
            (i32.const 255)
           )
           (i32.const 25)
          )
         )
         (set_local $2
          (i32.add
           (get_local $2)
           (i32.const 165)
          )
         )
         (br $label$24)
        )
        (set_local $7
         (i64.const 0)
        )
        (br_if $label$23
         (i64.le_u
          (get_local $5)
          (i64.const 11)
         )
        )
        (br $label$22)
       )
       (set_local $2
        (select
         (i32.add
          (get_local $2)
          (i32.const 208)
         )
         (i32.const 0)
         (i32.lt_u
          (i32.and
           (i32.add
            (get_local $2)
            (i32.const -49)
           )
           (i32.const 255)
          )
          (i32.const 5)
         )
        )
       )
      )
      (set_local $7
       (i64.shr_s
        (i64.shl
         (i64.extend_u/i32
          (get_local $2)
         )
         (i64.const 56)
        )
        (i64.const 56)
       )
      )
     )
     (set_local $7
      (i64.shl
       (i64.and
        (get_local $7)
        (i64.const 31)
       )
       (i64.and
        (get_local $4)
        (i64.const 4294967295)
       )
      )
     )
    )
    (set_local $3
     (i32.add
      (get_local $3)
      (i32.const 1)
     )
    )
    (set_local $5
     (i64.add
      (get_local $5)
      (i64.const 1)
     )
    )
    (set_local $6
     (i64.or
      (get_local $7)
      (get_local $6)
     )
    )
    (br_if $label$21
     (i64.ne
      (tee_local $4
       (i64.add
        (get_local $4)
        (i64.const -5)
       )
      )
      (i64.const -6)
     )
    )
   )
   (br_if $label$6
    (i64.ne
     (get_local $6)
     (get_local $1)
    )
   )
   (call $assert
    (i32.gt_u
     (call $readMessage
      (get_local $8)
      (i32.const 32)
     )
     (i32.const 31)
    )
    (i32.const 304)
   )
   (call $_ZN11tic_tac_toe10apply_moveERKNS_4MoveE
    (get_local $8)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 32)
   )
  )
 )
)
