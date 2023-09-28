;(PEq
;  (And
;    0x1
;    0x2
;  )
;  0x2
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
;(PLEq
;  (Var "arg3")
;  0xff
;)
;(PLEq
;  (Var "arg2")
;  0xff
;)
;(PLEq
;  (Var "arg1")
;  0xff
;)
;(PEq
;  (And
;    0xffff
;    (Mod
;      (Mul
;        (Var "arg2")
;        (Var "arg1")
;      )
;      (Var "arg3")
;    )
;  )
;  (And
;    0xffff
;    (MulMod
;      (Var "arg1")
;      (Var "arg2")
;      (Var "arg3")
;    )
;  )
;)
;(PNeg
;  (PEq
;    (LT
;      (And
;        0xff
;        (Var "arg3")
;      )
;      0x4
;    )
;    0x0
;  )
;)
;(PNeg
;  (PEq
;    (LT
;      (And
;        0xff
;        (Var "arg2")
;      )
;      0x4
;    )
;    0x0
;  )
;)
;(PNeg
;  (PEq
;    (LT
;      (And
;        0xff
;        (Var "arg1")
;      )
;      0x4
;    )
;    0x0
;  )
;)
;(PEq
;  (Var "arg3")
;  (And
;    0xff
;    (Var "arg3")
;  )
;)
;(PEq
;  (Var "arg2")
;  (And
;    0xff
;    (Var "arg2")
;  )
;)
;(PEq
;  (Var "arg1")
;  (And
;    0xff
;    (Var "arg1")
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
;(PLEq
;  (Var "arg3")
;  0xff
;)
;(PLEq
;  (Var "arg2")
;  0xff
;)
;(PLEq
;  (Var "arg1")
;  0xff
;)
;(PNeg
;  (PEq
;    (LT
;      (And
;        0xff
;        (Var "arg3")
;      )
;      0x4
;    )
;    0x0
;  )
;)
;(PNeg
;  (PEq
;    (LT
;      (And
;        0xff
;        (Var "arg2")
;      )
;      0x4
;    )
;    0x0
;  )
;)
;(PNeg
;  (PEq
;    (LT
;      (And
;        0xff
;        (Var "arg1")
;      )
;      0x4
;    )
;    0x0
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

; buffers
(declare-const txdata (Array (_ BitVec 256) (_ BitVec 8)))
; buffer lengths
(declare-const txdata_length (_ BitVec 256))

; variables
(declare-const arg3 (_ BitVec 256))
(declare-const arg2 (_ BitVec 256))
(declare-const arg1 (_ BitVec 256))

; frame context

; block context

; intermediate buffers & stores


; keccak assumptions
; keccak computations
; read assumptions

(assert (= (bvand (_ bv1 256) (_ bv2 256)) (_ bv2 256)))
(assert (bvult (max (_ bv100 256) txdata_length) (_ bv18446744073709551616 256)))
(assert (bvule arg3 (_ bv255 256)))
(assert (bvule arg2 (_ bv255 256)))
(assert (bvule arg1 (_ bv255 256)))
(assert (= (bvand (_ bv65535 256) (ite (= arg3 (_ bv0 256)) (_ bv0 256) (bvurem (bvmul arg2 arg1) arg3))) (bvand (_ bv65535 256) ((_ extract 255 0) (ite (= arg3 (_ bv0 256)) (_ bv0 512) (bvurem (bvmul (concat (_ bv0 256) arg1) (concat (_ bv0 256) arg2))(concat (_ bv0 256) arg3)))))))
(assert (not (= (ite (bvult (bvand (_ bv255 256) arg3) (_ bv4 256)) (_ bv1 256) (_ bv0 256)) (_ bv0 256))))
(assert (not (= (ite (bvult (bvand (_ bv255 256) arg2) (_ bv4 256)) (_ bv1 256) (_ bv0 256)) (_ bv0 256))))
(assert (not (= (ite (bvult (bvand (_ bv255 256) arg1) (_ bv4 256)) (_ bv1 256) (_ bv0 256)) (_ bv0 256))))
(assert (= arg3 (bvand (_ bv255 256) arg3)))
(assert (= arg2 (bvand (_ bv255 256) arg2)))
(assert (= arg1 (bvand (_ bv255 256) arg1)))
(assert (bvult (max (_ bv100 256) txdata_length) (_ bv18446744073709551616 256)))
(assert (bvule arg3 (_ bv255 256)))
(assert (bvule arg2 (_ bv255 256)))
(assert (bvule arg1 (_ bv255 256)))
(assert (not (= (ite (bvult (bvand (_ bv255 256) arg3) (_ bv4 256)) (_ bv1 256) (_ bv0 256)) (_ bv0 256))))
(assert (not (= (ite (bvult (bvand (_ bv255 256) arg2) (_ bv4 256)) (_ bv1 256) (_ bv0 256)) (_ bv0 256))))
(assert (not (= (ite (bvult (bvand (_ bv255 256) arg1) (_ bv4 256)) (_ bv1 256) (_ bv0 256)) (_ bv0 256))))


(check-sat)