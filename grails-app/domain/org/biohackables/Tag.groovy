package org.biohackables


class Tag {
	
	String name

    static constraints = {
		name size: 1..255, blank: false, unique: true
    }
	
	def beforeInsert() {
		name.toLowerCase();
	}
	
	def beforeUpdate() {
		name.toLowerCase();
	}
	
	String toString() {
		return name
	}
}
