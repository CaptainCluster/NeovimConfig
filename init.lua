-------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------
--                                                                                                                     --
--                                                                                                                     --
--			This Neovim configuration was made by CaptainCluster                                                       --
--			https://github.com/CaptainCluster                                                                          --
--                                                                                                                     --
--			This config is under GNU GPL Version 3.0 license                                                           --
--                                                                                                                     --
--			Dependencies:                                                                                              --
--				Packer, a Neovim plugin manager - https://github.com/wbthomason/packer.nvim                            --
--				npm & nodejs                                                                                           --
--				All the plugins present                                                                                --
--                                                                                                                     --           
--                                                                                                                     --
-------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------

require("core.keymaps")
require("core.plugins.plugins")
require("core.plugins.plugins_keymaps")
require("core.plugins.coc")

