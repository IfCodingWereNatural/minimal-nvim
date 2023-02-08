export interface Walkable {
  isReadyForWalk(): boolean;
  walk(): void
}

export class WalkError extends Error {
  readonly code = 'WalkError'
  constructor(message: string) {
    super(`WalkError: ${message}`)
  }
}


