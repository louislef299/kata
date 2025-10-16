lu = require('luaunit')
local add = require('main')

function testBasic()
	lu.assertEquals(add(1,1), 2)
end

os.exit( lu.LuaUnit.run() )
