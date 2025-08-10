#include <filesystem>

#define EXPORT_SPEC extern "C" __declspec(dllexport)
#define MANAGED_STR(pString) System::Runtime::InteropServices::Marshal::PtrToStringAnsi(System::IntPtr((char*)pString))

EXPORT_SPEC double EX_ModmanBackupCreate(const char* sourcePath, const char* destPath, const char* destDir) {
    std::filesystem::create_directories(destDir);
    if (std::filesystem::copy_file(sourcePath, destPath)) return 1.0;
    return 0.0;
}

EXPORT_SPEC double EX_ModmanBackupRestore(const char* destPath, const char* sourcePath) {
    const auto copyOptions = std::filesystem::copy_options::overwrite_existing;
    if (std::filesystem::copy_file(sourcePath, destPath, copyOptions)) return 1.0;
    return 0.0;
}

EXPORT_SPEC double EX_ModmanInstallMod(const char* dataPath, const char* modPath) {
    UndertaleProjectMan::ProjectInstaller^ pj = gcnew UndertaleProjectMan::ProjectInstaller();
    pj->InstallProject(MANAGED_STR(dataPath), MANAGED_STR(modPath));
    return 1.0;
}
