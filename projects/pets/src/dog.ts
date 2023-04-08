import { Pet } from './pet';
import { Walkable, WalkError } from './walkable';

export class Dog extends Pet implements Walkable {
  leashEquipped = false
  private _walkCount = 0

  get walkCount() {
    return this._walkCount
  }

  constructor(readonly name: string) {
    super(name, 'canine')
  }

  bark() {
    console.log('woof!')
  }

  walk() {
    if (!this.isReadyForWalk()) {
      throw new WalkError(`${this.name} is not ready for walk`)
    }

    console.log(`${this.name} went on a walk!`)

    this._walkCount++
  }

  isReadyForWalk() {
    return this.leashEquipped
  }
}

