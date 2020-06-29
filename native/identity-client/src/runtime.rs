use ffi_identity::{
    client::Identity,
    substrate_subxt::{
        self,
        balances::{AccountData, Balances},
        sp_core, sp_runtime,
        system::System,
    },
    utils::cid::CidBytes,
};
use sp_runtime::traits::{IdentifyAccount, Verify};

type AccountId = <<sp_runtime::MultiSignature as Verify>::Signer as IdentifyAccount>::AccountId;
type Uid = u32;

#[derive(Clone, Debug, Eq, PartialEq)]
pub(crate) struct Runtime;

impl System for Runtime {
    type AccountData = ();
    type AccountId = AccountId;
    type Address = AccountId;
    type BlockNumber = u32;
    type Extrinsic = sp_runtime::OpaqueExtrinsic;
    type Hash = sp_core::H256;
    type Hashing = sp_runtime::traits::BlakeTwo256;
    type Header = sp_runtime::generic::Header<Self::BlockNumber, Self::Hashing>;
    type Index = u32;
}

impl Balances for Runtime {
    type Balance = u128;
}

impl Identity for Runtime {
    type Cid = CidBytes;
    type Gen = u16;
    type IdAccountData = AccountData<<Self as Balances>::Balance>;
    type Mask = [u8; 32];
    type Uid = Uid;
}

impl substrate_subxt::Runtime for Runtime {
    type Extra = substrate_subxt::DefaultExtra<Self>;
    type Signature = sp_runtime::MultiSignature;
}
