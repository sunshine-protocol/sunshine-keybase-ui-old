use sunshine_client::Client;
use sunshine_identity_ffi::impl_ffi;

/// This should be called once maybe before you create the client
/// it just constract the Logger for us
#[no_mangle]
pub extern "C" fn client_setup_logger() {
    #[cfg(target_os = "android")]
    {
        use android_logger::{Config, FilterBuilder};
        use log::Level;
        android_logger::init_once(
            Config::default().with_min_level(Level::Info).with_filter(
                FilterBuilder::new()
                    .parse("identity_client,sc_information,substrate_subxt")
                    .build(),
            ),
        );
    }
}

impl_ffi!(client: Client);
