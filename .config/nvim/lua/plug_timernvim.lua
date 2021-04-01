require "timer".add(
    function()
        if vim.fn.mode() == "i" then
            require("lspsaga.signaturehelp").signature_help()
        end
        return 2000
    end
)

require "timer".add(
    function()
        if vim.fn.mode() == "n" then
            require "lspsaga.diagnostic".show_line_diagnostics()
        end
        return 2000
    end
)
