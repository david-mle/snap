#-----------------------------------------------------------
#
# Copyright 2016, International Business Machines
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
#-----------------------------------------------------------

set xilinx_vivado $::env(XILINX_VIVADO)
set root_dir      $::env(DONUT_HARDWARE_ROOT)
set ies_libs      $::env(IES_LIBS)
puts $root_dir
puts $ies_libs

open_project $root_dir/viv_project/framework.xpr
if { [string first 2016 $xilinx_vivado] > 0 } {
  puts "export_simulation 2016 syntax"
  export_simulation  -force -single_step -directory "$root_dir/sim" -simulator ies -lib_map_path "$ies_libs" -ip_user_files_dir "$root_dir/viv_project/framework.ip_user_files" -ipstatic_source_dir "$root_dir/viv_project/framework.ip_user_files/ipstatic" -use_ip_compiled_libs
} else {
  puts "export_simulation 2015 syntax"
  export_simulation  -force -single_step -directory "$root_dir/sim" -simulator ies
}
close_project