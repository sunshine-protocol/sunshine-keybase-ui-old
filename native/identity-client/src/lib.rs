use ffi::impl_ffi;
use log::{error, info};
use sunshine_client::{build_client, Error, Runtime};

async fn setup_client(root: &str) -> Result<Client, Error> {
    #[cfg(target_os = "android")]
    {
        use android_logger::Config;
        use log::Level;
        android_logger::init_once(
            Config::default().with_min_level(Level::Debug),
        );
    }
    let root = PathBuf::from(root);
    info!("Setting up client ...");
    match build_client(root.as_path()).await {
        Ok(client) => Ok(client),
        Err(e) => {
            error!("Creating client error: {}", e);
            Err(e)
        },
    }
}

impl_ffi!(runtime: Runtime, client: setup_client);
