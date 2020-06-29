use ffi_identity::impl_ffi;

mod runtime;
use runtime::Runtime;

impl_ffi!(runtime: Runtime);
