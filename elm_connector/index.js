import { connectRouting, historyListen } from './routing'

export function connect(vue, elm) {
  const disconnect = [connectRouting(vue, elm), historyListen(vue, elm)]

  return () => disconnect.forEach(fn => fn())
}
