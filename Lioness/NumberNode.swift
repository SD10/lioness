//
//  NumberNode.swift
//  Lioness
//
//  Created by Louis D'hauwe on 09/10/2016.
//  Copyright © 2016 Silver Fox. All rights reserved.
//

import Foundation

public class NumberNode: ASTNode, Equatable {
	
	public let value: Float
	
	init(value: Float) {
		self.value = value
	}
	
	public override func compile(_ ctx: BytecodeCompiler) throws -> [BytecodeInstruction] {
		
		let i = self.value
		let label = ctx.nextIndexLabel()
		return [BytecodeInstruction(label: label, type: .pushConst, arguments: ["\(i)"])]
		
	}
	
	public override var description: String {
		return "NumberNode(\(value))"
	}
	
}

public func ==(lhs: NumberNode, rhs: NumberNode) -> Bool {
	return lhs.value == rhs.value
}
