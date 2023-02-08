import { Pet } from "./pet"

export class Owner {
  private _pets: Pet[] = []
  get pets() {
    return [...this._pets]
  }
  constructor(readonly name: string, readonly age: number) { }
  adopt(pet: Pet) {
    this._pets.push(pet)
  }
}
