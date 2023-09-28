(PLT
;  (Max
;    0x64
;    (BufLength
;      (AbstractBuf "txdata")
;    )
;  )
;  0x10000000000000000
;)
;(PEq
;  0x157e0df9dc0f70ddc5c5bc34da33383cf3486ecc180b8e526ee515a7a2dc9af5
;  (Keccak
;    (ConcreteBuf
;      Length: 64 (0x40) bytes
;      0000:   00 00 00 00  00 00 00 00  00 00 00 00  00 00 00 00   ................
;      0010:   00 00 00 00  00 00 00 00  00 00 00 00  00 00 ac ab   ................
;      0020:   00 00 00 00  00 00 00 00  00 00 00 00  00 00 00 00   ................
;      0030:   00 00 00 00  00 00 00 00  00 00 00 00  00 00 00 03   ................
;    )
;  )
;)
;(PEq
;  0x4ebfc7263084cf74d08c1805387fbf509660216ca3c93cf77dc63156b642967b
;  (Keccak
;    (ConcreteBuf
;      Length: 160 (0xa0) bytes
;      0000:   8b 73 c3 c6  9b b8 fe 3d  51 2e cc 4c  f7 59 cc 79   .s.....=Q..L.Y.y
;      0010:   23 9f 7b 17  9b 0f fa ca  a9 a7 5d 52  2b 39 40 0f   #.{.......]R+9@.
;      0020:   9e e1 87 a3  25 c8 0a 9c  a8 20 b4 f2  97 a5 87 70   ....%.... .....p
;      0030:   bf 5a 85 fe  de 37 56 f8  e7 e9 d1 4f  f3 7d 7b 66   .Z...7V....O.}{f
;      0040:   c8 9e fd aa  54 c0 f2 0c  7a df 61 28  82 df 09 50   ....T...z.a(...P
;      0050:   f5 a9 51 63  7e 03 07 cd  cb 4c 67 2f  29 8b 8b c6   ..Qc~....Lg/)...
;      0060:   00 00 00 00  00 00 00 00  00 00 00 00  00 00 00 00   ................
;      0070:   00 00 00 00  00 00 00 00  00 00 00 00  00 00 00 63   ...............c
;      0080:   00 00 00 00  00 00 00 00  00 00 00 00  d9 53 22 74   .............S"t
;      0090:   58 65 82 27  19 16 4b 1f  c1 67 93 07  54 c2 48 de   Xe.'..K..g..T.H.
;    )
;  )
;)
;(PEq
;  0x9ee187a325c80a9ca820b4f297a58770bf5a85fede3756f8e7e9d14ff37d7b66
;  (Keccak
;    (ConcreteBuf
;      Length: 3 (0x3) bytes
;      0000:   54 4b 4e                                             TKN
;    )
;  )
;)
;(PNeg
;  (PEq
;    (Add
;      (Var "arg3")
;      (SLoad
;        slot:
;          (Keccak
;            (CopySlice
;              srcOffset: 0x0
;              dstOffset: 0x0
;              size:      0x40
;              src:
;                (WriteWord
;                  idx:
;                    0x0
;                  val:
;                    (WAddr
;                      (SymAddr "arg2")
;                    )
;                )
;                (ConcreteBuf
;                  Length: 64 (0x40) bytes
;                  0000:   00 00 00 00  00 00 00 00  00 00 00 00  00 00 00 00   ................
;                  0010:   00 00 00 00  00 00 00 00  00 00 00 00  00 00 00 00   ................
;                  0020:   00 00 00 00  00 00 00 00  00 00 00 00  00 00 00 00   ................
;                  0030:   00 00 00 00  00 00 00 00  00 00 00 00  00 00 00 03   ................
;                )
;            )
;            (ConcreteBuf "")
;          )
;        storage:
;          (SStore
;            slot:
;              0x157e0df9dc0f70ddc5c5bc34da33383cf3486ecc180b8e526ee515a7a2dc9af5
;            val:
;              (Sub
;                (Var "arg1")
;                (Var "arg3")
;              )
;          )
;          (ConcreteStore
;            vals:
;              (0x0,0x544b4e0000000000000000000000000000000000000000000000000000000006)
;              (0x1,0x5400000000000000000000000000000000000000000000000000000000000002)
;              (0x2,0x0)
;              (0x6,0xacab)
;          )
;      )
;    )
;    (SLoad
;      slot:
;        (Keccak
;          (CopySlice
;            srcOffset: 0x0
;            dstOffset: 0x0
;            size:      0x40
;            src:
;              (WriteWord
;                idx:
;                  0x0
;                val:
;                  (WAddr
;                    (SymAddr "arg2")
;                  )
;              )
;              (ConcreteBuf
;                Length: 64 (0x40) bytes
;                0000:   00 00 00 00  00 00 00 00  00 00 00 00  00 00 00 00   ................
;                0010:   00 00 00 00  00 00 00 00  00 00 00 00  00 00 00 00   ................
;                0020:   00 00 00 00  00 00 00 00  00 00 00 00  00 00 00 00   ................
;                0030:   00 00 00 00  00 00 00 00  00 00 00 00  00 00 00 03   ................
;              )
;          )
;          (ConcreteBuf "")
;        )
;      storage:
;        (SStore
;          slot:
;            0x157e0df9dc0f70ddc5c5bc34da33383cf3486ecc180b8e526ee515a7a2dc9af5
;          val:
;            (Var "arg1")
;        )
;        (ConcreteStore
;          vals:
;            (0x0,0x544b4e0000000000000000000000000000000000000000000000000000000006)
;            (0x1,0x5400000000000000000000000000000000000000000000000000000000000002)
;            (0x2,0x0)
;            (0x6,0xacab)
;        )
;    )
;  )
;)
;(PNeg
;  (PEq
;    (IsZero
;      (LT
;        (Add
;          (Var "arg3")
;          (SLoad
;            slot:
;              (Keccak
;                (CopySlice
;                  srcOffset: 0x0
;                  dstOffset: 0x0
;                  size:      0x40
;                  src:
;                    (WriteWord
;                      idx:
;                        0x0
;                      val:
;                        (WAddr
;                          (SymAddr "arg2")
;                        )
;                    )
;                    (ConcreteBuf
;                      Length: 64 (0x40) bytes
;                      0000:   00 00 00 00  00 00 00 00  00 00 00 00  00 00 00 00   ................
;                      0010:   00 00 00 00  00 00 00 00  00 00 00 00  00 00 00 00   ................
;                      0020:   00 00 00 00  00 00 00 00  00 00 00 00  00 00 00 00   ................
;                      0030:   00 00 00 00  00 00 00 00  00 00 00 00  00 00 00 03   ................
;                    )
;                )
;                (ConcreteBuf "")
;              )
;            storage:
;              (SStore
;                slot:
;                  0x157e0df9dc0f70ddc5c5bc34da33383cf3486ecc180b8e526ee515a7a2dc9af5
;                val:
;                  (Sub
;                    (Var "arg1")
;                    (Var "arg3")
;                  )
;              )
;              (ConcreteStore
;                vals:
;                  (0x0,0x544b4e0000000000000000000000000000000000000000000000000000000006)
;                  (0x1,0x5400000000000000000000000000000000000000000000000000000000000002)
;                  (0x2,0x0)
;                  (0x6,0xacab)
;              )
;          )
;        )
;        (Sub
;          (Add
;            (Var "arg3")
;            (SLoad
;              slot:
;                (Keccak
;                  (CopySlice
;                    srcOffset: 0x0
;                    dstOffset: 0x0
;                    size:      0x40
;                    src:
;                      (WriteWord
;                        idx:
;                          0x0
;                        val:
;                          (WAddr
;                            (SymAddr "arg2")
;                          )
;                      )
;                      (ConcreteBuf
;                        Length: 64 (0x40) bytes
;                        0000:   00 00 00 00  00 00 00 00  00 00 00 00  00 00 00 00   ................
;                        0010:   00 00 00 00  00 00 00 00  00 00 00 00  00 00 00 00   ................
;                        0020:   00 00 00 00  00 00 00 00  00 00 00 00  00 00 00 00   ................
;                        0030:   00 00 00 00  00 00 00 00  00 00 00 00  00 00 00 03   ................
;                      )
;                  )
;                  (ConcreteBuf "")
;                )
;              storage:
;                (SStore
;                  slot:
;                    0x157e0df9dc0f70ddc5c5bc34da33383cf3486ecc180b8e526ee515a7a2dc9af5
;                  val:
;                    (Sub
;                      (Var "arg1")
;                      (Var "arg3")
;                    )
;                )
;                (ConcreteStore
;                  vals:
;                    (0x0,0x544b4e0000000000000000000000000000000000000000000000000000000006)
;                    (0x1,0x5400000000000000000000000000000000000000000000000000000000000002)
;                    (0x2,0x0)
;                    (0x6,0xacab)
;                )
;            )
;          )
;          (SLoad
;            slot:
;              (Keccak
;                (CopySlice
;                  srcOffset: 0x0
;                  dstOffset: 0x0
;                  size:      0x40
;                  src:
;                    (WriteWord
;                      idx:
;                        0x0
;                      val:
;                        (WAddr
;                          (SymAddr "arg2")
;                        )
;                    )
;                    (ConcreteBuf
;                      Length: 64 (0x40) bytes
;                      0000:   00 00 00 00  00 00 00 00  00 00 00 00  00 00 00 00   ................
;                      0010:   00 00 00 00  00 00 00 00  00 00 00 00  00 00 00 00   ................
;                      0020:   00 00 00 00  00 00 00 00  00 00 00 00  00 00 00 00   ................
;                      0030:   00 00 00 00  00 00 00 00  00 00 00 00  00 00 00 03   ................
;                    )
;                )
;                (ConcreteBuf "")
;              )
;            storage:
;              (SStore
;                slot:
;                  0x157e0df9dc0f70ddc5c5bc34da33383cf3486ecc180b8e526ee515a7a2dc9af5
;                val:
;                  (Var "arg1")
;              )
;              (ConcreteStore
;                vals:
;                  (0x0,0x544b4e0000000000000000000000000000000000000000000000000000000006)
;                  (0x1,0x5400000000000000000000000000000000000000000000000000000000000002)
;                  (0x2,0x0)
;                  (0x6,0xacab)
;              )
;          )
;        )
;      )
;    )
;    0x0
;  )
;)
;(PEq
;  0xacab
;  (WAddr
;    (SymAddr "arg2")
;  )
;)
;(PNeg
;  (PEq
;    (IsZero
;      (LT
;        (Var "arg1")
;        (Sub
;          (Var "arg1")
;          (Var "arg3")
;        )
;      )
;    )
;    0x0
;  )
;)
;(PLT
;  (Max
;    0x64
;    (BufLength
;      (AbstractBuf "txdata")
;    )
;  )
;  0x10000000000000000
;)
;(PNeg
;  (PEq
;    (Add
;      (Var "arg3")
;      (SLoad
;        slot:
;          (Keccak
;            (CopySlice
;              srcOffset: 0x0
;              dstOffset: 0x0
;              size:      0x40
;              src:
;                (WriteWord
;                  idx:
;                    0x0
;                  val:
;                    (WAddr
;                      (SymAddr "arg2")
;                    )
;                )
;                (ConcreteBuf
;                  Length: 64 (0x40) bytes
;                  0000:   00 00 00 00  00 00 00 00  00 00 00 00  00 00 00 00   ................
;                  0010:   00 00 00 00  00 00 00 00  00 00 00 00  00 00 00 00   ................
;                  0020:   00 00 00 00  00 00 00 00  00 00 00 00  00 00 00 00   ................
;                  0030:   00 00 00 00  00 00 00 00  00 00 00 00  00 00 00 03   ................
;                )
;            )
;            (ConcreteBuf "")
;          )
;        storage:
;          (SStore
;            slot:
;              0x157e0df9dc0f70ddc5c5bc34da33383cf3486ecc180b8e526ee515a7a2dc9af5
;            val:
;              (Sub
;                (Var "arg1")
;                (Var "arg3")
;              )
;          )
;          (ConcreteStore
;            vals:
;              (0x0,0x544b4e0000000000000000000000000000000000000000000000000000000006)
;              (0x1,0x5400000000000000000000000000000000000000000000000000000000000002)
;              (0x2,0x0)
;              (0x6,0xacab)
;          )
;      )
;    )
;    (SLoad
;      slot:
;        (Keccak
;          (CopySlice
;            srcOffset: 0x0
;            dstOffset: 0x0
;            size:      0x40
;            src:
;              (WriteWord
;                idx:
;                  0x0
;                val:
;                  (WAddr
;                    (SymAddr "arg2")
;                  )
;              )
;              (ConcreteBuf
;                Length: 64 (0x40) bytes
;                0000:   00 00 00 00  00 00 00 00  00 00 00 00  00 00 00 00   ................
;                0010:   00 00 00 00  00 00 00 00  00 00 00 00  00 00 00 00   ................
;                0020:   00 00 00 00  00 00 00 00  00 00 00 00  00 00 00 00   ................
;                0030:   00 00 00 00  00 00 00 00  00 00 00 00  00 00 00 03   ................
;              )
;          )
;          (ConcreteBuf "")
;        )
;      storage:
;        (SStore
;          slot:
;            0x157e0df9dc0f70ddc5c5bc34da33383cf3486ecc180b8e526ee515a7a2dc9af5
;          val:
;            (Var "arg1")
;        )
;        (ConcreteStore
;          vals:
;            (0x0,0x544b4e0000000000000000000000000000000000000000000000000000000006)
;            (0x1,0x5400000000000000000000000000000000000000000000000000000000000002)
;            (0x2,0x0)
;            (0x6,0xacab)
;        )
;    )
;  )
;)
;(PEq
;  0xacab
;  (WAddr
;    (SymAddr "arg2")
;  )
;)
;
; logic
; TODO: this creates an error when used with z3?
;(set-logic QF_AUFBV)
(set-logic ALL)

; types
(define-sort Byte () (_ BitVec 8))
(define-sort Word () (_ BitVec 256))
(define-sort Addr () (_ BitVec 160))
(define-sort Buf () (Array Word Byte))

; slot -> value
(define-sort Storage () (Array Word Word))

; hash functions
(declare-fun keccak (Buf) Word)
(declare-fun sha256 (Buf) Word)
(define-fun max ((a (_ BitVec 256)) (b (_ BitVec 256))) (_ BitVec 256) (ite (bvult a b) b a))

; word indexing
(define-fun indexWord31 ((w Word)) Byte ((_ extract 7 0) w))
(define-fun indexWord30 ((w Word)) Byte ((_ extract 15 8) w))
(define-fun indexWord29 ((w Word)) Byte ((_ extract 23 16) w))
(define-fun indexWord28 ((w Word)) Byte ((_ extract 31 24) w))
(define-fun indexWord27 ((w Word)) Byte ((_ extract 39 32) w))
(define-fun indexWord26 ((w Word)) Byte ((_ extract 47 40) w))
(define-fun indexWord25 ((w Word)) Byte ((_ extract 55 48) w))
(define-fun indexWord24 ((w Word)) Byte ((_ extract 63 56) w))
(define-fun indexWord23 ((w Word)) Byte ((_ extract 71 64) w))
(define-fun indexWord22 ((w Word)) Byte ((_ extract 79 72) w))
(define-fun indexWord21 ((w Word)) Byte ((_ extract 87 80) w))
(define-fun indexWord20 ((w Word)) Byte ((_ extract 95 88) w))
(define-fun indexWord19 ((w Word)) Byte ((_ extract 103 96) w))
(define-fun indexWord18 ((w Word)) Byte ((_ extract 111 104) w))
(define-fun indexWord17 ((w Word)) Byte ((_ extract 119 112) w))
(define-fun indexWord16 ((w Word)) Byte ((_ extract 127 120) w))
(define-fun indexWord15 ((w Word)) Byte ((_ extract 135 128) w))
(define-fun indexWord14 ((w Word)) Byte ((_ extract 143 136) w))
(define-fun indexWord13 ((w Word)) Byte ((_ extract 151 144) w))
(define-fun indexWord12 ((w Word)) Byte ((_ extract 159 152) w))
(define-fun indexWord11 ((w Word)) Byte ((_ extract 167 160) w))
(define-fun indexWord10 ((w Word)) Byte ((_ extract 175 168) w))
(define-fun indexWord9 ((w Word)) Byte ((_ extract 183 176) w))
(define-fun indexWord8 ((w Word)) Byte ((_ extract 191 184) w))
(define-fun indexWord7 ((w Word)) Byte ((_ extract 199 192) w))
(define-fun indexWord6 ((w Word)) Byte ((_ extract 207 200) w))
(define-fun indexWord5 ((w Word)) Byte ((_ extract 215 208) w))
(define-fun indexWord4 ((w Word)) Byte ((_ extract 223 216) w))
(define-fun indexWord3 ((w Word)) Byte ((_ extract 231 224) w))
(define-fun indexWord2 ((w Word)) Byte ((_ extract 239 232) w))
(define-fun indexWord1 ((w Word)) Byte ((_ extract 247 240) w))
(define-fun indexWord0 ((w Word)) Byte ((_ extract 255 248) w))

; symbolic word indexing
; a bitshift based version might be more performant here...
(define-fun indexWord ((idx Word) (w Word)) Byte
  (ite (bvuge idx (_ bv32 256)) (_ bv0 8)
  (ite (= idx (_ bv31 256)) (indexWord31 w)
  (ite (= idx (_ bv30 256)) (indexWord30 w)
  (ite (= idx (_ bv29 256)) (indexWord29 w)
  (ite (= idx (_ bv28 256)) (indexWord28 w)
  (ite (= idx (_ bv27 256)) (indexWord27 w)
  (ite (= idx (_ bv26 256)) (indexWord26 w)
  (ite (= idx (_ bv25 256)) (indexWord25 w)
  (ite (= idx (_ bv24 256)) (indexWord24 w)
  (ite (= idx (_ bv23 256)) (indexWord23 w)
  (ite (= idx (_ bv22 256)) (indexWord22 w)
  (ite (= idx (_ bv21 256)) (indexWord21 w)
  (ite (= idx (_ bv20 256)) (indexWord20 w)
  (ite (= idx (_ bv19 256)) (indexWord19 w)
  (ite (= idx (_ bv18 256)) (indexWord18 w)
  (ite (= idx (_ bv17 256)) (indexWord17 w)
  (ite (= idx (_ bv16 256)) (indexWord16 w)
  (ite (= idx (_ bv15 256)) (indexWord15 w)
  (ite (= idx (_ bv14 256)) (indexWord14 w)
  (ite (= idx (_ bv13 256)) (indexWord13 w)
  (ite (= idx (_ bv12 256)) (indexWord12 w)
  (ite (= idx (_ bv11 256)) (indexWord11 w)
  (ite (= idx (_ bv10 256)) (indexWord10 w)
  (ite (= idx (_ bv9 256)) (indexWord9 w)
  (ite (= idx (_ bv8 256)) (indexWord8 w)
  (ite (= idx (_ bv7 256)) (indexWord7 w)
  (ite (= idx (_ bv6 256)) (indexWord6 w)
  (ite (= idx (_ bv5 256)) (indexWord5 w)
  (ite (= idx (_ bv4 256)) (indexWord4 w)
  (ite (= idx (_ bv3 256)) (indexWord3 w)
  (ite (= idx (_ bv2 256)) (indexWord2 w)
  (ite (= idx (_ bv1 256)) (indexWord1 w)
  (indexWord0 w)
  ))))))))))))))))))))))))))))))))
)

(define-fun readWord ((idx Word) (buf Buf)) Word
  (concat
    (select buf idx)
    (select buf (bvadd idx #x0000000000000000000000000000000000000000000000000000000000000001))
    (select buf (bvadd idx #x0000000000000000000000000000000000000000000000000000000000000002))
    (select buf (bvadd idx #x0000000000000000000000000000000000000000000000000000000000000003))
    (select buf (bvadd idx #x0000000000000000000000000000000000000000000000000000000000000004))
    (select buf (bvadd idx #x0000000000000000000000000000000000000000000000000000000000000005))
    (select buf (bvadd idx #x0000000000000000000000000000000000000000000000000000000000000006))
    (select buf (bvadd idx #x0000000000000000000000000000000000000000000000000000000000000007))
    (select buf (bvadd idx #x0000000000000000000000000000000000000000000000000000000000000008))
    (select buf (bvadd idx #x0000000000000000000000000000000000000000000000000000000000000009))
    (select buf (bvadd idx #x000000000000000000000000000000000000000000000000000000000000000a))
    (select buf (bvadd idx #x000000000000000000000000000000000000000000000000000000000000000b))
    (select buf (bvadd idx #x000000000000000000000000000000000000000000000000000000000000000c))
    (select buf (bvadd idx #x000000000000000000000000000000000000000000000000000000000000000d))
    (select buf (bvadd idx #x000000000000000000000000000000000000000000000000000000000000000e))
    (select buf (bvadd idx #x000000000000000000000000000000000000000000000000000000000000000f))
    (select buf (bvadd idx #x0000000000000000000000000000000000000000000000000000000000000010))
    (select buf (bvadd idx #x0000000000000000000000000000000000000000000000000000000000000011))
    (select buf (bvadd idx #x0000000000000000000000000000000000000000000000000000000000000012))
    (select buf (bvadd idx #x0000000000000000000000000000000000000000000000000000000000000013))
    (select buf (bvadd idx #x0000000000000000000000000000000000000000000000000000000000000014))
    (select buf (bvadd idx #x0000000000000000000000000000000000000000000000000000000000000015))
    (select buf (bvadd idx #x0000000000000000000000000000000000000000000000000000000000000016))
    (select buf (bvadd idx #x0000000000000000000000000000000000000000000000000000000000000017))
    (select buf (bvadd idx #x0000000000000000000000000000000000000000000000000000000000000018))
    (select buf (bvadd idx #x0000000000000000000000000000000000000000000000000000000000000019))
    (select buf (bvadd idx #x000000000000000000000000000000000000000000000000000000000000001a))
    (select buf (bvadd idx #x000000000000000000000000000000000000000000000000000000000000001b))
    (select buf (bvadd idx #x000000000000000000000000000000000000000000000000000000000000001c))
    (select buf (bvadd idx #x000000000000000000000000000000000000000000000000000000000000001d))
    (select buf (bvadd idx #x000000000000000000000000000000000000000000000000000000000000001e))
    (select buf (bvadd idx #x000000000000000000000000000000000000000000000000000000000000001f))
  )
)

(define-fun writeWord ((idx Word) (val Word) (buf Buf)) Buf
    (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store
    (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store buf
    (bvadd idx #x000000000000000000000000000000000000000000000000000000000000001f) (indexWord31 val))
    (bvadd idx #x000000000000000000000000000000000000000000000000000000000000001e) (indexWord30 val))
    (bvadd idx #x000000000000000000000000000000000000000000000000000000000000001d) (indexWord29 val))
    (bvadd idx #x000000000000000000000000000000000000000000000000000000000000001c) (indexWord28 val))
    (bvadd idx #x000000000000000000000000000000000000000000000000000000000000001b) (indexWord27 val))
    (bvadd idx #x000000000000000000000000000000000000000000000000000000000000001a) (indexWord26 val))
    (bvadd idx #x0000000000000000000000000000000000000000000000000000000000000019) (indexWord25 val))
    (bvadd idx #x0000000000000000000000000000000000000000000000000000000000000018) (indexWord24 val))
    (bvadd idx #x0000000000000000000000000000000000000000000000000000000000000017) (indexWord23 val))
    (bvadd idx #x0000000000000000000000000000000000000000000000000000000000000016) (indexWord22 val))
    (bvadd idx #x0000000000000000000000000000000000000000000000000000000000000015) (indexWord21 val))
    (bvadd idx #x0000000000000000000000000000000000000000000000000000000000000014) (indexWord20 val))
    (bvadd idx #x0000000000000000000000000000000000000000000000000000000000000013) (indexWord19 val))
    (bvadd idx #x0000000000000000000000000000000000000000000000000000000000000012) (indexWord18 val))
    (bvadd idx #x0000000000000000000000000000000000000000000000000000000000000011) (indexWord17 val))
    (bvadd idx #x0000000000000000000000000000000000000000000000000000000000000010) (indexWord16 val))
    (bvadd idx #x000000000000000000000000000000000000000000000000000000000000000f) (indexWord15 val))
    (bvadd idx #x000000000000000000000000000000000000000000000000000000000000000e) (indexWord14 val))
    (bvadd idx #x000000000000000000000000000000000000000000000000000000000000000d) (indexWord13 val))
    (bvadd idx #x000000000000000000000000000000000000000000000000000000000000000c) (indexWord12 val))
    (bvadd idx #x000000000000000000000000000000000000000000000000000000000000000b) (indexWord11 val))
    (bvadd idx #x000000000000000000000000000000000000000000000000000000000000000a) (indexWord10 val))
    (bvadd idx #x0000000000000000000000000000000000000000000000000000000000000009) (indexWord9 val))
    (bvadd idx #x0000000000000000000000000000000000000000000000000000000000000008) (indexWord8 val))
    (bvadd idx #x0000000000000000000000000000000000000000000000000000000000000007) (indexWord7 val))
    (bvadd idx #x0000000000000000000000000000000000000000000000000000000000000006) (indexWord6 val))
    (bvadd idx #x0000000000000000000000000000000000000000000000000000000000000005) (indexWord5 val))
    (bvadd idx #x0000000000000000000000000000000000000000000000000000000000000004) (indexWord4 val))
    (bvadd idx #x0000000000000000000000000000000000000000000000000000000000000003) (indexWord3 val))
    (bvadd idx #x0000000000000000000000000000000000000000000000000000000000000002) (indexWord2 val))
    (bvadd idx #x0000000000000000000000000000000000000000000000000000000000000001) (indexWord1 val))
    idx (indexWord0 val))
)

; block context
(declare-fun blockhash (Word) Word)
(declare-fun codesize (Addr) Word)

; macros
(define-fun signext ( (b Word) (val Word)) Word
  (ite (= b (_ bv0  256)) ((_ sign_extend 248) ((_ extract 7    0) val))
  (ite (= b (_ bv1  256)) ((_ sign_extend 240) ((_ extract 15   0) val))
  (ite (= b (_ bv2  256)) ((_ sign_extend 232) ((_ extract 23   0) val))
  (ite (= b (_ bv3  256)) ((_ sign_extend 224) ((_ extract 31   0) val))
  (ite (= b (_ bv4  256)) ((_ sign_extend 216) ((_ extract 39   0) val))
  (ite (= b (_ bv5  256)) ((_ sign_extend 208) ((_ extract 47   0) val))
  (ite (= b (_ bv6  256)) ((_ sign_extend 200) ((_ extract 55   0) val))
  (ite (= b (_ bv7  256)) ((_ sign_extend 192) ((_ extract 63   0) val))
  (ite (= b (_ bv8  256)) ((_ sign_extend 184) ((_ extract 71   0) val))
  (ite (= b (_ bv9  256)) ((_ sign_extend 176) ((_ extract 79   0) val))
  (ite (= b (_ bv10 256)) ((_ sign_extend 168) ((_ extract 87   0) val))
  (ite (= b (_ bv11 256)) ((_ sign_extend 160) ((_ extract 95   0) val))
  (ite (= b (_ bv12 256)) ((_ sign_extend 152) ((_ extract 103  0) val))
  (ite (= b (_ bv13 256)) ((_ sign_extend 144) ((_ extract 111  0) val))
  (ite (= b (_ bv14 256)) ((_ sign_extend 136) ((_ extract 119  0) val))
  (ite (= b (_ bv15 256)) ((_ sign_extend 128) ((_ extract 127  0) val))
  (ite (= b (_ bv16 256)) ((_ sign_extend 120) ((_ extract 135  0) val))
  (ite (= b (_ bv17 256)) ((_ sign_extend 112) ((_ extract 143  0) val))
  (ite (= b (_ bv18 256)) ((_ sign_extend 104) ((_ extract 151  0) val))
  (ite (= b (_ bv19 256)) ((_ sign_extend 96 ) ((_ extract 159  0) val))
  (ite (= b (_ bv20 256)) ((_ sign_extend 88 ) ((_ extract 167  0) val))
  (ite (= b (_ bv21 256)) ((_ sign_extend 80 ) ((_ extract 175  0) val))
  (ite (= b (_ bv22 256)) ((_ sign_extend 72 ) ((_ extract 183  0) val))
  (ite (= b (_ bv23 256)) ((_ sign_extend 64 ) ((_ extract 191  0) val))
  (ite (= b (_ bv24 256)) ((_ sign_extend 56 ) ((_ extract 199  0) val))
  (ite (= b (_ bv25 256)) ((_ sign_extend 48 ) ((_ extract 207  0) val))
  (ite (= b (_ bv26 256)) ((_ sign_extend 40 ) ((_ extract 215  0) val))
  (ite (= b (_ bv27 256)) ((_ sign_extend 32 ) ((_ extract 223  0) val))
  (ite (= b (_ bv28 256)) ((_ sign_extend 24 ) ((_ extract 231  0) val))
  (ite (= b (_ bv29 256)) ((_ sign_extend 16 ) ((_ extract 239  0) val))
  (ite (= b (_ bv30 256)) ((_ sign_extend 8  ) ((_ extract 247  0) val)) val))))))))))))))))))))))))))))))))

; abstract base stores

; symbolic addresseses
(declare-const symaddr_arg2 Addr)

; buffers
(declare-const txdata (Array (_ BitVec 256) (_ BitVec 8)))
; buffer lengths
(declare-const txdata_length (_ BitVec 256))

; variables
(declare-const arg3 (_ BitVec 256))
(declare-const arg1 (_ BitVec 256))

; frame context

; block context

; intermediate buffers & stores
(define-const buf0 Buf (writeWord (_ bv0 256) (concat (_ bv0 96) symaddr_arg2 ) (store ((as const Buf) #b00000000) (_ bv63 256) (_ bv3 8))))

(define-const buf0_length (_ BitVec 256) (_ bv64 256))
(define-const buf1 Buf (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store ((as const Buf) #b00000000) (_ bv0 256) (select buf0 (_ bv0 256))) (_ bv1 256) (select buf0 (_ bv1 256))) (_ bv2 256) (select buf0 (_ bv2 256))) (_ bv3 256) (select buf0 (_ bv3 256))) (_ bv4 256) (select buf0 (_ bv4 256))) (_ bv5 256) (select buf0 (_ bv5 256))) (_ bv6 256) (select buf0 (_ bv6 256))) (_ bv7 256) (select buf0 (_ bv7 256))) (_ bv8 256) (select buf0 (_ bv8 256))) (_ bv9 256) (select buf0 (_ bv9 256))) (_ bv10 256) (select buf0 (_ bv10 256))) (_ bv11 256) (select buf0 (_ bv11 256))) (_ bv12 256) (select buf0 (_ bv12 256))) (_ bv13 256) (select buf0 (_ bv13 256))) (_ bv14 256) (select buf0 (_ bv14 256))) (_ bv15 256) (select buf0 (_ bv15 256))) (_ bv16 256) (select buf0 (_ bv16 256))) (_ bv17 256) (select buf0 (_ bv17 256))) (_ bv18 256) (select buf0 (_ bv18 256))) (_ bv19 256) (select buf0 (_ bv19 256))) (_ bv20 256) (select buf0 (_ bv20 256))) (_ bv21 256) (select buf0 (_ bv21 256))) (_ bv22 256) (select buf0 (_ bv22 256))) (_ bv23 256) (select buf0 (_ bv23 256))) (_ bv24 256) (select buf0 (_ bv24 256))) (_ bv25 256) (select buf0 (_ bv25 256))) (_ bv26 256) (select buf0 (_ bv26 256))) (_ bv27 256) (select buf0 (_ bv27 256))) (_ bv28 256) (select buf0 (_ bv28 256))) (_ bv29 256) (select buf0 (_ bv29 256))) (_ bv30 256) (select buf0 (_ bv30 256))) (_ bv31 256) (select buf0 (_ bv31 256))) (_ bv32 256) (select buf0 (_ bv32 256))) (_ bv33 256) (select buf0 (_ bv33 256))) (_ bv34 256) (select buf0 (_ bv34 256))) (_ bv35 256) (select buf0 (_ bv35 256))) (_ bv36 256) (select buf0 (_ bv36 256))) (_ bv37 256) (select buf0 (_ bv37 256))) (_ bv38 256) (select buf0 (_ bv38 256))) (_ bv39 256) (select buf0 (_ bv39 256))) (_ bv40 256) (select buf0 (_ bv40 256))) (_ bv41 256) (select buf0 (_ bv41 256))) (_ bv42 256) (select buf0 (_ bv42 256))) (_ bv43 256) (select buf0 (_ bv43 256))) (_ bv44 256) (select buf0 (_ bv44 256))) (_ bv45 256) (select buf0 (_ bv45 256))) (_ bv46 256) (select buf0 (_ bv46 256))) (_ bv47 256) (select buf0 (_ bv47 256))) (_ bv48 256) (select buf0 (_ bv48 256))) (_ bv49 256) (select buf0 (_ bv49 256))) (_ bv50 256) (select buf0 (_ bv50 256))) (_ bv51 256) (select buf0 (_ bv51 256))) (_ bv52 256) (select buf0 (_ bv52 256))) (_ bv53 256) (select buf0 (_ bv53 256))) (_ bv54 256) (select buf0 (_ bv54 256))) (_ bv55 256) (select buf0 (_ bv55 256))) (_ bv56 256) (select buf0 (_ bv56 256))) (_ bv57 256) (select buf0 (_ bv57 256))) (_ bv58 256) (select buf0 (_ bv58 256))) (_ bv59 256) (select buf0 (_ bv59 256))) (_ bv60 256) (select buf0 (_ bv60 256))) (_ bv61 256) (select buf0 (_ bv61 256))) (_ bv62 256) (select buf0 (_ bv62 256))) (_ bv63 256) (select buf0 (_ bv63 256))))

(define-const buf1_length (_ BitVec 256) (_ bv64 256))
(define-const store2 Storage (store (store (store (store (store ((as const Storage) #x0000000000000000000000000000000000000000000000000000000000000000) (_ bv0 256) (_ bv38127331147067805112053396679488696261026566197178810787457442894582898491398 256)) (_ bv1 256) (_ bv37994279280994376623359229455975719764354213718413310075447019752596495663106 256)) (_ bv2 256) (_ bv0 256)) (_ bv6 256) (_ bv44203 256)) (_ bv9721289009314955157528189709118642441697326712694180562838744657095391222517 256) (bvsub arg1 arg3)))
(define-const store3 Storage (store (store (store (store (store ((as const Storage) #x0000000000000000000000000000000000000000000000000000000000000000) (_ bv0 256) (_ bv38127331147067805112053396679488696261026566197178810787457442894582898491398 256)) (_ bv1 256) (_ bv37994279280994376623359229455975719764354213718413310075447019752596495663106 256)) (_ bv2 256) (_ bv0 256)) (_ bv6 256) (_ bv44203 256)) (_ bv9721289009314955157528189709118642441697326712694180562838744657095391222517 256) arg1))


; keccak assumptions
(assert (or (and (= (store (store (store ((as const Buf) #b00000000) (_ bv0 256) (_ bv84 8)) (_ bv1 256) (_ bv75 8)) (_ bv2 256) (_ bv78 8)) (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store ((as const Buf) #b00000000) (_ bv0 256) (_ bv139 8)) (_ bv1 256) (_ bv115 8)) (_ bv2 256) (_ bv195 8)) (_ bv3 256) (_ bv198 8)) (_ bv4 256) (_ bv155 8)) (_ bv5 256) (_ bv184 8)) (_ bv6 256) (_ bv254 8)) (_ bv7 256) (_ bv61 8)) (_ bv8 256) (_ bv81 8)) (_ bv9 256) (_ bv46 8)) (_ bv10 256) (_ bv204 8)) (_ bv11 256) (_ bv76 8)) (_ bv12 256) (_ bv247 8)) (_ bv13 256) (_ bv89 8)) (_ bv14 256) (_ bv204 8)) (_ bv15 256) (_ bv121 8)) (_ bv16 256) (_ bv35 8)) (_ bv17 256) (_ bv159 8)) (_ bv18 256) (_ bv123 8)) (_ bv19 256) (_ bv23 8)) (_ bv20 256) (_ bv155 8)) (_ bv21 256) (_ bv15 8)) (_ bv22 256) (_ bv250 8)) (_ bv23 256) (_ bv202 8)) (_ bv24 256) (_ bv169 8)) (_ bv25 256) (_ bv167 8)) (_ bv26 256) (_ bv93 8)) (_ bv27 256) (_ bv82 8)) (_ bv28 256) (_ bv43 8)) (_ bv29 256) (_ bv57 8)) (_ bv30 256) (_ bv64 8)) (_ bv31 256) (_ bv15 8)) (_ bv32 256) (_ bv158 8)) (_ bv33 256) (_ bv225 8)) (_ bv34 256) (_ bv135 8)) (_ bv35 256) (_ bv163 8)) (_ bv36 256) (_ bv37 8)) (_ bv37 256) (_ bv200 8)) (_ bv38 256) (_ bv10 8)) (_ bv39 256) (_ bv156 8)) (_ bv40 256) (_ bv168 8)) (_ bv41 256) (_ bv32 8)) (_ bv42 256) (_ bv180 8)) (_ bv43 256) (_ bv242 8)) (_ bv44 256) (_ bv151 8)) (_ bv45 256) (_ bv165 8)) (_ bv46 256) (_ bv135 8)) (_ bv47 256) (_ bv112 8)) (_ bv48 256) (_ bv191 8)) (_ bv49 256) (_ bv90 8)) (_ bv50 256) (_ bv133 8)) (_ bv51 256) (_ bv254 8)) (_ bv52 256) (_ bv222 8)) (_ bv53 256) (_ bv55 8)) (_ bv54 256) (_ bv86 8)) (_ bv55 256) (_ bv248 8)) (_ bv56 256) (_ bv231 8)) (_ bv57 256) (_ bv233 8)) (_ bv58 256) (_ bv209 8)) (_ bv59 256) (_ bv79 8)) (_ bv60 256) (_ bv243 8)) (_ bv61 256) (_ bv125 8)) (_ bv62 256) (_ bv123 8)) (_ bv63 256) (_ bv102 8)) (_ bv64 256) (_ bv200 8)) (_ bv65 256) (_ bv158 8)) (_ bv66 256) (_ bv253 8)) (_ bv67 256) (_ bv170 8)) (_ bv68 256) (_ bv84 8)) (_ bv69 256) (_ bv192 8)) (_ bv70 256) (_ bv242 8)) (_ bv71 256) (_ bv12 8)) (_ bv72 256) (_ bv122 8)) (_ bv73 256) (_ bv223 8)) (_ bv74 256) (_ bv97 8)) (_ bv75 256) (_ bv40 8)) (_ bv76 256) (_ bv130 8)) (_ bv77 256) (_ bv223 8)) (_ bv78 256) (_ bv9 8)) (_ bv79 256) (_ bv80 8)) (_ bv80 256) (_ bv245 8)) (_ bv81 256) (_ bv169 8)) (_ bv82 256) (_ bv81 8)) (_ bv83 256) (_ bv99 8)) (_ bv84 256) (_ bv126 8)) (_ bv85 256) (_ bv3 8)) (_ bv86 256) (_ bv7 8)) (_ bv87 256) (_ bv205 8)) (_ bv88 256) (_ bv203 8)) (_ bv89 256) (_ bv76 8)) (_ bv90 256) (_ bv103 8)) (_ bv91 256) (_ bv47 8)) (_ bv92 256) (_ bv41 8)) (_ bv93 256) (_ bv139 8)) (_ bv94 256) (_ bv139 8)) (_ bv95 256) (_ bv198 8)) (_ bv127 256) (_ bv99 8)) (_ bv140 256) (_ bv217 8)) (_ bv141 256) (_ bv83 8)) (_ bv142 256) (_ bv34 8)) (_ bv143 256) (_ bv116 8)) (_ bv144 256) (_ bv88 8)) (_ bv145 256) (_ bv101 8)) (_ bv146 256) (_ bv130 8)) (_ bv147 256) (_ bv39 8)) (_ bv148 256) (_ bv25 8)) (_ bv149 256) (_ bv22 8)) (_ bv150 256) (_ bv75 8)) (_ bv151 256) (_ bv31 8)) (_ bv152 256) (_ bv193 8)) (_ bv153 256) (_ bv103 8)) (_ bv154 256) (_ bv147 8)) (_ bv155 256) (_ bv7 8)) (_ bv156 256) (_ bv84 8)) (_ bv157 256) (_ bv194 8)) (_ bv158 256) (_ bv72 8)) (_ bv159 256) (_ bv222 8))) (= (_ bv3 256) (_ bv160 256))) (not (= (keccak (store (store (store ((as const Buf) #b00000000) (_ bv0 256) (_ bv84 8)) (_ bv1 256) (_ bv75 8)) (_ bv2 256) (_ bv78 8))) (keccak (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store ((as const Buf) #b00000000) (_ bv0 256) (_ bv139 8)) (_ bv1 256) (_ bv115 8)) (_ bv2 256) (_ bv195 8)) (_ bv3 256) (_ bv198 8)) (_ bv4 256) (_ bv155 8)) (_ bv5 256) (_ bv184 8)) (_ bv6 256) (_ bv254 8)) (_ bv7 256) (_ bv61 8)) (_ bv8 256) (_ bv81 8)) (_ bv9 256) (_ bv46 8)) (_ bv10 256) (_ bv204 8)) (_ bv11 256) (_ bv76 8)) (_ bv12 256) (_ bv247 8)) (_ bv13 256) (_ bv89 8)) (_ bv14 256) (_ bv204 8)) (_ bv15 256) (_ bv121 8)) (_ bv16 256) (_ bv35 8)) (_ bv17 256) (_ bv159 8)) (_ bv18 256) (_ bv123 8)) (_ bv19 256) (_ bv23 8)) (_ bv20 256) (_ bv155 8)) (_ bv21 256) (_ bv15 8)) (_ bv22 256) (_ bv250 8)) (_ bv23 256) (_ bv202 8)) (_ bv24 256) (_ bv169 8)) (_ bv25 256) (_ bv167 8)) (_ bv26 256) (_ bv93 8)) (_ bv27 256) (_ bv82 8)) (_ bv28 256) (_ bv43 8)) (_ bv29 256) (_ bv57 8)) (_ bv30 256) (_ bv64 8)) (_ bv31 256) (_ bv15 8)) (_ bv32 256) (_ bv158 8)) (_ bv33 256) (_ bv225 8)) (_ bv34 256) (_ bv135 8)) (_ bv35 256) (_ bv163 8)) (_ bv36 256) (_ bv37 8)) (_ bv37 256) (_ bv200 8)) (_ bv38 256) (_ bv10 8)) (_ bv39 256) (_ bv156 8)) (_ bv40 256) (_ bv168 8)) (_ bv41 256) (_ bv32 8)) (_ bv42 256) (_ bv180 8)) (_ bv43 256) (_ bv242 8)) (_ bv44 256) (_ bv151 8)) (_ bv45 256) (_ bv165 8)) (_ bv46 256) (_ bv135 8)) (_ bv47 256) (_ bv112 8)) (_ bv48 256) (_ bv191 8)) (_ bv49 256) (_ bv90 8)) (_ bv50 256) (_ bv133 8)) (_ bv51 256) (_ bv254 8)) (_ bv52 256) (_ bv222 8)) (_ bv53 256) (_ bv55 8)) (_ bv54 256) (_ bv86 8)) (_ bv55 256) (_ bv248 8)) (_ bv56 256) (_ bv231 8)) (_ bv57 256) (_ bv233 8)) (_ bv58 256) (_ bv209 8)) (_ bv59 256) (_ bv79 8)) (_ bv60 256) (_ bv243 8)) (_ bv61 256) (_ bv125 8)) (_ bv62 256) (_ bv123 8)) (_ bv63 256) (_ bv102 8)) (_ bv64 256) (_ bv200 8)) (_ bv65 256) (_ bv158 8)) (_ bv66 256) (_ bv253 8)) (_ bv67 256) (_ bv170 8)) (_ bv68 256) (_ bv84 8)) (_ bv69 256) (_ bv192 8)) (_ bv70 256) (_ bv242 8)) (_ bv71 256) (_ bv12 8)) (_ bv72 256) (_ bv122 8)) (_ bv73 256) (_ bv223 8)) (_ bv74 256) (_ bv97 8)) (_ bv75 256) (_ bv40 8)) (_ bv76 256) (_ bv130 8)) (_ bv77 256) (_ bv223 8)) (_ bv78 256) (_ bv9 8)) (_ bv79 256) (_ bv80 8)) (_ bv80 256) (_ bv245 8)) (_ bv81 256) (_ bv169 8)) (_ bv82 256) (_ bv81 8)) (_ bv83 256) (_ bv99 8)) (_ bv84 256) (_ bv126 8)) (_ bv85 256) (_ bv3 8)) (_ bv86 256) (_ bv7 8)) (_ bv87 256) (_ bv205 8)) (_ bv88 256) (_ bv203 8)) (_ bv89 256) (_ bv76 8)) (_ bv90 256) (_ bv103 8)) (_ bv91 256) (_ bv47 8)) (_ bv92 256) (_ bv41 8)) (_ bv93 256) (_ bv139 8)) (_ bv94 256) (_ bv139 8)) (_ bv95 256) (_ bv198 8)) (_ bv127 256) (_ bv99 8)) (_ bv140 256) (_ bv217 8)) (_ bv141 256) (_ bv83 8)) (_ bv142 256) (_ bv34 8)) (_ bv143 256) (_ bv116 8)) (_ bv144 256) (_ bv88 8)) (_ bv145 256) (_ bv101 8)) (_ bv146 256) (_ bv130 8)) (_ bv147 256) (_ bv39 8)) (_ bv148 256) (_ bv25 8)) (_ bv149 256) (_ bv22 8)) (_ bv150 256) (_ bv75 8)) (_ bv151 256) (_ bv31 8)) (_ bv152 256) (_ bv193 8)) (_ bv153 256) (_ bv103 8)) (_ bv154 256) (_ bv147 8)) (_ bv155 256) (_ bv7 8)) (_ bv156 256) (_ bv84 8)) (_ bv157 256) (_ bv194 8)) (_ bv158 256) (_ bv72 8)) (_ bv159 256) (_ bv222 8)))))))
(assert (or (and (= (store (store (store ((as const Buf) #b00000000) (_ bv30 256) (_ bv172 8)) (_ bv31 256) (_ bv171 8)) (_ bv63 256) (_ bv3 8)) (store (store (store ((as const Buf) #b00000000) (_ bv0 256) (_ bv84 8)) (_ bv1 256) (_ bv75 8)) (_ bv2 256) (_ bv78 8))) (= (_ bv64 256) (_ bv3 256))) (not (= (keccak (store (store (store ((as const Buf) #b00000000) (_ bv30 256) (_ bv172 8)) (_ bv31 256) (_ bv171 8)) (_ bv63 256) (_ bv3 8))) (keccak (store (store (store ((as const Buf) #b00000000) (_ bv0 256) (_ bv84 8)) (_ bv1 256) (_ bv75 8)) (_ bv2 256) (_ bv78 8)))))))
(assert (or (and (= (store (store (store ((as const Buf) #b00000000) (_ bv30 256) (_ bv172 8)) (_ bv31 256) (_ bv171 8)) (_ bv63 256) (_ bv3 8)) (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store ((as const Buf) #b00000000) (_ bv0 256) (_ bv139 8)) (_ bv1 256) (_ bv115 8)) (_ bv2 256) (_ bv195 8)) (_ bv3 256) (_ bv198 8)) (_ bv4 256) (_ bv155 8)) (_ bv5 256) (_ bv184 8)) (_ bv6 256) (_ bv254 8)) (_ bv7 256) (_ bv61 8)) (_ bv8 256) (_ bv81 8)) (_ bv9 256) (_ bv46 8)) (_ bv10 256) (_ bv204 8)) (_ bv11 256) (_ bv76 8)) (_ bv12 256) (_ bv247 8)) (_ bv13 256) (_ bv89 8)) (_ bv14 256) (_ bv204 8)) (_ bv15 256) (_ bv121 8)) (_ bv16 256) (_ bv35 8)) (_ bv17 256) (_ bv159 8)) (_ bv18 256) (_ bv123 8)) (_ bv19 256) (_ bv23 8)) (_ bv20 256) (_ bv155 8)) (_ bv21 256) (_ bv15 8)) (_ bv22 256) (_ bv250 8)) (_ bv23 256) (_ bv202 8)) (_ bv24 256) (_ bv169 8)) (_ bv25 256) (_ bv167 8)) (_ bv26 256) (_ bv93 8)) (_ bv27 256) (_ bv82 8)) (_ bv28 256) (_ bv43 8)) (_ bv29 256) (_ bv57 8)) (_ bv30 256) (_ bv64 8)) (_ bv31 256) (_ bv15 8)) (_ bv32 256) (_ bv158 8)) (_ bv33 256) (_ bv225 8)) (_ bv34 256) (_ bv135 8)) (_ bv35 256) (_ bv163 8)) (_ bv36 256) (_ bv37 8)) (_ bv37 256) (_ bv200 8)) (_ bv38 256) (_ bv10 8)) (_ bv39 256) (_ bv156 8)) (_ bv40 256) (_ bv168 8)) (_ bv41 256) (_ bv32 8)) (_ bv42 256) (_ bv180 8)) (_ bv43 256) (_ bv242 8)) (_ bv44 256) (_ bv151 8)) (_ bv45 256) (_ bv165 8)) (_ bv46 256) (_ bv135 8)) (_ bv47 256) (_ bv112 8)) (_ bv48 256) (_ bv191 8)) (_ bv49 256) (_ bv90 8)) (_ bv50 256) (_ bv133 8)) (_ bv51 256) (_ bv254 8)) (_ bv52 256) (_ bv222 8)) (_ bv53 256) (_ bv55 8)) (_ bv54 256) (_ bv86 8)) (_ bv55 256) (_ bv248 8)) (_ bv56 256) (_ bv231 8)) (_ bv57 256) (_ bv233 8)) (_ bv58 256) (_ bv209 8)) (_ bv59 256) (_ bv79 8)) (_ bv60 256) (_ bv243 8)) (_ bv61 256) (_ bv125 8)) (_ bv62 256) (_ bv123 8)) (_ bv63 256) (_ bv102 8)) (_ bv64 256) (_ bv200 8)) (_ bv65 256) (_ bv158 8)) (_ bv66 256) (_ bv253 8)) (_ bv67 256) (_ bv170 8)) (_ bv68 256) (_ bv84 8)) (_ bv69 256) (_ bv192 8)) (_ bv70 256) (_ bv242 8)) (_ bv71 256) (_ bv12 8)) (_ bv72 256) (_ bv122 8)) (_ bv73 256) (_ bv223 8)) (_ bv74 256) (_ bv97 8)) (_ bv75 256) (_ bv40 8)) (_ bv76 256) (_ bv130 8)) (_ bv77 256) (_ bv223 8)) (_ bv78 256) (_ bv9 8)) (_ bv79 256) (_ bv80 8)) (_ bv80 256) (_ bv245 8)) (_ bv81 256) (_ bv169 8)) (_ bv82 256) (_ bv81 8)) (_ bv83 256) (_ bv99 8)) (_ bv84 256) (_ bv126 8)) (_ bv85 256) (_ bv3 8)) (_ bv86 256) (_ bv7 8)) (_ bv87 256) (_ bv205 8)) (_ bv88 256) (_ bv203 8)) (_ bv89 256) (_ bv76 8)) (_ bv90 256) (_ bv103 8)) (_ bv91 256) (_ bv47 8)) (_ bv92 256) (_ bv41 8)) (_ bv93 256) (_ bv139 8)) (_ bv94 256) (_ bv139 8)) (_ bv95 256) (_ bv198 8)) (_ bv127 256) (_ bv99 8)) (_ bv140 256) (_ bv217 8)) (_ bv141 256) (_ bv83 8)) (_ bv142 256) (_ bv34 8)) (_ bv143 256) (_ bv116 8)) (_ bv144 256) (_ bv88 8)) (_ bv145 256) (_ bv101 8)) (_ bv146 256) (_ bv130 8)) (_ bv147 256) (_ bv39 8)) (_ bv148 256) (_ bv25 8)) (_ bv149 256) (_ bv22 8)) (_ bv150 256) (_ bv75 8)) (_ bv151 256) (_ bv31 8)) (_ bv152 256) (_ bv193 8)) (_ bv153 256) (_ bv103 8)) (_ bv154 256) (_ bv147 8)) (_ bv155 256) (_ bv7 8)) (_ bv156 256) (_ bv84 8)) (_ bv157 256) (_ bv194 8)) (_ bv158 256) (_ bv72 8)) (_ bv159 256) (_ bv222 8))) (= (_ bv64 256) (_ bv160 256))) (not (= (keccak (store (store (store ((as const Buf) #b00000000) (_ bv30 256) (_ bv172 8)) (_ bv31 256) (_ bv171 8)) (_ bv63 256) (_ bv3 8))) (keccak (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store ((as const Buf) #b00000000) (_ bv0 256) (_ bv139 8)) (_ bv1 256) (_ bv115 8)) (_ bv2 256) (_ bv195 8)) (_ bv3 256) (_ bv198 8)) (_ bv4 256) (_ bv155 8)) (_ bv5 256) (_ bv184 8)) (_ bv6 256) (_ bv254 8)) (_ bv7 256) (_ bv61 8)) (_ bv8 256) (_ bv81 8)) (_ bv9 256) (_ bv46 8)) (_ bv10 256) (_ bv204 8)) (_ bv11 256) (_ bv76 8)) (_ bv12 256) (_ bv247 8)) (_ bv13 256) (_ bv89 8)) (_ bv14 256) (_ bv204 8)) (_ bv15 256) (_ bv121 8)) (_ bv16 256) (_ bv35 8)) (_ bv17 256) (_ bv159 8)) (_ bv18 256) (_ bv123 8)) (_ bv19 256) (_ bv23 8)) (_ bv20 256) (_ bv155 8)) (_ bv21 256) (_ bv15 8)) (_ bv22 256) (_ bv250 8)) (_ bv23 256) (_ bv202 8)) (_ bv24 256) (_ bv169 8)) (_ bv25 256) (_ bv167 8)) (_ bv26 256) (_ bv93 8)) (_ bv27 256) (_ bv82 8)) (_ bv28 256) (_ bv43 8)) (_ bv29 256) (_ bv57 8)) (_ bv30 256) (_ bv64 8)) (_ bv31 256) (_ bv15 8)) (_ bv32 256) (_ bv158 8)) (_ bv33 256) (_ bv225 8)) (_ bv34 256) (_ bv135 8)) (_ bv35 256) (_ bv163 8)) (_ bv36 256) (_ bv37 8)) (_ bv37 256) (_ bv200 8)) (_ bv38 256) (_ bv10 8)) (_ bv39 256) (_ bv156 8)) (_ bv40 256) (_ bv168 8)) (_ bv41 256) (_ bv32 8)) (_ bv42 256) (_ bv180 8)) (_ bv43 256) (_ bv242 8)) (_ bv44 256) (_ bv151 8)) (_ bv45 256) (_ bv165 8)) (_ bv46 256) (_ bv135 8)) (_ bv47 256) (_ bv112 8)) (_ bv48 256) (_ bv191 8)) (_ bv49 256) (_ bv90 8)) (_ bv50 256) (_ bv133 8)) (_ bv51 256) (_ bv254 8)) (_ bv52 256) (_ bv222 8)) (_ bv53 256) (_ bv55 8)) (_ bv54 256) (_ bv86 8)) (_ bv55 256) (_ bv248 8)) (_ bv56 256) (_ bv231 8)) (_ bv57 256) (_ bv233 8)) (_ bv58 256) (_ bv209 8)) (_ bv59 256) (_ bv79 8)) (_ bv60 256) (_ bv243 8)) (_ bv61 256) (_ bv125 8)) (_ bv62 256) (_ bv123 8)) (_ bv63 256) (_ bv102 8)) (_ bv64 256) (_ bv200 8)) (_ bv65 256) (_ bv158 8)) (_ bv66 256) (_ bv253 8)) (_ bv67 256) (_ bv170 8)) (_ bv68 256) (_ bv84 8)) (_ bv69 256) (_ bv192 8)) (_ bv70 256) (_ bv242 8)) (_ bv71 256) (_ bv12 8)) (_ bv72 256) (_ bv122 8)) (_ bv73 256) (_ bv223 8)) (_ bv74 256) (_ bv97 8)) (_ bv75 256) (_ bv40 8)) (_ bv76 256) (_ bv130 8)) (_ bv77 256) (_ bv223 8)) (_ bv78 256) (_ bv9 8)) (_ bv79 256) (_ bv80 8)) (_ bv80 256) (_ bv245 8)) (_ bv81 256) (_ bv169 8)) (_ bv82 256) (_ bv81 8)) (_ bv83 256) (_ bv99 8)) (_ bv84 256) (_ bv126 8)) (_ bv85 256) (_ bv3 8)) (_ bv86 256) (_ bv7 8)) (_ bv87 256) (_ bv205 8)) (_ bv88 256) (_ bv203 8)) (_ bv89 256) (_ bv76 8)) (_ bv90 256) (_ bv103 8)) (_ bv91 256) (_ bv47 8)) (_ bv92 256) (_ bv41 8)) (_ bv93 256) (_ bv139 8)) (_ bv94 256) (_ bv139 8)) (_ bv95 256) (_ bv198 8)) (_ bv127 256) (_ bv99 8)) (_ bv140 256) (_ bv217 8)) (_ bv141 256) (_ bv83 8)) (_ bv142 256) (_ bv34 8)) (_ bv143 256) (_ bv116 8)) (_ bv144 256) (_ bv88 8)) (_ bv145 256) (_ bv101 8)) (_ bv146 256) (_ bv130 8)) (_ bv147 256) (_ bv39 8)) (_ bv148 256) (_ bv25 8)) (_ bv149 256) (_ bv22 8)) (_ bv150 256) (_ bv75 8)) (_ bv151 256) (_ bv31 8)) (_ bv152 256) (_ bv193 8)) (_ bv153 256) (_ bv103 8)) (_ bv154 256) (_ bv147 8)) (_ bv155 256) (_ bv7 8)) (_ bv156 256) (_ bv84 8)) (_ bv157 256) (_ bv194 8)) (_ bv158 256) (_ bv72 8)) (_ bv159 256) (_ bv222 8)))))))
(assert (or (and (= buf1 (store (store (store ((as const Buf) #b00000000) (_ bv30 256) (_ bv172 8)) (_ bv31 256) (_ bv171 8)) (_ bv63 256) (_ bv3 8))) (= (max (_ bv0 256) buf1_length) (_ bv64 256))) (not (= (keccak buf1) (keccak (store (store (store ((as const Buf) #b00000000) (_ bv30 256) (_ bv172 8)) (_ bv31 256) (_ bv171 8)) (_ bv63 256) (_ bv3 8)))))))
(assert (or (and (= buf1 (store (store (store ((as const Buf) #b00000000) (_ bv0 256) (_ bv84 8)) (_ bv1 256) (_ bv75 8)) (_ bv2 256) (_ bv78 8))) (= (max (_ bv0 256) buf1_length) (_ bv3 256))) (not (= (keccak buf1) (keccak (store (store (store ((as const Buf) #b00000000) (_ bv0 256) (_ bv84 8)) (_ bv1 256) (_ bv75 8)) (_ bv2 256) (_ bv78 8)))))))
(assert (or (and (= buf1 (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store ((as const Buf) #b00000000) (_ bv0 256) (_ bv139 8)) (_ bv1 256) (_ bv115 8)) (_ bv2 256) (_ bv195 8)) (_ bv3 256) (_ bv198 8)) (_ bv4 256) (_ bv155 8)) (_ bv5 256) (_ bv184 8)) (_ bv6 256) (_ bv254 8)) (_ bv7 256) (_ bv61 8)) (_ bv8 256) (_ bv81 8)) (_ bv9 256) (_ bv46 8)) (_ bv10 256) (_ bv204 8)) (_ bv11 256) (_ bv76 8)) (_ bv12 256) (_ bv247 8)) (_ bv13 256) (_ bv89 8)) (_ bv14 256) (_ bv204 8)) (_ bv15 256) (_ bv121 8)) (_ bv16 256) (_ bv35 8)) (_ bv17 256) (_ bv159 8)) (_ bv18 256) (_ bv123 8)) (_ bv19 256) (_ bv23 8)) (_ bv20 256) (_ bv155 8)) (_ bv21 256) (_ bv15 8)) (_ bv22 256) (_ bv250 8)) (_ bv23 256) (_ bv202 8)) (_ bv24 256) (_ bv169 8)) (_ bv25 256) (_ bv167 8)) (_ bv26 256) (_ bv93 8)) (_ bv27 256) (_ bv82 8)) (_ bv28 256) (_ bv43 8)) (_ bv29 256) (_ bv57 8)) (_ bv30 256) (_ bv64 8)) (_ bv31 256) (_ bv15 8)) (_ bv32 256) (_ bv158 8)) (_ bv33 256) (_ bv225 8)) (_ bv34 256) (_ bv135 8)) (_ bv35 256) (_ bv163 8)) (_ bv36 256) (_ bv37 8)) (_ bv37 256) (_ bv200 8)) (_ bv38 256) (_ bv10 8)) (_ bv39 256) (_ bv156 8)) (_ bv40 256) (_ bv168 8)) (_ bv41 256) (_ bv32 8)) (_ bv42 256) (_ bv180 8)) (_ bv43 256) (_ bv242 8)) (_ bv44 256) (_ bv151 8)) (_ bv45 256) (_ bv165 8)) (_ bv46 256) (_ bv135 8)) (_ bv47 256) (_ bv112 8)) (_ bv48 256) (_ bv191 8)) (_ bv49 256) (_ bv90 8)) (_ bv50 256) (_ bv133 8)) (_ bv51 256) (_ bv254 8)) (_ bv52 256) (_ bv222 8)) (_ bv53 256) (_ bv55 8)) (_ bv54 256) (_ bv86 8)) (_ bv55 256) (_ bv248 8)) (_ bv56 256) (_ bv231 8)) (_ bv57 256) (_ bv233 8)) (_ bv58 256) (_ bv209 8)) (_ bv59 256) (_ bv79 8)) (_ bv60 256) (_ bv243 8)) (_ bv61 256) (_ bv125 8)) (_ bv62 256) (_ bv123 8)) (_ bv63 256) (_ bv102 8)) (_ bv64 256) (_ bv200 8)) (_ bv65 256) (_ bv158 8)) (_ bv66 256) (_ bv253 8)) (_ bv67 256) (_ bv170 8)) (_ bv68 256) (_ bv84 8)) (_ bv69 256) (_ bv192 8)) (_ bv70 256) (_ bv242 8)) (_ bv71 256) (_ bv12 8)) (_ bv72 256) (_ bv122 8)) (_ bv73 256) (_ bv223 8)) (_ bv74 256) (_ bv97 8)) (_ bv75 256) (_ bv40 8)) (_ bv76 256) (_ bv130 8)) (_ bv77 256) (_ bv223 8)) (_ bv78 256) (_ bv9 8)) (_ bv79 256) (_ bv80 8)) (_ bv80 256) (_ bv245 8)) (_ bv81 256) (_ bv169 8)) (_ bv82 256) (_ bv81 8)) (_ bv83 256) (_ bv99 8)) (_ bv84 256) (_ bv126 8)) (_ bv85 256) (_ bv3 8)) (_ bv86 256) (_ bv7 8)) (_ bv87 256) (_ bv205 8)) (_ bv88 256) (_ bv203 8)) (_ bv89 256) (_ bv76 8)) (_ bv90 256) (_ bv103 8)) (_ bv91 256) (_ bv47 8)) (_ bv92 256) (_ bv41 8)) (_ bv93 256) (_ bv139 8)) (_ bv94 256) (_ bv139 8)) (_ bv95 256) (_ bv198 8)) (_ bv127 256) (_ bv99 8)) (_ bv140 256) (_ bv217 8)) (_ bv141 256) (_ bv83 8)) (_ bv142 256) (_ bv34 8)) (_ bv143 256) (_ bv116 8)) (_ bv144 256) (_ bv88 8)) (_ bv145 256) (_ bv101 8)) (_ bv146 256) (_ bv130 8)) (_ bv147 256) (_ bv39 8)) (_ bv148 256) (_ bv25 8)) (_ bv149 256) (_ bv22 8)) (_ bv150 256) (_ bv75 8)) (_ bv151 256) (_ bv31 8)) (_ bv152 256) (_ bv193 8)) (_ bv153 256) (_ bv103 8)) (_ bv154 256) (_ bv147 8)) (_ bv155 256) (_ bv7 8)) (_ bv156 256) (_ bv84 8)) (_ bv157 256) (_ bv194 8)) (_ bv158 256) (_ bv72 8)) (_ bv159 256) (_ bv222 8))) (= (max (_ bv0 256) buf1_length) (_ bv160 256))) (not (= (keccak buf1) (keccak (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store ((as const Buf) #b00000000) (_ bv0 256) (_ bv139 8)) (_ bv1 256) (_ bv115 8)) (_ bv2 256) (_ bv195 8)) (_ bv3 256) (_ bv198 8)) (_ bv4 256) (_ bv155 8)) (_ bv5 256) (_ bv184 8)) (_ bv6 256) (_ bv254 8)) (_ bv7 256) (_ bv61 8)) (_ bv8 256) (_ bv81 8)) (_ bv9 256) (_ bv46 8)) (_ bv10 256) (_ bv204 8)) (_ bv11 256) (_ bv76 8)) (_ bv12 256) (_ bv247 8)) (_ bv13 256) (_ bv89 8)) (_ bv14 256) (_ bv204 8)) (_ bv15 256) (_ bv121 8)) (_ bv16 256) (_ bv35 8)) (_ bv17 256) (_ bv159 8)) (_ bv18 256) (_ bv123 8)) (_ bv19 256) (_ bv23 8)) (_ bv20 256) (_ bv155 8)) (_ bv21 256) (_ bv15 8)) (_ bv22 256) (_ bv250 8)) (_ bv23 256) (_ bv202 8)) (_ bv24 256) (_ bv169 8)) (_ bv25 256) (_ bv167 8)) (_ bv26 256) (_ bv93 8)) (_ bv27 256) (_ bv82 8)) (_ bv28 256) (_ bv43 8)) (_ bv29 256) (_ bv57 8)) (_ bv30 256) (_ bv64 8)) (_ bv31 256) (_ bv15 8)) (_ bv32 256) (_ bv158 8)) (_ bv33 256) (_ bv225 8)) (_ bv34 256) (_ bv135 8)) (_ bv35 256) (_ bv163 8)) (_ bv36 256) (_ bv37 8)) (_ bv37 256) (_ bv200 8)) (_ bv38 256) (_ bv10 8)) (_ bv39 256) (_ bv156 8)) (_ bv40 256) (_ bv168 8)) (_ bv41 256) (_ bv32 8)) (_ bv42 256) (_ bv180 8)) (_ bv43 256) (_ bv242 8)) (_ bv44 256) (_ bv151 8)) (_ bv45 256) (_ bv165 8)) (_ bv46 256) (_ bv135 8)) (_ bv47 256) (_ bv112 8)) (_ bv48 256) (_ bv191 8)) (_ bv49 256) (_ bv90 8)) (_ bv50 256) (_ bv133 8)) (_ bv51 256) (_ bv254 8)) (_ bv52 256) (_ bv222 8)) (_ bv53 256) (_ bv55 8)) (_ bv54 256) (_ bv86 8)) (_ bv55 256) (_ bv248 8)) (_ bv56 256) (_ bv231 8)) (_ bv57 256) (_ bv233 8)) (_ bv58 256) (_ bv209 8)) (_ bv59 256) (_ bv79 8)) (_ bv60 256) (_ bv243 8)) (_ bv61 256) (_ bv125 8)) (_ bv62 256) (_ bv123 8)) (_ bv63 256) (_ bv102 8)) (_ bv64 256) (_ bv200 8)) (_ bv65 256) (_ bv158 8)) (_ bv66 256) (_ bv253 8)) (_ bv67 256) (_ bv170 8)) (_ bv68 256) (_ bv84 8)) (_ bv69 256) (_ bv192 8)) (_ bv70 256) (_ bv242 8)) (_ bv71 256) (_ bv12 8)) (_ bv72 256) (_ bv122 8)) (_ bv73 256) (_ bv223 8)) (_ bv74 256) (_ bv97 8)) (_ bv75 256) (_ bv40 8)) (_ bv76 256) (_ bv130 8)) (_ bv77 256) (_ bv223 8)) (_ bv78 256) (_ bv9 8)) (_ bv79 256) (_ bv80 8)) (_ bv80 256) (_ bv245 8)) (_ bv81 256) (_ bv169 8)) (_ bv82 256) (_ bv81 8)) (_ bv83 256) (_ bv99 8)) (_ bv84 256) (_ bv126 8)) (_ bv85 256) (_ bv3 8)) (_ bv86 256) (_ bv7 8)) (_ bv87 256) (_ bv205 8)) (_ bv88 256) (_ bv203 8)) (_ bv89 256) (_ bv76 8)) (_ bv90 256) (_ bv103 8)) (_ bv91 256) (_ bv47 8)) (_ bv92 256) (_ bv41 8)) (_ bv93 256) (_ bv139 8)) (_ bv94 256) (_ bv139 8)) (_ bv95 256) (_ bv198 8)) (_ bv127 256) (_ bv99 8)) (_ bv140 256) (_ bv217 8)) (_ bv141 256) (_ bv83 8)) (_ bv142 256) (_ bv34 8)) (_ bv143 256) (_ bv116 8)) (_ bv144 256) (_ bv88 8)) (_ bv145 256) (_ bv101 8)) (_ bv146 256) (_ bv130 8)) (_ bv147 256) (_ bv39 8)) (_ bv148 256) (_ bv25 8)) (_ bv149 256) (_ bv22 8)) (_ bv150 256) (_ bv75 8)) (_ bv151 256) (_ bv31 8)) (_ bv152 256) (_ bv193 8)) (_ bv153 256) (_ bv103 8)) (_ bv154 256) (_ bv147 8)) (_ bv155 256) (_ bv7 8)) (_ bv156 256) (_ bv84 8)) (_ bv157 256) (_ bv194 8)) (_ bv158 256) (_ bv72 8)) (_ bv159 256) (_ bv222 8)))))))
(assert (bvugt (keccak buf1) (_ bv50 256)))
(assert (bvugt (keccak (store (store (store ((as const Buf) #b00000000) (_ bv30 256) (_ bv172 8)) (_ bv31 256) (_ bv171 8)) (_ bv63 256) (_ bv3 8))) (_ bv50 256)))
(assert (bvugt (keccak (store (store (store ((as const Buf) #b00000000) (_ bv0 256) (_ bv84 8)) (_ bv1 256) (_ bv75 8)) (_ bv2 256) (_ bv78 8))) (_ bv50 256)))
(assert (bvugt (keccak (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store ((as const Buf) #b00000000) (_ bv0 256) (_ bv139 8)) (_ bv1 256) (_ bv115 8)) (_ bv2 256) (_ bv195 8)) (_ bv3 256) (_ bv198 8)) (_ bv4 256) (_ bv155 8)) (_ bv5 256) (_ bv184 8)) (_ bv6 256) (_ bv254 8)) (_ bv7 256) (_ bv61 8)) (_ bv8 256) (_ bv81 8)) (_ bv9 256) (_ bv46 8)) (_ bv10 256) (_ bv204 8)) (_ bv11 256) (_ bv76 8)) (_ bv12 256) (_ bv247 8)) (_ bv13 256) (_ bv89 8)) (_ bv14 256) (_ bv204 8)) (_ bv15 256) (_ bv121 8)) (_ bv16 256) (_ bv35 8)) (_ bv17 256) (_ bv159 8)) (_ bv18 256) (_ bv123 8)) (_ bv19 256) (_ bv23 8)) (_ bv20 256) (_ bv155 8)) (_ bv21 256) (_ bv15 8)) (_ bv22 256) (_ bv250 8)) (_ bv23 256) (_ bv202 8)) (_ bv24 256) (_ bv169 8)) (_ bv25 256) (_ bv167 8)) (_ bv26 256) (_ bv93 8)) (_ bv27 256) (_ bv82 8)) (_ bv28 256) (_ bv43 8)) (_ bv29 256) (_ bv57 8)) (_ bv30 256) (_ bv64 8)) (_ bv31 256) (_ bv15 8)) (_ bv32 256) (_ bv158 8)) (_ bv33 256) (_ bv225 8)) (_ bv34 256) (_ bv135 8)) (_ bv35 256) (_ bv163 8)) (_ bv36 256) (_ bv37 8)) (_ bv37 256) (_ bv200 8)) (_ bv38 256) (_ bv10 8)) (_ bv39 256) (_ bv156 8)) (_ bv40 256) (_ bv168 8)) (_ bv41 256) (_ bv32 8)) (_ bv42 256) (_ bv180 8)) (_ bv43 256) (_ bv242 8)) (_ bv44 256) (_ bv151 8)) (_ bv45 256) (_ bv165 8)) (_ bv46 256) (_ bv135 8)) (_ bv47 256) (_ bv112 8)) (_ bv48 256) (_ bv191 8)) (_ bv49 256) (_ bv90 8)) (_ bv50 256) (_ bv133 8)) (_ bv51 256) (_ bv254 8)) (_ bv52 256) (_ bv222 8)) (_ bv53 256) (_ bv55 8)) (_ bv54 256) (_ bv86 8)) (_ bv55 256) (_ bv248 8)) (_ bv56 256) (_ bv231 8)) (_ bv57 256) (_ bv233 8)) (_ bv58 256) (_ bv209 8)) (_ bv59 256) (_ bv79 8)) (_ bv60 256) (_ bv243 8)) (_ bv61 256) (_ bv125 8)) (_ bv62 256) (_ bv123 8)) (_ bv63 256) (_ bv102 8)) (_ bv64 256) (_ bv200 8)) (_ bv65 256) (_ bv158 8)) (_ bv66 256) (_ bv253 8)) (_ bv67 256) (_ bv170 8)) (_ bv68 256) (_ bv84 8)) (_ bv69 256) (_ bv192 8)) (_ bv70 256) (_ bv242 8)) (_ bv71 256) (_ bv12 8)) (_ bv72 256) (_ bv122 8)) (_ bv73 256) (_ bv223 8)) (_ bv74 256) (_ bv97 8)) (_ bv75 256) (_ bv40 8)) (_ bv76 256) (_ bv130 8)) (_ bv77 256) (_ bv223 8)) (_ bv78 256) (_ bv9 8)) (_ bv79 256) (_ bv80 8)) (_ bv80 256) (_ bv245 8)) (_ bv81 256) (_ bv169 8)) (_ bv82 256) (_ bv81 8)) (_ bv83 256) (_ bv99 8)) (_ bv84 256) (_ bv126 8)) (_ bv85 256) (_ bv3 8)) (_ bv86 256) (_ bv7 8)) (_ bv87 256) (_ bv205 8)) (_ bv88 256) (_ bv203 8)) (_ bv89 256) (_ bv76 8)) (_ bv90 256) (_ bv103 8)) (_ bv91 256) (_ bv47 8)) (_ bv92 256) (_ bv41 8)) (_ bv93 256) (_ bv139 8)) (_ bv94 256) (_ bv139 8)) (_ bv95 256) (_ bv198 8)) (_ bv127 256) (_ bv99 8)) (_ bv140 256) (_ bv217 8)) (_ bv141 256) (_ bv83 8)) (_ bv142 256) (_ bv34 8)) (_ bv143 256) (_ bv116 8)) (_ bv144 256) (_ bv88 8)) (_ bv145 256) (_ bv101 8)) (_ bv146 256) (_ bv130 8)) (_ bv147 256) (_ bv39 8)) (_ bv148 256) (_ bv25 8)) (_ bv149 256) (_ bv22 8)) (_ bv150 256) (_ bv75 8)) (_ bv151 256) (_ bv31 8)) (_ bv152 256) (_ bv193 8)) (_ bv153 256) (_ bv103 8)) (_ bv154 256) (_ bv147 8)) (_ bv155 256) (_ bv7 8)) (_ bv156 256) (_ bv84 8)) (_ bv157 256) (_ bv194 8)) (_ bv158 256) (_ bv72 8)) (_ bv159 256) (_ bv222 8))) (_ bv50 256)))
; keccak computations
(assert (= (keccak (store (store (store ((as const Buf) #b00000000) (_ bv30 256) (_ bv172 8)) (_ bv31 256) (_ bv171 8)) (_ bv63 256) (_ bv3 8))) (_ bv9721289009314955157528189709118642441697326712694180562838744657095391222517 256)))
(assert (= (keccak (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store ((as const Buf) #b00000000) (_ bv0 256) (_ bv139 8)) (_ bv1 256) (_ bv115 8)) (_ bv2 256) (_ bv195 8)) (_ bv3 256) (_ bv198 8)) (_ bv4 256) (_ bv155 8)) (_ bv5 256) (_ bv184 8)) (_ bv6 256) (_ bv254 8)) (_ bv7 256) (_ bv61 8)) (_ bv8 256) (_ bv81 8)) (_ bv9 256) (_ bv46 8)) (_ bv10 256) (_ bv204 8)) (_ bv11 256) (_ bv76 8)) (_ bv12 256) (_ bv247 8)) (_ bv13 256) (_ bv89 8)) (_ bv14 256) (_ bv204 8)) (_ bv15 256) (_ bv121 8)) (_ bv16 256) (_ bv35 8)) (_ bv17 256) (_ bv159 8)) (_ bv18 256) (_ bv123 8)) (_ bv19 256) (_ bv23 8)) (_ bv20 256) (_ bv155 8)) (_ bv21 256) (_ bv15 8)) (_ bv22 256) (_ bv250 8)) (_ bv23 256) (_ bv202 8)) (_ bv24 256) (_ bv169 8)) (_ bv25 256) (_ bv167 8)) (_ bv26 256) (_ bv93 8)) (_ bv27 256) (_ bv82 8)) (_ bv28 256) (_ bv43 8)) (_ bv29 256) (_ bv57 8)) (_ bv30 256) (_ bv64 8)) (_ bv31 256) (_ bv15 8)) (_ bv32 256) (_ bv158 8)) (_ bv33 256) (_ bv225 8)) (_ bv34 256) (_ bv135 8)) (_ bv35 256) (_ bv163 8)) (_ bv36 256) (_ bv37 8)) (_ bv37 256) (_ bv200 8)) (_ bv38 256) (_ bv10 8)) (_ bv39 256) (_ bv156 8)) (_ bv40 256) (_ bv168 8)) (_ bv41 256) (_ bv32 8)) (_ bv42 256) (_ bv180 8)) (_ bv43 256) (_ bv242 8)) (_ bv44 256) (_ bv151 8)) (_ bv45 256) (_ bv165 8)) (_ bv46 256) (_ bv135 8)) (_ bv47 256) (_ bv112 8)) (_ bv48 256) (_ bv191 8)) (_ bv49 256) (_ bv90 8)) (_ bv50 256) (_ bv133 8)) (_ bv51 256) (_ bv254 8)) (_ bv52 256) (_ bv222 8)) (_ bv53 256) (_ bv55 8)) (_ bv54 256) (_ bv86 8)) (_ bv55 256) (_ bv248 8)) (_ bv56 256) (_ bv231 8)) (_ bv57 256) (_ bv233 8)) (_ bv58 256) (_ bv209 8)) (_ bv59 256) (_ bv79 8)) (_ bv60 256) (_ bv243 8)) (_ bv61 256) (_ bv125 8)) (_ bv62 256) (_ bv123 8)) (_ bv63 256) (_ bv102 8)) (_ bv64 256) (_ bv200 8)) (_ bv65 256) (_ bv158 8)) (_ bv66 256) (_ bv253 8)) (_ bv67 256) (_ bv170 8)) (_ bv68 256) (_ bv84 8)) (_ bv69 256) (_ bv192 8)) (_ bv70 256) (_ bv242 8)) (_ bv71 256) (_ bv12 8)) (_ bv72 256) (_ bv122 8)) (_ bv73 256) (_ bv223 8)) (_ bv74 256) (_ bv97 8)) (_ bv75 256) (_ bv40 8)) (_ bv76 256) (_ bv130 8)) (_ bv77 256) (_ bv223 8)) (_ bv78 256) (_ bv9 8)) (_ bv79 256) (_ bv80 8)) (_ bv80 256) (_ bv245 8)) (_ bv81 256) (_ bv169 8)) (_ bv82 256) (_ bv81 8)) (_ bv83 256) (_ bv99 8)) (_ bv84 256) (_ bv126 8)) (_ bv85 256) (_ bv3 8)) (_ bv86 256) (_ bv7 8)) (_ bv87 256) (_ bv205 8)) (_ bv88 256) (_ bv203 8)) (_ bv89 256) (_ bv76 8)) (_ bv90 256) (_ bv103 8)) (_ bv91 256) (_ bv47 8)) (_ bv92 256) (_ bv41 8)) (_ bv93 256) (_ bv139 8)) (_ bv94 256) (_ bv139 8)) (_ bv95 256) (_ bv198 8)) (_ bv127 256) (_ bv99 8)) (_ bv140 256) (_ bv217 8)) (_ bv141 256) (_ bv83 8)) (_ bv142 256) (_ bv34 8)) (_ bv143 256) (_ bv116 8)) (_ bv144 256) (_ bv88 8)) (_ bv145 256) (_ bv101 8)) (_ bv146 256) (_ bv130 8)) (_ bv147 256) (_ bv39 8)) (_ bv148 256) (_ bv25 8)) (_ bv149 256) (_ bv22 8)) (_ bv150 256) (_ bv75 8)) (_ bv151 256) (_ bv31 8)) (_ bv152 256) (_ bv193 8)) (_ bv153 256) (_ bv103 8)) (_ bv154 256) (_ bv147 8)) (_ bv155 256) (_ bv7 8)) (_ bv156 256) (_ bv84 8)) (_ bv157 256) (_ bv194 8)) (_ bv158 256) (_ bv72 8)) (_ bv159 256) (_ bv222 8))) (_ bv35619244455978059393902577191053220837847204814205026518432705536425797523067 256)))
(assert (= (keccak (store (store (store ((as const Buf) #b00000000) (_ bv0 256) (_ bv84 8)) (_ bv1 256) (_ bv75 8)) (_ bv2 256) (_ bv78 8))) (_ bv71863906799938196381140519696111095937260546502802581530182990928692700347238 256)))
; read assumptions

(assert (bvult (max (_ bv100 256) txdata_length) (_ bv18446744073709551616 256)))
(assert (= (_ bv9721289009314955157528189709118642441697326712694180562838744657095391222517 256) (keccak (store (store (store ((as const Buf) #b00000000) (_ bv30 256) (_ bv172 8)) (_ bv31 256) (_ bv171 8)) (_ bv63 256) (_ bv3 8)))))
(assert (= (_ bv35619244455978059393902577191053220837847204814205026518432705536425797523067 256) (keccak (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store ((as const Buf) #b00000000) (_ bv0 256) (_ bv139 8)) (_ bv1 256) (_ bv115 8)) (_ bv2 256) (_ bv195 8)) (_ bv3 256) (_ bv198 8)) (_ bv4 256) (_ bv155 8)) (_ bv5 256) (_ bv184 8)) (_ bv6 256) (_ bv254 8)) (_ bv7 256) (_ bv61 8)) (_ bv8 256) (_ bv81 8)) (_ bv9 256) (_ bv46 8)) (_ bv10 256) (_ bv204 8)) (_ bv11 256) (_ bv76 8)) (_ bv12 256) (_ bv247 8)) (_ bv13 256) (_ bv89 8)) (_ bv14 256) (_ bv204 8)) (_ bv15 256) (_ bv121 8)) (_ bv16 256) (_ bv35 8)) (_ bv17 256) (_ bv159 8)) (_ bv18 256) (_ bv123 8)) (_ bv19 256) (_ bv23 8)) (_ bv20 256) (_ bv155 8)) (_ bv21 256) (_ bv15 8)) (_ bv22 256) (_ bv250 8)) (_ bv23 256) (_ bv202 8)) (_ bv24 256) (_ bv169 8)) (_ bv25 256) (_ bv167 8)) (_ bv26 256) (_ bv93 8)) (_ bv27 256) (_ bv82 8)) (_ bv28 256) (_ bv43 8)) (_ bv29 256) (_ bv57 8)) (_ bv30 256) (_ bv64 8)) (_ bv31 256) (_ bv15 8)) (_ bv32 256) (_ bv158 8)) (_ bv33 256) (_ bv225 8)) (_ bv34 256) (_ bv135 8)) (_ bv35 256) (_ bv163 8)) (_ bv36 256) (_ bv37 8)) (_ bv37 256) (_ bv200 8)) (_ bv38 256) (_ bv10 8)) (_ bv39 256) (_ bv156 8)) (_ bv40 256) (_ bv168 8)) (_ bv41 256) (_ bv32 8)) (_ bv42 256) (_ bv180 8)) (_ bv43 256) (_ bv242 8)) (_ bv44 256) (_ bv151 8)) (_ bv45 256) (_ bv165 8)) (_ bv46 256) (_ bv135 8)) (_ bv47 256) (_ bv112 8)) (_ bv48 256) (_ bv191 8)) (_ bv49 256) (_ bv90 8)) (_ bv50 256) (_ bv133 8)) (_ bv51 256) (_ bv254 8)) (_ bv52 256) (_ bv222 8)) (_ bv53 256) (_ bv55 8)) (_ bv54 256) (_ bv86 8)) (_ bv55 256) (_ bv248 8)) (_ bv56 256) (_ bv231 8)) (_ bv57 256) (_ bv233 8)) (_ bv58 256) (_ bv209 8)) (_ bv59 256) (_ bv79 8)) (_ bv60 256) (_ bv243 8)) (_ bv61 256) (_ bv125 8)) (_ bv62 256) (_ bv123 8)) (_ bv63 256) (_ bv102 8)) (_ bv64 256) (_ bv200 8)) (_ bv65 256) (_ bv158 8)) (_ bv66 256) (_ bv253 8)) (_ bv67 256) (_ bv170 8)) (_ bv68 256) (_ bv84 8)) (_ bv69 256) (_ bv192 8)) (_ bv70 256) (_ bv242 8)) (_ bv71 256) (_ bv12 8)) (_ bv72 256) (_ bv122 8)) (_ bv73 256) (_ bv223 8)) (_ bv74 256) (_ bv97 8)) (_ bv75 256) (_ bv40 8)) (_ bv76 256) (_ bv130 8)) (_ bv77 256) (_ bv223 8)) (_ bv78 256) (_ bv9 8)) (_ bv79 256) (_ bv80 8)) (_ bv80 256) (_ bv245 8)) (_ bv81 256) (_ bv169 8)) (_ bv82 256) (_ bv81 8)) (_ bv83 256) (_ bv99 8)) (_ bv84 256) (_ bv126 8)) (_ bv85 256) (_ bv3 8)) (_ bv86 256) (_ bv7 8)) (_ bv87 256) (_ bv205 8)) (_ bv88 256) (_ bv203 8)) (_ bv89 256) (_ bv76 8)) (_ bv90 256) (_ bv103 8)) (_ bv91 256) (_ bv47 8)) (_ bv92 256) (_ bv41 8)) (_ bv93 256) (_ bv139 8)) (_ bv94 256) (_ bv139 8)) (_ bv95 256) (_ bv198 8)) (_ bv127 256) (_ bv99 8)) (_ bv140 256) (_ bv217 8)) (_ bv141 256) (_ bv83 8)) (_ bv142 256) (_ bv34 8)) (_ bv143 256) (_ bv116 8)) (_ bv144 256) (_ bv88 8)) (_ bv145 256) (_ bv101 8)) (_ bv146 256) (_ bv130 8)) (_ bv147 256) (_ bv39 8)) (_ bv148 256) (_ bv25 8)) (_ bv149 256) (_ bv22 8)) (_ bv150 256) (_ bv75 8)) (_ bv151 256) (_ bv31 8)) (_ bv152 256) (_ bv193 8)) (_ bv153 256) (_ bv103 8)) (_ bv154 256) (_ bv147 8)) (_ bv155 256) (_ bv7 8)) (_ bv156 256) (_ bv84 8)) (_ bv157 256) (_ bv194 8)) (_ bv158 256) (_ bv72 8)) (_ bv159 256) (_ bv222 8)))))
(assert (= (_ bv71863906799938196381140519696111095937260546502802581530182990928692700347238 256) (keccak (store (store (store ((as const Buf) #b00000000) (_ bv0 256) (_ bv84 8)) (_ bv1 256) (_ bv75 8)) (_ bv2 256) (_ bv78 8)))))
(assert (not (= (bvadd arg3 (select store2 (keccak buf1))) (select store3 (keccak buf1)))))
(assert (not (= (ite (= (ite (bvult (bvadd arg3 (select store2 (keccak buf1))) (bvsub (bvadd arg3 (select store2 (keccak buf1))) (select store3 (keccak buf1)))) (_ bv1 256) (_ bv0 256)) (_ bv0 256)) (_ bv1 256) (_ bv0 256)) (_ bv0 256))))
(assert (= (_ bv44203 256) (concat (_ bv0 96) symaddr_arg2 )))
(assert (not (= (ite (= (ite (bvult arg1 (bvsub arg1 arg3)) (_ bv1 256) (_ bv0 256)) (_ bv0 256)) (_ bv1 256) (_ bv0 256)) (_ bv0 256))))
(assert (bvult (max (_ bv100 256) txdata_length) (_ bv18446744073709551616 256)))
(assert (not (= (bvadd arg3 (select store2 (keccak buf1))) (select store3 (keccak buf1)))))
(assert (= (_ bv44203 256) (concat (_ bv0 96) symaddr_arg2 )))


(check-sat)