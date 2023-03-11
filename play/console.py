#!/usr/bin/python3

import cmd

class HBNBCommand(cmd.Cmd):
    prompt = '(hbnb)'

    def do_hard_things(self, arg):
        print(f"man was not created for comfort, do hard things")

    def do_exit(self, arg):
        return True

    def emptyline(self):
        pass

if __name__ == '__main__':
    HBNBCommand().cmdloop()
