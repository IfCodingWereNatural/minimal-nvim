import { Dog } from './dog'
import { Owner } from './owner'

const dog = new Dog('fido')
const owner = new Owner('doug', 33)
owner.adopt(dog)
