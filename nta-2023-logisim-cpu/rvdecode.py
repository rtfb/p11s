import sys


def decode_i_type(instr):
    b = f'{instr:032b}'
    imm = b[:12]
    rs = b[12:17]
    funct3 = b[17:20]
    rd = b[20:25]
    opcode = b[25:]
    print(f'imm={imm} rs={rs} funct3={funct3} rd={rd} opcode={opcode}')
    print(imm, rs, funct3, rd, opcode)


def main():
    if len(sys.argv) < 2:
        print('please give instruction to decode, like this: rvdecode.py 0xf00')
    param = sys.argv[1]
    if not param.startswith('0x'):
        param = '0x' + param
    decode_i_type(int(param, 16))


if __name__ == '__main__':
    main()
