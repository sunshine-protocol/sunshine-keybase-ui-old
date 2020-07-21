use frusty_logger::{Config, FilterBuilder};
use log::Level;
use sunshine_client::Client;
use sunshine_identity_ffi::impl_ffi;

impl_ffi!(client: Client);

frusty_logger::include_ffi!(
  with_config: Config::new(
    Level::Info,
    FilterBuilder::new()
    .parse("identity_client,sc_information,substrate_subxt")
    .build()
  )
);

/// a hack to make iOS link to this lib
#[inline(never)]
#[no_mangle]
pub extern "C" fn link_me_please() {}
