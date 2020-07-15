#include <stdarg.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdlib.h>


#define CLIENT_ALREADY_INIT 5

#define CLIENT_BAD_CSTR 2

#define CLIENT_CREATE_ERR 3

#define CLIENT_OK 1

#define CLIENT_UNINIT 4

#define CLIENT_UNKNOWN -1

/**
 * add a new device to your account
 * the `device` should be in the `ss58` format
 */
int32_t client_device_add(int64_t port, const char *device);

/**
 * Get current Device ID as string (if any)
 * otherwise null returned
 */
int32_t client_device_current(int64_t port);

/**
 * Check if the current client has a device key already or not
 */
int32_t client_device_has_key(int64_t port);

/**
 * get a list of devices that linked to that identifier
 * returns list of devices ids in `ss58` fromat (as strings) or an error message
 */
int32_t client_device_list(int64_t port, const char *identifier);

/**
 * Generate a new backup paper key that can be used to recover your account
 * returns a string that contains the phrase, otherwise null if there is an error
 */
int32_t client_device_paperkey(int64_t port);

/**
 * remove a device from your account
 * the `device` should be in the `ss58` fromat
 */
int32_t client_device_remove(int64_t port, const char *device);

/**
 * Try to mint the current account, this only enabled in testnet and behind a feature flag
 * returned the minted amount or null if there is any errors
 */
int32_t client_faucet_mint(int64_t port);

/**
 * get a list of identities of the provided identifier.
 */
int32_t client_id_list(int64_t port, const char *identifier);

/**
 * prove the current account identity to a service.
 * the service string should be in the format of `username@service` for example `shekohex@github`
 * returns a pair (list of two values) the first element is the `instructions` of how to prove the identity
 * the second element is the `proof` itself where you should follow the instructions and post it somewhere.
 * otherwise and error returned as string.
 */
int32_t client_id_prove(int64_t port,
                        const char *service);

/**
 * Get the `UID` of the provided identifier
 */
int32_t client_id_resolve(int64_t port, const char *identifier);

/**
 * revoke your identity from the provided service
 * see `client_id_prove` for more information.
 * returns `true` if the identity revoked.
 */
int32_t client_id_revoke(int64_t port, const char *service);

/**
 * Setup the Sunshine identity client using the provided path as the base path
 *
 * ### Safety
 * This assumes that the path is non-null c string.
 * Calling this function more than once can result in a data race.
 */
int32_t client_init(int64_t port, const char *path, const char *chain_spec);

/**
 * Lock your account
 * return `true` if locked, and return an error message if something went wrong
 */
int32_t client_key_lock(int64_t port);

/**
 * Set a new Key for this device if not already exist.
 * you should call `client_has_device_key` first to see if you have already a key.
 *
 * suri is used for testing only.
 * phrase is used to restore a backup
 * returns a string that is the current device id
 */
int32_t client_key_set(int64_t port, const char *password, const char *suri, const char *paperkey);

/**
 * Unlock your account using the password
 * return `true` when the account get unlocked, otherwise an error message returned
 */
int32_t client_key_unlock(int64_t port, const char *password);

/**
 * Get last error that happened when you expected a value but got a null instead
 * this will return an immutable pointer to the underlaying error buffer, you are not allowed to modify/free
 * this pointer, otherwise there is an UB may occur.
 * in most cases you should read this pointer as UTF-8 string and make a copy of it in your side.
 */
const char *client_last_error(void);

/**
 * This should be called once maybe before you create the client
 * it just constract the Logger for us
 */
void client_setup_logger(void);

/**
 * Get the balance of an identifier.
 * returns and string but normally it's a `u128` encoded as string.
 */
int32_t client_wallet_balance(int64_t port, const char *identifier);

/**
 * Transfer tokens to another account using there `identifier`
 * returns current account balance after the transaction.
 */
int32_t client_wallet_transfer(int64_t port, const char *identifier, uint64_t amount);
