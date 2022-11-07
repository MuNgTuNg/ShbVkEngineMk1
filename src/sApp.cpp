#include "sApp.hpp"

namespace shb{


void sApp::initApp(){
    createInstance();
    setupDebugMessenger();

}

void sApp::run(){
    LOG("hello friend from sApp::run()");
}




static VKAPI_ATTR VkBool32 VKAPI_CALL debugCallback(   //how to print the validation layer message
    VkDebugUtilsMessageSeverityFlagBitsEXT messageSeverity,
    VkDebugUtilsMessageTypeFlagsEXT messageType,
    const VkDebugUtilsMessengerCallbackDataEXT* pCallbackData,
    void* pUserData) {

    std::cerr << "\nValidation Layer: " << pCallbackData->pMessage << std::endl;  //formatting

    return VK_FALSE;
}


bool sApp::checkValidationLayerSupport() { //used to check if validation layers are available during instance creation
   //enumerates all layers 
    uint32_t layerCount;
    vkEnumerateInstanceLayerProperties(&layerCount, nullptr);
    std::vector<VkLayerProperties> availableLayers(layerCount);
    vkEnumerateInstanceLayerProperties(&layerCount, availableLayers.data());

  //iterates through them each name in enabled layers
    for (const char* layerName : _enabledLayers) {
        bool layerFound = false;
    
    //looks for the first enabled layer (validation layers) by string comparison
        for (const auto& layerProperties : availableLayers) {
            if (strcmp(layerName, layerProperties.layerName) == 0) {
                layerFound = true;
                break;
            }
        }
    
        if (!layerFound) {
            return false;
        }
    }  

    return true; //returns true if found initial layer
}

//obtains a function pointer to creation of the debug messenger relative to the instance
VkResult CreateDebugUtilsMessengerEXT(VkInstance instance, const VkDebugUtilsMessengerCreateInfoEXT* pCreateInfo, const VkAllocationCallbacks* pAllocator, VkDebugUtilsMessengerEXT* pDebugMessenger) {
    auto func = (PFN_vkCreateDebugUtilsMessengerEXT) vkGetInstanceProcAddr(instance, "vkCreateDebugUtilsMessengerEXT");
    if (func != nullptr) {
        return func(instance, pCreateInfo, pAllocator, pDebugMessenger);
    } else {
        return VK_ERROR_EXTENSION_NOT_PRESENT;
    }
}

void DestroyDebugUtilsMessengerEXT(VkInstance instance, VkDebugUtilsMessengerEXT debugMessenger, const VkAllocationCallbacks* pAllocator) {
    auto func = (PFN_vkDestroyDebugUtilsMessengerEXT) vkGetInstanceProcAddr(instance, "vkDestroyDebugUtilsMessengerEXT");
    if (func != nullptr) {
        func(instance, debugMessenger, pAllocator);
    }
}

//does exactly what it says on the tin
void populateDebugMessengerCreateInfo(VkDebugUtilsMessengerCreateInfoEXT& createInfo) {
    createInfo = {};
    createInfo.sType = VK_STRUCTURE_TYPE_DEBUG_UTILS_MESSENGER_CREATE_INFO_EXT;
    createInfo.messageSeverity = VK_DEBUG_UTILS_MESSAGE_SEVERITY_VERBOSE_BIT_EXT | VK_DEBUG_UTILS_MESSAGE_SEVERITY_WARNING_BIT_EXT | VK_DEBUG_UTILS_MESSAGE_SEVERITY_ERROR_BIT_EXT;
    createInfo.messageType =  VK_DEBUG_UTILS_MESSAGE_TYPE_VALIDATION_BIT_EXT | VK_DEBUG_UTILS_MESSAGE_TYPE_PERFORMANCE_BIT_EXT;
    createInfo.pfnUserCallback = debugCallback;
}

//standard creation function, but using function pointers to instance specific creation functions
void sApp::setupDebugMessenger() {
   if (!DEBUG) return;
   
   
    
   populateDebugMessengerCreateInfo(_debugCreateInfo);

   if (CreateDebugUtilsMessengerEXT(_instance, &_debugCreateInfo, nullptr, &_debugMessenger) != VK_SUCCESS) {
    throw std::runtime_error("failed to set up debug messenger!");
   }else{
    LOG("Setup debug messenger!");
   }

}




std::vector<const char*> getExtensions(){
    uint32_t glfwExtensionCount = 0;
    const char** glfwExtensions;
    glfwExtensions = glfwGetRequiredInstanceExtensions(&glfwExtensionCount); //get glfw's necessary extensions then.. 

    std::vector<const char*> extensions(glfwExtensions, glfwExtensions + glfwExtensionCount); //add them to a vector 

    if (DEBUG) {
        extensions.push_back(VK_EXT_DEBUG_UTILS_EXTENSION_NAME);  //debug utils is an instance level extension, always use macro instead of actual string as allows for easier updates 
    }    
     extensions.push_back("VK_KHR_surface");                 // surface is a device level extension i think?
    return extensions;
}


void sApp::createInstance(){

    if (DEBUG && !checkValidationLayerSupport()) {
        throw std::runtime_error("validation layers requested, but not available!");
    }

    
    _enabledExtensions = getExtensions();

    VkApplicationInfo appInfo{};
    appInfo.apiVersion = VK_API_VERSION_1_3;
    appInfo.applicationVersion = VK_MAKE_VERSION(1,0,0);
    appInfo.engineVersion = VK_MAKE_VERSION(1,0,0);
    appInfo.pApplicationName = "ShbVkAppMk1";
    appInfo.pEngineName = "ShbVkEngineMk1";
    appInfo.sType = VK_STRUCTURE_TYPE_APPLICATION_INFO;


    VkInstanceCreateInfo createInfo{};
    createInfo.sType = VK_STRUCTURE_TYPE_INSTANCE_CREATE_INFO;
    createInfo.enabledExtensionCount = static_cast<uint32_t>(_enabledExtensions.size());
    createInfo.ppEnabledExtensionNames = _enabledExtensions.data();
    createInfo.pApplicationInfo = &appInfo;


    if (DEBUG) {
        createInfo.enabledLayerCount = static_cast<uint32_t>(_enabledLayers.size());
        createInfo.ppEnabledLayerNames = _enabledLayers.data();

        populateDebugMessengerCreateInfo(_debugCreateInfo);
        createInfo.pNext = (VkDebugUtilsMessengerCreateInfoEXT*) &_debugCreateInfo;
    }else{
        createInfo.enabledLayerCount = 0;

        createInfo.pNext = nullptr;
    }
    

    if(vkCreateInstance(&createInfo,nullptr,&_instance) != VK_SUCCESS){
        LOG("intance failed to be created");
    }else{
        LOG("instance successfully created!");
    }


   
}


}//namespace shb