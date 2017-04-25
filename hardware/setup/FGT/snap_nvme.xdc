############################################################################
############################################################################
##
## Copyright 2017, International Business Machines
##
## Licensed under the Apache License, Version 2.0 (the "License");
## you may not use this file except in compliance with the License.
## You may obtain a copy of the License at
##
##     http://www.apache.org/licenses/LICENSE-2.0
##
## Unless required by applicable law or agreed to in writing, software
## distributed under the License is distributed on an "AS IS" BASIS,
## WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
## See the License for the specific language governing permissions and
## limitations under the License.
##
############################################################################
############################################################################

## 
set_false_path -from [get_pins a0/donut_i/ctrl_mgr/afu_reset_q_reg/C] -to [get_pins a0/nvme_ch1_reset_m_reg*/D]
set_false_path -from [get_pins a0/action_reset_q_reg/C]               -to [get_pins a0/nvme_ch1_reset_m_reg*/D]
set_false_path -from [get_pins a0/action_reset_qq_reg/C]              -to [get_pins a0/nvme_ch1_reset_m_reg*/D]