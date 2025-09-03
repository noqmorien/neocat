local M = {}

function M.merge(left, right)
	local result = {}
	for k, v in pairs(left) do result[k] = v end
	for k, v in pairs(right) do result[k] = v end
	return result
end

return M
