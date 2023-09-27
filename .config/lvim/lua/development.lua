-- Auto load default templates while creating new files
vim.cmd([[
augroup templates
    autocmd!
    autocmd BufNewFile *.cpp   0r ~/.config/lvim/skeletons/skeleton.cpp
    autocmd BufNewFile *.c     0r ~/.config/lvim/skeletons/skeleton.c
    autocmd BufNewFile *.sh    0r ~/.config/lvim/skeletons/skeleton.sh
    autocmd BufNewFile *.java  0r ~/.config/lvim/skeletons/skeleton.java
    autocmd BufNewFile *.html  0r ~/.config/lvim/skeletons/skeleton.html
augroup END
]])

-- Abbreviations for faster coding
vim.cmd([[
augroup abbreviations
    autocmd!
    "short hands for cpp
    autocmd FileType cpp :iabbrev iff if ()
    autocmd FileType cpp :iabbrev elf else if ()
    autocmd FileType cpp :iabbrev elsee else ()
    autocmd FileType cpp :iabbrev forr for (int i = 0; i < n; i++)
    "short hands for shell
    autocmd FileType sh :iabbrev iff if []<left>
    autocmd FileType sh :iabbrev elf elseif []<left>
augroup END
]])


-- Define custom keybindings
-- lvim.keys.normal_mode["<CR>r"] = ":w<CR>:lua compile_and_run()<CR>"
-- lvim.keys.normal_mode["<F9>"] = ":w<CR>:term ./%:r.out<CR>i"
-- lvim.keys.insert_mode["<F9>"] = "<Esc>:w<CR>:term ./%:r.out<CR>i"

-- Function to compile and run C++ programs
-- function compile_and_run()
--     local filename = vim.fn.expand('%')
--     local outfile = vim.fn.expand('%:r') .. '.out'
--     local compile_cmd = 'g++ -std=c++17 -Wall -g -o ' ..
--         vim.fn.shellescape(outfile) .. ' ' .. vim.fn.shellescape(filename)
--     local run_cmd = './' .. vim.fn.shellescape(outfile)

--     -- print('Compile command: ' .. compile_cmd)
--     -- print('Run command: ' .. run_cmd)

--     local compile_status = os.execute(compile_cmd)
--     if compile_status ~= 0 then
--         print('Compilation failed')
--         return
--     end

--     vim.cmd('term ' .. run_cmd)
--     vim.cmd('startinsert!')
-- end
