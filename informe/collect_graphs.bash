#!/bin/bash

THIS_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
LTM_SAMPLES="$(rospack find ltm_samples)"
GRAPHS_DIR="${LTM_SAMPLES}/scripts/profile/graph"
OUTPUT_DIR="${THIS_DIR}/figures/results"
rm -rf "${OUTPUT_DIR}"
mkdir -p "${OUTPUT_DIR}"


function collect {
    local file
    file=$1
    cp "${GRAPHS_DIR}/${file}" "${OUTPUT_DIR}"
    echo "collecting '${file}' ..."
}

collect "scalability_disk_usage.eps"
collect "scalability_max_qpm.eps"
collect "scalability_operation_time_extended.eps"
collect "scalability_operation_time.eps"
collect "eff__ram_qpm.eps"
# collect "eff__cpu_qpm_by_query__sum__100_episodes.eps"
# collect "eff__cpu_qpm_by_query__sum__1000_episodes.eps"
collect "eff__cpu_qpm_by_query__sum__10000_episodes.eps"
# collect "eff__cpu_qpm_by_query__sum__50000_episodes.eps"
collect "eff__cpu_qpm_by_query__sum__100000_episodes.eps"
# collect "eff__cpu_qpm_by_query__mongo__100_episodes.eps"
# collect "eff__cpu_qpm_by_query__mongo__1000_episodes.eps"
collect "eff__cpu_qpm_by_query__mongo__10000_episodes.eps"
# collect "eff__cpu_qpm_by_query__mongo__50000_episodes.eps"
collect "eff__cpu_qpm_by_query__mongo__100000_episodes.eps"
# collect "eff__cpu_qpm_by_query__ltm__100_episodes.eps"
# collect "eff__cpu_qpm_by_query__ltm__1000_episodes.eps"
collect "eff__cpu_qpm_by_query__ltm__10000_episodes.eps"
# collect "eff__cpu_qpm_by_query__ltm__50000_episodes.eps"
collect "eff__cpu_qpm_by_query__ltm__100000_episodes.eps"


collect "eff_cpu_qpm_by_eps__sum__q1.eps"
collect "eff_cpu_qpm_by_eps__sum__q2.eps"
collect "eff_cpu_qpm_by_eps__sum__q3.eps"
collect "eff_cpu_qpm_by_eps__sum__q4.eps"
collect "eff_cpu_qpm_by_eps__sum__q5.eps"

# collect "eff_cpu_qpm_by_eps__mongo__q1.eps"
# collect "eff_cpu_qpm_by_eps__mongo__q2.eps"
# collect "eff_cpu_qpm_by_eps__mongo__q3.eps"
# collect "eff_cpu_qpm_by_eps__mongo__q4.eps"
# collect "eff_cpu_qpm_by_eps__mongo__q5.eps"

# collect "eff_cpu_qpm_by_eps__ltm__q1.eps"
# collect "eff_cpu_qpm_by_eps__ltm__q2.eps"
# collect "eff_cpu_qpm_by_eps__ltm__q3.eps"
# collect "eff_cpu_qpm_by_eps__ltm__q4.eps"
# collect "eff_cpu_qpm_by_eps__ltm__q5.eps"

