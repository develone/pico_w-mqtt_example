add_executable(mqtt_example
	mqtt_example.c
	mqtt_example.h
	lwipopts.h
        )
target_compile_definitions(mqtt_example PRIVATE
        WIFI_SSID=\"${WIFI_SSID}\"
        WIFI_PASSWORD=\"${WIFI_PASSWORD}\"
        )
target_include_directories(mqtt_example PRIVATE
        ${CMAKE_CURRENT_LIST_DIR}
        ${CMAKE_CURRENT_LIST_DIR}/.. # for our common lwipopts
        )
target_link_libraries(mqtt_example
        pico_cyw43_arch_lwip_threadsafe_background
        pico_stdlib
        pico_lwip_iperf
		#lifting
		#klt
		#littlefs
        )

pico_add_extra_outputs(mqtt_example)

 