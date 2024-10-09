import parse, {Type} from 'jass-to-ast'
import fs from 'fs'
import * as path from 'node:path'

const read = p => fs.readFileSync(p, {encoding: 'utf8', flag: 'r'})
const ujapi = parse(read(path.join('..', 'sdk', 'common.j')))

const supers = {}
const types = []

for (const node of ujapi) {
    if (node instanceof Type) {
        types.push(node)
        supers[node.base] = node.super
    }
}


const resolve = (type, list) => {
    list.unshift(type)
    return supers[type] ? resolve(supers[type], list) : list
}

let formatted = {}

for (const type of types) {
    const list = resolve(type.base, [])
    let cur = formatted
    while (list.length) {
        const item = list.shift()
        if (!item) break
        cur = cur[item] ??= {}
    }
}

// clean
const clean = map => {
    for (const [k, v] of Object.entries(map)) {
        // noinspection JSCheckFunctionSignatures
        if (Object.values(v).length === 0) map[k] = ''
        else clean(v)
    }
}
clean(formatted)

// sort
function sortKeys(obj) {
    const sorted = {}
    const keys = Object.keys(obj).sort()

    for (const i in keys) {
        const key = keys[i]
        sorted[key] = typeof obj[key] === 'object' ? sortKeys(obj[key]) : obj[key]
    }

    return sorted
}

formatted = sortKeys(formatted)

// write
fs.writeFileSync('./diagram.json', JSON.stringify(formatted, null, 4), {encoding: 'utf8', flag: 'w'})
