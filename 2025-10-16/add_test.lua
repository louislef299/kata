lu = require('luaunit')
local main = require('main')

function testBasic()
	lu.assertEquals(main:add(1,1), 2)
end

os.exit( lu.LuaUnit.run() )
