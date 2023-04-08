import { Dog } from "./dog"
import { Pet } from "./pet"
import { WalkError } from "./walkable"

export class Owner {
  private _pets: Pet[] = []

  get pets() {
    return [...this._pets]
  }

  constructor(readonly name: string, readonly age: number) { }

  adopt(pet: Pet) {
    this._pets.push(pet)
  }

  walk(dog: Dog) {
    if (!this._pets.includes(dog)) {
      throw new WalkError(`${this.name} is not ${dog.name}'s owner`)
    }

    dog.walk()
  }
}
