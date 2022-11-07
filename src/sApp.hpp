#pragma once

#include <vulkan/vulkan.hpp>
#include <GLFW/glfw3.h>

#include "sDevice.hpp"
#include "sDebug.hpp"



  

namespace shb{

class sApp{
 public:
    sApp() { initApp();}

    void initApp();
    void run();
    void createInstance();

 private:
    
   // »»» members «««
    VkInstance _instance;
    sDevice _device;


   // »»» extensions and layers «««
    std::vector<const char*> _enabledExtensions;

    std::vector<const char*> _enabledLayers = 
    { "VK_LAYER_KHRONOS_validation" };

    // »»» validation layer stuff «««
    void setupDebugMessenger();
    bool checkValidationLayerSupport();
    VkDebugUtilsMessengerEXT _debugMessenger;
    VkDebugUtilsMessengerCreateInfoEXT _debugCreateInfo{};


    
};



//·need: 
// » instance (done)
// » validation layers
// » device (physical and logical)
// » queues
//
// » window
// » swapchain
// » surface
//
// » images
// » framebuffers
// » descriptor sets
//
// » shader modules
// » pipeline 
// » vertex input
// » buffer creation
//
// » command buffers
// » presentation 


} //namespace shb