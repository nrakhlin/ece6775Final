<AutoPilot:project xmlns:AutoPilot="com.autoesl.autopilot.project" projectType="C/C++" name="blowfish.prj" top="Blowfish::Encrypt_Decrypt_SetKey">
    <Simulation argv="">
        <SimFlow name="csim" setup="false" optimizeCompile="false" clean="false" ldflags="" mflags=""/>
    </Simulation>
    <includePaths/>
    <libraryFlag/>
    <files>
        <file name="../../test2.cpp" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="initial_data.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="blowfish.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="blowfish.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
    </files>
    <solutions>
        <solution name="solution1" status=""/>
    </solutions>
</AutoPilot:project>

