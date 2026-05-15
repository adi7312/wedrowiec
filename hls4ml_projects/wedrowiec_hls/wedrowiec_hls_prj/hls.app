<AutoPilot:project xmlns:AutoPilot="com.autoesl.autopilot.project" projectType="C/C++" top="wedrowiec_hls_axi" name="wedrowiec_hls_prj" ideType="classic">
    <Simulation argv="">
        <SimFlow name="csim" setup="false" optimizeCompile="false" clean="false" ldflags="" mflags=""/>
    </Simulation>
    <solutions>
        <solution name="solution1" status=""/>
    </solutions>
    <files>
        <file name="firmware/wedrowiec_hls.cpp" sc="0" tb="false" cflags="-std=c++0x" csimflags="" blackbox="false"/>
        <file name="firmware/wedrowiec_hls_axi.cpp" sc="0" tb="false" cflags="-std=c++0x" csimflags="" blackbox="false"/>
        <file name="../../tb_data" sc="0" tb="1" cflags="-Wno-unknown-pragmas" csimflags="" blackbox="false"/>
        <file name="../../firmware/weights" sc="0" tb="1" cflags="-Wno-unknown-pragmas" csimflags="" blackbox="false"/>
        <file name="../../wedrowiec_hls_test.cpp" sc="0" tb="1" cflags="-std=c++0x -DRTL_SIM -Wno-unknown-pragmas" csimflags="" blackbox="false"/>
    </files>
</AutoPilot:project>

