function displaySession(sessionData) {
    const sessionInfo = document.getElementById('session-info');
    sessionInfo.innerHTML = `<p>${sessionData}</p>`;
}