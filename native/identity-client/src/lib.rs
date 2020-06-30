use ffi::impl_ffi;
use sunshine_client::{build_client, Error, Runtime};

async fn setup_client(root: &str) -> Result<Client, Error> {
    let root = PathBuf::from(root);
    build_client(root.as_path()).await
}

impl_ffi!(runtime: Runtime, client: setup_client);
