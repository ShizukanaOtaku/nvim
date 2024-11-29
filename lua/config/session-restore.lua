local core = require("core")
require("multiple-session").setup({
  root_pattern = ".git",
  session_dir = function(project_root)
    return project_root .. "/.nvim/session"
  end,
  default_session = "default",
  use_builtin_session = true,
  -- whether to auto load session when neovim start
  auto_load_session = function(_cur_session, cur_session_path)
    if #vim.v.argv > 2 then
      return false
    end

    -- detect whether in a nested instance
    if vim.env.NVIM then
      return false
    end

    local core = require("core")
    if not core.file.file_or_dir_exists(cur_session_path) then
      return false
    end

    return true
  end,
  -- whether to auto save session when neovim exits
  auto_save_session = function(_cur_session, cur_session_path)
    if #vim.v.argv > 2 then
      return false
    end

    if vim.env.NVIM then
      return false
    end

    local core = require("core")
    if not core.file.file_or_dir_exists(cur_session_path) then
      return false
    end

    return true
  end,
  on_session_saved = function(session_dir)
    -- niuiic/quickfix.nvim
    require("quickfix").store(session_dir .. "/quickfix")
    vim.cmd("wundo " .. session_dir .. "/undo")
  end,
  on_session_to_restore = function()
    -- close all buffers (optional)
    local ok = pcall(vim.cmd, "%bd")
    if not ok then
      vim.notify("Some buffers are not saved", vim.log.levels.ERROR, {
        title = "Session",
      })
    end
  end,
  on_session_restored = function(session_dir)
    if core.file.file_or_dir_exists(session_dir .. "/" .. "breakpoints") then
      dap_utils.restore_breakpoints(session_dir .. "/breakpoints")
    end
    if core.file.file_or_dir_exists(session_dir .. "/watches") then
      dap_utils.restore_watches(session_dir .. "/watches")
    end
    if core.file.file_or_dir_exists(session_dir .. "/" .. "quickfix") then
      require("quickfix").restore(session_dir .. "/quickfix")
    end
    if core.file.file_or_dir_exists(session_dir .. "/undo") then
      vim.cmd("rundo " .. session_dir .. "/undo")
    end
  end,
})
