use aiken/crypto.{sha2_256}
use cardano/transaction.{OutputReference, Transaction}

validator placeholder {
  spend(
    _datum: Option<Data>,
    redeemer: Data,
    _utxo: OutputReference,
    _self: Transaction,
  ) {
    expect question: ByteArray = redeemer
    let hash = sha2_256(question)
    // We all know that the answer is 42. But what is the real question?
    // (Hint: it cannot be found in book 1.)
    #"08b4f824aef3d07bd1552227c2814c45b107e76beb8e2583267a867b4340e9cf" == hash
  }

  else(_) {
    fail
  }
}
