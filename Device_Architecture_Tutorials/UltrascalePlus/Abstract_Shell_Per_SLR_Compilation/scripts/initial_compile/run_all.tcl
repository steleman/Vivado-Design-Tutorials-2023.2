# #########################################################################
#� Copyright 2021 Xilinx, Inc.

#Licensed under the Apache License, Version 2.0 (the "License");
#you may not use this file except in compliance with the License.
#You may obtain a copy of the License at

#    http://www.apache.org/licenses/LICENSE-2.0

#Unless required by applicable law or agreed to in writing, software
#distributed under the License is distributed on an "AS IS" BASIS,
#WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#See the License for the specific language governing permissions and
#limitations under the License.
# ###########################################################################

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 ../../output/initial_compile -part xcvu13p-fhga2104-3-e -force
}

source create_ipi.tcl
source run_impl.tcl
