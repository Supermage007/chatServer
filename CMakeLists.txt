cmake_minimum_required(VERSION 3.0)
project(myChatServer)

# 配置编译选项
set(CMAKE_CXX_FLAGS ${CMAKE_CXX_FLAGS} -g)

# 配置最终可执行文件输出路径
set(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)

# 配置头文件的搜索路径
#include_directories(${PROJECT_SOURCE_DIR}/include)
#include_directories(${PROJECT_SOURCE_DIR}/include/server)
#include_directories(${PROJECT_SOURCE_DIR}/thirdparty)

include_directories(/home/supermage007/project/chatServerNew/mychatserver/include)
include_directories(/home/supermage007/project/chatServerNew/mychatserver/include/server)
include_directories(/home/supermage007/project/chatServerNew/mychatserver/include/server/db)
include_directories(/home/supermage007/project/chatServerNew/mychatserver/include/server/model)
include_directories(/home/supermage007/project/chatServerNew/mychatserver/include/server/redis)
include_directories(/home/supermage007/project/chatServerNew/mychatserver/thirdparty)



# 加载子目录
add_subdirectory(src)