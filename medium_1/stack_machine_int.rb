# n Place a value n in the "register". Do not modify the stack.

# PUSH Push the register value on to the stack. Leave the value in the register.

  # stack.push register_value 

# ADD Pops a value from the stack and adds it to the register value,
# storing the result in the register.

# SUB Pops a value from the stack and subtracts it from the register value, 
# storing the result in the register.

# MULT Pops a value from the stack and multiplies it by the register value, 
# storing the result in the register.

# DIV Pops a value from the stack and divides it into the register value, 
# storing the integer result in the register.

# MOD Pops a value from the stack and divides it into the register value,
# storing the integer remainder of the division in the register.

# POP Remove the topmost item from the stack and place in register

# PRINT Print the register value


def minilang(command)
  commands = command.split
  nums_hash = Hash[(-9..9).to_a.map{|num| num.to_s}.zip (-9..9).to_a]
  register = 0
  last_pop = 0

  stack = []

  commands.map! do |command|
    if nums_hash.key?(command)
      nums_hash[command]
    else
      command
    end
  end

  commands.each do |command|
    register = command if command.class == Integer
    

    case command
    when "PUSH"
        stack << register

    when "MULT"
      register *= stack.pop 
      #MULT Pops a value from the stack and multiplies it by the register value, 
# storing the result in the register.
    when "PRINT"
      p register

    when "ADD"
      register += stack.pop
      # ADD Pops a value from the stack and adds it to the register value,
# storing the result in the register.

    when "POP"
      register = stack.pop
    when "MOD"
      register %= stack.pop

      # MOD Pops a value from the stack and divides it into the register value,
# storing the integer remainder of the division in the register.


    when "DIV"
        register /= stack.pop 
      # DIV Pops a value from the stack and divides it into the register value, 
      # storing the integer result in the register.
    end

  end
end


minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

