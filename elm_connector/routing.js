export function connectRouting(vue, elm) {
  if (elm.ports && elm.ports.pushUrl) {
    elm.ports.pushUrl.subscribe(url => {
      vue.$router.push(url)
    })
  }

  return () => {}
}

export function historyListen(vue, elm) {
  if (elm.ports && elm.ports.listenUrl) {
    vue.$router.afterEach(to => {
      elm.ports.listenUrl.send(to.fullPath)
    })
  }

  return () => {}
}
