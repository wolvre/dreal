set(DREAL_BINARY ${DREAL_SOURCE_DIR}/../bin/dReal)
file(GLOB_RECURSE NRAODE_INSTANCES ${DREAL_SOURCE_DIR}/tests/nra_ode "*.smt2")
list(SORT NRAODE_INSTANCES)
FOREACH(instance ${NRAODE_INSTANCES})
  GET_FILENAME_COMPONENT(instance_name ${instance} NAME)
  add_test(NAME "regression_nra_ode_${instance_name}"
           COMMAND "${DREAL_SOURCE_DIR}/tests/nra_ode/test.sh" ${DREAL_BINARY} ${instance})
  set_tests_properties("regression_nra_ode_${instance_name}" PROPERTIES LABELS "nra_ode_normal")
ENDFOREACH(instance)

FOREACH(instance ${NRAODE_INSTANCES})
  GET_FILENAME_COMPONENT(instance_name ${instance} NAME)
  add_test(NAME "regression_nra_ode_shortsat_${instance_name}"
           COMMAND "${DREAL_SOURCE_DIR}/tests/nra_ode/test_shortsat.sh" ${DREAL_BINARY} ${instance})
  set_tests_properties("regression_nra_ode_shortsat_${instance_name}" PROPERTIES LABELS "nra_ode_shortsat")
ENDFOREACH(instance)
