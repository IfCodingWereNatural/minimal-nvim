import { Pet } from './pet';

export class Dog implements Pet {
  type: string = 'dog'

  constructor(readonly name: string) {}

  bark() {
    console.log('woof!')
  }
}

