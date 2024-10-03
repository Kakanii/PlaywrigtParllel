
const credentialPool = [
    { username: 'automation1@maildrop.cc', password: 'Password1' },
    { username: 'automation2@maildrop.cc', password: 'Password1' },
    { username: 'automation3@maildrop.cc', password: 'Password1' },
    { username: 'mahendraibmautobuyer@maildrop.cc', password: 'Password1' },
    { username: 'automation4@maildrop.cc', password: 'Password1' },
  
    { username: 'automation5@maildrop.cc', password: 'Password1' },
    { username: 'automation6@maildrop.cc', password: 'Password1' },
  
    { username: 'automation7@maildrop.cc', password: 'Password1' },
  
    { username: 'automation8@maildrop.cc', password: 'Password1' },
  
  ];
  
  const usedCredentials = new Set();
  let lock = Promise.resolve();
  
  // Mutex to ensure that credentials are picked one at a time
  async function acquireCredential(workerIndex) {
    let resolveLock;
    const lockPromise = new Promise(resolve => {
      resolveLock = resolve;
    });
  
    // Await for the lock to avoid race conditions
    await lock;
    lock = lockPromise;
  
    const availableCredentials = credentialPool.filter(
      (credential) => !usedCredentials.has(credential.username)
    );
  
    if (availableCredentials.length === 0) {
      lock = Promise.resolve(); // Reset the lock when all credentials are used
      throw new Error('All credentials have been used');
    }
  
    // // Ensure each worker gets a unique credential based on the workerIndex
    // const credential = availableCredentials[workerIndex % availableCredentials.length];
    // usedCredentials.add(credential.username);
    const credentialIndex = workerIndex % availableCredentials.length;
    const credential = availableCredentials[credentialIndex];
    usedCredentials.add(credential.username);
  
    console.log(`Worker ${workerIndex} acquired credential: ${credential.username}`);
  
    resolveLock(); // Release the lock for the next worker
    return credential;
  }
  
  function resetCredentials() {
    usedCredentials.clear();
  }
  
  function releaseCredential(username) {
    usedCredentials.delete(username);
    console.log(`Released credential: ${username}`);
  }
  
  module.exports = { acquireCredential, resetCredentials, releaseCredential };
  