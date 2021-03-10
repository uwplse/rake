; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/windows_d3d12compute_arm.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/windows_d3d12compute_arm.cpp"
target datalayout = "e-m:w-p:64:64-i32:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-windows-msvc19.11.0"

%struct._GUID = type { i32, i16, i16, [8 x i8] }
%struct.IDXGIAdapter1 = type { %struct.IDXGIAdapter }
%struct.IDXGIAdapter = type { %struct.IDXGIObject }
%struct.IDXGIObject = type { %struct.IUnknown }
%struct.IUnknown = type { i32 (...)** }
%struct.halide_d3d12compute_device = type { i8 }
%struct.halide_d3d12compute_command_queue = type { i8 }
%struct.ID3D12Fence = type { %struct.ID3D12Pageable }
%struct.ID3D12Pageable = type { %struct.ID3D12DeviceChild }
%struct.ID3D12DeviceChild = type { %struct.ID3D12Object }
%struct.ID3D12Object = type { %struct.IUnknown }
%struct.ID3D12RootSignature = type { %struct.ID3D12DeviceChild }
%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer" = type { %struct.ID3D12Resource*, i32, i32, i32, i32, i32, i32, i32, i32, %struct.halide_type_t, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer::transfer_t"*, i8, i8*, i8*, i64, i64 }
%struct.ID3D12Resource = type { %struct.ID3D12Pageable }
%struct.halide_type_t = type { i8, i8, i16 }
%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer::transfer_t" = type { %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*, i64, i64 }
%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_command_allocator" = type { i8 }
%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame" = type { %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_graphics_command_list"*, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_binder"*, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", i64 }
%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_graphics_command_list" = type { %struct.halide_d3d12_deep_wrapper, i64 }
%struct.halide_d3d12_deep_wrapper = type { %struct.ID3D12GraphicsCommandList* }
%struct.ID3D12GraphicsCommandList = type { %struct.ID3D12CommandList }
%struct.ID3D12CommandList = type { %struct.ID3D12DeviceChild }
%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_binder" = type { %struct.ID3D12DescriptorHeap*, %struct.D3D12_CPU_DESCRIPTOR_HANDLE, %struct.D3D12_GPU_DESCRIPTOR_HANDLE, [3 x %struct.D3D12_CPU_DESCRIPTOR_HANDLE], [3 x %struct.D3D12_GPU_DESCRIPTOR_HANDLE], i32 }
%struct.ID3D12DescriptorHeap = type { %struct.ID3D12Pageable }
%struct.D3D12_CPU_DESCRIPTOR_HANDLE = type { i64 }
%struct.D3D12_GPU_DESCRIPTOR_HANDLE = type { i64 }
%struct.halide_device_interface_t = type { i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, void (i8*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i64, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, i32*, i32*)*, %struct.halide_device_interface_impl_t* }
%struct.halide_buffer_t = type { i64, %struct.halide_device_interface_t*, i8*, i64, %struct.halide_type_t, i32, %struct.halide_dimension_t*, i8* }
%struct.halide_dimension_t = type { i32, i32, i32, i32 }
%struct.halide_device_interface_impl_t = type { void ()*, void ()*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i64)*, i32 (i8*, %struct.halide_buffer_t*)* }
%struct.D3D12_ROOT_SIGNATURE_DESC = type { i32, %struct.D3D12_ROOT_PARAMETER*, i32, %struct.D3D12_STATIC_SAMPLER_DESC*, i32 }
%struct.D3D12_ROOT_PARAMETER = type { i32, %union.anon, i32 }
%union.anon = type { %struct.D3D12_ROOT_DESCRIPTOR_TABLE }
%struct.D3D12_ROOT_DESCRIPTOR_TABLE = type { i32, %struct.D3D12_DESCRIPTOR_RANGE* }
%struct.D3D12_DESCRIPTOR_RANGE = type { i32, i32, i32, i32, i32 }
%struct.D3D12_STATIC_SAMPLER_DESC = type { i32, i32, i32, i32, float, i32, i32, i32, float, float, i32, i32, i32 }
%struct.ID3D10Blob = type { %struct.IUnknown }
%"class.Halide::Internal::GPUCompilationCache" = type { %struct.halide_mutex, i32, %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation"*, i32, i32 }
%struct.halide_mutex = type { [1 x i64] }
%"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation" = type { %struct.halide_d3d12compute_device*, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_library"*, i32, i32 }
%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_library" = type { %"struct.Halide::Runtime::Internal::THashMap", i32, [1 x i8] }
%"struct.Halide::Runtime::Internal::THashMap" = type { %"struct.Halide::Runtime::Internal::HashMap" }
%"struct.Halide::Runtime::Internal::HashMap" = type { %struct.halide_mutex, [256 x %"struct.Halide::Runtime::Internal::CacheEntry"*], %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"*, i64, i64, i64, void (i8*, i8*, i64)*, void (i8*, i64)*, i8*, i8 }
%"struct.Halide::Runtime::Internal::CacheEntry" = type { %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"*, i8*, i64, i8*, i32, i32, i64, i8* }
%struct._D3D_SHADER_MACRO = type { i8*, i8* }
%struct.ID3DInclude = type { i32 (...)** }
%"struct.Halide::Runtime::Internal::device_copy" = type { i64, i64, i64, [16 x i64], [16 x i64], [16 x i64], i64 }
%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer" = type { i8*, i8*, i8*, i8*, i8, [1 x i8] }
%struct.DXGI_ADAPTER_DESC1 = type { [128 x i16], i32, i32, i32, i32, i64, i64, i64, %struct.__LUID, i32 }
%struct.__LUID = type { i32, i32 }
%struct.ID3D12Device = type { %struct.ID3D12Object }
%struct.D3D12_RESOURCE_DESC = type { i32, i64, i64, i32, i16, i16, i32, %struct.DXGI_SAMPLE_DESC, i32, i32 }
%struct.DXGI_SAMPLE_DESC = type { i32, i32 }
%struct.D3D12_HEAP_PROPERTIES = type { i32, i32, i32, i32, i32 }
%struct.D3D12_CLEAR_VALUE = type { i32, %union.anon.4 }
%union.anon.4 = type { [4 x float] }
%struct.D3D12_RANGE = type { i64, i64 }
%"struct.Halide::Runtime::Internal::D3D12Compute::ID3D12MemoryMappedResourceFAUX" = type opaque
%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_profiler" = type { %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", i64, %struct.ID3D12QueryHeap*, i32, i32 }
%struct.ID3D12QueryHeap = type { %struct.ID3D12Pageable }
%struct.D3D12_QUERY_HEAP_DESC = type { i32, i32, i32 }
%struct.ID3D12CommandQueue = type { %struct.ID3D12Pageable }
%"struct.Halide::Runtime::Internal::D3D12Compute::ID3D12CommandQueueTimestampFrequencyFAUX" = type opaque
%struct.D3D12_COMMAND_QUEUE_DESC = type { i32, i32, i32, i32 }
%struct._SECURITY_ATTRIBUTES = type { i32, i8*, i32 }
%struct.D3D12_CONSTANT_BUFFER_VIEW_DESC = type { i64, i32 }
%struct.D3D12_UNORDERED_ACCESS_VIEW_DESC = type { i32, i32, %union.anon.5 }
%union.anon.5 = type { %struct.D3D12_BUFFER_UAV }
%struct.D3D12_BUFFER_UAV = type { i64, i32, i32, i64, i32 }
%"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder" = type { i8*, %struct.halide_d3d12compute_device*, %struct.halide_d3d12compute_command_queue*, i32 }
%struct.ID3D12CommandAllocator = type { %struct.ID3D12Pageable }
%struct.IDXGIFactory1 = type { %struct.IDXGIFactory }
%struct.IDXGIFactory = type { %struct.IDXGIObject }
%struct.D3D12_RESOURCE_BARRIER = type { i32, i32, %union.anon.6 }
%union.anon.6 = type { %struct.D3D12_RESOURCE_TRANSITION_BARRIER }
%struct.D3D12_RESOURCE_TRANSITION_BARRIER = type { %struct.ID3D12Resource*, i32, i32, i32 }
%struct.ID3D12PipelineState = type { %struct.ID3D12Pageable }
%struct.D3D12_COMPUTE_PIPELINE_STATE_DESC = type { %struct.ID3D12RootSignature*, %struct.D3D12_SHADER_BYTECODE, i32, %struct.D3D12_CACHED_PIPELINE_STATE, i32 }
%struct.D3D12_SHADER_BYTECODE = type { i8*, i64 }
%struct.D3D12_CACHED_PIPELINE_STATE = type { i8*, i64 }
%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.11" = type { i8*, i8*, i8*, i8*, i8, [16 x i8] }
%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_function" = type { %struct.ID3D10Blob*, %struct.ID3D12RootSignature*, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_pipeline_state"* }
%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_pipeline_state" = type { i8 }
%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.10" = type { i8*, i8*, i8*, i8*, i8, [256 x i8] }
%struct.D3D12_DESCRIPTOR_HEAP_DESC = type { i32, i32, i32, i32 }
%struct.D3D12_SHADER_RESOURCE_VIEW_DESC = type { i32, i32, i32, %union.anon.9 }
%union.anon.9 = type { %struct.D3D12_BUFFER_SRV }
%struct.D3D12_BUFFER_SRV = type { i64, i32, i32, i32 }

$"??$kernel_state_setup@P6APEAUd3d12_library@D3D12Compute@Internal@Runtime@Halide@@PEAUhalide_d3d12compute_device@@PEBDHPEAH@ZPEAU6@PEBDHPEAH@?$GPUCompilationCache@PEAUhalide_d3d12compute_device@@PEAUd3d12_library@D3D12Compute@Internal@Runtime@Halide@@@Internal@Halide@@QEAA_NPEAXPEAPEAXPEAUhalide_d3d12compute_device@@AEAPEAUd3d12_library@D3D12Compute@1Runtime@2@P6APEAU45162@2PEBDHPEAH@Z24H5@Z" = comdat any

$"??$release_all@$$A6AXPEAUd3d12_library@D3D12Compute@Internal@Runtime@Halide@@@Z@?$GPUCompilationCache@PEAUhalide_d3d12compute_device@@PEAUd3d12_library@D3D12Compute@Internal@Runtime@Halide@@@Internal@Halide@@QEAAXPEAXA6AXPEAUd3d12_library@D3D12Compute@1Runtime@2@@Z@Z" = comdat any

$"?destroy_value_func@?$THashMap@PEADPEAUd3d12_function@D3D12Compute@Internal@Runtime@Halide@@@Internal@Runtime@Halide@@SAXPEAE_K@Z" = comdat any

$"?copy_value_func@?$THashMap@PEADPEAUd3d12_function@D3D12Compute@Internal@Runtime@Halide@@@Internal@Runtime@Halide@@SAXPEAEPEBE_K@Z" = comdat any

$"?lookup@HashMap@Internal@Runtime@Halide@@QEAAHPEAXPEBEHPEAE_K@Z" = comdat any

$"?store@HashMap@Internal@Runtime@Halide@@QEAAHPEAXPEBEH1_K@Z" = comdat any

$"?prune@HashMap@Internal@Runtime@Halide@@QEAAXXZ" = comdat any

$"?insert@?$GPUCompilationCache@PEAUhalide_d3d12compute_device@@PEAUd3d12_library@D3D12Compute@Internal@Runtime@Halide@@@Internal@Halide@@QEAA_NAEBUCachedCompilation@123@@Z" = comdat any

$"?resize_table@?$GPUCompilationCache@PEAUhalide_d3d12compute_device@@PEAUd3d12_library@D3D12Compute@Internal@Runtime@Halide@@@Internal@Halide@@QEAA_NH@Z" = comdat any

$IID_ID3D12Object = comdat any

$IID_ID3D12DeviceChild = comdat any

$IID_ID3D12RootSignature = comdat any

$IID_ID3D12RootSignatureDeserializer = comdat any

$IID_ID3D12VersionedRootSignatureDeserializer = comdat any

$IID_ID3D12Pageable = comdat any

$IID_ID3D12Heap = comdat any

$IID_ID3D12Resource = comdat any

$IID_ID3D12CommandAllocator = comdat any

$IID_ID3D12Fence = comdat any

$IID_ID3D12PipelineState = comdat any

$IID_ID3D12DescriptorHeap = comdat any

$IID_ID3D12QueryHeap = comdat any

$IID_ID3D12CommandSignature = comdat any

$IID_ID3D12CommandList = comdat any

$IID_ID3D12GraphicsCommandList = comdat any

$IID_ID3D12GraphicsCommandList1 = comdat any

$IID_ID3D12CommandQueue = comdat any

$IID_ID3D12Device = comdat any

$IID_ID3D12PipelineLibrary = comdat any

$IID_ID3D12PipelineLibrary1 = comdat any

$IID_ID3D12Device1 = comdat any

$IID_ID3D12Device2 = comdat any

$IID_ID3D12Tools = comdat any

$IID_ID3D12Debug = comdat any

$IID_IDXGIObject = comdat any

$IID_IDXGIDeviceSubObject = comdat any

$IID_IDXGIResource = comdat any

$IID_IDXGIKeyedMutex = comdat any

$IID_IDXGISurface = comdat any

$IID_IDXGISurface1 = comdat any

$IID_IDXGIAdapter = comdat any

$IID_IDXGIOutput = comdat any

$IID_IDXGISwapChain = comdat any

$IID_IDXGIFactory = comdat any

$IID_IDXGIDevice = comdat any

$IID_IDXGIFactory1 = comdat any

$IID_IDXGIAdapter1 = comdat any

$IID_IDXGIDevice1 = comdat any

$"??_C@_0CB@OJMCFILH@Unable?5to?5load?5runtime?5library?3?5@" = comdat any

$"??_C@_01EEMJAFIK@?6?$AA@" = comdat any

$"??_C@_0CE@MGMMPJGA@vvvvv?5D3D12?5Begin?5Debug?5Dump?5vvv@" = comdat any

$"??_C@_0CE@PCPJBLP@?$FO?$FO?$FO?$FO?$FO?5D3D12?5?5End?5?5Debug?5Dump?5?$FO?$FO?$FO@" = comdat any

$"??_C@_0BA@FGKOLOB@D3D12?5HALT?5?$CB?$CB?$CB?6?$AA@" = comdat any

$"??_C@_0BD@FEGNPKLO@Symbol?5not?5found?3?5?$AA@" = comdat any

$"??_C@_0HK@DOPNIAMO@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0IC@DAJENPLN@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0CC@BDDMCIOG@unsupported?5buffer?5element?5type?3@" = comdat any

$"??_C@_0IK@FFGIGOBH@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0DD@JMFCFLOG@Unable?5to?5serialize?5the?5Direct3D@" = comdat any

$"??_C@_0GP@PMNGDIHN@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$_GUID_c54a6b66_72df_4ee8_8be5_a946a1429214 = comdat any

$"??_C@_0DA@LBIGKBEG@Unable?5to?5create?5the?5Direct3D?512@" = comdat any

$"??_C@_0GK@DILKJBBI@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$_GUID_696442be_a72e_4059_bc79_5b5c98040fad = comdat any

$"??_C@_0CI@NPEAIHAH@Unable?5to?5create?5the?5Direct3D?512@" = comdat any

$"??_C@_0GK@NMMJINNK@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0DA@HBIDIHJB@Unable?5to?5map?5Direct3D?512?5stagin@" = comdat any

$"??_C@_0GK@HACGJCLB@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0GK@MGAKONOO@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0HF@GEOCDJFN@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0HF@NJIFOIPF@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0HJ@DKCFLDBN@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0HL@MCKOJAGC@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0GK@BCNCIOPH@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0II@CBKJDPFH@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0HF@CECKD@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0DN@OAKEFMAC@Unable?5to?5query?5the?5timestamp?5fr@" = comdat any

$_GUID_0d9658ae_ed45_469e_a61d_970ec583cab4 = comdat any

$"??_C@_0CG@NBKDFBHJ@Unable?5to?5create?5timestamp?5query@" = comdat any

$_GUID_0ec870a6_5d7e_4c22_8cfc_5baae07616ed = comdat any

$"??_C@_0CP@MODFOMNJ@Unable?5to?5create?5the?5Direct3D?512@" = comdat any

$_GUID_0a753dcf_c4d8_4b91_adf6_be5a60d95a76 = comdat any

$"??_C@_0DJ@DBKGGAGH@Unable?5to?5create?5the?5Direct3D?512@" = comdat any

$"??_C@_0JA@ODKGALFD@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0IJ@OPLHAIKP@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0IJ@HNGKJPKA@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0GK@KJKJJPGE@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0IO@KLEIPOMC@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0GN@EDMIPHNF@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0HM@KLNKIJPM@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0CK@IEEBLAKI@D3D12?3?5Failed?5to?5allocate?5buffer@" = comdat any

$"??_C@_0DG@DFIKFHFI@D3D12?3?5unable?5to?5wrap?5halide?5buf@" = comdat any

$"??_C@_0IN@BMJECIBC@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0GL@HHOHMCJC@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0ID@GPCJFJNF@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0HO@OJIECJKO@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0JH@JGIADBHE@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0GL@HEDOAOHD@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0ID@LIPAGPCO@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0GK@JBIOIBNJ@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0JH@DPKKJPPD@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0IA@GKICIJMP@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0GN@JEILPOMA@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0IN@NBDDCMMP@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0HI@GJGOKOND@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0HF@DFDPDGHJ@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0HG@ONCHKHIM@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0DD@BBIFNIEA@D3D12Compute?3?5Could?5not?5allocate@" = comdat any

$"??_C@_0HK@OFACIBGA@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0GK@LJLFAGKH@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0GK@BIMLBHIN@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0GK@HBMNIJNC@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0IG@MKOCFILD@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0IJ@MNBDOJEE@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0DF@LCGCOEGO@Buffer?5has?5too?5many?5dimensions?5t@" = comdat any

$"??_C@_0MC@HDEPANAE@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0JL@MEIFODEH@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0HL@BCFBGMIG@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0GN@LGOPAMLC@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0JO@MBMNFKIK@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0JO@GHEAJMCJ@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0HL@MMJDCFEN@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0HL@GJCHNPHA@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0HF@MLNMPA@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0GM@LMKBMAKN@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0JO@GCIBHMBO@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0IH@LKALKAII@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0HL@GHAGNCKA@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0HL@CMMPFMCI@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0HF@DIJLIEGH@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0DO@DKCCILEE@halide_d3d12compute_device_crop?3@" = comdat any

$"??_C@_0HM@PMHOEIAI@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0IL@ELHOHBDO@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0JF@HBKAJKKG@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0IG@JHIDPJCM@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0IG@NLGIEOAM@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0HL@PJKJFAAC@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0EF@BJFFFHJC@halide_d3d12compute_wrap_buffer?3@" = comdat any

$"??_C@_0HH@DCCLAMGD@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0HG@CAELBHFM@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0IH@ELBHFNGA@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0II@HPNAIILO@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0IJ@IINKHGHG@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0GJ@HCOGLMCJ@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0HI@FNCIDAJF@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0KB@NININJGE@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0HI@MFPPBOBE@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0GE@IILGOCND@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0HG@HILAPLNM@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0HG@DPCFCKPA@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0HP@CJJAKJAL@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0HH@BCDAACAG@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0IE@KCBLAMLL@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0HC@EJNCMKGA@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0HE@JADBJBDC@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$_GUID_770aae78_f26f_4dba_a829_253c83d1b387 = comdat any

$"??_C@_0CO@PFDCLHOL@Unable?5to?5create?5DXGI?5Factory?5?$CII@" = comdat any

$"??_C@_0HN@EFBLJJLF@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0DC@FNBIDBIK@Unable?5to?5enumerate?5DXGI?5adapter@" = comdat any

$"??_C@_0EL@CNMMEDGN@Unable?5to?5retrieve?5information?5?$CI@" = comdat any

$"??_C@_0CJ@GPPKLMOI@Unable?5to?5find?5a?5suitable?5D3D12?5@" = comdat any

$"??_C@_09ICPCIOEL@d3d12?4dll?$AA@" = comdat any

$"??_C@_0BD@CLKCCNEK@D3DCompiler_47?4dll?$AA@" = comdat any

$"??_C@_08EEBGHKPL@dxgi?4dll?$AA@" = comdat any

$"??_C@_0BC@OOAMCEEI@D3D12CreateDevice?$AA@" = comdat any

$"??_C@_0BH@BKICNBLB@D3D12GetDebugInterface?$AA@" = comdat any

$"??_C@_0BM@FFPIANAM@D3D12SerializeRootSignature?$AA@" = comdat any

$"??_C@_0L@HKGOFPCI@D3DCompile?$AA@" = comdat any

$"??_C@_0BD@JFLLLCON@CreateDXGIFactory1?$AA@" = comdat any

$"??_C@_0L@IAGCJOCP@?5?$CIHRESULT?$DN?$AA@" = comdat any

$"??_C@_0L@FELFIFPM@?0?5object?$CK?$DN?$AA@" = comdat any

$"??_C@_01PKGAHCOL@?$CJ?$AA@" = comdat any

$"??_C@_0EP@FDCDGPDE@Unable?5to?5retrieve?5information?5?$CI@" = comdat any

$_GUID_189819f1_1db6_4b57_be54_1821339b85f7 = comdat any

$"??_C@_0CI@IGMLMPFG@Unable?5to?5create?5the?5Direct3D?512@" = comdat any

$"??_C@_0GL@MKEDKIBD@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$_GUID_6102dee4_af59_4b09_b999_b44d73f09b24 = comdat any

$"??_C@_0DD@BGLBECPN@Unable?5to?5create?5the?5Direct3D?512@" = comdat any

$"??_C@_0CG@BDJKEANK@Debug?5info?5not?5available?3?5no?5dev@" = comdat any

$"??_C@_0HN@LLGMPKNO@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0DK@KDCNPKGG@Unable?5to?5retrieve?5information?5a@" = comdat any

$"??_C@_0CP@JMHIFPPF@Unable?5to?5allocate?5memory?5for?5th@" = comdat any

$"??_C@_0BH@CHHGHFME@D3D12?5Device?5Adapter?3?5?$AA@" = comdat any

$"??_C@_0CI@KNFDFENG@Device?5Lost?$CB?5GetDeviceRemovedRea@" = comdat any

$"??_C@_08NBDONIIG@before?3?5?$AA@" = comdat any

$"??_C@_03LGOGDKEL@?5?$HM?5?$AA@" = comdat any

$"??_C@_07NCNFGCHF@after?3?5?$AA@" = comdat any

$"??_C@_0BP@JEHMDIGO@Unable?5to?5wait?5for?5Fence?5Event?$AA@" = comdat any

$"??_C@_0HF@HPJKODMC@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0HG@BKPBFCDC@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0GK@KGJGGHMA@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0IG@GFIJNJDO@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0JI@PCJLNBL@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0II@PGFAABKF@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0JI@EEDFJGKA@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0GL@JKLPMJCE@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0GI@CIKNBAH@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0GI@GGLHCMMF@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0IJ@PHCCBPFH@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0IJ@FKOMGEEA@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0IK@ONFBLGCD@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0IK@GOCPPNJP@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0HC@DEBHPEJP@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0II@HKEHGFPG@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0IK@HFNGBPMB@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0HL@FDNNDOAP@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0IK@HCNEAADD@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0HL@GDNHBGNM@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0II@NAEKBKKG@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0IK@JBDMNMFO@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0IK@BCECJHOC@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0GK@DOBONIIG@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0GK@DKOLFJKC@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0GK@GCMMKOFI@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$_GUID_5b160d0f_ac1b_4185_8ba8_b3ae42a5a455 = comdat any

$"??_C@_0CO@OKNPIGDH@Unable?5to?5create?5the?5Direct3D?512@" = comdat any

$_GUID_8efb471d_616c_4f49_90f7_127bb763fa51 = comdat any

$"??_C@_0DB@GKGAOIPC@Unable?5to?5create?5the?5Direct3D?512@" = comdat any

$"??_C@_02DKADOBMK@_?$CI?$AA@" = comdat any

$"??_C@_01IHBHIGKO@?0?$AA@" = comdat any

$"??_C@_03DNCOCNEF@?$CJ_?$FL?$AA@" = comdat any

$"??_C@_01LBDDMOBJ@?$FN?$AA@" = comdat any

$"??_C@_0IG@KHODCDFK@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0HK@BHBNEKNC@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0HK@HOPDFHBF@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_09CGLEKJAK@?$DMnullptr?$DO?$AA@" = comdat any

$"??_C@_0HK@ILGBKOLL@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0HJ@MNNHDLMG@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0HK@MPEPNOAE@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0IE@KOIFDNCL@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@" = comdat any

$"??_C@_0BM@EDALEHEN@__GROUPSHARED_SIZE_IN_BYTES?$AA@" = comdat any

$"??_C@_0P@LOBBBKDE@__NUM_TREADS_X?$AA@" = comdat any

$"??_C@_0P@KHAKCLHF@__NUM_TREADS_Y?$AA@" = comdat any

$"??_C@_0P@IMCHHILG@__NUM_TREADS_Z?$AA@" = comdat any

$"??_C@_06IJHADHCA@cs_5_1?$AA@" = comdat any

$"??_C@_0BF@NPMABELF@?$FLend?9of?9shader?9dump?$FN?$AA@" = comdat any

$"??_C@_0DB@POFDFLDH@D3D12Compute?3?5Could?5not?5allocate@" = comdat any

$"??_C@_0BM@GELOKDC@?$DMno?5error?5message?5reported?$DO?$AA@" = comdat any

$"??_C@_0P@NJDLPAMC@D3DCompile?$CI?$CJ?3?5?$AA@" = comdat any

$"??_C@_0CB@LJCJJOMA@?$DO?$DO?$DO?5HLSL?5shader?5source?5dump?5?$DM?$DM?$DM?6@" = comdat any

$_GUID_765a30f3_f624_4c6f_a828_ace948622445 = comdat any

$"??_C@_0DA@KOEOGIGO@Unable?5to?5create?5the?5Direct3D?512@" = comdat any

$"??_C@_0IE@OEGJPCDB@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0GD@KIHFBKKG@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0HH@BADGLHLC@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0GM@GIODNIAA@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0GO@DFIAIKAP@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0GO@OECFGMGJ@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

@IID_ID3D12Object = weak_odr dso_local local_unnamed_addr constant %struct._GUID { i32 -989937009, i16 31078, i16 20117, [8 x i8] c"\9F\94\F41\CBV\C3\B8" }, comdat, align 8
@IID_ID3D12DeviceChild = weak_odr dso_local local_unnamed_addr constant %struct._GUID { i32 -1872905909, i16 -24564, i16 16704, [8 x i8] c"\9D\F5+d\CA\9E\A3W" }, comdat, align 8
@IID_ID3D12RootSignature = weak_odr dso_local local_unnamed_addr constant %struct._GUID { i32 -984978586, i16 29407, i16 20200, [8 x i8] c"\8B\E5\A9F\A1B\92\14" }, comdat, align 8
@IID_ID3D12RootSignatureDeserializer = weak_odr dso_local local_unnamed_addr constant %struct._GUID { i32 883647611, i16 15560, i16 18092, [8 x i8] c"\84\1B\C0\96VE\C0F" }, comdat, align 8
@IID_ID3D12VersionedRootSignatureDeserializer = weak_odr dso_local local_unnamed_addr constant %struct._GUID { i32 2140261991, i16 2316, i16 19383, [8 x i8] c"\B7\8E\ED\8F\F2\E3\1D\A0" }, comdat, align 8
@IID_ID3D12Pageable = weak_odr dso_local local_unnamed_addr constant %struct._GUID { i32 1676564731, i16 4712, i16 18485, [8 x i8] c"\86\DA\F0\08\CEb\F0\D6" }, comdat, align 8
@IID_ID3D12Heap = weak_odr dso_local local_unnamed_addr constant %struct._GUID { i32 1799038210, i16 28241, i16 17843, [8 x i8] c"\90\EE\98\84&^\8D\F3" }, comdat, align 8
@IID_ID3D12Resource = weak_odr dso_local local_unnamed_addr constant %struct._GUID { i32 1768178366, i16 -22738, i16 16473, [8 x i8] c"\BCy[\\\98\04\0F\AD" }, comdat, align 8
@IID_ID3D12CommandAllocator = weak_odr dso_local local_unnamed_addr constant %struct._GUID { i32 1627578084, i16 -20647, i16 19209, [8 x i8] c"\B9\99\B4Ms\F0\9B$" }, comdat, align 8
@IID_ID3D12Fence = weak_odr dso_local local_unnamed_addr constant %struct._GUID { i32 175455695, i16 -15144, i16 19345, [8 x i8] c"\AD\F6\BEZ`\D9Zv" }, comdat, align 8
@IID_ID3D12PipelineState = weak_odr dso_local local_unnamed_addr constant %struct._GUID { i32 1985622259, i16 -2524, i16 19567, [8 x i8] c"\A8(\AC\E9Hb$E" }, comdat, align 8
@IID_ID3D12DescriptorHeap = weak_odr dso_local local_unnamed_addr constant %struct._GUID { i32 -1896134883, i16 24940, i16 20297, [8 x i8] c"\90\F7\12{\B7c\FAQ" }, comdat, align 8
@IID_ID3D12QueryHeap = weak_odr dso_local local_unnamed_addr constant %struct._GUID { i32 227956910, i16 -4795, i16 18078, [8 x i8] c"\A6\1D\97\0E\C5\83\CA\B4" }, comdat, align 8
@IID_ID3D12CommandSignature = weak_odr dso_local local_unnamed_addr constant %struct._GUID { i32 -1016432260, i16 -4992, i16 20234, [8 x i8] c"\89\85\A7\B2GP\82\D1" }, comdat, align 8
@IID_ID3D12CommandList = weak_odr dso_local local_unnamed_addr constant %struct._GUID { i32 1897322780, i16 -6172, i16 18382, [8 x i8] c"\B8\C6\EC\81h\F47\E5" }, comdat, align 8
@IID_ID3D12GraphicsCommandList = weak_odr dso_local local_unnamed_addr constant %struct._GUID { i32 1528171791, i16 -21477, i16 16773, [8 x i8] c"\8B\A8\B3\AEB\A5\A4U" }, comdat, align 8
@IID_ID3D12GraphicsCommandList1 = weak_odr dso_local local_unnamed_addr constant %struct._GUID { i32 1429275643, i16 8167, i16 17751, [8 x i8] c"\BB8\94m}\0E|\A7" }, comdat, align 8
@IID_ID3D12CommandQueue = weak_odr dso_local local_unnamed_addr constant %struct._GUID { i32 248017062, i16 23934, i16 19490, [8 x i8] c"\8C\FC[\AA\E0v\16\ED" }, comdat, align 8
@IID_ID3D12Device = weak_odr dso_local local_unnamed_addr constant %struct._GUID { i32 412621297, i16 7606, i16 19287, [8 x i8] c"\BET\18!3\9B\85\F7" }, comdat, align 8
@IID_ID3D12PipelineLibrary = weak_odr dso_local local_unnamed_addr constant %struct._GUID { i32 -968743256, i16 -28159, i16 18095, [8 x i8] c"\B4\CCS\FB\9F\F7AO" }, comdat, align 8
@IID_ID3D12PipelineLibrary1 = weak_odr dso_local local_unnamed_addr constant %struct._GUID { i32 -2132099262, i16 9576, i16 20062, [8 x i8] c"\BD\82\C3\7F\86\96\1D\C3" }, comdat, align 8
@IID_ID3D12Device1 = weak_odr dso_local local_unnamed_addr constant %struct._GUID { i32 2007813760, i16 25486, i16 20069, [8 x i8] c"\88\95\C1\F23\86\86>" }, comdat, align 8
@IID_ID3D12Device2 = weak_odr dso_local local_unnamed_addr constant %struct._GUID { i32 817538078, i16 -20133, i16 18268, [8 x i8] c"\A0\BB\1A\F5\C5\B6C(" }, comdat, align 8
@IID_ID3D12Tools = weak_odr dso_local local_unnamed_addr constant %struct._GUID { i32 1886511600, i16 -6069, i16 19251, [8 x i8] c"\97O\12\FAI\DEe\C5" }, comdat, align 8
@IID_ID3D12Debug = weak_odr dso_local local_unnamed_addr constant %struct._GUID { i32 876906679, i16 26694, i16 18251, [8 x i8] c"\B9\89\F0'D\82E\E0" }, comdat, align 8
@IID_IDXGIObject = weak_odr dso_local local_unnamed_addr constant %struct._GUID { i32 -1363005512, i16 30451, i16 17977, [8 x i8] c"\9B\E0(\EBC\A6z." }, comdat, align 8
@IID_IDXGIDeviceSubObject = weak_odr dso_local local_unnamed_addr constant %struct._GUID { i32 1027474297, i16 -1570, i16 19800, [8 x i8] c"\BBl\18\D6)\92\F1\A6" }, comdat, align 8
@IID_IDXGIResource = weak_odr dso_local local_unnamed_addr constant %struct._GUID { i32 56572596, i16 18478, i16 20048, [8 x i8] c"\B4\1F\8A\7F\8B\D8\96\0B" }, comdat, align 8
@IID_IDXGIKeyedMutex = weak_odr dso_local local_unnamed_addr constant %struct._GUID { i32 -1651633527, i16 -10317, i16 18015, [8 x i8] c"\81&%\0E4\9A\F8]" }, comdat, align 8
@IID_IDXGISurface = weak_odr dso_local local_unnamed_addr constant %struct._GUID { i32 -889408148, i16 27331, i16 18569, [8 x i8] c"\BFG\9E#\BB\D2`\EC" }, comdat, align 8
@IID_IDXGISurface1 = weak_odr dso_local local_unnamed_addr constant %struct._GUID { i32 1256599698, i16 25383, i16 19483, [8 x i8] c"\80\AE\BF\E1.\A3+\86" }, comdat, align 8
@IID_IDXGIAdapter = weak_odr dso_local local_unnamed_addr constant %struct._GUID { i32 605153249, i16 4780, i16 19663, [8 x i8] c"\BD\14\97\98\E8SM\C0" }, comdat, align 8
@IID_IDXGIOutput = weak_odr dso_local local_unnamed_addr constant %struct._GUID { i32 -1375539493, i16 -14539, i16 18064, [8 x i8] c"\8DRZ\8D\C2\02\13\AA" }, comdat, align 8
@IID_IDXGISwapChain = weak_odr dso_local local_unnamed_addr constant %struct._GUID { i32 822949536, i16 -11545, i16 19466, [8 x i8] c"\AA\04j\9D#\B8\88j" }, comdat, align 8
@IID_IDXGIFactory = weak_odr dso_local local_unnamed_addr constant %struct._GUID { i32 2071029484, i16 8647, i16 17582, [8 x i8] c"\B2\1A\C9\AE2\1A\E3i" }, comdat, align 8
@IID_IDXGIDevice = weak_odr dso_local local_unnamed_addr constant %struct._GUID { i32 1424783354, i16 4983, i16 17638, [8 x i8] c"\8C2\88\FD_D\C8L" }, comdat, align 8
@IID_IDXGIFactory1 = weak_odr dso_local local_unnamed_addr constant %struct._GUID { i32 1997188728, i16 -3473, i16 19898, [8 x i8] c"\A8)%<\83\D1\B3\87" }, comdat, align 8
@IID_IDXGIAdapter1 = weak_odr dso_local local_unnamed_addr constant %struct._GUID { i32 688099169, i16 14393, i16 17958, [8 x i8] c"\91\FD\08hy\01\1A\05" }, comdat, align 8
@IID_IDXGIDevice1 = weak_odr dso_local local_unnamed_addr constant %struct._GUID { i32 2010879759, i16 25206, i16 18618, [8 x i8] c"\BA(\07\01C\B49," }, comdat, align 8
@"??_C@_0CB@OJMCFILH@Unable?5to?5load?5runtime?5library?3?5@" = linkonce_odr dso_local unnamed_addr constant [33 x i8] c"Unable to load runtime library: \00", comdat, align 8
@"??_C@_01EEMJAFIK@?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [2 x i8] c"\0A\00", comdat, align 4
@"??_C@_0CE@MGMMPJGA@vvvvv?5D3D12?5Begin?5Debug?5Dump?5vvv@" = linkonce_odr dso_local unnamed_addr constant [36 x i8] c"vvvvv D3D12 Begin Debug Dump vvvvv\0A\00", comdat, align 8
@"??_C@_0CE@PCPJBLP@?$FO?$FO?$FO?$FO?$FO?5D3D12?5?5End?5?5Debug?5Dump?5?$FO?$FO?$FO@" = linkonce_odr dso_local unnamed_addr constant [36 x i8] c"^^^^^ D3D12  End  Debug Dump ^^^^^\0A\00", comdat, align 8
@"??_C@_0BA@FGKOLOB@D3D12?5HALT?5?$CB?$CB?$CB?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [16 x i8] c"D3D12 HALT !!!\0A\00", comdat, align 8
@"??_C@_0BD@FEGNPKLO@Symbol?5not?5found?3?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [19 x i8] c"Symbol not found: \00", comdat, align 8
@"?dxgiAdapter@D3D12Compute@Internal@Runtime@Halide@@3PEAUIDXGIAdapter1@@EA" = weak dso_local local_unnamed_addr global %struct.IDXGIAdapter1* null, align 8
@"?device@D3D12Compute@Internal@Runtime@Halide@@3PEAUhalide_d3d12compute_device@@EA" = weak dso_local local_unnamed_addr global %struct.halide_d3d12compute_device* null, align 8
@"?queue@D3D12Compute@Internal@Runtime@Halide@@3PEAUhalide_d3d12compute_command_queue@@EA" = weak dso_local local_unnamed_addr global %struct.halide_d3d12compute_command_queue* null, align 8
@"?queue_fence@D3D12Compute@Internal@Runtime@Halide@@3PEAUID3D12Fence@@EA" = weak dso_local local_unnamed_addr global %struct.ID3D12Fence* null, align 8
@"?queue_last_signal@D3D12Compute@Internal@Runtime@Halide@@3_KC" = weak dso_local global i64 0, align 8
@"?rootSignature@D3D12Compute@Internal@Runtime@Halide@@3PEAUID3D12RootSignature@@EA" = weak dso_local local_unnamed_addr global %struct.ID3D12RootSignature* null, align 8
@"?upload@D3D12Compute@Internal@Runtime@Halide@@3Ud3d12_buffer@1234@A" = weak dso_local global %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer" zeroinitializer, align 16
@"?readback@D3D12Compute@Internal@Runtime@Halide@@3Ud3d12_buffer@1234@A" = weak dso_local global %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer" zeroinitializer, align 16
@"?hFenceEvent@D3D12Compute@Internal@Runtime@Halide@@3PEAXEA" = weak dso_local local_unnamed_addr global i8* null, align 8
@"?cmd_allocator_main@D3D12Compute@Internal@Runtime@Halide@@3PEAUd3d12_command_allocator@1234@EA" = weak dso_local local_unnamed_addr global %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_command_allocator"* null, align 8
@"?frame_pool@D3D12Compute@Internal@Runtime@Halide@@3PAUd3d12_frame@1234@A" = weak dso_local global [8 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame"] zeroinitializer, align 16
@"??_C@_0HK@DOPNIAMO@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [122 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:905 Assert failed: (hbuffer->device == 0)\0A\00", comdat, align 16
@"??_C@_0IC@DAJENPLN@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [130 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:910 Assert failed: (dbuffer->resource != nullptr)\0A\00", comdat, align 16
@"??_C@_0CC@BDDMCIOG@unsupported?5buffer?5element?5type?3@" = linkonce_odr dso_local unnamed_addr constant [34 x i8] c"unsupported buffer element type: \00", comdat, align 8
@"??_C@_0IK@FFGIGOBH@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [138 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:924 Assert failed: (hbuffer->device_interface == nullptr)\0A\00", comdat, align 16
@"?d3d12compute_device_interface@D3D12Compute@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A" = weak dso_local global %struct.halide_device_interface_t { i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)* @halide_device_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_free, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_sync, void (i8*, %struct.halide_device_interface_t*)* @halide_device_release, i32 (i8*, %struct.halide_buffer_t*)* @halide_copy_to_host, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)* @halide_copy_to_device, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)* @halide_device_and_host_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_and_host_free, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)* @halide_buffer_copy, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)* @halide_device_crop, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)* @halide_device_slice, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_release_crop, i32 (i8*, %struct.halide_buffer_t*, i64, %struct.halide_device_interface_t*)* @halide_device_wrap_native, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_detach_native, i32 (i8*, i32*, i32*)* null, %struct.halide_device_interface_impl_t* @"?d3d12compute_device_interface_impl@D3D12Compute@Internal@Runtime@Halide@@3Uhalide_device_interface_impl_t@@A" }, align 16
@D3D12SerializeRootSignature = internal unnamed_addr global i32 (%struct.D3D12_ROOT_SIGNATURE_DESC*, i32, %struct.ID3D10Blob**, %struct.ID3D10Blob**)* null, align 8
@"??_C@_0DD@JMFCFLOG@Unable?5to?5serialize?5the?5Direct3D@" = linkonce_odr dso_local unnamed_addr constant [51 x i8] c"Unable to serialize the Direct3D 12 root signature\00", comdat, align 8
@"??_C@_0GP@PMNGDIHN@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [111 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:1252 Assert failed: pSignError\0A\00", comdat, align 16
@_GUID_c54a6b66_72df_4ee8_8be5_a946a1429214 = linkonce_odr dso_local constant %struct._GUID { i32 -984978586, i16 29407, i16 20200, [8 x i8] c"\8B\E5\A9F\A1B\92\14" }, comdat
@"??_C@_0DA@LBIGKBEG@Unable?5to?5create?5the?5Direct3D?512@" = linkonce_odr dso_local unnamed_addr constant [48 x i8] c"Unable to create the Direct3D 12 root signature\00", comdat, align 8
@"??_C@_0GK@DILKJBBI@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [106 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:1334 Assert failed: false\0A\00", comdat, align 16
@_GUID_696442be_a72e_4059_bc79_5b5c98040fad = linkonce_odr dso_local constant %struct._GUID { i32 1768178366, i16 -22738, i16 16473, [8 x i8] c"\BCy[\\\98\04\0F\AD" }, comdat
@"??_C@_0CI@NPEAIHAH@Unable?5to?5create?5the?5Direct3D?512@" = linkonce_odr dso_local unnamed_addr constant [40 x i8] c"Unable to create the Direct3D 12 buffer\00", comdat, align 8
@"??_C@_0GK@NMMJINNK@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [106 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:1397 Assert failed: false\0A\00", comdat, align 16
@"??_C@_0DA@HBIDIHJB@Unable?5to?5map?5Direct3D?512?5stagin@" = linkonce_odr dso_local unnamed_addr constant [48 x i8] c"Unable to map Direct3D 12 staging buffer memory\00", comdat, align 8
@"??_C@_0GK@HACGJCLB@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [106 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:1413 Assert failed: pData\0A\00", comdat, align 16
@"??_C@_0GK@MGAKONOO@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [106 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:1441 Assert failed: false\0A\00", comdat, align 16
@"??_C@_0HF@GEOCDJFN@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [117 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:1501 Assert failed: (use_count == 1)\0A\00", comdat, align 16
@"??_C@_0HF@NJIFOIPF@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [117 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:1508 Assert failed: (use_count == 0)\0A\00", comdat, align 16
@"??_C@_0HJ@DKCFLDBN@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [121 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:1513 Assert failed: (staging == &upload)\0A\00", comdat, align 16
@"??_C@_0HL@MCKOJAGC@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [123 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:1517 Assert failed: (staging == &readback)\0A\00", comdat, align 16
@"??_C@_0GK@BCNCIOPH@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [106 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:1522 Assert failed: false\0A\00", comdat, align 16
@"??_C@_0II@CBKJDPFH@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [136 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:1527 Assert failed: (staging->sizeInBytes >= num_bytes)\0A\00", comdat, align 16
@"??_C@_0HF@CECKD@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [117 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:1531 Assert failed: (use_count == 1)\0A\00", comdat, align 16
@"??_C@_0DN@OAKEFMAC@Unable?5to?5query?5the?5timestamp?5fr@" = linkonce_odr dso_local unnamed_addr constant [61 x i8] c"Unable to query the timestamp frequency of the command queue\00", comdat, align 8
@_GUID_0d9658ae_ed45_469e_a61d_970ec583cab4 = linkonce_odr dso_local constant %struct._GUID { i32 227956910, i16 -4795, i16 18078, [8 x i8] c"\A6\1D\97\0E\C5\83\CA\B4" }, comdat
@"??_C@_0CG@NBKDFBHJ@Unable?5to?5create?5timestamp?5query@" = linkonce_odr dso_local unnamed_addr constant [38 x i8] c"Unable to create timestamp query heap\00", comdat, align 8
@_GUID_0ec870a6_5d7e_4c22_8cfc_5baae07616ed = linkonce_odr dso_local constant %struct._GUID { i32 248017062, i16 23934, i16 19490, [8 x i8] c"\8C\FC[\AA\E0v\16\ED" }, comdat
@"??_C@_0CP@MODFOMNJ@Unable?5to?5create?5the?5Direct3D?512@" = linkonce_odr dso_local unnamed_addr constant [47 x i8] c"Unable to create the Direct3D 12 command queue\00", comdat, align 8
@_GUID_0a753dcf_c4d8_4b91_adf6_be5a60d95a76 = linkonce_odr dso_local constant %struct._GUID { i32 175455695, i16 -15144, i16 19345, [8 x i8] c"\AD\F6\BEZ`\D9Zv" }, comdat
@"??_C@_0DJ@DBKGGAGH@Unable?5to?5create?5the?5Direct3D?512@" = linkonce_odr dso_local unnamed_addr constant [57 x i8] c"Unable to create the Direct3D 12 fence for command queue\00", comdat, align 8
@"??_C@_0JA@ODKGALFD@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [144 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:1974 Assert failed: input_buffer->format == DXGI_FORMAT_UNKNOWN\0A\00", comdat, align 16
@"??_C@_0IJ@OPLHAIKP@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [137 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:1985 Assert failed: (index < ResourceBindingLimits[CBV])\0A\00", comdat, align 16
@"??_C@_0IJ@HNGKJPKA@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [137 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:2041 Assert failed: (index < ResourceBindingLimits[UAV])\0A\00", comdat, align 16
@"??_C@_0GK@KJKJJPGE@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [106 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:2058 Assert failed: false\0A\00", comdat, align 16
@"?thread_lock@D3D12Compute@Internal@Runtime@Halide@@3DC" = weak dso_local global i8 0, align 1
@"?compilation_cache@D3D12Compute@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PEAUhalide_d3d12compute_device@@PEAUd3d12_library@D3D12Compute@Internal@Runtime@Halide@@@24@A" = weak dso_local global %"class.Halide::Internal::GPUCompilationCache" zeroinitializer, align 8
@"??_C@_0IO@KLEIPOMC@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [142 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:2569 Assert failed: (device == nullptr) || (queue != nullptr)\0A\00", comdat, align 16
@"?enable_allocation_cache@@3_NA" = weak dso_local local_unnamed_addr global i8 0, align 1
@"?buffer_pool@@3PAPEAUd3d12_buffer@D3D12Compute@Internal@Runtime@Halide@@A" = weak dso_local local_unnamed_addr global [32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*] zeroinitializer, align 16
@"?buffer_pool_lock@@3Uhalide_mutex@@A" = weak dso_local global %struct.halide_mutex zeroinitializer, align 8
@"??_C@_0GN@EDMIPHNF@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [109 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:2696 Assert failed: size > 0\0A\00", comdat, align 16
@"??_C@_0HM@KLNKIJPM@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [124 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:2700 Assert failed: buf->dim[i].stride >= 0\0A\00", comdat, align 16
@"??_C@_0CK@IEEBLAKI@D3D12?3?5Failed?5to?5allocate?5buffer@" = linkonce_odr dso_local unnamed_addr constant [42 x i8] c"D3D12: Failed to allocate buffer of size \00", comdat, align 8
@"??_C@_0DG@DFIKFHFI@D3D12?3?5unable?5to?5wrap?5halide?5buf@" = linkonce_odr dso_local unnamed_addr constant [54 x i8] c"D3D12: unable to wrap halide buffer and D3D12 buffer.\00", comdat, align 8
@"??_C@_0IN@BMJECIBC@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [141 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:2877 Assert failed: (dsrc->halide_type == ddst->halide_type)\0A\00", comdat, align 16
@"??_C@_0GL@HHOHMCJC@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [107 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:2907 Assert failed: buffer\0A\00", comdat, align 16
@"??_C@_0ID@GPCJFJNF@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [131 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:2908 Assert failed: buffer->host && buffer->device\0A\00", comdat, align 16
@"??_C@_0HO@OJIECJKO@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [126 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:2917 Assert failed: (c.dst == buffer->device)\0A\00", comdat, align 16
@"??_C@_0JH@JGIADBHE@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [151 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:2919 Assert failed: buffer->size_in_bytes() == dev_buffer->sizeInBytes\0A\00", comdat, align 16
@"??_C@_0GL@HEDOAOHD@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [107 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:2950 Assert failed: buffer\0A\00", comdat, align 16
@"??_C@_0ID@LIPAGPCO@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [131 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:2951 Assert failed: buffer->host && buffer->device\0A\00", comdat, align 16
@"??_C@_0GK@JBIOIBNJ@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [106 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:2953 Assert failed: false\0A\00", comdat, align 16
@"??_C@_0JH@DPKKJPPD@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [151 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:2965 Assert failed: buffer->size_in_bytes() == dev_buffer->sizeInBytes\0A\00", comdat, align 16
@"??_C@_0IA@GKICIJMP@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [128 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:3010 Assert failed: found && library != nullptr\0A\00", comdat, align 16
@"??_C@_0GN@JEILPOMA@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [109 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:3024 Assert failed: function\0A\00", comdat, align 16
@"??_C@_0IN@NBDDCMMP@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [141 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:3061 Assert failed: (arg_sizes[i] & (arg_sizes[i] - 1)) == 0\0A\00", comdat, align 16
@"??_C@_0HI@GJGOKOND@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [120 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:3065 Assert failed: arg_type.lanes == 1\0A\00", comdat, align 16
@"??_C@_0HF@DFDPDGHJ@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [117 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:3066 Assert failed: arg_sizes[i] > 0\0A\00", comdat, align 16
@"??_C@_0HG@ONCHKHIM@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [118 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:3067 Assert failed: arg_sizes[i] <= 4\0A\00", comdat, align 16
@"??_C@_0DD@BBIFNIEA@D3D12Compute?3?5Could?5not?5allocate@" = linkonce_odr dso_local unnamed_addr constant [51 x i8] c"D3D12Compute: Could not allocate arguments buffer.\00", comdat, align 8
@"??_C@_0HK@OFACIBGA@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [122 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:3100 Assert failed: (arg_type.bits == 32)\0A\00", comdat, align 16
@"??_C@_0GK@LJLFAGKH@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [106 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:3116 Assert failed: false\0A\00", comdat, align 16
@"??_C@_0GK@BIMLBHIN@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [106 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:3131 Assert failed: false\0A\00", comdat, align 16
@"??_C@_0GK@HBMNIJNC@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [106 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:3135 Assert failed: false\0A\00", comdat, align 16
@"??_C@_0IG@MKOCFILD@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [134 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:3141 Assert failed: offset == total_uniform_args_size\0A\00", comdat, align 16
@"??_C@_0IJ@MNBDOJEE@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [137 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:3252 Assert failed: (src->dimensions == dst->dimensions)\0A\00", comdat, align 16
@"??_C@_0DF@LCGCOEGO@Buffer?5has?5too?5many?5dimensions?5t@" = linkonce_odr dso_local unnamed_addr constant [53 x i8] c"Buffer has too many dimensions to copy to/from GPU.\0A\00", comdat, align 8
@"??_C@_0MC@HDEPANAE@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [194 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:3261 Assert failed: (dst_device_interface == nullptr) || (dst_device_interface == &d3d12compute_device_interface)\0A\00", comdat, align 16
@"??_C@_0JL@MEIFODEH@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [155 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:3265 Assert failed: dst_device_interface == &d3d12compute_device_interface\0A\00", comdat, align 16
@"??_C@_0HL@BCFBGMIG@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [123 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:3276 Assert failed: to_host || dst->device\0A\00", comdat, align 16
@"??_C@_0GN@LGOPAMLC@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [109 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:3302 Assert failed: !to_host\0A\00", comdat, align 16
@"??_C@_0JO@MBMNFKIK@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [158 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:3303 Assert failed: (dst->device_interface == &d3d12compute_device_interface)\0A\00", comdat, align 16
@"??_C@_0JO@GHEAJMCJ@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [158 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:3304 Assert failed: (src->device_interface != &d3d12compute_device_interface)\0A\00", comdat, align 16
@"??_C@_0HL@MMJDCFEN@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [123 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:3305 Assert failed: (src->host != nullptr)\0A\00", comdat, align 16
@"??_C@_0HL@GJCHNPHA@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [123 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:3308 Assert failed: (dst->device == c.dst)\0A\00", comdat, align 16
@"??_C@_0HF@MLNMPA@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [117 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:3337 Assert failed: (use_count == 0)\0A\00", comdat, align 16
@"??_C@_0GM@LMKBMAKN@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [108 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:3342 Assert failed: to_host\0A\00", comdat, align 16
@"??_C@_0JO@GCIBHMBO@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [158 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:3343 Assert failed: (src->device_interface == &d3d12compute_device_interface)\0A\00", comdat, align 16
@"??_C@_0IH@LKALKAII@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [135 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:3344 Assert failed: (dst->device_interface == nullptr)\0A\00", comdat, align 16
@"??_C@_0HL@GHAGNCKA@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [123 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:3345 Assert failed: (dst->host != nullptr)\0A\00", comdat, align 16
@"??_C@_0HL@CMMPFMCI@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [123 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:3348 Assert failed: (src->device == c.src)\0A\00", comdat, align 16
@"??_C@_0HF@DIJLIEGH@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [117 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:3377 Assert failed: (use_count == 0)\0A\00", comdat, align 16
@"??_C@_0DO@DKCCILEE@halide_d3d12compute_device_crop?3@" = linkonce_odr dso_local unnamed_addr constant [62 x i8] c"halide_d3d12compute_device_crop: failed when wrapping buffer.\00", comdat, align 8
@"??_C@_0HM@PMHOEIAI@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [124 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:3405 Assert failed: (new_handle != nullptr)\0A\00", comdat, align 16
@"??_C@_0IL@ELHOHBDO@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [139 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:3406 Assert failed: (new_handle->halide_type == dst->type)\0A\00", comdat, align 16
@"??_C@_0JF@HBKAJKKG@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [149 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:3407 Assert failed: (src->device_interface == dst->device_interface)\0A\00", comdat, align 16
@"??_C@_0IG@JHIDPJCM@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [134 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:3438 Assert failed: (offset % src->type.bytes()) == 0\0A\00", comdat, align 16
@"??_C@_0IG@NLGIEOAM@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [134 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:3451 Assert failed: (offset % src->type.bytes()) == 0\0A\00", comdat, align 16
@"??_C@_0HL@PJKJFAAC@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [123 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:3493 Assert failed: (pResource != nullptr)\0A\00", comdat, align 16
@"??_C@_0EF@BJFFFHJC@halide_d3d12compute_wrap_buffer?3@" = linkonce_odr dso_local unnamed_addr constant [69 x i8] c"halide_d3d12compute_wrap_buffer: malloc failed making device handle.\00", comdat, align 16
@"?d3d12compute_device_interface_impl@D3D12Compute@Internal@Runtime@Halide@@3Uhalide_device_interface_impl_t@@A" = weak dso_local global %struct.halide_device_interface_impl_t { void ()* @halide_use_jit_module, void ()* @halide_release_jit_module, i32 (i8*, %struct.halide_buffer_t*)* @halide_d3d12compute_device_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_d3d12compute_device_free, i32 (i8*, %struct.halide_buffer_t*)* @halide_d3d12compute_device_sync, i32 (i8*)* @halide_d3d12compute_device_release, i32 (i8*, %struct.halide_buffer_t*)* @halide_d3d12compute_copy_to_host, i32 (i8*, %struct.halide_buffer_t*)* @halide_d3d12compute_copy_to_device, i32 (i8*, %struct.halide_buffer_t*)* @halide_d3d12compute_device_and_host_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_d3d12compute_device_and_host_free, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)* @halide_d3d12compute_buffer_copy, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)* @halide_d3d12compute_device_crop, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)* @halide_d3d12compute_device_slice, i32 (i8*, %struct.halide_buffer_t*)* @halide_d3d12compute_device_release_crop, i32 (i8*, %struct.halide_buffer_t*, i64)* @halide_d3d12compute_wrap_buffer, i32 (i8*, %struct.halide_buffer_t*)* @halide_d3d12compute_detach_buffer }, align 16
@"??_C@_0HH@DCCLAMGD@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [119 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:664 Assert failed: (size_in_bytes > 0)\0A\00", comdat, align 16
@"??_C@_0HG@CAELBHFM@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [118 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:669 Assert failed: (element_size > 0)\0A\00", comdat, align 16
@"??_C@_0IH@ELBHFNGA@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [135 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:672 Assert failed: (size_in_bytes % element_size) == 0\0A\00", comdat, align 16
@"__const.?FindD3D12FormatForHalideType@@YA?AW4DXGI_FORMAT@@PEAXUhalide_type_t@@@Z.FORMATS" = private unnamed_addr constant [3 x [4 x [4 x i32]]] [[4 x [4 x i32]] [[4 x i32] [i32 64, i32 59, i32 43, i32 0], [4 x i32] [i32 52, i32 38, i32 18, i32 0], [4 x i32] [i32 0, i32 0, i32 8, i32 0], [4 x i32] [i32 32, i32 14, i32 4, i32 0]], [4 x [4 x i32]] [[4 x i32] [i32 62, i32 57, i32 42, i32 0], [4 x i32] [i32 50, i32 36, i32 17, i32 0], [4 x i32] [i32 0, i32 0, i32 7, i32 0], [4 x i32] [i32 30, i32 12, i32 3, i32 0]], [4 x [4 x i32]] [[4 x i32] [i32 0, i32 54, i32 41, i32 0], [4 x i32] [i32 0, i32 34, i32 16, i32 0], [4 x i32] [i32 0, i32 0, i32 6, i32 0], [4 x i32] [i32 0, i32 10, i32 2, i32 0]]], align 4
@"??_C@_0II@HPNAIILO@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [136 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:423 Assert failed: (type.code >= 0) && (type.code <= 2)\0A\00", comdat, align 16
@"??_C@_0IJ@IINKHGHG@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [137 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:424 Assert failed: (type.lanes > 0) && (type.lanes <= 4)\0A\00", comdat, align 16
@"??_C@_0GJ@HCOGLMCJ@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [105 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:441 Assert failed: false\0A\00", comdat, align 16
@"??_C@_0HI@FNCIDAJF@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [120 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:893 Assert failed: (hbuffer != nullptr)\0A\00", comdat, align 16
@"??_C@_0KB@NININJGE@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [161 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:894 Assert failed: (hbuffer->device_interface == &d3d12compute_device_interface)\0A\00", comdat, align 16
@"??_C@_0HI@MFPPBOBE@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [120 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:896 Assert failed: (dbuffer != nullptr)\0A\00", comdat, align 16
@"??_C@_0GE@IILGOCND@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [100 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hashmap.h:152 Assert failed: !inited\0A\00", comdat, align 16
@"??_C@_0HG@HILAPLNM@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [118 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hashmap.h:406 Assert failed: sizeof(ValueType) == size\0A\00", comdat, align 16
@"??_C@_0HG@DPCFCKPA@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [118 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hashmap.h:399 Assert failed: sizeof(ValueType) == size\0A\00", comdat, align 16
@"??_C@_0HP@CJJAKJAL@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [127 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:2480 Assert failed: (rootSignature == nullptr)\0A\00", comdat, align 16
@"??_C@_0HH@BCDAACAG@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [119 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:2488 Assert failed: (queue == nullptr)\0A\00", comdat, align 16
@"??_C@_0IE@KCBLAMLL@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [132 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:2496 Assert failed: (cmd_allocator_main == nullptr)\0A\00", comdat, align 16
@"??_C@_0HC@EJNCMKGA@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [114 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:2506 Assert failed: (upload == 0)\0A\00", comdat, align 16
@"??_C@_0HE@JADBJBDC@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [116 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:2507 Assert failed: (readback == 0)\0A\00", comdat, align 16
@CreateDXGIFactory1 = internal unnamed_addr global i32 (%struct._GUID*, i8**)* null, align 8
@_GUID_770aae78_f26f_4dba_a829_253c83d1b387 = linkonce_odr dso_local constant %struct._GUID { i32 1997188728, i16 -3473, i16 19898, [8 x i8] c"\A8)%<\83\D1\B3\87" }, comdat
@"??_C@_0CO@PFDCLHOL@Unable?5to?5create?5DXGI?5Factory?5?$CII@" = linkonce_odr dso_local unnamed_addr constant [46 x i8] c"Unable to create DXGI Factory (IDXGIFactory1)\00", comdat, align 8
@"??_C@_0HN@EFBLJJLF@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [125 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:1120 Assert failed: (dxgiAdapter == nullptr)\0A\00", comdat, align 16
@"??_C@_0DC@FNBIDBIK@Unable?5to?5enumerate?5DXGI?5adapter@" = linkonce_odr dso_local unnamed_addr constant [50 x i8] c"Unable to enumerate DXGI adapter (IDXGIAdapter1).\00", comdat, align 8
@"??_C@_0EL@CNMMEDGN@Unable?5to?5retrieve?5information?5?$CI@" = linkonce_odr dso_local unnamed_addr constant [75 x i8] c"Unable to retrieve information (DXGI_ADAPTER_DESC1) about adapter number #\00", comdat, align 16
@"??_C@_0CJ@GPPKLMOI@Unable?5to?5find?5a?5suitable?5D3D12?5@" = linkonce_odr dso_local unnamed_addr constant [41 x i8] c"Unable to find a suitable D3D12 Adapter.\00", comdat, align 8
@"??_C@_09ICPCIOEL@d3d12?4dll?$AA@" = linkonce_odr dso_local unnamed_addr constant [10 x i8] c"d3d12.dll\00", comdat, align 8
@"??_C@_0BD@CLKCCNEK@D3DCompiler_47?4dll?$AA@" = linkonce_odr dso_local unnamed_addr constant [19 x i8] c"D3DCompiler_47.dll\00", comdat, align 8
@"??_C@_08EEBGHKPL@dxgi?4dll?$AA@" = linkonce_odr dso_local unnamed_addr constant [9 x i8] c"dxgi.dll\00", comdat, align 8
@lib_d3d12 = internal unnamed_addr global i8* null, align 8
@lib_D3DCompiler_47 = internal unnamed_addr global i8* null, align 8
@lib_dxgi = internal unnamed_addr global i8* null, align 8
@"??_C@_0BC@OOAMCEEI@D3D12CreateDevice?$AA@" = linkonce_odr dso_local unnamed_addr constant [18 x i8] c"D3D12CreateDevice\00", comdat, align 8
@D3D12CreateDevice = internal unnamed_addr global i32 (%struct.IUnknown*, i32, %struct._GUID*, i8**)* null, align 8
@"??_C@_0BH@BKICNBLB@D3D12GetDebugInterface?$AA@" = linkonce_odr dso_local unnamed_addr constant [23 x i8] c"D3D12GetDebugInterface\00", comdat, align 8
@D3D12GetDebugInterface = internal unnamed_addr global i32 (%struct._GUID*, i8**)* null, align 8
@"??_C@_0BM@FFPIANAM@D3D12SerializeRootSignature?$AA@" = linkonce_odr dso_local unnamed_addr constant [28 x i8] c"D3D12SerializeRootSignature\00", comdat, align 8
@"??_C@_0L@HKGOFPCI@D3DCompile?$AA@" = linkonce_odr dso_local unnamed_addr constant [11 x i8] c"D3DCompile\00", comdat, align 8
@D3DCompile = internal unnamed_addr global i32 (i8*, i64, i8*, %struct._D3D_SHADER_MACRO*, %struct.ID3DInclude*, i8*, i8*, i32, i32, %struct.ID3D10Blob**, %struct.ID3D10Blob**)* null, align 8
@"??_C@_0BD@JFLLLCON@CreateDXGIFactory1?$AA@" = linkonce_odr dso_local unnamed_addr constant [19 x i8] c"CreateDXGIFactory1\00", comdat, align 8
@"??_C@_0L@IAGCJOCP@?5?$CIHRESULT?$DN?$AA@" = linkonce_odr dso_local unnamed_addr constant [11 x i8] c" (HRESULT=\00", comdat, align 8
@"??_C@_0L@FELFIFPM@?0?5object?$CK?$DN?$AA@" = linkonce_odr dso_local unnamed_addr constant [11 x i8] c", object*=\00", comdat, align 8
@"??_C@_01PKGAHCOL@?$CJ?$AA@" = linkonce_odr dso_local unnamed_addr constant [2 x i8] c")\00", comdat, align 4
@"??_C@_0EP@FDCDGPDE@Unable?5to?5retrieve?5information?5?$CI@" = linkonce_odr dso_local unnamed_addr constant [79 x i8] c"Unable to retrieve information (DXGI_ADAPTER_DESC1) about the selectd adapter.\00", comdat, align 16
@_GUID_189819f1_1db6_4b57_be54_1821339b85f7 = linkonce_odr dso_local constant %struct._GUID { i32 412621297, i16 7606, i16 19287, [8 x i8] c"\BET\18!3\9B\85\F7" }, comdat
@"??_C@_0CI@IGMLMPFG@Unable?5to?5create?5the?5Direct3D?512@" = linkonce_odr dso_local unnamed_addr constant [40 x i8] c"Unable to create the Direct3D 12 device\00", comdat, align 8
@"??_C@_0GL@MKEDKIBD@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [107 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:1671 Assert failed: device\0A\00", comdat, align 16
@_GUID_6102dee4_af59_4b09_b999_b44d73f09b24 = linkonce_odr dso_local constant %struct._GUID { i32 1627578084, i16 -20647, i16 19209, [8 x i8] c"\B9\99\B4Ms\F0\9B$" }, comdat
@"??_C@_0DD@BGLBECPN@Unable?5to?5create?5the?5Direct3D?512@" = linkonce_odr dso_local unnamed_addr constant [51 x i8] c"Unable to create the Direct3D 12 command allocator\00", comdat, align 8
@"??_C@_0CG@BDJKEANK@Debug?5info?5not?5available?3?5no?5dev@" = linkonce_odr dso_local unnamed_addr constant [38 x i8] c"Debug info not available: no device.\0A\00", comdat, align 8
@"??_C@_0HN@LLGMPKNO@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [125 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:2591 Assert failed: (dxgiAdapter != nullptr)\0A\00", comdat, align 16
@"??_C@_0DK@KDCNPKGG@Unable?5to?5retrieve?5information?5a@" = linkonce_odr dso_local unnamed_addr constant [58 x i8] c"Unable to retrieve information about the device adapter.\0A\00", comdat, align 8
@"??_C@_0CP@JMHIFPPF@Unable?5to?5allocate?5memory?5for?5th@" = linkonce_odr dso_local unnamed_addr constant [47 x i8] c"Unable to allocate memory for the debug dump.\0A\00", comdat, align 8
@"??_C@_0BH@CHHGHFME@D3D12?5Device?5Adapter?3?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [23 x i8] c"D3D12 Device Adapter: \00", comdat, align 8
@"??_C@_0CI@KNFDFENG@Device?5Lost?$CB?5GetDeviceRemovedRea@" = linkonce_odr dso_local unnamed_addr constant [40 x i8] c"Device Lost! GetDeviceRemovedReason(): \00", comdat, align 8
@"??_C@_08NBDONIIG@before?3?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [9 x i8] c"before: \00", comdat, align 8
@"??_C@_03LGOGDKEL@?5?$HM?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [4 x i8] c" | \00", comdat, align 4
@"??_C@_07NCNFGCHF@after?3?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [8 x i8] c"after: \00", comdat, align 8
@"??_C@_0BP@JEHMDIGO@Unable?5to?5wait?5for?5Fence?5Event?$AA@" = linkonce_odr dso_local unnamed_addr constant [31 x i8] c"Unable to wait for Fence Event\00", comdat, align 8
@"??_C@_0HF@HPJKODMC@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [117 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:2310 Assert failed: (use_count == 0)\0A\00", comdat, align 16
@"??_C@_0HG@BKPBFCDC@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [118 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:2246 Assert failed: (xfer != nullptr)\0A\00", comdat, align 16
@"??_C@_0GK@KGJGGHMA@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [106 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:2273 Assert failed: false\0A\00", comdat, align 16
@"??_C@_0IG@GFIJNJDO@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [134 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:2196 Assert failed: src->type == d3d12_buffer::Upload\0A\00", comdat, align 16
@"??_C@_0JI@PCJLNBL@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [152 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:2199 Assert failed: src->state == D3D12_RESOURCE_STATE_UNORDERED_ACCESS\0A\00", comdat, align 16
@"??_C@_0II@PGFAABKF@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [136 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:2212 Assert failed: dst->type == d3d12_buffer::ReadBack\0A\00", comdat, align 16
@"??_C@_0JI@EEDFJGKA@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [152 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:2214 Assert failed: dst->state == D3D12_RESOURCE_STATE_UNORDERED_ACCESS\0A\00", comdat, align 16
@"??_C@_0GL@JKLPMJCE@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [107 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:2323 Assert failed: device\0A\00", comdat, align 16
@"??_C@_0GI@CIKNBAH@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [104 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:2324 Assert failed: src\0A\00", comdat, align 16
@"??_C@_0GI@GGLHCMMF@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [104 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:2325 Assert failed: dst\0A\00", comdat, align 16
@"??_C@_0IJ@PHCCBPFH@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [137 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:2326 Assert failed: (src->type != d3d12_buffer::Unknown)\0A\00", comdat, align 16
@"??_C@_0IJ@FKOMGEEA@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [137 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:2327 Assert failed: (dst->type != d3d12_buffer::Unknown)\0A\00", comdat, align 16
@"??_C@_0IK@ONFBLGCD@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [138 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:2330 Assert failed: (src->type != d3d12_buffer::Constant)\0A\00", comdat, align 16
@"??_C@_0IK@GOCPPNJP@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [138 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:2331 Assert failed: (dst->type != d3d12_buffer::Constant)\0A\00", comdat, align 16
@"??_C@_0HC@DEBHPEJP@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [114 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:2333 Assert failed: num_bytes > 0\0A\00", comdat, align 16
@"??_C@_0II@HKEHGFPG@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [136 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:2337 Assert failed: (dst->type != d3d12_buffer::Upload)\0A\00", comdat, align 16
@"??_C@_0IK@HFNGBPMB@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [138 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:2338 Assert failed: (dst->type != d3d12_buffer::ReadBack)\0A\00", comdat, align 16
@"??_C@_0HL@FDNNDOAP@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [123 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:2344 Assert failed: (dst->xfer == nullptr)\0A\00", comdat, align 16
@"??_C@_0IK@HCNEAADD@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [138 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:2353 Assert failed: (src->type != d3d12_buffer::ReadBack)\0A\00", comdat, align 16
@"??_C@_0HL@GDNHBGNM@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [123 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:2359 Assert failed: (src->xfer == nullptr)\0A\00", comdat, align 16
@"??_C@_0II@NAEKBKKG@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [136 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:2367 Assert failed: (dst->type != d3d12_buffer::Upload)\0A\00", comdat, align 16
@"??_C@_0IK@JBDMNMFO@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [138 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:2368 Assert failed: (src->type != d3d12_buffer::ReadBack)\0A\00", comdat, align 16
@"??_C@_0IK@BCECJHOC@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [138 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:2369 Assert failed: (dst->type != d3d12_buffer::ReadBack)\0A\00", comdat, align 16
@"??_C@_0GK@DOBONIIG@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [106 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:2407 Assert failed: false\0A\00", comdat, align 16
@"??_C@_0GK@DKOLFJKC@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [106 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:2430 Assert failed: false\0A\00", comdat, align 16
@"??_C@_0GK@GCMMKOFI@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [106 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:2434 Assert failed: pData\0A\00", comdat, align 16
@"?frame_selector@D3D12Compute@Internal@Runtime@Halide@@3_KA" = internal unnamed_addr global i64 0, align 8
@_GUID_5b160d0f_ac1b_4185_8ba8_b3ae42a5a455 = linkonce_odr dso_local constant %struct._GUID { i32 1528171791, i16 -21477, i16 16773, [8 x i8] c"\8B\A8\B3\AEB\A5\A4U" }, comdat
@"??_C@_0CO@OKNPIGDH@Unable?5to?5create?5the?5Direct3D?512@" = linkonce_odr dso_local unnamed_addr constant [46 x i8] c"Unable to create the Direct3D 12 command list\00", comdat, align 8
@_GUID_8efb471d_616c_4f49_90f7_127bb763fa51 = linkonce_odr dso_local constant %struct._GUID { i32 -1896134883, i16 24940, i16 20297, [8 x i8] c"\90\F7\12{\B7c\FAQ" }, comdat
@"??_C@_0DB@GKGAOIPC@Unable?5to?5create?5the?5Direct3D?512@" = linkonce_odr dso_local unnamed_addr constant [49 x i8] c"Unable to create the Direct3D 12 descriptor heap\00", comdat, align 8
@"??_C@_02DKADOBMK@_?$CI?$AA@" = linkonce_odr dso_local unnamed_addr constant [3 x i8] c"_(\00", comdat, align 4
@"??_C@_01IHBHIGKO@?0?$AA@" = linkonce_odr dso_local unnamed_addr constant [2 x i8] c",\00", comdat, align 4
@"??_C@_03DNCOCNEF@?$CJ_?$FL?$AA@" = linkonce_odr dso_local unnamed_addr constant [4 x i8] c")_[\00", comdat, align 4
@"??_C@_01LBDDMOBJ@?$FN?$AA@" = linkonce_odr dso_local unnamed_addr constant [2 x i8] c"]\00", comdat, align 4
@"??_C@_0IG@KHODCDFK@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [134 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:1944 Assert failed: (key.size() < key.capacity() - 1)\0A\00", comdat, align 16
@"??_C@_0HK@BHBNEKNC@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [122 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:1948 Assert failed: (function == nullptr)\0A\00", comdat, align 16
@"??_C@_0HK@HOPDFHBF@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [122 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/d3d12compute.cpp:1959 Assert failed: (function != nullptr)\0A\00", comdat, align 16
@"??_C@_09CGLEKJAK@?$DMnullptr?$DO?$AA@" = linkonce_odr dso_local unnamed_addr constant [10 x i8] c"<nullptr>\00", comdat, align 8
@"??_C@_0HK@ILGBKOLL@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [122 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hashmap.h:264 Assert failed: entry->more_recent != nullptr\0A\00", comdat, align 16
@"??_C@_0HJ@MNNHDLMG@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [121 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hashmap.h:268 Assert failed: least_recently_used == entry\0A\00", comdat, align 16
@"??_C@_0HK@MPEPNOAE@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [122 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hashmap.h:271 Assert failed: entry->more_recent != nullptr\0A\00", comdat, align 16
@"??_C@_0IE@KOIFDNCL@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [132 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hashmap.h:282 Assert failed: (cache_value_size == entry->value_size)\0A\00", comdat, align 16
@"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@" = linkonce_odr dso_local unnamed_addr constant [35 x i8] c"Printer buffer allocation failed.\0A\00", comdat, align 8
@"??_C@_0BM@EDALEHEN@__GROUPSHARED_SIZE_IN_BYTES?$AA@" = linkonce_odr dso_local unnamed_addr constant [28 x i8] c"__GROUPSHARED_SIZE_IN_BYTES\00", comdat, align 8
@"??_C@_0P@LOBBBKDE@__NUM_TREADS_X?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"__NUM_TREADS_X\00", comdat, align 8
@"??_C@_0P@KHAKCLHF@__NUM_TREADS_Y?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"__NUM_TREADS_Y\00", comdat, align 8
@"??_C@_0P@IMCHHILG@__NUM_TREADS_Z?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"__NUM_TREADS_Z\00", comdat, align 8
@"??_C@_06IJHADHCA@cs_5_1?$AA@" = linkonce_odr dso_local unnamed_addr constant [7 x i8] c"cs_5_1\00", comdat, align 4
@"??_C@_0BF@NPMABELF@?$FLend?9of?9shader?9dump?$FN?$AA@" = linkonce_odr dso_local unnamed_addr constant [21 x i8] c"[end-of-shader-dump]\00", comdat, align 8
@"??_C@_0DB@POFDFLDH@D3D12Compute?3?5Could?5not?5allocate@" = linkonce_odr dso_local unnamed_addr constant [49 x i8] c"D3D12Compute: Could not allocate pipeline state.\00", comdat, align 8
@"??_C@_0BM@GELOKDC@?$DMno?5error?5message?5reported?$DO?$AA@" = linkonce_odr dso_local unnamed_addr constant [28 x i8] c"<no error message reported>\00", comdat, align 8
@"??_C@_0P@NJDLPAMC@D3DCompile?$CI?$CJ?3?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"D3DCompile(): \00", comdat, align 8
@"??_C@_0CB@LJCJJOMA@?$DO?$DO?$DO?5HLSL?5shader?5source?5dump?5?$DM?$DM?$DM?6@" = linkonce_odr dso_local unnamed_addr constant [33 x i8] c">>> HLSL shader source dump <<<\0A\00", comdat, align 8
@_GUID_765a30f3_f624_4c6f_a828_ace948622445 = linkonce_odr dso_local constant %struct._GUID { i32 1985622259, i16 -2524, i16 19567, [8 x i8] c"\A8(\AC\E9Hb$E" }, comdat
@"??_C@_0DA@KOEOGIGO@Unable?5to?5create?5the?5Direct3D?512@" = linkonce_odr dso_local unnamed_addr constant [48 x i8] c"Unable to create the Direct3D 12 pipeline state\00", comdat, align 8
@"??_C@_0IE@OEGJPCDB@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [132 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hashmap.h:328 Assert failed: (cache_value_size == entry->value_size)\0A\00", comdat, align 16
@"??_C@_0GD@KIHFBKKG@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [99 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hashmap.h:338 Assert failed: inited\0A\00", comdat, align 16
@"??_C@_0HH@BADGLHLC@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [119 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hashmap.h:191 Assert failed: prev_hash_entry != nullptr\0A\00", comdat, align 16
@"??_C@_0GM@GIODNIAA@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [108 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/gpu_context_common.h:69 Assert failed: false\0A\00", comdat, align 16
@"??_C@_0GO@DFIAIKAP@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [110 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/gpu_context_common.h:127 Assert failed: result\0A\00", comdat, align 16
@"??_C@_0GO@OECFGMGJ@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [110 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/gpu_context_common.h:215 Assert failed: result\0A\00", comdat, align 16
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_windows_d3d12compute_arm.cpp, i8* null }]
@llvm.global_dtors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @halide_d3d12compute_cleanup, i8* null }]
@"switch.table.?wrap_buffer@D3D12Compute@Internal@Runtime@Halide@@YAHPEAXPEAUhalide_buffer_t@@PEAUd3d12_buffer@1234@@Z" = private unnamed_addr constant [8 x i64] [i64 0, i64 1, i64 0, i64 2, i64 0, i64 0, i64 0, i64 3], align 8

; Function Attrs: nounwind mustprogress
define weak dso_local void @"?copy_memory_helper@Internal@Runtime@Halide@@YAXAEBUdevice_copy@123@H_J1@Z"(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 %1, i64 %2, i64 %3) local_unnamed_addr #0 {
  %5 = icmp sgt i32 %1, -1
  br i1 %5, label %6, label %15

6:                                                ; preds = %4, %12
  %7 = phi i32 [ %13, %12 ], [ %1, %4 ]
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 3, i64 %8
  %10 = load i64, i64* %9, align 8, !tbaa !6
  %11 = icmp eq i64 %10, 1
  br i1 %11, label %12, label %15

12:                                               ; preds = %6
  %13 = add nsw i32 %7, -1
  %14 = icmp sgt i32 %7, 0
  br i1 %14, label %6, label %27, !llvm.loop !10

15:                                               ; preds = %6, %4
  %16 = phi i32 [ %1, %4 ], [ %7, %6 ]
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %27, label %18

18:                                               ; preds = %15
  %19 = sext i32 %16 to i64
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 3, i64 %19
  %21 = load i64, i64* %20, align 8, !tbaa !6
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %50, label %23

23:                                               ; preds = %18
  %24 = add nsw i32 %16, -1
  %25 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 4, i64 %19
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 5, i64 %19
  br label %39

27:                                               ; preds = %12, %15
  %28 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 0
  %29 = load i64, i64* %28, align 8, !tbaa !12
  %30 = add i64 %29, %2
  %31 = inttoptr i64 %30 to i8*
  %32 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 1
  %33 = load i64, i64* %32, align 8, !tbaa !14
  %34 = add i64 %33, %3
  %35 = inttoptr i64 %34 to i8*
  %36 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 6
  %37 = load i64, i64* %36, align 8, !tbaa !15
  %38 = tail call i8* @memcpy(i8* %35, i8* %31, i64 %37) #10
  br label %50

39:                                               ; preds = %23, %39
  %40 = phi i64 [ 0, %23 ], [ %47, %39 ]
  %41 = phi i64 [ %3, %23 ], [ %46, %39 ]
  %42 = phi i64 [ %2, %23 ], [ %44, %39 ]
  tail call void @"?copy_memory_helper@Internal@Runtime@Halide@@YAXAEBUdevice_copy@123@H_J1@Z"(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 %24, i64 %42, i64 %41) #11
  %43 = load i64, i64* %25, align 8, !tbaa !6
  %44 = add i64 %43, %42
  %45 = load i64, i64* %26, align 8, !tbaa !6
  %46 = add i64 %45, %41
  %47 = add nuw i64 %40, 1
  %48 = load i64, i64* %20, align 8, !tbaa !6
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %39, label %50, !llvm.loop !16

50:                                               ; preds = %39, %18, %27
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind mustprogress
define weak dso_local void @"?copy_memory@Internal@Runtime@Halide@@YAXAEBUdevice_copy@123@PEAX@Z"(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i8* %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 0
  %4 = load i64, i64* %3, align 8, !tbaa !12
  %5 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 1
  %6 = load i64, i64* %5, align 8, !tbaa !14
  %7 = icmp eq i64 %4, %6
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 2
  %10 = load i64, i64* %9, align 8, !tbaa !17
  tail call void @"?copy_memory_helper@Internal@Runtime@Halide@@YAXAEBUdevice_copy@123@H_J1@Z"(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 15, i64 %10, i64 0) #11
  br label %11

11:                                               ; preds = %2, %8
  ret void
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @"?make_buffer_copy@Internal@Runtime@Halide@@YA?AUdevice_copy@123@PEBUhalide_buffer_t@@_N01@Z"(%"struct.Halide::Runtime::Internal::device_copy"* noalias sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %0, %struct.halide_buffer_t* %1, i1 %2, %struct.halide_buffer_t* %3, i1 %4) local_unnamed_addr #0 {
  %6 = alloca %"struct.Halide::Runtime::Internal::device_copy", align 8
  %7 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 416, i8* nonnull %7) #12
  br i1 %2, label %8, label %12

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 2
  %10 = load i8*, i8** %9, align 8, !tbaa !18
  %11 = ptrtoint i8* %10 to i64
  br label %15

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %14 = load i64, i64* %13, align 8, !tbaa !25
  br label %15

15:                                               ; preds = %12, %8
  %16 = phi i64 [ %11, %8 ], [ %14, %12 ]
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 0
  store i64 %16, i64* %17, align 8, !tbaa !12
  br i1 %4, label %18, label %22

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 2
  %20 = load i8*, i8** %19, align 8, !tbaa !18
  %21 = ptrtoint i8* %20 to i64
  br label %25

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 0
  %24 = load i64, i64* %23, align 8, !tbaa !25
  br label %25

25:                                               ; preds = %22, %18
  %26 = phi i64 [ %21, %18 ], [ %24, %22 ]
  %27 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 1
  store i64 %26, i64* %27, align 8, !tbaa !14
  %28 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 1
  %29 = load i8, i8* %28, align 1, !tbaa !26
  %30 = zext i8 %29 to i32
  %31 = add nuw nsw i32 %30, 7
  %32 = lshr i32 %31, 3
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 6
  store i64 %33, i64* %34, align 8, !tbaa !15
  %35 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 0
  %36 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 0
  %37 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 0
  %38 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 1
  %39 = bitcast i64* %35 to <2 x i64>*
  store <2 x i64> <i64 1, i64 1>, <2 x i64>* %39, align 8, !tbaa !6
  %40 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 1
  %41 = bitcast i64* %36 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %41, align 8, !tbaa !6
  %42 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 1
  %43 = bitcast i64* %37 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %43, align 8, !tbaa !6
  %44 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 2
  %45 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 2
  %46 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 2
  %47 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 3
  %48 = bitcast i64* %44 to <2 x i64>*
  store <2 x i64> <i64 1, i64 1>, <2 x i64>* %48, align 8, !tbaa !6
  %49 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 3
  %50 = bitcast i64* %45 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %50, align 8, !tbaa !6
  %51 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 3
  %52 = bitcast i64* %46 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %52, align 8, !tbaa !6
  %53 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 4
  %54 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 4
  %55 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 4
  %56 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 5
  %57 = bitcast i64* %53 to <2 x i64>*
  store <2 x i64> <i64 1, i64 1>, <2 x i64>* %57, align 8, !tbaa !6
  %58 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 5
  %59 = bitcast i64* %54 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %59, align 8, !tbaa !6
  %60 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 5
  %61 = bitcast i64* %55 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %61, align 8, !tbaa !6
  %62 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 6
  %63 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 6
  %64 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 6
  %65 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 7
  %66 = bitcast i64* %62 to <2 x i64>*
  store <2 x i64> <i64 1, i64 1>, <2 x i64>* %66, align 8, !tbaa !6
  %67 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 7
  %68 = bitcast i64* %63 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %68, align 8, !tbaa !6
  %69 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 7
  %70 = bitcast i64* %64 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %70, align 8, !tbaa !6
  %71 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 8
  %72 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 8
  %73 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 8
  %74 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 9
  %75 = bitcast i64* %71 to <2 x i64>*
  store <2 x i64> <i64 1, i64 1>, <2 x i64>* %75, align 8, !tbaa !6
  %76 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 9
  %77 = bitcast i64* %72 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %77, align 8, !tbaa !6
  %78 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 9
  %79 = bitcast i64* %73 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %79, align 8, !tbaa !6
  %80 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 10
  %81 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 10
  %82 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 10
  %83 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 11
  %84 = bitcast i64* %80 to <2 x i64>*
  store <2 x i64> <i64 1, i64 1>, <2 x i64>* %84, align 8, !tbaa !6
  %85 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 11
  %86 = bitcast i64* %81 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %86, align 8, !tbaa !6
  %87 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 11
  %88 = bitcast i64* %82 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %88, align 8, !tbaa !6
  %89 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 12
  %90 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 12
  %91 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 12
  %92 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 13
  %93 = bitcast i64* %89 to <2 x i64>*
  store <2 x i64> <i64 1, i64 1>, <2 x i64>* %93, align 8, !tbaa !6
  %94 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 13
  %95 = bitcast i64* %90 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %95, align 8, !tbaa !6
  %96 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 13
  %97 = bitcast i64* %91 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %97, align 8, !tbaa !6
  %98 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 14
  %99 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 14
  %100 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 14
  %101 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 15
  %102 = bitcast i64* %98 to <2 x i64>*
  store <2 x i64> <i64 1, i64 1>, <2 x i64>* %102, align 8, !tbaa !6
  %103 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 15
  %104 = bitcast i64* %99 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %104, align 8, !tbaa !6
  %105 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 15
  %106 = bitcast i64* %100 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %106, align 8, !tbaa !6
  %107 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 2
  %108 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 5
  %109 = load i32, i32* %108, align 4, !tbaa !27
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %25
  %112 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 6
  %113 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %112, align 8, !tbaa !28
  %114 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 6
  %115 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %114, align 8, !tbaa !28
  %116 = zext i32 %109 to i64
  br label %124

117:                                              ; preds = %124, %25
  %118 = phi i64 [ 0, %25 ], [ %137, %124 ]
  %119 = load i64, i64* %34, align 8, !tbaa !15
  %120 = mul i64 %118, %119
  store i64 %120, i64* %107, align 8, !tbaa !17
  %121 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 5
  %122 = load i32, i32* %121, align 4, !tbaa !27
  %123 = icmp eq i32 %109, %122
  br i1 %123, label %140, label %149

124:                                              ; preds = %111, %124
  %125 = phi i64 [ 0, %111 ], [ %138, %124 ]
  %126 = phi i64 [ 0, %111 ], [ %137, %124 ]
  %127 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %113, i64 %125, i32 2
  %128 = load i32, i32* %127, align 4, !tbaa !29
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %115, i64 %125, i32 0
  %131 = load i32, i32* %130, align 4, !tbaa !31
  %132 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %113, i64 %125, i32 0
  %133 = load i32, i32* %132, align 4, !tbaa !31
  %134 = sub nsw i32 %131, %133
  %135 = sext i32 %134 to i64
  %136 = mul nsw i64 %135, %129
  %137 = add i64 %136, %126
  %138 = add nuw nsw i64 %125, 1
  %139 = icmp eq i64 %138, %116
  br i1 %139, label %117, label %124, !llvm.loop !32

140:                                              ; preds = %117
  %141 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 4, i32 1
  %142 = load i8, i8* %141, align 1, !tbaa !26
  %143 = zext i8 %142 to i32
  %144 = add nuw nsw i32 %143, 7
  %145 = lshr i32 %144, 3
  %146 = icmp ne i32 %32, %145
  %147 = icmp sgt i32 %109, 16
  %148 = or i1 %147, %146
  br i1 %148, label %149, label %151

149:                                              ; preds = %140, %117
  %150 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %0 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(416) %150, i8 0, i64 416, i1 false)
  br label %384

151:                                              ; preds = %140
  %152 = icmp eq i64 %119, 0
  br i1 %152, label %160, label %153

153:                                              ; preds = %151
  br i1 %110, label %154, label %382

154:                                              ; preds = %153
  %155 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 6
  %156 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %155, align 8, !tbaa !28
  %157 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 6
  %158 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %157, align 8, !tbaa !28
  %159 = zext i32 %109 to i64
  br label %250

160:                                              ; preds = %151
  %161 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %0 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(416) %161, i8 0, i64 416, i1 false)
  br label %384

162:                                              ; preds = %282
  %163 = load i64, i64* %34, align 8, !tbaa !15
  %164 = load i64, i64* %36, align 8, !tbaa !6
  %165 = load i64, i64* %37, align 8
  %166 = icmp eq i64 %163, %164
  %167 = icmp eq i64 %163, %165
  %168 = and i1 %166, %167
  br i1 %168, label %169, label %382

169:                                              ; preds = %162
  %170 = load i64, i64* %67, align 8, !tbaa !6
  %171 = load i64, i64* %69, align 8, !tbaa !6
  %172 = load i64, i64* %71, align 8, !tbaa !6
  %173 = load i64, i64* %72, align 8, !tbaa !6
  %174 = load i64, i64* %73, align 8, !tbaa !6
  %175 = load i64, i64* %74, align 8, !tbaa !6
  %176 = load i64, i64* %76, align 8, !tbaa !6
  %177 = load i64, i64* %78, align 8, !tbaa !6
  %178 = load i64, i64* %80, align 8, !tbaa !6
  %179 = load i64, i64* %81, align 8, !tbaa !6
  %180 = load i64, i64* %82, align 8, !tbaa !6
  %181 = load i64, i64* %83, align 8, !tbaa !6
  %182 = load i64, i64* %85, align 8, !tbaa !6
  %183 = load i64, i64* %87, align 8, !tbaa !6
  %184 = load i64, i64* %89, align 8, !tbaa !6
  %185 = load i64, i64* %90, align 8, !tbaa !6
  %186 = load i64, i64* %91, align 8, !tbaa !6
  %187 = load i64, i64* %92, align 8, !tbaa !6
  %188 = load i64, i64* %94, align 8, !tbaa !6
  %189 = load i64, i64* %96, align 8, !tbaa !6
  %190 = load i64, i64* %98, align 8, !tbaa !6
  %191 = load i64, i64* %99, align 8, !tbaa !6
  %192 = load i64, i64* %100, align 8, !tbaa !6
  %193 = load i64, i64* %101, align 8, !tbaa !6
  %194 = load i64, i64* %103, align 8, !tbaa !6
  %195 = load i64, i64* %105, align 8, !tbaa !6
  %196 = load i64, i64* %35, align 8, !tbaa !6
  %197 = load i64, i64* %38, align 8, !tbaa !6
  %198 = load i64, i64* %40, align 8, !tbaa !6
  %199 = load i64, i64* %42, align 8
  %200 = load i64, i64* %44, align 8, !tbaa !6
  %201 = load i64, i64* %45, align 8, !tbaa !6
  %202 = load i64, i64* %46, align 8, !tbaa !6
  %203 = load i64, i64* %47, align 8, !tbaa !6
  %204 = load i64, i64* %49, align 8, !tbaa !6
  %205 = load i64, i64* %51, align 8, !tbaa !6
  %206 = load i64, i64* %53, align 8, !tbaa !6
  %207 = load i64, i64* %54, align 8, !tbaa !6
  %208 = load i64, i64* %55, align 8, !tbaa !6
  %209 = load i64, i64* %56, align 8, !tbaa !6
  %210 = load i64, i64* %58, align 8, !tbaa !6
  %211 = load i64, i64* %60, align 8, !tbaa !6
  %212 = load i64, i64* %62, align 8, !tbaa !6
  %213 = load i64, i64* %63, align 8, !tbaa !6
  %214 = load i64, i64* %64, align 8, !tbaa !6
  %215 = load i64, i64* %65, align 8, !tbaa !6
  store i64 1, i64* %101, align 8, !tbaa !6
  store i64 0, i64* %103, align 8, !tbaa !6
  store i64 0, i64* %105, align 8, !tbaa !6
  %216 = mul i64 %196, %165
  %217 = icmp eq i64 %216, %198
  %218 = icmp eq i64 %216, %199
  %219 = and i1 %217, %218
  br i1 %219, label %220, label %335

220:                                              ; preds = %169
  %221 = mul i64 %197, %199
  %222 = icmp eq i64 %221, %201
  %223 = icmp eq i64 %221, %202
  %224 = and i1 %222, %223
  br i1 %224, label %225, label %335

225:                                              ; preds = %220
  %226 = mul i64 %200, %202
  %227 = icmp eq i64 %226, %204
  %228 = icmp eq i64 %226, %205
  %229 = and i1 %227, %228
  br i1 %229, label %230, label %335

230:                                              ; preds = %225
  %231 = mul i64 %203, %205
  %232 = icmp eq i64 %231, %207
  %233 = icmp eq i64 %231, %208
  %234 = and i1 %232, %233
  br i1 %234, label %235, label %335

235:                                              ; preds = %230
  %236 = mul i64 %206, %208
  %237 = icmp eq i64 %236, %210
  %238 = icmp eq i64 %236, %211
  %239 = and i1 %237, %238
  br i1 %239, label %240, label %335

240:                                              ; preds = %235
  %241 = mul i64 %209, %211
  %242 = icmp eq i64 %241, %213
  %243 = icmp eq i64 %241, %214
  %244 = and i1 %242, %243
  br i1 %244, label %245, label %335

245:                                              ; preds = %240
  %246 = mul i64 %212, %214
  %247 = icmp eq i64 %246, %170
  %248 = icmp eq i64 %246, %171
  %249 = and i1 %247, %248
  br i1 %249, label %304, label %335

250:                                              ; preds = %154, %282
  %251 = phi i64 [ 0, %154 ], [ %289, %282 ]
  %252 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %156, i64 %251, i32 2
  %253 = load i32, i32* %252, align 4, !tbaa !29
  %254 = sext i32 %253 to i64
  %255 = mul nsw i64 %254, %33
  %256 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %158, i64 %251, i32 2
  %257 = load i32, i32* %256, align 4, !tbaa !29
  %258 = sext i32 %257 to i64
  %259 = mul nsw i64 %258, %33
  %260 = icmp eq i64 %251, 0
  br i1 %260, label %276, label %261

261:                                              ; preds = %250
  %262 = icmp eq i64 %255, 0
  br i1 %262, label %263, label %265

263:                                              ; preds = %261
  %264 = trunc i64 %251 to i32
  br label %276

265:                                              ; preds = %261, %270
  %266 = phi i64 [ %271, %270 ], [ 0, %261 ]
  %267 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 %266
  %268 = load i64, i64* %267, align 8, !tbaa !6
  %269 = icmp ult i64 %255, %268
  br i1 %269, label %273, label %270

270:                                              ; preds = %265
  %271 = add nuw nsw i64 %266, 1
  %272 = icmp eq i64 %271, %251
  br i1 %272, label %273, label %265, !llvm.loop !33

273:                                              ; preds = %265, %270
  %274 = phi i64 [ %251, %270 ], [ %266, %265 ]
  %275 = trunc i64 %274 to i32
  br label %276

276:                                              ; preds = %263, %273, %250
  %277 = phi i32 [ 0, %250 ], [ %275, %273 ], [ %264, %263 ]
  %278 = zext i32 %277 to i64
  %279 = icmp ugt i64 %251, %278
  br i1 %279, label %280, label %282

280:                                              ; preds = %276
  %281 = sext i32 %277 to i64
  br label %291

282:                                              ; preds = %291, %276
  %283 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %156, i64 %251, i32 1
  %284 = load i32, i32* %283, align 4, !tbaa !34
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 %278
  store i64 %285, i64* %286, align 8, !tbaa !6
  %287 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 %278
  store i64 %255, i64* %287, align 8, !tbaa !6
  %288 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 %278
  store i64 %259, i64* %288, align 8, !tbaa !6
  %289 = add nuw nsw i64 %251, 1
  %290 = icmp eq i64 %289, %159
  br i1 %290, label %162, label %250, !llvm.loop !35

291:                                              ; preds = %280, %291
  %292 = phi i64 [ %251, %280 ], [ %293, %291 ]
  %293 = add nsw i64 %292, -1
  %294 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 %293
  %295 = load i64, i64* %294, align 8, !tbaa !6
  %296 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 %292
  store i64 %295, i64* %296, align 8, !tbaa !6
  %297 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 %293
  %298 = load i64, i64* %297, align 8, !tbaa !6
  %299 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 %292
  store i64 %298, i64* %299, align 8, !tbaa !6
  %300 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 %293
  %301 = load i64, i64* %300, align 8, !tbaa !6
  %302 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 %292
  store i64 %301, i64* %302, align 8, !tbaa !6
  %303 = icmp sgt i64 %293, %281
  br i1 %303, label %291, label %282, !llvm.loop !36

304:                                              ; preds = %245, %304
  %305 = phi i64 [ %327, %304 ], [ %190, %245 ]
  %306 = phi i64 [ %328, %304 ], [ %189, %245 ]
  %307 = phi i64 [ %329, %304 ], [ %188, %245 ]
  %308 = phi i64 [ %305, %304 ], [ %187, %245 ]
  %309 = phi i64 [ %306, %304 ], [ %186, %245 ]
  %310 = phi i64 [ %307, %304 ], [ %185, %245 ]
  %311 = phi i64 [ %308, %304 ], [ %184, %245 ]
  %312 = phi i64 [ %309, %304 ], [ %183, %245 ]
  %313 = phi i64 [ %310, %304 ], [ %182, %245 ]
  %314 = phi i64 [ %311, %304 ], [ %181, %245 ]
  %315 = phi i64 [ %312, %304 ], [ %180, %245 ]
  %316 = phi i64 [ %313, %304 ], [ %179, %245 ]
  %317 = phi i64 [ %314, %304 ], [ %178, %245 ]
  %318 = phi i64 [ %315, %304 ], [ %177, %245 ]
  %319 = phi i64 [ %316, %304 ], [ %176, %245 ]
  %320 = phi i64 [ %317, %304 ], [ %175, %245 ]
  %321 = phi i64 [ %318, %304 ], [ %174, %245 ]
  %322 = phi i64 [ %319, %304 ], [ %173, %245 ]
  %323 = phi i64 [ %320, %304 ], [ %172, %245 ]
  %324 = phi i64 [ %323, %304 ], [ %215, %245 ]
  %325 = phi i64 [ 0, %304 ], [ %195, %245 ]
  %326 = phi i64 [ 0, %304 ], [ %194, %245 ]
  %327 = phi i64 [ 1, %304 ], [ %193, %245 ]
  %328 = phi i64 [ %325, %304 ], [ %192, %245 ]
  %329 = phi i64 [ %326, %304 ], [ %191, %245 ]
  %330 = phi i64 [ %321, %304 ], [ %171, %245 ]
  %331 = mul i64 %324, %330
  %332 = icmp eq i64 %331, %322
  %333 = icmp eq i64 %331, %321
  %334 = and i1 %332, %333
  br i1 %334, label %304, label %335, !llvm.loop !37

335:                                              ; preds = %304, %245, %240, %235, %230, %225, %220, %169
  %336 = phi i64 [ %215, %169 ], [ %172, %220 ], [ %175, %225 ], [ %178, %230 ], [ %181, %235 ], [ %184, %240 ], [ %187, %245 ], [ %305, %304 ]
  %337 = phi i64 [ %214, %169 ], [ %171, %220 ], [ %174, %225 ], [ %177, %230 ], [ %180, %235 ], [ %183, %240 ], [ %186, %245 ], [ %306, %304 ]
  %338 = phi i64 [ %213, %169 ], [ %170, %220 ], [ %173, %225 ], [ %176, %230 ], [ %179, %235 ], [ %182, %240 ], [ %185, %245 ], [ %307, %304 ]
  %339 = phi i64 [ %212, %169 ], [ %215, %220 ], [ %172, %225 ], [ %175, %230 ], [ %178, %235 ], [ %181, %240 ], [ %184, %245 ], [ %308, %304 ]
  %340 = phi i64 [ %211, %169 ], [ %214, %220 ], [ %171, %225 ], [ %174, %230 ], [ %177, %235 ], [ %180, %240 ], [ %183, %245 ], [ %309, %304 ]
  %341 = phi i64 [ %210, %169 ], [ %213, %220 ], [ %170, %225 ], [ %173, %230 ], [ %176, %235 ], [ %179, %240 ], [ %182, %245 ], [ %310, %304 ]
  %342 = phi i64 [ %209, %169 ], [ %212, %220 ], [ %215, %225 ], [ %172, %230 ], [ %175, %235 ], [ %178, %240 ], [ %181, %245 ], [ %311, %304 ]
  %343 = phi i64 [ %208, %169 ], [ %211, %220 ], [ %214, %225 ], [ %171, %230 ], [ %174, %235 ], [ %177, %240 ], [ %180, %245 ], [ %312, %304 ]
  %344 = phi i64 [ %207, %169 ], [ %210, %220 ], [ %213, %225 ], [ %170, %230 ], [ %173, %235 ], [ %176, %240 ], [ %179, %245 ], [ %313, %304 ]
  %345 = phi i64 [ %206, %169 ], [ %209, %220 ], [ %212, %225 ], [ %215, %230 ], [ %172, %235 ], [ %175, %240 ], [ %178, %245 ], [ %314, %304 ]
  %346 = phi i64 [ %205, %169 ], [ %208, %220 ], [ %211, %225 ], [ %214, %230 ], [ %171, %235 ], [ %174, %240 ], [ %177, %245 ], [ %315, %304 ]
  %347 = phi i64 [ %204, %169 ], [ %207, %220 ], [ %210, %225 ], [ %213, %230 ], [ %170, %235 ], [ %173, %240 ], [ %176, %245 ], [ %316, %304 ]
  %348 = phi i64 [ %203, %169 ], [ %206, %220 ], [ %209, %225 ], [ %212, %230 ], [ %215, %235 ], [ %172, %240 ], [ %175, %245 ], [ %317, %304 ]
  %349 = phi i64 [ %202, %169 ], [ %205, %220 ], [ %208, %225 ], [ %211, %230 ], [ %214, %235 ], [ %171, %240 ], [ %174, %245 ], [ %318, %304 ]
  %350 = phi i64 [ %201, %169 ], [ %204, %220 ], [ %207, %225 ], [ %210, %230 ], [ %213, %235 ], [ %170, %240 ], [ %173, %245 ], [ %319, %304 ]
  %351 = phi i64 [ %200, %169 ], [ %203, %220 ], [ %206, %225 ], [ %209, %230 ], [ %212, %235 ], [ %215, %240 ], [ %172, %245 ], [ %320, %304 ]
  %352 = phi i64 [ %199, %169 ], [ %202, %220 ], [ %205, %225 ], [ %208, %230 ], [ %211, %235 ], [ %214, %240 ], [ %171, %245 ], [ %321, %304 ]
  %353 = phi i64 [ %198, %169 ], [ %201, %220 ], [ %204, %225 ], [ %207, %230 ], [ %210, %235 ], [ %213, %240 ], [ %170, %245 ], [ %322, %304 ]
  %354 = phi i64 [ %197, %169 ], [ %200, %220 ], [ %203, %225 ], [ %206, %230 ], [ %209, %235 ], [ %212, %240 ], [ %215, %245 ], [ %323, %304 ]
  %355 = phi i64 [ %195, %169 ], [ 0, %220 ], [ 0, %225 ], [ 0, %230 ], [ 0, %235 ], [ 0, %240 ], [ 0, %245 ], [ 0, %304 ]
  %356 = phi i64 [ %194, %169 ], [ 0, %220 ], [ 0, %225 ], [ 0, %230 ], [ 0, %235 ], [ 0, %240 ], [ 0, %245 ], [ 0, %304 ]
  %357 = phi i64 [ %193, %169 ], [ 1, %220 ], [ 1, %225 ], [ 1, %230 ], [ 1, %235 ], [ 1, %240 ], [ 1, %245 ], [ 1, %304 ]
  %358 = phi i64 [ %192, %169 ], [ %195, %220 ], [ 0, %225 ], [ 0, %230 ], [ 0, %235 ], [ 0, %240 ], [ 0, %245 ], [ 0, %304 ]
  %359 = phi i64 [ %191, %169 ], [ %194, %220 ], [ 0, %225 ], [ 0, %230 ], [ 0, %235 ], [ 0, %240 ], [ 0, %245 ], [ 0, %304 ]
  %360 = phi i64 [ %190, %169 ], [ %193, %220 ], [ 1, %225 ], [ 1, %230 ], [ 1, %235 ], [ 1, %240 ], [ 1, %245 ], [ 1, %304 ]
  %361 = phi i64 [ %189, %169 ], [ %192, %220 ], [ %195, %225 ], [ 0, %230 ], [ 0, %235 ], [ 0, %240 ], [ 0, %245 ], [ 0, %304 ]
  %362 = phi i64 [ %188, %169 ], [ %191, %220 ], [ %194, %225 ], [ 0, %230 ], [ 0, %235 ], [ 0, %240 ], [ 0, %245 ], [ 0, %304 ]
  %363 = phi i64 [ %187, %169 ], [ %190, %220 ], [ %193, %225 ], [ 1, %230 ], [ 1, %235 ], [ 1, %240 ], [ 1, %245 ], [ 1, %304 ]
  %364 = phi i64 [ %186, %169 ], [ %189, %220 ], [ %192, %225 ], [ %195, %230 ], [ 0, %235 ], [ 0, %240 ], [ 0, %245 ], [ 0, %304 ]
  %365 = phi i64 [ %185, %169 ], [ %188, %220 ], [ %191, %225 ], [ %194, %230 ], [ 0, %235 ], [ 0, %240 ], [ 0, %245 ], [ 0, %304 ]
  %366 = phi i64 [ %184, %169 ], [ %187, %220 ], [ %190, %225 ], [ %193, %230 ], [ 1, %235 ], [ 1, %240 ], [ 1, %245 ], [ 1, %304 ]
  %367 = phi i64 [ %183, %169 ], [ %186, %220 ], [ %189, %225 ], [ %192, %230 ], [ %195, %235 ], [ 0, %240 ], [ 0, %245 ], [ 0, %304 ]
  %368 = phi i64 [ %182, %169 ], [ %185, %220 ], [ %188, %225 ], [ %191, %230 ], [ %194, %235 ], [ 0, %240 ], [ 0, %245 ], [ 0, %304 ]
  %369 = phi i64 [ %181, %169 ], [ %184, %220 ], [ %187, %225 ], [ %190, %230 ], [ %193, %235 ], [ 1, %240 ], [ 1, %245 ], [ 1, %304 ]
  %370 = phi i64 [ %180, %169 ], [ %183, %220 ], [ %186, %225 ], [ %189, %230 ], [ %192, %235 ], [ %195, %240 ], [ 0, %245 ], [ 0, %304 ]
  %371 = phi i64 [ %179, %169 ], [ %182, %220 ], [ %185, %225 ], [ %188, %230 ], [ %191, %235 ], [ %194, %240 ], [ 0, %245 ], [ 0, %304 ]
  %372 = phi i64 [ %178, %169 ], [ %181, %220 ], [ %184, %225 ], [ %187, %230 ], [ %190, %235 ], [ %193, %240 ], [ 1, %245 ], [ 1, %304 ]
  %373 = phi i64 [ %177, %169 ], [ %180, %220 ], [ %183, %225 ], [ %186, %230 ], [ %189, %235 ], [ %192, %240 ], [ %195, %245 ], [ 0, %304 ]
  %374 = phi i64 [ %176, %169 ], [ %179, %220 ], [ %182, %225 ], [ %185, %230 ], [ %188, %235 ], [ %191, %240 ], [ %194, %245 ], [ 0, %304 ]
  %375 = phi i64 [ %175, %169 ], [ %178, %220 ], [ %181, %225 ], [ %184, %230 ], [ %187, %235 ], [ %190, %240 ], [ %193, %245 ], [ 1, %304 ]
  %376 = phi i64 [ %174, %169 ], [ %177, %220 ], [ %180, %225 ], [ %183, %230 ], [ %186, %235 ], [ %189, %240 ], [ %192, %245 ], [ %325, %304 ]
  %377 = phi i64 [ %173, %169 ], [ %176, %220 ], [ %179, %225 ], [ %182, %230 ], [ %185, %235 ], [ %188, %240 ], [ %191, %245 ], [ %326, %304 ]
  %378 = phi i64 [ %172, %169 ], [ %175, %220 ], [ %178, %225 ], [ %181, %230 ], [ %184, %235 ], [ %187, %240 ], [ %190, %245 ], [ %327, %304 ]
  %379 = phi i64 [ %171, %169 ], [ %174, %220 ], [ %177, %225 ], [ %180, %230 ], [ %183, %235 ], [ %186, %240 ], [ %189, %245 ], [ %328, %304 ]
  %380 = phi i64 [ %170, %169 ], [ %173, %220 ], [ %176, %225 ], [ %179, %230 ], [ %182, %235 ], [ %185, %240 ], [ %188, %245 ], [ %329, %304 ]
  %381 = phi i64 [ %216, %169 ], [ %221, %220 ], [ %226, %225 ], [ %231, %230 ], [ %236, %235 ], [ %241, %240 ], [ %246, %245 ], [ %331, %304 ]
  store i64 %381, i64* %34, align 8, !tbaa !15
  store i64 %354, i64* %35, align 8, !tbaa !6
  store i64 %353, i64* %36, align 8, !tbaa !6
  store i64 %352, i64* %37, align 8, !tbaa !6
  store i64 %351, i64* %38, align 8, !tbaa !6
  store i64 %350, i64* %40, align 8, !tbaa !6
  store i64 %349, i64* %42, align 8, !tbaa !6
  store i64 %348, i64* %44, align 8, !tbaa !6
  store i64 %347, i64* %45, align 8, !tbaa !6
  store i64 %346, i64* %46, align 8, !tbaa !6
  store i64 %345, i64* %47, align 8, !tbaa !6
  store i64 %344, i64* %49, align 8, !tbaa !6
  store i64 %343, i64* %51, align 8, !tbaa !6
  store i64 %342, i64* %53, align 8, !tbaa !6
  store i64 %341, i64* %54, align 8, !tbaa !6
  store i64 %340, i64* %55, align 8, !tbaa !6
  store i64 %339, i64* %56, align 8, !tbaa !6
  store i64 %338, i64* %58, align 8, !tbaa !6
  store i64 %337, i64* %60, align 8, !tbaa !6
  store i64 %336, i64* %62, align 8, !tbaa !6
  store i64 %380, i64* %63, align 8, !tbaa !6
  store i64 %379, i64* %64, align 8, !tbaa !6
  store i64 %378, i64* %65, align 8, !tbaa !6
  store i64 %377, i64* %67, align 8, !tbaa !6
  store i64 %376, i64* %69, align 8, !tbaa !6
  store i64 %375, i64* %71, align 8, !tbaa !6
  store i64 %374, i64* %72, align 8, !tbaa !6
  store i64 %373, i64* %73, align 8, !tbaa !6
  store i64 %372, i64* %74, align 8, !tbaa !6
  store i64 %371, i64* %76, align 8, !tbaa !6
  store i64 %370, i64* %78, align 8, !tbaa !6
  store i64 %369, i64* %80, align 8, !tbaa !6
  store i64 %368, i64* %81, align 8, !tbaa !6
  store i64 %367, i64* %82, align 8, !tbaa !6
  store i64 %366, i64* %83, align 8, !tbaa !6
  store i64 %365, i64* %85, align 8, !tbaa !6
  store i64 %364, i64* %87, align 8, !tbaa !6
  store i64 %363, i64* %89, align 8, !tbaa !6
  store i64 %362, i64* %90, align 8, !tbaa !6
  store i64 %361, i64* %91, align 8, !tbaa !6
  store i64 %360, i64* %92, align 8, !tbaa !6
  store i64 %359, i64* %94, align 8, !tbaa !6
  store i64 %358, i64* %96, align 8, !tbaa !6
  store i64 %357, i64* %98, align 8, !tbaa !6
  store i64 %356, i64* %99, align 8, !tbaa !6
  store i64 %355, i64* %100, align 8, !tbaa !6
  br label %382

382:                                              ; preds = %335, %153, %162
  %383 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(416) %383, i8* nonnull align 8 dereferenceable(416) %7, i64 416, i1 false), !tbaa.struct !39
  br label %384

384:                                              ; preds = %382, %160, %149
  call void @llvm.lifetime.end.p0i8(i64 416, i8* nonnull %7) #12
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind mustprogress
define weak dso_local void @"?make_host_to_device_copy@Internal@Runtime@Halide@@YA?AUdevice_copy@123@PEBUhalide_buffer_t@@@Z"(%"struct.Halide::Runtime::Internal::device_copy"* noalias sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %0, %struct.halide_buffer_t* %1) local_unnamed_addr #0 {
  tail call void @"?make_buffer_copy@Internal@Runtime@Halide@@YA?AUdevice_copy@123@PEBUhalide_buffer_t@@_N01@Z"(%"struct.Halide::Runtime::Internal::device_copy"* sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %0, %struct.halide_buffer_t* %1, i1 true, %struct.halide_buffer_t* %1, i1 false) #11
  ret void
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @"?make_device_to_host_copy@Internal@Runtime@Halide@@YA?AUdevice_copy@123@PEBUhalide_buffer_t@@@Z"(%"struct.Halide::Runtime::Internal::device_copy"* noalias sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %0, %struct.halide_buffer_t* %1) local_unnamed_addr #0 {
  tail call void @"?make_buffer_copy@Internal@Runtime@Halide@@YA?AUdevice_copy@123@PEBUhalide_buffer_t@@_N01@Z"(%"struct.Halide::Runtime::Internal::device_copy"* sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %0, %struct.halide_buffer_t* %1, i1 false, %struct.halide_buffer_t* %1, i1 true) #11
  ret void
}

; Function Attrs: nounwind
define dso_local i8* @"?d3d12_load_library@@YAPEAXPEBD@Z"(i8* %0) local_unnamed_addr #4 {
  %2 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  %3 = tail call i8* @halide_load_library(i8* %0) #10
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %50

5:                                                ; preds = %1
  %6 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %6) #12
  %7 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %2, i64 0, i32 3
  store i8* null, i8** %7, align 8, !tbaa !41
  %8 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %2, i64 0, i32 4
  store i8 1, i8* %8, align 8, !tbaa !44
  %9 = tail call i8* @malloc(i64 1024) #10
  %10 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %2, i64 0, i32 0
  store i8* %9, i8** %10, align 8, !tbaa !45
  %11 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %2, i64 0, i32 1
  %12 = icmp eq i8* %9, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %5
  %14 = getelementptr inbounds i8, i8* %9, i64 1023
  store i8 0, i8* %14, align 1, !tbaa !40
  br label %15

15:                                               ; preds = %5, %13
  %16 = phi i8* [ %14, %13 ], [ null, %5 ]
  %17 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %2, i64 0, i32 2
  store i8* %16, i8** %17, align 8
  %18 = tail call i8* @halide_string_to_string(i8* %9, i8* %16, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @"??_C@_0CB@OJMCFILH@Unable?5to?5load?5runtime?5library?3?5@", i64 0, i64 0)) #10
  %19 = icmp eq i8* %0, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = tail call i8* @halide_string_to_string(i8* %18, i8* %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"??_C@_09CGLEKJAK@?$DMnullptr?$DO?$AA@", i64 0, i64 0)) #10
  br label %24

22:                                               ; preds = %15
  %23 = tail call i8* @halide_string_to_string(i8* %18, i8* %16, i8* nonnull %0) #10
  br label %24

24:                                               ; preds = %20, %22
  %25 = phi i8* [ %23, %22 ], [ %21, %20 ]
  %26 = tail call i8* @halide_string_to_string(i8* %25, i8* %16, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #10
  %27 = tail call i8* @halide_string_to_string(i8* %26, i8* %16, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @"??_C@_0CE@MGMMPJGA@vvvvv?5D3D12?5Begin?5Debug?5Dump?5vvv@", i64 0, i64 0)) #10
  store i8* %27, i8** %11, align 8, !tbaa !46
  call fastcc void @"?d3d12_debug_dump@@YAXAEAV?$Printer@$00$0EAA@@?A0x2B71E647@Internal@Runtime@Halide@@@Z"(%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* nonnull align 8 dereferenceable(40) %2) #11
  %28 = load i8*, i8** %17, align 8, !tbaa !47
  %29 = load i8*, i8** %11, align 8, !tbaa !46
  %30 = tail call i8* @halide_string_to_string(i8* %29, i8* %28, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @"??_C@_0CE@PCPJBLP@?$FO?$FO?$FO?$FO?$FO?5D3D12?5?5End?5?5Debug?5Dump?5?$FO?$FO?$FO@", i64 0, i64 0)) #10
  %31 = tail call i8* @halide_string_to_string(i8* %30, i8* %28, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @"??_C@_0BA@FGKOLOB@D3D12?5HALT?5?$CB?$CB?$CB?6?$AA@", i64 0, i64 0)) #10
  store i8* %31, i8** %11, align 8, !tbaa !46
  %32 = load i8*, i8** %10, align 8, !tbaa !45
  %33 = icmp eq i8* %32, null
  %34 = load i8*, i8** %7, align 8, !tbaa !41
  br i1 %33, label %35, label %36

35:                                               ; preds = %24
  tail call void @halide_error(i8* %34, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #10
  br label %42

36:                                               ; preds = %24
  %37 = ptrtoint i8* %31 to i64
  %38 = ptrtoint i8* %32 to i64
  %39 = add i64 %37, 1
  %40 = sub i64 %39, %38
  %41 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %34, i8* nonnull %32, i64 %40) #10
  tail call void @halide_error(i8* %34, i8* nonnull %32) #10
  br label %42

42:                                               ; preds = %36, %35
  %43 = load i8, i8* %8, align 8, !tbaa !44, !range !48
  %44 = icmp eq i8 %43, 0
  %45 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %2, i64 0, i32 5, i64 0
  %46 = icmp eq i8* %32, %45
  %47 = or i1 %44, %46
  br i1 %47, label %49, label %48

48:                                               ; preds = %42
  call void @free(i8* %32) #10
  br label %49

49:                                               ; preds = %42, %48
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %6) #12
  br label %50

50:                                               ; preds = %1, %49
  ret i8* %3
}

declare extern_weak i8* @halide_load_library(i8*) local_unnamed_addr #2

; Function Attrs: nounwind mustprogress
define internal fastcc void @"?d3d12_debug_dump@@YAXAEAV?$Printer@$00$0EAA@@?A0x2B71E647@Internal@Runtime@Halide@@@Z"(%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* nocapture nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 {
  %2 = alloca %struct.DXGI_ADAPTER_DESC1, align 8
  %3 = alloca [128 x i8], align 1
  %4 = load %struct.halide_d3d12compute_device*, %struct.halide_d3d12compute_device** @"?device@D3D12Compute@Internal@Runtime@Halide@@3PEAUhalide_d3d12compute_device@@EA", align 8, !tbaa !49
  %5 = icmp eq %struct.halide_d3d12compute_device* %4, null
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %0, i64 0, i32 2
  %8 = load i8*, i8** %7, align 8, !tbaa !47
  %9 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %0, i64 0, i32 1
  %10 = load i8*, i8** %9, align 8, !tbaa !46
  %11 = tail call i8* @halide_string_to_string(i8* %10, i8* %8, i8* nonnull getelementptr inbounds ([38 x i8], [38 x i8]* @"??_C@_0CG@BDJKEANK@Debug?5info?5not?5available?3?5no?5dev@", i64 0, i64 0)) #10
  store i8* %11, i8** %9, align 8, !tbaa !46
  br label %63

12:                                               ; preds = %1
  %13 = load %struct.IDXGIAdapter1*, %struct.IDXGIAdapter1** @"?dxgiAdapter@D3D12Compute@Internal@Runtime@Halide@@3PEAUIDXGIAdapter1@@EA", align 8, !tbaa !49
  %14 = icmp eq %struct.IDXGIAdapter1* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([125 x i8], [125 x i8]* @"??_C@_0HN@LLGMPKNO@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  tail call void @abort() #10
  %16 = load %struct.IDXGIAdapter1*, %struct.IDXGIAdapter1** @"?dxgiAdapter@D3D12Compute@Internal@Runtime@Halide@@3PEAUIDXGIAdapter1@@EA", align 8, !tbaa !49
  br label %17

17:                                               ; preds = %12, %15
  %18 = phi %struct.IDXGIAdapter1* [ %13, %12 ], [ %16, %15 ]
  %19 = bitcast %struct.DXGI_ADAPTER_DESC1* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 312, i8* nonnull %19) #12
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(312) %19, i8 0, i64 312, i1 false)
  %20 = bitcast %struct.IDXGIAdapter1* %18 to i32 (%struct.IDXGIAdapter1*, %struct.DXGI_ADAPTER_DESC1*)***
  %21 = load i32 (%struct.IDXGIAdapter1*, %struct.DXGI_ADAPTER_DESC1*)**, i32 (%struct.IDXGIAdapter1*, %struct.DXGI_ADAPTER_DESC1*)*** %20, align 8, !tbaa !50
  %22 = getelementptr inbounds i32 (%struct.IDXGIAdapter1*, %struct.DXGI_ADAPTER_DESC1*)*, i32 (%struct.IDXGIAdapter1*, %struct.DXGI_ADAPTER_DESC1*)** %21, i64 10
  %23 = load i32 (%struct.IDXGIAdapter1*, %struct.DXGI_ADAPTER_DESC1*)*, i32 (%struct.IDXGIAdapter1*, %struct.DXGI_ADAPTER_DESC1*)** %22, align 8
  %24 = call i32 %23(%struct.IDXGIAdapter1* nonnull dereferenceable(8) %18, %struct.DXGI_ADAPTER_DESC1* nonnull %2) #10
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %17
  %27 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %0, i64 0, i32 2
  %28 = load i8*, i8** %27, align 8, !tbaa !47
  %29 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %0, i64 0, i32 1
  %30 = load i8*, i8** %29, align 8, !tbaa !46
  %31 = call i8* @halide_string_to_string(i8* %30, i8* %28, i8* nonnull getelementptr inbounds ([58 x i8], [58 x i8]* @"??_C@_0DK@KDCNPKGG@Unable?5to?5retrieve?5information?5a@", i64 0, i64 0)) #10
  store i8* %31, i8** %29, align 8, !tbaa !46
  br label %62

32:                                               ; preds = %17
  %33 = call i8* @malloc(i64 65536) #10
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %0, i64 0, i32 2
  %37 = load i8*, i8** %36, align 8, !tbaa !47
  %38 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %0, i64 0, i32 1
  %39 = load i8*, i8** %38, align 8, !tbaa !46
  %40 = call i8* @halide_string_to_string(i8* %39, i8* %37, i8* nonnull getelementptr inbounds ([47 x i8], [47 x i8]* @"??_C@_0CP@JMHIFPPF@Unable?5to?5allocate?5memory?5for?5th@", i64 0, i64 0)) #10
  store i8* %40, i8** %38, align 8, !tbaa !46
  br label %62

41:                                               ; preds = %32
  %42 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %42) #12
  br label %54

43:                                               ; preds = %54
  %44 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 127
  store i8 0, i8* %44, align 1, !tbaa !40
  %45 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %0, i64 0, i32 2
  %46 = load i8*, i8** %45, align 8, !tbaa !47
  %47 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %0, i64 0, i32 1
  %48 = load i8*, i8** %47, align 8, !tbaa !46
  %49 = call i8* @halide_string_to_string(i8* %48, i8* %46, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@CHHGHFME@D3D12?5Device?5Adapter?3?5?$AA@", i64 0, i64 0)) #10
  store i8* %49, i8** %47, align 8, !tbaa !46
  %50 = load i8*, i8** %45, align 8, !tbaa !47
  %51 = call i8* @halide_string_to_string(i8* %49, i8* %50, i8* nonnull %42) #10
  store i8* %51, i8** %47, align 8, !tbaa !46
  %52 = load i8*, i8** %45, align 8, !tbaa !47
  %53 = call i8* @halide_string_to_string(i8* %51, i8* %52, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #10
  store i8* %53, i8** %47, align 8, !tbaa !46
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %42) #12
  br label %62

54:                                               ; preds = %41, %54
  %55 = phi i64 [ 0, %41 ], [ %60, %54 ]
  %56 = getelementptr inbounds %struct.DXGI_ADAPTER_DESC1, %struct.DXGI_ADAPTER_DESC1* %2, i64 0, i32 0, i64 %55
  %57 = load i16, i16* %56, align 2, !tbaa !52
  %58 = trunc i16 %57 to i8
  %59 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 %55
  store i8 %58, i8* %59, align 1, !tbaa !40
  %60 = add nuw nsw i64 %55, 1
  %61 = icmp eq i64 %60, 128
  br i1 %61, label %43, label %54, !llvm.loop !53

62:                                               ; preds = %35, %43, %26
  call void @llvm.lifetime.end.p0i8(i64 312, i8* nonnull %19) #12
  br label %63

63:                                               ; preds = %62, %6
  ret void
}

; Function Attrs: nounwind
define dso_local i8* @"?d3d12_get_library_symbol@@YAPEAXPEAXPEBD@Z"(i8* %0, i8* %1) local_unnamed_addr #4 {
  %3 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  %4 = tail call i8* @halide_get_library_symbol(i8* %0, i8* %1) #10
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %51

6:                                                ; preds = %2
  %7 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %7) #12
  %8 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, i64 0, i32 3
  store i8* null, i8** %8, align 8, !tbaa !41
  %9 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, i64 0, i32 4
  store i8 1, i8* %9, align 8, !tbaa !44
  %10 = tail call i8* @malloc(i64 1024) #10
  %11 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, i64 0, i32 0
  store i8* %10, i8** %11, align 8, !tbaa !45
  %12 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, i64 0, i32 1
  %13 = icmp eq i8* %10, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %6
  %15 = getelementptr inbounds i8, i8* %10, i64 1023
  store i8 0, i8* %15, align 1, !tbaa !40
  br label %16

16:                                               ; preds = %6, %14
  %17 = phi i8* [ %15, %14 ], [ null, %6 ]
  %18 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, i64 0, i32 2
  store i8* %17, i8** %18, align 8
  %19 = tail call i8* @halide_string_to_string(i8* %10, i8* %17, i8* nonnull getelementptr inbounds ([19 x i8], [19 x i8]* @"??_C@_0BD@FEGNPKLO@Symbol?5not?5found?3?5?$AA@", i64 0, i64 0)) #10
  %20 = icmp eq i8* %1, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = tail call i8* @halide_string_to_string(i8* %19, i8* %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"??_C@_09CGLEKJAK@?$DMnullptr?$DO?$AA@", i64 0, i64 0)) #10
  br label %25

23:                                               ; preds = %16
  %24 = tail call i8* @halide_string_to_string(i8* %19, i8* %17, i8* nonnull %1) #10
  br label %25

25:                                               ; preds = %21, %23
  %26 = phi i8* [ %24, %23 ], [ %22, %21 ]
  %27 = tail call i8* @halide_string_to_string(i8* %26, i8* %17, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #10
  %28 = tail call i8* @halide_string_to_string(i8* %27, i8* %17, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @"??_C@_0CE@MGMMPJGA@vvvvv?5D3D12?5Begin?5Debug?5Dump?5vvv@", i64 0, i64 0)) #10
  store i8* %28, i8** %12, align 8, !tbaa !46
  call fastcc void @"?d3d12_debug_dump@@YAXAEAV?$Printer@$00$0EAA@@?A0x2B71E647@Internal@Runtime@Halide@@@Z"(%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* nonnull align 8 dereferenceable(40) %3) #11
  %29 = load i8*, i8** %18, align 8, !tbaa !47
  %30 = load i8*, i8** %12, align 8, !tbaa !46
  %31 = tail call i8* @halide_string_to_string(i8* %30, i8* %29, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @"??_C@_0CE@PCPJBLP@?$FO?$FO?$FO?$FO?$FO?5D3D12?5?5End?5?5Debug?5Dump?5?$FO?$FO?$FO@", i64 0, i64 0)) #10
  %32 = tail call i8* @halide_string_to_string(i8* %31, i8* %29, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @"??_C@_0BA@FGKOLOB@D3D12?5HALT?5?$CB?$CB?$CB?6?$AA@", i64 0, i64 0)) #10
  store i8* %32, i8** %12, align 8, !tbaa !46
  %33 = load i8*, i8** %11, align 8, !tbaa !45
  %34 = icmp eq i8* %33, null
  %35 = load i8*, i8** %8, align 8, !tbaa !41
  br i1 %34, label %36, label %37

36:                                               ; preds = %25
  tail call void @halide_error(i8* %35, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #10
  br label %43

37:                                               ; preds = %25
  %38 = ptrtoint i8* %32 to i64
  %39 = ptrtoint i8* %33 to i64
  %40 = add i64 %38, 1
  %41 = sub i64 %40, %39
  %42 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %35, i8* nonnull %33, i64 %41) #10
  tail call void @halide_error(i8* %35, i8* nonnull %33) #10
  br label %43

43:                                               ; preds = %37, %36
  %44 = load i8, i8* %9, align 8, !tbaa !44, !range !48
  %45 = icmp eq i8 %44, 0
  %46 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, i64 0, i32 5, i64 0
  %47 = icmp eq i8* %33, %46
  %48 = or i1 %45, %47
  br i1 %48, label %50, label %49

49:                                               ; preds = %43
  call void @free(i8* %33) #10
  br label %50

50:                                               ; preds = %43, %49
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %7) #12
  br label %51

51:                                               ; preds = %2, %50
  ret i8* %4
}

declare extern_weak i8* @halide_get_library_symbol(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
define weak dso_local i32 @"?wrap_buffer@D3D12Compute@Internal@Runtime@Halide@@YAHPEAXPEAUhalide_buffer_t@@PEAUd3d12_buffer@1234@@Z"(i8* %0, %struct.halide_buffer_t* %1, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %2) local_unnamed_addr #4 {
  %4 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  %5 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %6 = load i64, i64* %5, align 8, !tbaa !25
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([122 x i8], [122 x i8]* @"??_C@_0HK@DOPNIAMO@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  tail call void @abort() #10
  %9 = load i64, i64* %5, align 8, !tbaa !25
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %244

11:                                               ; preds = %3, %8
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %2, i64 0, i32 0
  %13 = load %struct.ID3D12Resource*, %struct.ID3D12Resource** %12, align 8, !tbaa !54
  %14 = icmp eq %struct.ID3D12Resource* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([130 x i8], [130 x i8]* @"??_C@_0IC@DAJENPLN@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  tail call void @abort() #10
  br label %16

16:                                               ; preds = %11, %15
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %2, i64 0, i32 3
  store i32 0, i32* %17, align 8, !tbaa !59
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %2, i64 0, i32 5
  store i32 0, i32* %18, align 8, !tbaa !60
  %19 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 5
  %20 = load i32, i32* %19, align 4, !tbaa !27
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 1
  %24 = load i8, i8* %23, align 1, !tbaa !26
  br label %68

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 6
  %27 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %26, align 8, !tbaa !28
  %28 = zext i32 %20 to i64
  br label %29

29:                                               ; preds = %43, %25
  %30 = phi i64 [ 0, %25 ], [ %45, %43 ]
  %31 = phi i64 [ 0, %25 ], [ %44, %43 ]
  %32 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %27, i64 %30, i32 2
  %33 = load i32, i32* %32, align 4, !tbaa !29
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %29
  %36 = zext i32 %33 to i64
  %37 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %27, i64 %30, i32 1
  %38 = load i32, i32* %37, align 4, !tbaa !34
  %39 = add nsw i32 %38, -1
  %40 = zext i32 %39 to i64
  %41 = mul nuw nsw i64 %40, %36
  %42 = add i64 %41, %31
  br label %43

43:                                               ; preds = %35, %29
  %44 = phi i64 [ %42, %35 ], [ %31, %29 ]
  %45 = add nuw nsw i64 %30, 1
  %46 = icmp eq i64 %45, %28
  br i1 %46, label %47, label %29, !llvm.loop !61

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 1
  %49 = load i8, i8* %48, align 1, !tbaa !26
  br label %50

50:                                               ; preds = %64, %47
  %51 = phi i64 [ 0, %47 ], [ %66, %64 ]
  %52 = phi i64 [ 0, %47 ], [ %65, %64 ]
  %53 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %27, i64 %51, i32 2
  %54 = load i32, i32* %53, align 4, !tbaa !29
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %50
  %57 = zext i32 %54 to i64
  %58 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %27, i64 %51, i32 1
  %59 = load i32, i32* %58, align 4, !tbaa !34
  %60 = add nsw i32 %59, -1
  %61 = zext i32 %60 to i64
  %62 = mul nuw i64 %61, %57
  %63 = add i64 %62, %52
  br label %64

64:                                               ; preds = %56, %50
  %65 = phi i64 [ %63, %56 ], [ %52, %50 ]
  %66 = add nuw nsw i64 %51, 1
  %67 = icmp eq i64 %66, %28
  br i1 %67, label %68, label %50, !llvm.loop !62

68:                                               ; preds = %64, %22
  %69 = phi i8 [ %24, %22 ], [ %49, %64 ]
  %70 = phi i64 [ 0, %22 ], [ %44, %64 ]
  %71 = phi i64 [ 0, %22 ], [ %65, %64 ]
  %72 = zext i8 %69 to i64
  %73 = add nuw nsw i64 %72, 7
  %74 = lshr i64 %73, 3
  %75 = add i64 %70, 1
  %76 = sub i64 %75, %71
  %77 = mul i64 %76, %74
  %78 = trunc i64 %77 to i32
  %79 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %2, i64 0, i32 2
  store i32 %78, i32* %79, align 4, !tbaa !63
  br i1 %21, label %80, label %120

80:                                               ; preds = %68
  %81 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 6
  %82 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %81, align 8, !tbaa !28
  %83 = zext i32 %20 to i64
  br label %84

84:                                               ; preds = %98, %80
  %85 = phi i64 [ 0, %80 ], [ %100, %98 ]
  %86 = phi i64 [ 0, %80 ], [ %99, %98 ]
  %87 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %82, i64 %85, i32 2
  %88 = load i32, i32* %87, align 4, !tbaa !29
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %84
  %91 = zext i32 %88 to i64
  %92 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %82, i64 %85, i32 1
  %93 = load i32, i32* %92, align 4, !tbaa !34
  %94 = add nsw i32 %93, -1
  %95 = sext i32 %94 to i64
  %96 = mul nsw i64 %95, %91
  %97 = add nsw i64 %96, %86
  br label %98

98:                                               ; preds = %90, %84
  %99 = phi i64 [ %97, %90 ], [ %86, %84 ]
  %100 = add nuw nsw i64 %85, 1
  %101 = icmp eq i64 %100, %83
  br i1 %101, label %102, label %84, !llvm.loop !61

102:                                              ; preds = %98, %116
  %103 = phi i64 [ %118, %116 ], [ 0, %98 ]
  %104 = phi i64 [ %117, %116 ], [ 0, %98 ]
  %105 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %82, i64 %103, i32 2
  %106 = load i32, i32* %105, align 4, !tbaa !29
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %116

108:                                              ; preds = %102
  %109 = sext i32 %106 to i64
  %110 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %82, i64 %103, i32 1
  %111 = load i32, i32* %110, align 4, !tbaa !34
  %112 = add nsw i32 %111, -1
  %113 = sext i32 %112 to i64
  %114 = mul nsw i64 %113, %109
  %115 = add nsw i64 %114, %104
  br label %116

116:                                              ; preds = %108, %102
  %117 = phi i64 [ %115, %108 ], [ %104, %102 ]
  %118 = add nuw nsw i64 %103, 1
  %119 = icmp eq i64 %118, %83
  br i1 %119, label %120, label %102, !llvm.loop !62

120:                                              ; preds = %116, %68
  %121 = phi i64 [ 0, %68 ], [ %99, %116 ]
  %122 = phi i64 [ 0, %68 ], [ %117, %116 ]
  %123 = add nsw i64 %121, 1
  %124 = sub i64 %123, %122
  %125 = mul i64 %124, %74
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %120
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"??_C@_0HH@DCCLAMGD@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  tail call void @abort() #10
  %128 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 1
  %129 = load i8, i8* %128, align 1, !tbaa !26
  %130 = zext i8 %129 to i64
  %131 = add nuw nsw i64 %130, 7
  %132 = lshr i64 %131, 3
  br label %133

133:                                              ; preds = %127, %120
  %134 = phi i64 [ %132, %127 ], [ %74, %120 ]
  %135 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 2
  %136 = load i16, i16* %135, align 2, !tbaa !64
  %137 = zext i16 %136 to i64
  %138 = mul nuw nsw i64 %134, %137
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %133
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([118 x i8], [118 x i8]* @"??_C@_0HG@CAELBHFM@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  tail call void @abort() #10
  br label %141

141:                                              ; preds = %140, %133
  %142 = freeze i64 %125
  %143 = freeze i64 %138
  %144 = udiv i64 %142, %143
  %145 = mul i64 %144, %143
  %146 = sub i64 %142, %145
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %149, label %148

148:                                              ; preds = %141
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([135 x i8], [135 x i8]* @"??_C@_0IH@ELBHFNGA@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  tail call void @abort() #10
  br label %149

149:                                              ; preds = %141, %148
  %150 = trunc i64 %144 to i32
  %151 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %2, i64 0, i32 4
  store i32 %150, i32* %151, align 4, !tbaa !65
  %152 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4
  %153 = bitcast %struct.halide_type_t* %152 to i32*
  %154 = load i32, i32* %153, align 8, !tbaa.struct !66
  %155 = zext i32 %154 to i64
  %156 = trunc i32 %154 to i8
  %157 = lshr i32 %154, 8
  %158 = lshr i64 %155, 16
  %159 = trunc i64 %158 to i16
  %160 = icmp ult i8 %156, 3
  br i1 %160, label %162, label %161

161:                                              ; preds = %149
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([136 x i8], [136 x i8]* @"??_C@_0II@HPNAIILO@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  tail call void @abort() #10
  br label %162

162:                                              ; preds = %161, %149
  %163 = add i16 %159, -1
  %164 = icmp ult i16 %163, 4
  br i1 %164, label %166, label %165

165:                                              ; preds = %162
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([137 x i8], [137 x i8]* @"??_C@_0IJ@IINKHGHG@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  tail call void @abort() #10
  br label %166

166:                                              ; preds = %165, %162
  %167 = and i32 %157, 255
  %168 = add nuw nsw i32 %167, 7
  %169 = lshr i32 %168, 3
  %170 = add nsw i32 %169, -1
  %171 = icmp ult i32 %170, 8
  br i1 %171, label %173, label %172

172:                                              ; preds = %173, %166
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([105 x i8], [105 x i8]* @"??_C@_0GJ@HCOGLMCJ@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  tail call void @abort() #10
  br label %182

173:                                              ; preds = %166
  %174 = trunc i32 %170 to i8
  %175 = lshr i8 -117, %174
  %176 = and i8 %175, 1
  %177 = icmp eq i8 %176, 0
  br i1 %177, label %172, label %178

178:                                              ; preds = %173
  %179 = sext i32 %170 to i64
  %180 = getelementptr inbounds [8 x i64], [8 x i64]* @"switch.table.?wrap_buffer@D3D12Compute@Internal@Runtime@Halide@@YAHPEAXPEAUhalide_buffer_t@@PEAUd3d12_buffer@1234@@Z", i64 0, i64 %179
  %181 = load i64, i64* %180, align 8
  br label %182

182:                                              ; preds = %178, %172
  %183 = phi i64 [ 0, %172 ], [ %181, %178 ]
  %184 = and i64 %155, 255
  %185 = add nsw i64 %158, -1
  %186 = getelementptr inbounds [3 x [4 x [4 x i32]]], [3 x [4 x [4 x i32]]]* @"__const.?FindD3D12FormatForHalideType@@YA?AW4DXGI_FORMAT@@PEAXUhalide_type_t@@@Z.FORMATS", i64 0, i64 %184, i64 %185, i64 %183
  %187 = load i32, i32* %186, align 4, !tbaa !68
  %188 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %2, i64 0, i32 6
  store i32 %187, i32* %188, align 4, !tbaa !69
  %189 = icmp eq i32 %187, 0
  br i1 %189, label %190, label %229

190:                                              ; preds = %182
  %191 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %191) #12
  %192 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i64 0, i32 3
  store i8* null, i8** %192, align 8, !tbaa !41
  %193 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i64 0, i32 4
  store i8 1, i8* %193, align 8, !tbaa !44
  %194 = tail call i8* @malloc(i64 1024) #10
  %195 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i64 0, i32 0
  store i8* %194, i8** %195, align 8, !tbaa !45
  %196 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i64 0, i32 1
  %197 = icmp eq i8* %194, null
  br i1 %197, label %200, label %198

198:                                              ; preds = %190
  %199 = getelementptr inbounds i8, i8* %194, i64 1023
  store i8 0, i8* %199, align 1, !tbaa !40
  br label %200

200:                                              ; preds = %190, %198
  %201 = phi i8* [ %199, %198 ], [ null, %190 ]
  %202 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i64 0, i32 2
  store i8* %201, i8** %202, align 8
  %203 = tail call i8* @halide_string_to_string(i8* %194, i8* %201, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @"??_C@_0CC@BDDMCIOG@unsupported?5buffer?5element?5type?3@", i64 0, i64 0)) #10
  %204 = tail call i8* @halide_type_to_string(i8* %203, i8* %201, %struct.halide_type_t* nonnull %152) #10
  %205 = tail call i8* @halide_string_to_string(i8* %204, i8* %201, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #10
  %206 = tail call i8* @halide_string_to_string(i8* %205, i8* %201, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @"??_C@_0CE@MGMMPJGA@vvvvv?5D3D12?5Begin?5Debug?5Dump?5vvv@", i64 0, i64 0)) #10
  store i8* %206, i8** %196, align 8, !tbaa !46
  call fastcc void @"?d3d12_debug_dump@@YAXAEAV?$Printer@$00$0EAA@@?A0x2B71E647@Internal@Runtime@Halide@@@Z"(%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* nonnull align 8 dereferenceable(40) %4) #11
  %207 = load i8*, i8** %202, align 8, !tbaa !47
  %208 = load i8*, i8** %196, align 8, !tbaa !46
  %209 = tail call i8* @halide_string_to_string(i8* %208, i8* %207, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @"??_C@_0CE@PCPJBLP@?$FO?$FO?$FO?$FO?$FO?5D3D12?5?5End?5?5Debug?5Dump?5?$FO?$FO?$FO@", i64 0, i64 0)) #10
  %210 = tail call i8* @halide_string_to_string(i8* %209, i8* %207, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @"??_C@_0BA@FGKOLOB@D3D12?5HALT?5?$CB?$CB?$CB?6?$AA@", i64 0, i64 0)) #10
  store i8* %210, i8** %196, align 8, !tbaa !46
  %211 = load i8*, i8** %195, align 8, !tbaa !45
  %212 = icmp eq i8* %211, null
  %213 = load i8*, i8** %192, align 8, !tbaa !41
  br i1 %212, label %214, label %215

214:                                              ; preds = %200
  tail call void @halide_error(i8* %213, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #10
  br label %221

215:                                              ; preds = %200
  %216 = ptrtoint i8* %210 to i64
  %217 = ptrtoint i8* %211 to i64
  %218 = add i64 %216, 1
  %219 = sub i64 %218, %217
  %220 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %213, i8* nonnull %211, i64 %219) #10
  tail call void @halide_error(i8* %213, i8* nonnull %211) #10
  br label %221

221:                                              ; preds = %215, %214
  %222 = load i8, i8* %193, align 8, !tbaa !44, !range !48
  %223 = icmp eq i8 %222, 0
  %224 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i64 0, i32 5, i64 0
  %225 = icmp eq i8* %211, %224
  %226 = or i1 %223, %225
  br i1 %226, label %228, label %227

227:                                              ; preds = %221
  call void @free(i8* %211) #10
  br label %228

228:                                              ; preds = %221, %227
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %191) #12
  br label %244

229:                                              ; preds = %182
  %230 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %2, i64 0, i32 9, i32 0
  %231 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 0
  %232 = bitcast i8* %231 to i32*
  %233 = bitcast i8* %230 to i32*
  %234 = load i32, i32* %232, align 8
  store i32 %234, i32* %233, align 8
  %235 = ptrtoint %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %2 to i64
  store i64 %235, i64* %5, align 8, !tbaa !25
  %236 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  %237 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %236, align 8, !tbaa !70
  %238 = icmp eq %struct.halide_device_interface_t* %237, null
  br i1 %238, label %240, label %239

239:                                              ; preds = %229
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([138 x i8], [138 x i8]* @"??_C@_0IK@FFGIGOBH@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  tail call void @abort() #10
  br label %240

240:                                              ; preds = %229, %239
  store %struct.halide_device_interface_t* @"?d3d12compute_device_interface@D3D12Compute@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A", %struct.halide_device_interface_t** %236, align 8, !tbaa !70
  %241 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** getelementptr inbounds (%struct.halide_device_interface_t, %struct.halide_device_interface_t* @"?d3d12compute_device_interface@D3D12Compute@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A", i64 0, i32 15), align 8, !tbaa !71
  %242 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %241, i64 0, i32 0
  %243 = load void ()*, void ()** %242, align 8, !tbaa !73
  tail call void %243() #10
  br label %244

244:                                              ; preds = %8, %240, %228
  %245 = phi i32 [ -32, %228 ], [ 0, %240 ], [ -32, %8 ]
  ret i32 %245
}

declare extern_weak void @halide_print(i8*, i8*) local_unnamed_addr #2

declare dso_local void @abort() local_unnamed_addr #2

; Function Attrs: nounwind
define weak dso_local i32 @"?unwrap_buffer@D3D12Compute@Internal@Runtime@Halide@@YAHPEAUhalide_buffer_t@@@Z"(%struct.halide_buffer_t* %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i64 0, i32 0
  %3 = load i64, i64* %2, align 8, !tbaa !25
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %23, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i64 0, i32 1
  %7 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %6, align 8, !tbaa !70
  %8 = icmp eq %struct.halide_device_interface_t* %7, @"?d3d12compute_device_interface@D3D12Compute@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A"
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([161 x i8], [161 x i8]* @"??_C@_0KB@NININJGE@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  tail call void @abort() #10
  %10 = load i64, i64* %2, align 8, !tbaa !25
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @"??_C@_0HI@MFPPBOBE@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  tail call void @abort() #10
  br label %13

13:                                               ; preds = %5, %9, %12
  %14 = phi i64 [ %10, %9 ], [ 0, %12 ], [ %3, %5 ]
  %15 = inttoptr i64 %14 to %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %15, i64 0, i32 9, i32 0
  %17 = bitcast i8* %16 to i32*
  store i32 0, i32* %17, align 8
  %18 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %6, align 8, !tbaa !70
  %19 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %18, i64 0, i32 15
  %20 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %19, align 8, !tbaa !71
  %21 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %20, i64 0, i32 1
  %22 = load void ()*, void ()** %21, align 8, !tbaa !75
  tail call void %22() #10
  store %struct.halide_device_interface_t* null, %struct.halide_device_interface_t** %6, align 8, !tbaa !70
  store i64 0, i64* %2, align 8, !tbaa !25
  br label %23

23:                                               ; preds = %1, %13
  ret i32 0
}

; Function Attrs: nounwind
define dso_local %struct.ID3D12RootSignature* @"?D3D12CreateMasterRootSignature@D3D12Compute@Internal@Runtime@Halide@@YAPEAUID3D12RootSignature@@PEAUID3D12Device@@@Z"(%struct.ID3D12Device* %0) local_unnamed_addr #4 {
  %2 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  %3 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  %4 = alloca [12 x i8], align 4
  %5 = alloca [3 x %struct.D3D12_ROOT_PARAMETER], align 8
  %6 = alloca [3 x %struct.D3D12_DESCRIPTOR_RANGE], align 16
  %7 = alloca %struct.D3D12_ROOT_SIGNATURE_DESC, align 8
  %8 = alloca %struct.ID3D10Blob*, align 8
  %9 = alloca %struct.ID3D10Blob*, align 8
  %10 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  %11 = alloca %struct.ID3D12RootSignature*, align 8
  %12 = getelementptr inbounds [12 x i8], [12 x i8]* %4, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %12)
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(12) %12, i8 0, i64 12, i1 false)
  %13 = bitcast [3 x %struct.D3D12_ROOT_PARAMETER]* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %13) #12
  %14 = bitcast [3 x %struct.D3D12_DESCRIPTOR_RANGE]* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 60, i8* nonnull %14) #12
  %15 = getelementptr inbounds [3 x %struct.D3D12_ROOT_PARAMETER], [3 x %struct.D3D12_ROOT_PARAMETER]* %5, i64 0, i64 0
  %16 = bitcast [3 x %struct.D3D12_ROOT_PARAMETER]* %5 to <2 x i32>*
  store <2 x i32> zeroinitializer, <2 x i32>* %16, align 8
  %17 = getelementptr inbounds [3 x %struct.D3D12_ROOT_PARAMETER], [3 x %struct.D3D12_ROOT_PARAMETER]* %5, i64 0, i64 0, i32 1, i32 0, i32 0
  store i32 1, i32* %17, align 8, !tbaa.struct !76
  %18 = getelementptr inbounds i8, i8* %13, i64 12
  %19 = bitcast [12 x i8]* %4 to i32*
  %20 = bitcast i8* %18 to i32*
  %21 = load i32, i32* %19, align 4
  store i32 %21, i32* %20, align 4
  %22 = getelementptr inbounds [3 x %struct.D3D12_ROOT_PARAMETER], [3 x %struct.D3D12_ROOT_PARAMETER]* %5, i64 0, i64 0, i32 2
  %23 = getelementptr inbounds [3 x %struct.D3D12_DESCRIPTOR_RANGE], [3 x %struct.D3D12_DESCRIPTOR_RANGE]* %6, i64 0, i64 0
  %24 = getelementptr inbounds [3 x %struct.D3D12_DESCRIPTOR_RANGE], [3 x %struct.D3D12_DESCRIPTOR_RANGE]* %6, i64 0, i64 0, i32 4
  %25 = bitcast [3 x %struct.D3D12_DESCRIPTOR_RANGE]* %6 to <4 x i32>*
  store <4 x i32> <i32 1, i32 16, i32 0, i32 0>, <4 x i32>* %25, align 16
  %26 = getelementptr inbounds [3 x %struct.D3D12_ROOT_PARAMETER], [3 x %struct.D3D12_ROOT_PARAMETER]* %5, i64 0, i64 0, i32 1, i32 0, i32 1
  store %struct.D3D12_DESCRIPTOR_RANGE* %23, %struct.D3D12_DESCRIPTOR_RANGE** %26, align 8, !tbaa !40
  %27 = getelementptr inbounds [3 x %struct.D3D12_ROOT_PARAMETER], [3 x %struct.D3D12_ROOT_PARAMETER]* %5, i64 0, i64 1
  %28 = bitcast %struct.D3D12_ROOT_PARAMETER* %27 to i8*
  %29 = bitcast i32* %22 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %29, align 8
  %30 = getelementptr inbounds [3 x %struct.D3D12_ROOT_PARAMETER], [3 x %struct.D3D12_ROOT_PARAMETER]* %5, i64 0, i64 1, i32 1, i32 0, i32 0
  store i32 1, i32* %30, align 8, !tbaa.struct !76
  %31 = getelementptr inbounds i8, i8* %28, i64 12
  %32 = bitcast [12 x i8]* %4 to i32*
  %33 = bitcast i8* %31 to i32*
  %34 = load i32, i32* %32, align 4
  store i32 %34, i32* %33, align 4
  %35 = getelementptr inbounds [3 x %struct.D3D12_ROOT_PARAMETER], [3 x %struct.D3D12_ROOT_PARAMETER]* %5, i64 0, i64 1, i32 2
  %36 = getelementptr inbounds [3 x %struct.D3D12_DESCRIPTOR_RANGE], [3 x %struct.D3D12_DESCRIPTOR_RANGE]* %6, i64 0, i64 1
  %37 = getelementptr inbounds [3 x %struct.D3D12_DESCRIPTOR_RANGE], [3 x %struct.D3D12_DESCRIPTOR_RANGE]* %6, i64 0, i64 1, i32 3
  %38 = bitcast i32* %24 to <4 x i32>*
  store <4 x i32> <i32 -1, i32 2, i32 14, i32 0>, <4 x i32>* %38, align 16
  %39 = getelementptr inbounds [3 x %struct.D3D12_ROOT_PARAMETER], [3 x %struct.D3D12_ROOT_PARAMETER]* %5, i64 0, i64 1, i32 1, i32 0, i32 1
  store %struct.D3D12_DESCRIPTOR_RANGE* %36, %struct.D3D12_DESCRIPTOR_RANGE** %39, align 8, !tbaa !40
  %40 = getelementptr inbounds [3 x %struct.D3D12_ROOT_PARAMETER], [3 x %struct.D3D12_ROOT_PARAMETER]* %5, i64 0, i64 2
  %41 = bitcast %struct.D3D12_ROOT_PARAMETER* %40 to i8*
  %42 = bitcast i32* %35 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %42, align 8
  %43 = getelementptr inbounds [3 x %struct.D3D12_ROOT_PARAMETER], [3 x %struct.D3D12_ROOT_PARAMETER]* %5, i64 0, i64 2, i32 1, i32 0, i32 0
  store i32 1, i32* %43, align 8, !tbaa.struct !76
  %44 = getelementptr inbounds i8, i8* %41, i64 12
  %45 = bitcast [12 x i8]* %4 to i32*
  %46 = bitcast i8* %44 to i32*
  %47 = load i32, i32* %45, align 4
  store i32 %47, i32* %46, align 4
  %48 = getelementptr inbounds [3 x %struct.D3D12_ROOT_PARAMETER], [3 x %struct.D3D12_ROOT_PARAMETER]* %5, i64 0, i64 2, i32 2
  %49 = bitcast i32* %48 to <2 x i32>*
  store <2 x i32> zeroinitializer, <2 x i32>* %49, align 8
  %50 = getelementptr inbounds [3 x %struct.D3D12_DESCRIPTOR_RANGE], [3 x %struct.D3D12_DESCRIPTOR_RANGE]* %6, i64 0, i64 2
  %51 = getelementptr inbounds [3 x %struct.D3D12_DESCRIPTOR_RANGE], [3 x %struct.D3D12_DESCRIPTOR_RANGE]* %6, i64 0, i64 2, i32 2
  %52 = bitcast i32* %51 to <2 x i32>*
  store <2 x i32> zeroinitializer, <2 x i32>* %52, align 16
  %53 = getelementptr inbounds [3 x %struct.D3D12_DESCRIPTOR_RANGE], [3 x %struct.D3D12_DESCRIPTOR_RANGE]* %6, i64 0, i64 2, i32 4
  store i32 -1, i32* %53, align 8, !tbaa.struct !80
  %54 = bitcast i32* %37 to <4 x i32>*
  store <4 x i32> <i32 0, i32 -1, i32 0, i32 25>, <4 x i32>* %54, align 16
  %55 = getelementptr inbounds [3 x %struct.D3D12_ROOT_PARAMETER], [3 x %struct.D3D12_ROOT_PARAMETER]* %5, i64 0, i64 2, i32 1, i32 0, i32 1
  store %struct.D3D12_DESCRIPTOR_RANGE* %50, %struct.D3D12_DESCRIPTOR_RANGE** %55, align 8, !tbaa !40
  %56 = bitcast %struct.D3D12_ROOT_SIGNATURE_DESC* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %56) #12
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(40) %56, i8 0, i64 40, i1 false)
  %57 = getelementptr inbounds %struct.D3D12_ROOT_SIGNATURE_DESC, %struct.D3D12_ROOT_SIGNATURE_DESC* %7, i64 0, i32 0
  store i32 3, i32* %57, align 8, !tbaa !81
  %58 = getelementptr inbounds %struct.D3D12_ROOT_SIGNATURE_DESC, %struct.D3D12_ROOT_SIGNATURE_DESC* %7, i64 0, i32 1
  store %struct.D3D12_ROOT_PARAMETER* %15, %struct.D3D12_ROOT_PARAMETER** %58, align 8, !tbaa !84
  %59 = getelementptr inbounds %struct.D3D12_ROOT_SIGNATURE_DESC, %struct.D3D12_ROOT_SIGNATURE_DESC* %7, i64 0, i32 2
  store i32 0, i32* %59, align 8, !tbaa !85
  %60 = getelementptr inbounds %struct.D3D12_ROOT_SIGNATURE_DESC, %struct.D3D12_ROOT_SIGNATURE_DESC* %7, i64 0, i32 3
  store %struct.D3D12_STATIC_SAMPLER_DESC* null, %struct.D3D12_STATIC_SAMPLER_DESC** %60, align 8, !tbaa !86
  %61 = getelementptr inbounds %struct.D3D12_ROOT_SIGNATURE_DESC, %struct.D3D12_ROOT_SIGNATURE_DESC* %7, i64 0, i32 4
  store i32 0, i32* %61, align 8, !tbaa !87
  %62 = bitcast %struct.ID3D10Blob** %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %62) #12
  store %struct.ID3D10Blob* null, %struct.ID3D10Blob** %8, align 8, !tbaa !49
  %63 = bitcast %struct.ID3D10Blob** %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %63) #12
  store %struct.ID3D10Blob* null, %struct.ID3D10Blob** %9, align 8, !tbaa !49
  %64 = load i32 (%struct.D3D12_ROOT_SIGNATURE_DESC*, i32, %struct.ID3D10Blob**, %struct.ID3D10Blob**)*, i32 (%struct.D3D12_ROOT_SIGNATURE_DESC*, i32, %struct.ID3D10Blob**, %struct.ID3D10Blob**)** @D3D12SerializeRootSignature, align 8, !tbaa !49
  %65 = call i32 %64(%struct.D3D12_ROOT_SIGNATURE_DESC* nonnull %7, i32 1, %struct.ID3D10Blob** nonnull %8, %struct.ID3D10Blob** nonnull %9) #10
  %66 = load %struct.ID3D10Blob*, %struct.ID3D10Blob** %8, align 8, !tbaa !49
  %67 = icmp sgt i32 %65, -1
  %68 = icmp ne %struct.ID3D10Blob* %66, null
  %69 = and i1 %67, %68
  br i1 %69, label %173, label %70

70:                                               ; preds = %1
  %71 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %71) #12
  %72 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, i64 0, i32 3
  store i8* null, i8** %72, align 8, !tbaa !41
  %73 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, i64 0, i32 4
  store i8 1, i8* %73, align 8, !tbaa !44
  %74 = call i8* @malloc(i64 1024) #10
  %75 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, i64 0, i32 0
  store i8* %74, i8** %75, align 8, !tbaa !45
  %76 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, i64 0, i32 1
  %77 = icmp eq i8* %74, null
  br i1 %77, label %80, label %78

78:                                               ; preds = %70
  %79 = getelementptr inbounds i8, i8* %74, i64 1023
  store i8 0, i8* %79, align 1, !tbaa !40
  br label %80

80:                                               ; preds = %78, %70
  %81 = phi i8* [ %79, %78 ], [ null, %70 ]
  %82 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, i64 0, i32 2
  store i8* %81, i8** %82, align 8
  %83 = call i8* @halide_string_to_string(i8* %74, i8* %81, i8* nonnull getelementptr inbounds ([51 x i8], [51 x i8]* @"??_C@_0DD@JMFCFLOG@Unable?5to?5serialize?5the?5Direct3D@", i64 0, i64 0)) #10
  %84 = call i8* @halide_string_to_string(i8* %83, i8* %81, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @"??_C@_0L@IAGCJOCP@?5?$CIHRESULT?$DN?$AA@", i64 0, i64 0)) #10
  %85 = sext i32 %65 to i64
  %86 = inttoptr i64 %85 to i8*
  %87 = call i8* @halide_pointer_to_string(i8* %84, i8* %81, i8* %86) #10
  %88 = call i8* @halide_string_to_string(i8* %87, i8* %81, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @"??_C@_0L@FELFIFPM@?0?5object?$CK?$DN?$AA@", i64 0, i64 0)) #10
  %89 = bitcast %struct.ID3D10Blob* %66 to i8*
  %90 = call i8* @halide_pointer_to_string(i8* %88, i8* %81, i8* %89) #10
  %91 = call i8* @halide_string_to_string(i8* %90, i8* %81, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01PKGAHCOL@?$CJ?$AA@", i64 0, i64 0)) #10
  %92 = call i8* @halide_string_to_string(i8* %91, i8* %81, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #10
  %93 = call i8* @halide_string_to_string(i8* %92, i8* %81, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @"??_C@_0CE@MGMMPJGA@vvvvv?5D3D12?5Begin?5Debug?5Dump?5vvv@", i64 0, i64 0)) #10
  store i8* %93, i8** %76, align 8, !tbaa !46
  call fastcc void @"?d3d12_debug_dump@@YAXAEAV?$Printer@$00$0EAA@@?A0x2B71E647@Internal@Runtime@Halide@@@Z"(%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* nonnull align 8 dereferenceable(40) %3) #10
  %94 = load i8*, i8** %82, align 8, !tbaa !47
  %95 = load i8*, i8** %76, align 8, !tbaa !46
  %96 = call i8* @halide_string_to_string(i8* %95, i8* %94, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @"??_C@_0CE@PCPJBLP@?$FO?$FO?$FO?$FO?$FO?5D3D12?5?5End?5?5Debug?5Dump?5?$FO?$FO?$FO@", i64 0, i64 0)) #10
  %97 = call i8* @halide_string_to_string(i8* %96, i8* %94, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @"??_C@_0BA@FGKOLOB@D3D12?5HALT?5?$CB?$CB?$CB?6?$AA@", i64 0, i64 0)) #10
  store i8* %97, i8** %76, align 8, !tbaa !46
  %98 = load i8*, i8** %75, align 8, !tbaa !45
  %99 = icmp eq i8* %98, null
  %100 = load i8*, i8** %72, align 8, !tbaa !41
  br i1 %99, label %101, label %102

101:                                              ; preds = %80
  call void @halide_error(i8* %100, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #10
  br label %108

102:                                              ; preds = %80
  %103 = ptrtoint i8* %97 to i64
  %104 = ptrtoint i8* %98 to i64
  %105 = add i64 %103, 1
  %106 = sub i64 %105, %104
  %107 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %100, i8* nonnull %98, i64 %106) #10
  call void @halide_error(i8* %100, i8* nonnull %98) #10
  br label %108

108:                                              ; preds = %102, %101
  %109 = load i8, i8* %73, align 8, !tbaa !44, !range !48
  %110 = icmp eq i8 %109, 0
  %111 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, i64 0, i32 5, i64 0
  %112 = icmp eq i8* %98, %111
  %113 = or i1 %112, %110
  br i1 %113, label %115, label %114

114:                                              ; preds = %108
  call void @free(i8* %98) #10
  br label %115

115:                                              ; preds = %108, %114
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %71) #12
  %116 = load %struct.ID3D10Blob*, %struct.ID3D10Blob** %9, align 8, !tbaa !49
  %117 = icmp eq %struct.ID3D10Blob* %116, null
  br i1 %117, label %118, label %119

118:                                              ; preds = %115
  call void @halide_print(i8* null, i8* getelementptr inbounds ([111 x i8], [111 x i8]* @"??_C@_0GP@PMNGDIHN@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  call void @abort() #10
  br label %119

119:                                              ; preds = %115, %118
  %120 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %120) #12
  %121 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %10, i64 0, i32 3
  store i8* null, i8** %121, align 8, !tbaa !41
  %122 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %10, i64 0, i32 4
  store i8 1, i8* %122, align 8, !tbaa !44
  %123 = call i8* @malloc(i64 1024) #10
  %124 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %10, i64 0, i32 0
  store i8* %123, i8** %124, align 8, !tbaa !45
  %125 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %10, i64 0, i32 1
  store i8* %123, i8** %125, align 8, !tbaa !46
  %126 = icmp eq i8* %123, null
  br i1 %126, label %129, label %127

127:                                              ; preds = %119
  %128 = getelementptr inbounds i8, i8* %123, i64 1023
  store i8 0, i8* %128, align 1, !tbaa !40
  br label %129

129:                                              ; preds = %119, %127
  %130 = phi i8* [ %128, %127 ], [ null, %119 ]
  %131 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %10, i64 0, i32 2
  store i8* %130, i8** %131, align 8
  %132 = load %struct.ID3D10Blob*, %struct.ID3D10Blob** %9, align 8, !tbaa !49
  %133 = bitcast %struct.ID3D10Blob* %132 to i8* (%struct.ID3D10Blob*)***
  %134 = load i8* (%struct.ID3D10Blob*)**, i8* (%struct.ID3D10Blob*)*** %133, align 8, !tbaa !50
  %135 = getelementptr inbounds i8* (%struct.ID3D10Blob*)*, i8* (%struct.ID3D10Blob*)** %134, i64 3
  %136 = load i8* (%struct.ID3D10Blob*)*, i8* (%struct.ID3D10Blob*)** %135, align 8
  %137 = call i8* %136(%struct.ID3D10Blob* nonnull dereferenceable(8) %132) #10
  %138 = icmp eq i8* %137, null
  br i1 %138, label %139, label %141

139:                                              ; preds = %129
  %140 = call i8* @halide_string_to_string(i8* %123, i8* %130, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"??_C@_09CGLEKJAK@?$DMnullptr?$DO?$AA@", i64 0, i64 0)) #10
  br label %143

141:                                              ; preds = %129
  %142 = call i8* @halide_string_to_string(i8* %123, i8* %130, i8* nonnull %137) #10
  br label %143

143:                                              ; preds = %139, %141
  %144 = phi i8* [ %142, %141 ], [ %140, %139 ]
  store i8* %144, i8** %125, align 8, !tbaa !46
  %145 = load i8*, i8** %131, align 8, !tbaa !47
  %146 = call i8* @halide_string_to_string(i8* %144, i8* %145, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #10
  store i8* %146, i8** %125, align 8, !tbaa !46
  %147 = call i8* @halide_string_to_string(i8* %146, i8* %145, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @"??_C@_0CE@MGMMPJGA@vvvvv?5D3D12?5Begin?5Debug?5Dump?5vvv@", i64 0, i64 0)) #10
  store i8* %147, i8** %125, align 8, !tbaa !46
  call fastcc void @"?d3d12_debug_dump@@YAXAEAV?$Printer@$00$0EAA@@?A0x2B71E647@Internal@Runtime@Halide@@@Z"(%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* nonnull align 8 dereferenceable(40) %10) #11
  %148 = load i8*, i8** %131, align 8, !tbaa !47
  %149 = load i8*, i8** %125, align 8, !tbaa !46
  %150 = call i8* @halide_string_to_string(i8* %149, i8* %148, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @"??_C@_0CE@PCPJBLP@?$FO?$FO?$FO?$FO?$FO?5D3D12?5?5End?5?5Debug?5Dump?5?$FO?$FO?$FO@", i64 0, i64 0)) #10
  store i8* %150, i8** %125, align 8, !tbaa !46
  %151 = call i8* @halide_string_to_string(i8* %150, i8* %148, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @"??_C@_0BA@FGKOLOB@D3D12?5HALT?5?$CB?$CB?$CB?6?$AA@", i64 0, i64 0)) #10
  store i8* %151, i8** %125, align 8, !tbaa !46
  %152 = load i8*, i8** %124, align 8, !tbaa !45
  %153 = icmp eq i8* %152, null
  %154 = load i8*, i8** %121, align 8, !tbaa !41
  br i1 %153, label %155, label %156

155:                                              ; preds = %143
  call void @halide_error(i8* %154, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #10
  br label %164

156:                                              ; preds = %143
  %157 = ptrtoint i8* %151 to i64
  %158 = ptrtoint i8* %152 to i64
  %159 = add i64 %157, 1
  %160 = sub i64 %159, %158
  %161 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %154, i8* nonnull %152, i64 %160) #10
  %162 = load i8*, i8** %124, align 8, !tbaa !45
  %163 = load i8*, i8** %121, align 8, !tbaa !41
  call void @halide_error(i8* %163, i8* %162) #10
  br label %164

164:                                              ; preds = %156, %155
  %165 = load i8, i8* %122, align 8, !tbaa !44, !range !48
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %172, label %167

167:                                              ; preds = %164
  %168 = load i8*, i8** %124, align 8, !tbaa !45
  %169 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %10, i64 0, i32 5, i64 0
  %170 = icmp eq i8* %168, %169
  br i1 %170, label %172, label %171

171:                                              ; preds = %167
  call void @free(i8* %168) #10
  br label %172

172:                                              ; preds = %164, %167, %171
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %120) #12
  br label %244

173:                                              ; preds = %1
  %174 = bitcast %struct.ID3D12RootSignature** %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %174) #12
  store %struct.ID3D12RootSignature* null, %struct.ID3D12RootSignature** %11, align 8, !tbaa !49
  %175 = bitcast %struct.ID3D10Blob* %66 to i8* (%struct.ID3D10Blob*)***
  %176 = load i8* (%struct.ID3D10Blob*)**, i8* (%struct.ID3D10Blob*)*** %175, align 8, !tbaa !50
  %177 = getelementptr inbounds i8* (%struct.ID3D10Blob*)*, i8* (%struct.ID3D10Blob*)** %176, i64 3
  %178 = load i8* (%struct.ID3D10Blob*)*, i8* (%struct.ID3D10Blob*)** %177, align 8
  %179 = call i8* %178(%struct.ID3D10Blob* nonnull dereferenceable(8) %66) #10
  %180 = load %struct.ID3D10Blob*, %struct.ID3D10Blob** %8, align 8, !tbaa !49
  %181 = bitcast %struct.ID3D10Blob* %180 to i64 (%struct.ID3D10Blob*)***
  %182 = load i64 (%struct.ID3D10Blob*)**, i64 (%struct.ID3D10Blob*)*** %181, align 8, !tbaa !50
  %183 = getelementptr inbounds i64 (%struct.ID3D10Blob*)*, i64 (%struct.ID3D10Blob*)** %182, i64 4
  %184 = load i64 (%struct.ID3D10Blob*)*, i64 (%struct.ID3D10Blob*)** %183, align 8
  %185 = call i64 %184(%struct.ID3D10Blob* nonnull dereferenceable(8) %180) #10
  %186 = bitcast %struct.ID3D12RootSignature** %11 to i8**
  %187 = bitcast %struct.ID3D12Device* %0 to i32 (%struct.ID3D12Device*, i32, i8*, i64, %struct._GUID*, i8**)***
  %188 = load i32 (%struct.ID3D12Device*, i32, i8*, i64, %struct._GUID*, i8**)**, i32 (%struct.ID3D12Device*, i32, i8*, i64, %struct._GUID*, i8**)*** %187, align 8, !tbaa !50
  %189 = getelementptr inbounds i32 (%struct.ID3D12Device*, i32, i8*, i64, %struct._GUID*, i8**)*, i32 (%struct.ID3D12Device*, i32, i8*, i64, %struct._GUID*, i8**)** %188, i64 16
  %190 = load i32 (%struct.ID3D12Device*, i32, i8*, i64, %struct._GUID*, i8**)*, i32 (%struct.ID3D12Device*, i32, i8*, i64, %struct._GUID*, i8**)** %189, align 8
  %191 = call i32 %190(%struct.ID3D12Device* nonnull dereferenceable(8) %0, i32 0, i8* %179, i64 %185, %struct._GUID* nonnull align 4 dereferenceable(16) @_GUID_c54a6b66_72df_4ee8_8be5_a946a1429214, i8** nonnull %186) #10
  %192 = load %struct.ID3D12RootSignature*, %struct.ID3D12RootSignature** %11, align 8, !tbaa !49
  %193 = icmp sgt i32 %191, -1
  %194 = icmp ne %struct.ID3D12RootSignature* %192, null
  %195 = and i1 %193, %194
  br i1 %195, label %242, label %196

196:                                              ; preds = %173
  %197 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %197) #12
  %198 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %2, i64 0, i32 3
  store i8* null, i8** %198, align 8, !tbaa !41
  %199 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %2, i64 0, i32 4
  store i8 1, i8* %199, align 8, !tbaa !44
  %200 = call i8* @malloc(i64 1024) #10
  %201 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %2, i64 0, i32 0
  store i8* %200, i8** %201, align 8, !tbaa !45
  %202 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %2, i64 0, i32 1
  %203 = icmp eq i8* %200, null
  br i1 %203, label %206, label %204

204:                                              ; preds = %196
  %205 = getelementptr inbounds i8, i8* %200, i64 1023
  store i8 0, i8* %205, align 1, !tbaa !40
  br label %206

206:                                              ; preds = %204, %196
  %207 = phi i8* [ %205, %204 ], [ null, %196 ]
  %208 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %2, i64 0, i32 2
  store i8* %207, i8** %208, align 8
  %209 = call i8* @halide_string_to_string(i8* %200, i8* %207, i8* nonnull getelementptr inbounds ([48 x i8], [48 x i8]* @"??_C@_0DA@LBIGKBEG@Unable?5to?5create?5the?5Direct3D?512@", i64 0, i64 0)) #10
  %210 = call i8* @halide_string_to_string(i8* %209, i8* %207, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @"??_C@_0L@IAGCJOCP@?5?$CIHRESULT?$DN?$AA@", i64 0, i64 0)) #10
  %211 = sext i32 %191 to i64
  %212 = inttoptr i64 %211 to i8*
  %213 = call i8* @halide_pointer_to_string(i8* %210, i8* %207, i8* %212) #10
  %214 = call i8* @halide_string_to_string(i8* %213, i8* %207, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @"??_C@_0L@FELFIFPM@?0?5object?$CK?$DN?$AA@", i64 0, i64 0)) #10
  %215 = bitcast %struct.ID3D12RootSignature* %192 to i8*
  %216 = call i8* @halide_pointer_to_string(i8* %214, i8* %207, i8* %215) #10
  %217 = call i8* @halide_string_to_string(i8* %216, i8* %207, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01PKGAHCOL@?$CJ?$AA@", i64 0, i64 0)) #10
  %218 = call i8* @halide_string_to_string(i8* %217, i8* %207, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #10
  %219 = call i8* @halide_string_to_string(i8* %218, i8* %207, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @"??_C@_0CE@MGMMPJGA@vvvvv?5D3D12?5Begin?5Debug?5Dump?5vvv@", i64 0, i64 0)) #10
  store i8* %219, i8** %202, align 8, !tbaa !46
  call fastcc void @"?d3d12_debug_dump@@YAXAEAV?$Printer@$00$0EAA@@?A0x2B71E647@Internal@Runtime@Halide@@@Z"(%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* nonnull align 8 dereferenceable(40) %2) #10
  %220 = load i8*, i8** %208, align 8, !tbaa !47
  %221 = load i8*, i8** %202, align 8, !tbaa !46
  %222 = call i8* @halide_string_to_string(i8* %221, i8* %220, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @"??_C@_0CE@PCPJBLP@?$FO?$FO?$FO?$FO?$FO?5D3D12?5?5End?5?5Debug?5Dump?5?$FO?$FO?$FO@", i64 0, i64 0)) #10
  %223 = call i8* @halide_string_to_string(i8* %222, i8* %220, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @"??_C@_0BA@FGKOLOB@D3D12?5HALT?5?$CB?$CB?$CB?6?$AA@", i64 0, i64 0)) #10
  store i8* %223, i8** %202, align 8, !tbaa !46
  %224 = load i8*, i8** %201, align 8, !tbaa !45
  %225 = icmp eq i8* %224, null
  %226 = load i8*, i8** %198, align 8, !tbaa !41
  br i1 %225, label %227, label %228

227:                                              ; preds = %206
  call void @halide_error(i8* %226, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #10
  br label %234

228:                                              ; preds = %206
  %229 = ptrtoint i8* %223 to i64
  %230 = ptrtoint i8* %224 to i64
  %231 = add i64 %229, 1
  %232 = sub i64 %231, %230
  %233 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %226, i8* nonnull %224, i64 %232) #10
  call void @halide_error(i8* %226, i8* nonnull %224) #10
  br label %234

234:                                              ; preds = %228, %227
  %235 = load i8, i8* %199, align 8, !tbaa !44, !range !48
  %236 = icmp eq i8 %235, 0
  %237 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %2, i64 0, i32 5, i64 0
  %238 = icmp eq i8* %224, %237
  %239 = or i1 %238, %236
  br i1 %239, label %241, label %240

240:                                              ; preds = %234
  call void @free(i8* %224) #10
  br label %241

241:                                              ; preds = %240, %234
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %197) #12
  br label %242

242:                                              ; preds = %173, %241
  %243 = phi %struct.ID3D12RootSignature* [ %192, %173 ], [ null, %241 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %174) #12
  br label %244

244:                                              ; preds = %242, %172
  %245 = phi %struct.ID3D12RootSignature* [ null, %172 ], [ %243, %242 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %63) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %62) #12
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %56) #12
  call void @llvm.lifetime.end.p0i8(i64 60, i8* nonnull %14) #12
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %13) #12
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %12)
  ret %struct.ID3D12RootSignature* %245
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @"?dispatch_threadgroups@D3D12Compute@Internal@Runtime@Halide@@YAXPEAUd3d12_graphics_command_list@1234@HHHHHH@Z"(%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_graphics_command_list"* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) local_unnamed_addr #0 {
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_graphics_command_list", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_graphics_command_list"* %0, i64 0, i32 0, i32 0
  %9 = load %struct.ID3D12GraphicsCommandList*, %struct.ID3D12GraphicsCommandList** %8, align 8, !tbaa !88
  %10 = bitcast %struct.ID3D12GraphicsCommandList* %9 to void (%struct.ID3D12GraphicsCommandList*, i32, i32, i32)***
  %11 = load void (%struct.ID3D12GraphicsCommandList*, i32, i32, i32)**, void (%struct.ID3D12GraphicsCommandList*, i32, i32, i32)*** %10, align 8, !tbaa !50
  %12 = getelementptr inbounds void (%struct.ID3D12GraphicsCommandList*, i32, i32, i32)*, void (%struct.ID3D12GraphicsCommandList*, i32, i32, i32)** %11, i64 14
  %13 = load void (%struct.ID3D12GraphicsCommandList*, i32, i32, i32)*, void (%struct.ID3D12GraphicsCommandList*, i32, i32, i32)** %12, align 8
  tail call void %13(%struct.ID3D12GraphicsCommandList* nonnull dereferenceable(8) %9, i32 %1, i32 %2, i32 %3) #10
  ret void
}

; Function Attrs: nounwind
define weak dso_local void @"?new_buffer_resource@D3D12Compute@Internal@Runtime@Halide@@YA?AUd3d12_buffer@1234@PEAUhalide_d3d12compute_device@@_KW4D3D12_HEAP_TYPE@@@Z"(%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* noalias sret(%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer") align 8 %0, %struct.halide_d3d12compute_device* %1, i64 %2, i32 %3) local_unnamed_addr #4 {
  %5 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  %6 = alloca %struct.D3D12_RESOURCE_DESC, align 8
  %7 = alloca %struct.D3D12_HEAP_PROPERTIES, align 4
  %8 = alloca %struct.ID3D12Resource*, align 8
  %9 = bitcast %struct.D3D12_RESOURCE_DESC* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %9) #12
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %9, i8 0, i64 56, i1 false)
  %10 = getelementptr inbounds %struct.D3D12_RESOURCE_DESC, %struct.D3D12_RESOURCE_DESC* %6, i64 0, i32 0
  store i32 1, i32* %10, align 8, !tbaa !90
  %11 = getelementptr inbounds %struct.D3D12_RESOURCE_DESC, %struct.D3D12_RESOURCE_DESC* %6, i64 0, i32 1
  store i64 0, i64* %11, align 8, !tbaa !96
  %12 = getelementptr inbounds %struct.D3D12_RESOURCE_DESC, %struct.D3D12_RESOURCE_DESC* %6, i64 0, i32 2
  store i64 %2, i64* %12, align 8, !tbaa !97
  %13 = getelementptr inbounds %struct.D3D12_RESOURCE_DESC, %struct.D3D12_RESOURCE_DESC* %6, i64 0, i32 3
  store i32 1, i32* %13, align 8, !tbaa !98
  %14 = getelementptr inbounds %struct.D3D12_RESOURCE_DESC, %struct.D3D12_RESOURCE_DESC* %6, i64 0, i32 4
  store i16 1, i16* %14, align 4, !tbaa !99
  %15 = getelementptr inbounds %struct.D3D12_RESOURCE_DESC, %struct.D3D12_RESOURCE_DESC* %6, i64 0, i32 5
  store i16 1, i16* %15, align 2, !tbaa !100
  %16 = getelementptr inbounds %struct.D3D12_RESOURCE_DESC, %struct.D3D12_RESOURCE_DESC* %6, i64 0, i32 6
  %17 = bitcast i32* %16 to <4 x i32>*
  store <4 x i32> <i32 0, i32 1, i32 0, i32 1>, <4 x i32>* %17, align 8, !tbaa !40
  %18 = getelementptr inbounds %struct.D3D12_RESOURCE_DESC, %struct.D3D12_RESOURCE_DESC* %6, i64 0, i32 9
  store i32 0, i32* %18, align 8, !tbaa !101
  %19 = bitcast %struct.D3D12_HEAP_PROPERTIES* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %19) #12
  %20 = getelementptr inbounds %struct.D3D12_HEAP_PROPERTIES, %struct.D3D12_HEAP_PROPERTIES* %7, i64 0, i32 0
  store i32 %3, i32* %20, align 4, !tbaa !102
  %21 = getelementptr inbounds %struct.D3D12_HEAP_PROPERTIES, %struct.D3D12_HEAP_PROPERTIES* %7, i64 0, i32 1
  %22 = bitcast i32* %21 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %22, align 4, !tbaa !40
  switch i32 %3, label %25 [
    i32 2, label %26
    i32 3, label %23
    i32 1, label %24
  ]

23:                                               ; preds = %4
  br label %26

24:                                               ; preds = %4
  store i32 4, i32* %18, align 8, !tbaa !101
  br label %26

25:                                               ; preds = %4
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([106 x i8], [106 x i8]* @"??_C@_0GK@DILKJBBI@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  tail call void @abort() #10
  br label %26

26:                                               ; preds = %4, %25, %24, %23
  %27 = phi i32 [ 0, %25 ], [ 8, %24 ], [ 1024, %23 ], [ 2755, %4 ]
  %28 = bitcast %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %0 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(96) %28, i8 0, i64 96, i1 false)
  %29 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %0, i64 0, i32 9, i32 0
  store i8 0, i8* %29, align 8, !tbaa !107
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %0, i64 0, i32 9, i32 1
  store i8 0, i8* %30, align 1, !tbaa !26
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %0, i64 0, i32 9, i32 2
  store i16 0, i16* %31, align 2, !tbaa !108
  %32 = bitcast %struct.ID3D12Resource** %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %32) #12
  store %struct.ID3D12Resource* null, %struct.ID3D12Resource** %8, align 8, !tbaa !49
  %33 = bitcast %struct.halide_d3d12compute_device* %1 to %struct.ID3D12Device*
  %34 = bitcast %struct.ID3D12Resource** %8 to i8**
  %35 = bitcast %struct.halide_d3d12compute_device* %1 to i32 (%struct.ID3D12Device*, %struct.D3D12_HEAP_PROPERTIES*, i32, %struct.D3D12_RESOURCE_DESC*, i32, %struct.D3D12_CLEAR_VALUE*, %struct._GUID*, i8**)***
  %36 = load i32 (%struct.ID3D12Device*, %struct.D3D12_HEAP_PROPERTIES*, i32, %struct.D3D12_RESOURCE_DESC*, i32, %struct.D3D12_CLEAR_VALUE*, %struct._GUID*, i8**)**, i32 (%struct.ID3D12Device*, %struct.D3D12_HEAP_PROPERTIES*, i32, %struct.D3D12_RESOURCE_DESC*, i32, %struct.D3D12_CLEAR_VALUE*, %struct._GUID*, i8**)*** %35, align 8, !tbaa !50
  %37 = getelementptr inbounds i32 (%struct.ID3D12Device*, %struct.D3D12_HEAP_PROPERTIES*, i32, %struct.D3D12_RESOURCE_DESC*, i32, %struct.D3D12_CLEAR_VALUE*, %struct._GUID*, i8**)*, i32 (%struct.ID3D12Device*, %struct.D3D12_HEAP_PROPERTIES*, i32, %struct.D3D12_RESOURCE_DESC*, i32, %struct.D3D12_CLEAR_VALUE*, %struct._GUID*, i8**)** %36, i64 27
  %38 = load i32 (%struct.ID3D12Device*, %struct.D3D12_HEAP_PROPERTIES*, i32, %struct.D3D12_RESOURCE_DESC*, i32, %struct.D3D12_CLEAR_VALUE*, %struct._GUID*, i8**)*, i32 (%struct.ID3D12Device*, %struct.D3D12_HEAP_PROPERTIES*, i32, %struct.D3D12_RESOURCE_DESC*, i32, %struct.D3D12_CLEAR_VALUE*, %struct._GUID*, i8**)** %37, align 8
  %39 = call i32 %38(%struct.ID3D12Device* nonnull dereferenceable(8) %33, %struct.D3D12_HEAP_PROPERTIES* nonnull %7, i32 0, %struct.D3D12_RESOURCE_DESC* nonnull %6, i32 %27, %struct.D3D12_CLEAR_VALUE* null, %struct._GUID* nonnull align 4 dereferenceable(16) @_GUID_696442be_a72e_4059_bc79_5b5c98040fad, i8** nonnull %34) #10
  %40 = load %struct.ID3D12Resource*, %struct.ID3D12Resource** %8, align 8, !tbaa !49
  %41 = icmp sgt i32 %39, -1
  %42 = icmp ne %struct.ID3D12Resource* %40, null
  %43 = and i1 %41, %42
  br i1 %43, label %90, label %44

44:                                               ; preds = %26
  %45 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %45) #12
  %46 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i64 0, i32 3
  store i8* null, i8** %46, align 8, !tbaa !41
  %47 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i64 0, i32 4
  store i8 1, i8* %47, align 8, !tbaa !44
  %48 = call i8* @malloc(i64 1024) #10
  %49 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i64 0, i32 0
  store i8* %48, i8** %49, align 8, !tbaa !45
  %50 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i64 0, i32 1
  %51 = icmp eq i8* %48, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %44
  %53 = getelementptr inbounds i8, i8* %48, i64 1023
  store i8 0, i8* %53, align 1, !tbaa !40
  br label %54

54:                                               ; preds = %52, %44
  %55 = phi i8* [ %53, %52 ], [ null, %44 ]
  %56 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i64 0, i32 2
  store i8* %55, i8** %56, align 8
  %57 = call i8* @halide_string_to_string(i8* %48, i8* %55, i8* nonnull getelementptr inbounds ([40 x i8], [40 x i8]* @"??_C@_0CI@NPEAIHAH@Unable?5to?5create?5the?5Direct3D?512@", i64 0, i64 0)) #10
  %58 = call i8* @halide_string_to_string(i8* %57, i8* %55, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @"??_C@_0L@IAGCJOCP@?5?$CIHRESULT?$DN?$AA@", i64 0, i64 0)) #10
  %59 = sext i32 %39 to i64
  %60 = inttoptr i64 %59 to i8*
  %61 = call i8* @halide_pointer_to_string(i8* %58, i8* %55, i8* %60) #10
  %62 = call i8* @halide_string_to_string(i8* %61, i8* %55, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @"??_C@_0L@FELFIFPM@?0?5object?$CK?$DN?$AA@", i64 0, i64 0)) #10
  %63 = bitcast %struct.ID3D12Resource* %40 to i8*
  %64 = call i8* @halide_pointer_to_string(i8* %62, i8* %55, i8* %63) #10
  %65 = call i8* @halide_string_to_string(i8* %64, i8* %55, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01PKGAHCOL@?$CJ?$AA@", i64 0, i64 0)) #10
  %66 = call i8* @halide_string_to_string(i8* %65, i8* %55, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #10
  %67 = call i8* @halide_string_to_string(i8* %66, i8* %55, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @"??_C@_0CE@MGMMPJGA@vvvvv?5D3D12?5Begin?5Debug?5Dump?5vvv@", i64 0, i64 0)) #10
  store i8* %67, i8** %50, align 8, !tbaa !46
  call fastcc void @"?d3d12_debug_dump@@YAXAEAV?$Printer@$00$0EAA@@?A0x2B71E647@Internal@Runtime@Halide@@@Z"(%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* nonnull align 8 dereferenceable(40) %5) #10
  %68 = load i8*, i8** %56, align 8, !tbaa !47
  %69 = load i8*, i8** %50, align 8, !tbaa !46
  %70 = call i8* @halide_string_to_string(i8* %69, i8* %68, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @"??_C@_0CE@PCPJBLP@?$FO?$FO?$FO?$FO?$FO?5D3D12?5?5End?5?5Debug?5Dump?5?$FO?$FO?$FO@", i64 0, i64 0)) #10
  %71 = call i8* @halide_string_to_string(i8* %70, i8* %68, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @"??_C@_0BA@FGKOLOB@D3D12?5HALT?5?$CB?$CB?$CB?6?$AA@", i64 0, i64 0)) #10
  store i8* %71, i8** %50, align 8, !tbaa !46
  %72 = load i8*, i8** %49, align 8, !tbaa !45
  %73 = icmp eq i8* %72, null
  %74 = load i8*, i8** %46, align 8, !tbaa !41
  br i1 %73, label %75, label %76

75:                                               ; preds = %54
  call void @halide_error(i8* %74, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #10
  br label %82

76:                                               ; preds = %54
  %77 = ptrtoint i8* %71 to i64
  %78 = ptrtoint i8* %72 to i64
  %79 = add i64 %77, 1
  %80 = sub i64 %79, %78
  %81 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %74, i8* nonnull %72, i64 %80) #10
  call void @halide_error(i8* %74, i8* nonnull %72) #10
  br label %82

82:                                               ; preds = %76, %75
  %83 = load i8, i8* %47, align 8, !tbaa !44, !range !48
  %84 = icmp eq i8 %83, 0
  %85 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i64 0, i32 5, i64 0
  %86 = icmp eq i8* %72, %85
  %87 = or i1 %86, %84
  br i1 %87, label %89, label %88

88:                                               ; preds = %82
  call void @free(i8* %72) #10
  br label %89

89:                                               ; preds = %82, %88
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %45) #12
  br label %102

90:                                               ; preds = %26
  %91 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %0, i64 0, i32 0
  store %struct.ID3D12Resource* %40, %struct.ID3D12Resource** %91, align 8, !tbaa !54
  %92 = trunc i64 %2 to i32
  %93 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %0, i64 0, i32 1
  store i32 %92, i32* %93, align 8, !tbaa !109
  %94 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %0, i64 0, i32 2
  store i32 %92, i32* %94, align 4, !tbaa !63
  %95 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %0, i64 0, i32 7
  store i32 %27, i32* %95, align 8, !tbaa !110
  %96 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %0, i64 0, i32 8
  store i32 0, i32* %96, align 4, !tbaa !111
  %97 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %0, i64 0, i32 6
  store i32 0, i32* %97, align 4, !tbaa !69
  %98 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %0, i64 0, i32 11
  store i8 0, i8* %98, align 8, !tbaa !112
  %99 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %0, i64 0, i32 12
  store i8* null, i8** %99, align 8, !tbaa !113
  %100 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %0, i64 0, i32 15
  store i64 0, i64* %100, align 8, !tbaa !114
  %101 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %0, i64 0, i32 14
  store atomic volatile i64 0, i64* %101 seq_cst, align 8
  br label %102

102:                                              ; preds = %89, %90
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #12
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %19) #12
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %9) #12
  ret void
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @"?new_device_buffer@D3D12Compute@Internal@Runtime@Halide@@YA?AUd3d12_buffer@1234@PEAUhalide_d3d12compute_device@@_K@Z"(%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* noalias sret(%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer") align 8 %0, %struct.halide_d3d12compute_device* %1, i64 %2) local_unnamed_addr #0 {
  tail call void @"?new_buffer_resource@D3D12Compute@Internal@Runtime@Halide@@YA?AUd3d12_buffer@1234@PEAUhalide_d3d12compute_device@@_KW4D3D12_HEAP_TYPE@@@Z"(%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* sret(%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer") align 8 %0, %struct.halide_d3d12compute_device* %1, i64 %2, i32 1) #11
  %4 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %0, i64 0, i32 8
  store i32 2, i32* %4, align 4, !tbaa !111
  ret void
}

; Function Attrs: nounwind mustprogress
define weak dso_local i8* @"?map_buffer@D3D12Compute@Internal@Runtime@Halide@@YAPEAXPEAUd3d12_buffer@1234@@Z"(%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %0) local_unnamed_addr #0 {
  %2 = alloca <2 x i64>, align 16
  %3 = bitcast <2 x i64>* %2 to %struct.D3D12_RANGE*
  %4 = alloca i8*, align 8
  %5 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %0, i64 0, i32 13
  %6 = load i8*, i8** %5, align 8, !tbaa !115
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %41

8:                                                ; preds = %1
  %9 = bitcast <2 x i64>* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %9) #12
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %0, i64 0, i32 8
  %11 = load i32, i32* %10, align 4, !tbaa !111
  switch i32 %11, label %19 [
    i32 1, label %12
    i32 5, label %12
    i32 6, label %13
  ]

12:                                               ; preds = %8, %8
  store <2 x i64> zeroinitializer, <2 x i64>* %2, align 16, !tbaa !6
  br label %20

13:                                               ; preds = %8
  %14 = getelementptr inbounds <2 x i64>, <2 x i64>* %2, i64 0, i64 0
  store i64 0, i64* %14, align 16, !tbaa !116
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %0, i64 0, i32 2
  %16 = load i32, i32* %15, align 4, !tbaa !63
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.D3D12_RANGE, %struct.D3D12_RANGE* %3, i64 0, i32 1
  store i64 %17, i64* %18, align 8, !tbaa !118
  br label %20

19:                                               ; preds = %8
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([106 x i8], [106 x i8]* @"??_C@_0GK@NMMJINNK@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  tail call void @abort() #10
  br label %20

20:                                               ; preds = %19, %13, %12
  %21 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %0, i64 0, i32 0
  %22 = load %struct.ID3D12Resource*, %struct.ID3D12Resource** %21, align 8, !tbaa !54
  %23 = bitcast i8** %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #12
  store i8* null, i8** %4, align 8, !tbaa !49
  %24 = bitcast %struct.ID3D12Resource* %22 to i32 (%struct.ID3D12Resource*, i32, %struct.D3D12_RANGE*, i8**)***
  %25 = load i32 (%struct.ID3D12Resource*, i32, %struct.D3D12_RANGE*, i8**)**, i32 (%struct.ID3D12Resource*, i32, %struct.D3D12_RANGE*, i8**)*** %24, align 8, !tbaa !50
  %26 = getelementptr inbounds i32 (%struct.ID3D12Resource*, i32, %struct.D3D12_RANGE*, i8**)*, i32 (%struct.ID3D12Resource*, i32, %struct.D3D12_RANGE*, i8**)** %25, i64 8
  %27 = load i32 (%struct.ID3D12Resource*, i32, %struct.D3D12_RANGE*, i8**)*, i32 (%struct.ID3D12Resource*, i32, %struct.D3D12_RANGE*, i8**)** %26, align 8
  %28 = call i32 %27(%struct.ID3D12Resource* nonnull dereferenceable(8) %22, i32 0, %struct.D3D12_RANGE* nonnull %3, i8** nonnull %4) #10
  %29 = bitcast i8** %4 to %"struct.Halide::Runtime::Internal::D3D12Compute::ID3D12MemoryMappedResourceFAUX"**
  %30 = load %"struct.Halide::Runtime::Internal::D3D12Compute::ID3D12MemoryMappedResourceFAUX"*, %"struct.Halide::Runtime::Internal::D3D12Compute::ID3D12MemoryMappedResourceFAUX"** %29, align 8, !tbaa !49
  %31 = call fastcc i1 @"??$D3DErrorCheck@UID3D12MemoryMappedResourceFAUX@D3D12Compute@Internal@Runtime@Halide@@@@YA_NHPEAUID3D12MemoryMappedResourceFAUX@D3D12Compute@Internal@Runtime@Halide@@PEAXPEBD@Z"(i32 %28, %"struct.Halide::Runtime::Internal::D3D12Compute::ID3D12MemoryMappedResourceFAUX"* %30, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @"??_C@_0DA@HBIDIHJB@Unable?5to?5map?5Direct3D?512?5stagin@", i64 0, i64 0)) #11
  br i1 %31, label %39, label %32

32:                                               ; preds = %20
  %33 = load i8*, i8** %4, align 8, !tbaa !49
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  call void @halide_print(i8* null, i8* getelementptr inbounds ([106 x i8], [106 x i8]* @"??_C@_0GK@HACGJCLB@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  call void @abort() #10
  %36 = load i8*, i8** %4, align 8, !tbaa !49
  br label %37

37:                                               ; preds = %35, %32
  %38 = phi i8* [ %36, %35 ], [ %33, %32 ]
  store i8* %38, i8** %5, align 8, !tbaa !115
  br label %39

39:                                               ; preds = %20, %37
  %40 = phi i8* [ %38, %37 ], [ null, %20 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #12
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %9) #12
  br label %41

41:                                               ; preds = %1, %39
  %42 = phi i8* [ %40, %39 ], [ %6, %1 ]
  ret i8* %42
}

; Function Attrs: nounwind
define internal fastcc i1 @"??$D3DErrorCheck@UID3D12MemoryMappedResourceFAUX@D3D12Compute@Internal@Runtime@Halide@@@@YA_NHPEAUID3D12MemoryMappedResourceFAUX@D3D12Compute@Internal@Runtime@Halide@@PEAXPEBD@Z"(i32 %0, %"struct.Halide::Runtime::Internal::D3D12Compute::ID3D12MemoryMappedResourceFAUX"* %1, i8* %2) unnamed_addr #4 {
  %4 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  %5 = icmp sgt i32 %0, -1
  %6 = icmp ne %"struct.Halide::Runtime::Internal::D3D12Compute::ID3D12MemoryMappedResourceFAUX"* %1, null
  %7 = and i1 %5, %6
  br i1 %7, label %60, label %8

8:                                                ; preds = %3
  %9 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %9) #12
  %10 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i64 0, i32 3
  store i8* null, i8** %10, align 8, !tbaa !41
  %11 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i64 0, i32 4
  store i8 1, i8* %11, align 8, !tbaa !44
  %12 = tail call i8* @malloc(i64 1024) #10
  %13 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i64 0, i32 0
  store i8* %12, i8** %13, align 8, !tbaa !45
  %14 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i64 0, i32 1
  %15 = icmp eq i8* %12, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %8
  %17 = getelementptr inbounds i8, i8* %12, i64 1023
  store i8 0, i8* %17, align 1, !tbaa !40
  br label %18

18:                                               ; preds = %8, %16
  %19 = phi i8* [ %17, %16 ], [ null, %8 ]
  %20 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i64 0, i32 2
  store i8* %19, i8** %20, align 8
  %21 = icmp eq i8* %2, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = tail call i8* @halide_string_to_string(i8* %12, i8* %19, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"??_C@_09CGLEKJAK@?$DMnullptr?$DO?$AA@", i64 0, i64 0)) #10
  br label %26

24:                                               ; preds = %18
  %25 = tail call i8* @halide_string_to_string(i8* %12, i8* %19, i8* nonnull %2) #10
  br label %26

26:                                               ; preds = %22, %24
  %27 = phi i8* [ %25, %24 ], [ %23, %22 ]
  %28 = tail call i8* @halide_string_to_string(i8* %27, i8* %19, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @"??_C@_0L@IAGCJOCP@?5?$CIHRESULT?$DN?$AA@", i64 0, i64 0)) #10
  %29 = sext i32 %0 to i64
  %30 = inttoptr i64 %29 to i8*
  %31 = tail call i8* @halide_pointer_to_string(i8* %28, i8* %19, i8* %30) #10
  %32 = tail call i8* @halide_string_to_string(i8* %31, i8* %19, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @"??_C@_0L@FELFIFPM@?0?5object?$CK?$DN?$AA@", i64 0, i64 0)) #10
  %33 = bitcast %"struct.Halide::Runtime::Internal::D3D12Compute::ID3D12MemoryMappedResourceFAUX"* %1 to i8*
  %34 = tail call i8* @halide_pointer_to_string(i8* %32, i8* %19, i8* %33) #10
  %35 = tail call i8* @halide_string_to_string(i8* %34, i8* %19, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01PKGAHCOL@?$CJ?$AA@", i64 0, i64 0)) #10
  %36 = tail call i8* @halide_string_to_string(i8* %35, i8* %19, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #10
  %37 = tail call i8* @halide_string_to_string(i8* %36, i8* %19, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @"??_C@_0CE@MGMMPJGA@vvvvv?5D3D12?5Begin?5Debug?5Dump?5vvv@", i64 0, i64 0)) #10
  store i8* %37, i8** %14, align 8, !tbaa !46
  call fastcc void @"?d3d12_debug_dump@@YAXAEAV?$Printer@$00$0EAA@@?A0x2B71E647@Internal@Runtime@Halide@@@Z"(%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* nonnull align 8 dereferenceable(40) %4) #11
  %38 = load i8*, i8** %20, align 8, !tbaa !47
  %39 = load i8*, i8** %14, align 8, !tbaa !46
  %40 = tail call i8* @halide_string_to_string(i8* %39, i8* %38, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @"??_C@_0CE@PCPJBLP@?$FO?$FO?$FO?$FO?$FO?5D3D12?5?5End?5?5Debug?5Dump?5?$FO?$FO?$FO@", i64 0, i64 0)) #10
  %41 = tail call i8* @halide_string_to_string(i8* %40, i8* %38, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @"??_C@_0BA@FGKOLOB@D3D12?5HALT?5?$CB?$CB?$CB?6?$AA@", i64 0, i64 0)) #10
  store i8* %41, i8** %14, align 8, !tbaa !46
  %42 = load i8*, i8** %13, align 8, !tbaa !45
  %43 = icmp eq i8* %42, null
  %44 = load i8*, i8** %10, align 8, !tbaa !41
  br i1 %43, label %45, label %46

45:                                               ; preds = %26
  tail call void @halide_error(i8* %44, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #10
  br label %52

46:                                               ; preds = %26
  %47 = ptrtoint i8* %41 to i64
  %48 = ptrtoint i8* %42 to i64
  %49 = add i64 %47, 1
  %50 = sub i64 %49, %48
  %51 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %44, i8* nonnull %42, i64 %50) #10
  tail call void @halide_error(i8* %44, i8* nonnull %42) #10
  br label %52

52:                                               ; preds = %46, %45
  %53 = load i8, i8* %11, align 8, !tbaa !44, !range !48
  %54 = icmp eq i8 %53, 0
  %55 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i64 0, i32 5, i64 0
  %56 = icmp eq i8* %42, %55
  %57 = or i1 %54, %56
  br i1 %57, label %59, label %58

58:                                               ; preds = %52
  call void @free(i8* %42) #10
  br label %59

59:                                               ; preds = %52, %58
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %9) #12
  br label %60

60:                                               ; preds = %3, %59
  %61 = and i1 %5, %6
  %62 = xor i1 %61, true
  ret i1 %62
}

; Function Attrs: nounwind
define weak dso_local void @"?unmap_buffer@D3D12Compute@Internal@Runtime@Halide@@YAXPEAUd3d12_buffer@1234@@Z"(%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %0) local_unnamed_addr #4 {
  %2 = alloca <2 x i64>, align 16
  %3 = bitcast <2 x i64>* %2 to %struct.D3D12_RANGE*
  %4 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %0, i64 0, i32 13
  %5 = load i8*, i8** %4, align 8, !tbaa !115
  %6 = icmp eq i8* %5, null
  br i1 %6, label %26, label %7

7:                                                ; preds = %1
  %8 = bitcast <2 x i64>* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %8) #12
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %0, i64 0, i32 8
  %10 = load i32, i32* %9, align 4, !tbaa !111
  switch i32 %10, label %18 [
    i32 1, label %11
    i32 5, label %11
    i32 6, label %17
  ]

11:                                               ; preds = %7, %7
  %12 = getelementptr inbounds <2 x i64>, <2 x i64>* %2, i64 0, i64 0
  store i64 0, i64* %12, align 16, !tbaa !116
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %0, i64 0, i32 2
  %14 = load i32, i32* %13, align 4, !tbaa !63
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.D3D12_RANGE, %struct.D3D12_RANGE* %3, i64 0, i32 1
  store i64 %15, i64* %16, align 8, !tbaa !118
  br label %19

17:                                               ; preds = %7
  store <2 x i64> zeroinitializer, <2 x i64>* %2, align 16, !tbaa !6
  br label %19

18:                                               ; preds = %7
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([106 x i8], [106 x i8]* @"??_C@_0GK@MGAKONOO@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  tail call void @abort() #10
  br label %19

19:                                               ; preds = %11, %17, %18
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %0, i64 0, i32 0
  %21 = load %struct.ID3D12Resource*, %struct.ID3D12Resource** %20, align 8, !tbaa !54
  %22 = bitcast %struct.ID3D12Resource* %21 to void (%struct.ID3D12Resource*, i32, %struct.D3D12_RANGE*)***
  %23 = load void (%struct.ID3D12Resource*, i32, %struct.D3D12_RANGE*)**, void (%struct.ID3D12Resource*, i32, %struct.D3D12_RANGE*)*** %22, align 8, !tbaa !50
  %24 = getelementptr inbounds void (%struct.ID3D12Resource*, i32, %struct.D3D12_RANGE*)*, void (%struct.ID3D12Resource*, i32, %struct.D3D12_RANGE*)** %23, i64 9
  %25 = load void (%struct.ID3D12Resource*, i32, %struct.D3D12_RANGE*)*, void (%struct.ID3D12Resource*, i32, %struct.D3D12_RANGE*)** %24, align 8
  call void %25(%struct.ID3D12Resource* nonnull dereferenceable(8) %21, i32 0, %struct.D3D12_RANGE* nonnull %3) #10
  store i8* null, i8** %4, align 8, !tbaa !115
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %8) #12
  br label %26

26:                                               ; preds = %1, %19
  ret void
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @"?new_upload_buffer@D3D12Compute@Internal@Runtime@Halide@@YA?AUd3d12_buffer@1234@PEAUhalide_d3d12compute_device@@_K@Z"(%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* noalias sret(%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer") align 8 %0, %struct.halide_d3d12compute_device* %1, i64 %2) local_unnamed_addr #0 {
  tail call void @"?new_buffer_resource@D3D12Compute@Internal@Runtime@Halide@@YA?AUd3d12_buffer@1234@PEAUhalide_d3d12compute_device@@_KW4D3D12_HEAP_TYPE@@@Z"(%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* sret(%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer") align 8 %0, %struct.halide_d3d12compute_device* %1, i64 %2, i32 2) #11
  %4 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %0, i64 0, i32 8
  store i32 5, i32* %4, align 4, !tbaa !111
  %5 = tail call i8* @"?map_buffer@D3D12Compute@Internal@Runtime@Halide@@YAPEAXPEAUd3d12_buffer@1234@@Z"(%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %0) #11
  ret void
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @"?new_readback_buffer@D3D12Compute@Internal@Runtime@Halide@@YA?AUd3d12_buffer@1234@PEAUhalide_d3d12compute_device@@_K@Z"(%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* noalias sret(%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer") align 8 %0, %struct.halide_d3d12compute_device* %1, i64 %2) local_unnamed_addr #0 {
  tail call void @"?new_buffer_resource@D3D12Compute@Internal@Runtime@Halide@@YA?AUd3d12_buffer@1234@PEAUhalide_d3d12compute_device@@_KW4D3D12_HEAP_TYPE@@@Z"(%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* sret(%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer") align 8 %0, %struct.halide_d3d12compute_device* %1, i64 %2, i32 3) #11
  %4 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %0, i64 0, i32 8
  store i32 6, i32* %4, align 4, !tbaa !111
  ret void
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @"?new_constant_buffer@D3D12Compute@Internal@Runtime@Halide@@YA?AUd3d12_buffer@1234@PEAUhalide_d3d12compute_device@@_K@Z"(%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* noalias sret(%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer") align 8 %0, %struct.halide_d3d12compute_device* %1, i64 %2) local_unnamed_addr #0 {
  tail call void @"?new_upload_buffer@D3D12Compute@Internal@Runtime@Halide@@YA?AUd3d12_buffer@1234@PEAUhalide_d3d12compute_device@@_K@Z"(%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* sret(%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer") align 8 %0, %struct.halide_d3d12compute_device* %1, i64 %2) #11
  %4 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %0, i64 0, i32 8
  store i32 1, i32* %4, align 4, !tbaa !111
  ret void
}

; Function Attrs: nounwind mustprogress
define weak dso_local %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* @"?new_buffer@D3D12Compute@Internal@Runtime@Halide@@YAPEAUd3d12_buffer@1234@PEAUhalide_d3d12compute_device@@_K@Z"(%struct.halide_d3d12compute_device* %0, i64 %1) local_unnamed_addr #0 {
  %3 = alloca %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", align 8
  %4 = bitcast %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %4) #12
  call void @"?new_device_buffer@D3D12Compute@Internal@Runtime@Halide@@YA?AUd3d12_buffer@1234@PEAUhalide_d3d12compute_device@@_K@Z"(%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* nonnull sret(%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer") align 8 %3, %struct.halide_d3d12compute_device* %0, i64 %1) #11
  %5 = call i8* @malloc(i64 96) #10
  %6 = bitcast i8* %5 to %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* nonnull align 8 %4, i64 96, i1 true), !tbaa.struct !119
  %7 = getelementptr inbounds i8, i8* %5, i64 56
  store i8 1, i8* %7, align 8, !tbaa !112
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %4) #12
  ret %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %6
}

; Function Attrs: nounwind mustprogress
define weak dso_local i64 @"?suballocate@D3D12Compute@Internal@Runtime@Halide@@YA_KPEAUhalide_d3d12compute_device@@PEAUd3d12_buffer@1234@_K@Z"(%struct.halide_d3d12compute_device* %0, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %1, i64 %2) local_unnamed_addr #0 {
  %4 = alloca %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", align 8
  %5 = alloca %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", align 8
  %6 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %1, i64 0, i32 2
  %7 = load i32, i32* %6, align 4, !tbaa !63
  %8 = zext i32 %7 to i64
  %9 = icmp ult i64 %8, %2
  br i1 %9, label %10, label %61

10:                                               ; preds = %3
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %1, i64 0, i32 14
  %12 = atomicrmw volatile add i64* %11, i64 1 seq_cst
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([117 x i8], [117 x i8]* @"??_C@_0HF@GEOCDJFN@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  tail call void @abort() #10
  br label %15

15:                                               ; preds = %14, %10
  %16 = load i32, i32* %6, align 4, !tbaa !63
  %17 = zext i32 %16 to i64
  %18 = add i64 %17, %2
  %19 = shl i64 %18, 1
  %20 = atomicrmw volatile sub i64* %11, i64 1 seq_cst
  %21 = icmp eq i64 %20, 1
  br i1 %21, label %23, label %22

22:                                               ; preds = %15
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([117 x i8], [117 x i8]* @"??_C@_0HF@NJIFOIPF@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  tail call void @abort() #10
  br label %23

23:                                               ; preds = %22, %15
  %24 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %1, i64 0, i32 0
  %25 = load %struct.ID3D12Resource*, %struct.ID3D12Resource** %24, align 8, !tbaa !54
  %26 = icmp eq %struct.ID3D12Resource* %25, null
  br i1 %26, label %34, label %27

27:                                               ; preds = %23
  %28 = getelementptr %struct.ID3D12Resource, %struct.ID3D12Resource* %25, i64 0, i32 0, i32 0, i32 0, i32 0
  %29 = bitcast %struct.ID3D12Resource* %25 to i32 (%struct.IUnknown*)***
  %30 = load i32 (%struct.IUnknown*)**, i32 (%struct.IUnknown*)*** %29, align 8, !tbaa !50
  %31 = getelementptr inbounds i32 (%struct.IUnknown*)*, i32 (%struct.IUnknown*)** %30, i64 2
  %32 = load i32 (%struct.IUnknown*)*, i32 (%struct.IUnknown*)** %31, align 8
  %33 = tail call i32 %32(%struct.IUnknown* nonnull dereferenceable(8) %28) #10
  br label %34

34:                                               ; preds = %27, %23
  %35 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %1, i64 0, i32 12
  %36 = load i8*, i8** %35, align 8, !tbaa !113
  %37 = icmp eq i8* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  tail call void @free(i8* nonnull %36) #10
  br label %39

39:                                               ; preds = %38, %34
  %40 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %1, i64 0, i32 11
  %41 = load i8, i8* %40, align 8, !tbaa !112, !range !48
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %39
  %44 = bitcast %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %1 to i8*
  tail call void @free(i8* %44) #10
  br label %45

45:                                               ; preds = %39, %43
  %46 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %1, i64 0, i32 8
  %47 = load i32, i32* %46, align 4, !tbaa !111
  switch i32 %47, label %60 [
    i32 5, label %48
    i32 6, label %54
  ]

48:                                               ; preds = %45
  %49 = icmp eq %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %1, @"?upload@D3D12Compute@Internal@Runtime@Halide@@3Ud3d12_buffer@1234@A"
  br i1 %49, label %51, label %50

50:                                               ; preds = %48
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([121 x i8], [121 x i8]* @"??_C@_0HJ@DKCFLDBN@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  tail call void @abort() #10
  br label %51

51:                                               ; preds = %50, %48
  %52 = bitcast %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %52) #12
  call void @"?new_upload_buffer@D3D12Compute@Internal@Runtime@Halide@@YA?AUd3d12_buffer@1234@PEAUhalide_d3d12compute_device@@_K@Z"(%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* nonnull sret(%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer") align 8 %4, %struct.halide_d3d12compute_device* %0, i64 %19) #11
  %53 = bitcast %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %53, i8* nonnull align 8 %52, i64 96, i1 true), !tbaa.struct !119
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %52) #12
  br label %61

54:                                               ; preds = %45
  %55 = icmp eq %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %1, @"?readback@D3D12Compute@Internal@Runtime@Halide@@3Ud3d12_buffer@1234@A"
  br i1 %55, label %57, label %56

56:                                               ; preds = %54
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([123 x i8], [123 x i8]* @"??_C@_0HL@MCKOJAGC@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  tail call void @abort() #10
  br label %57

57:                                               ; preds = %56, %54
  %58 = bitcast %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %58) #12
  call void @"?new_readback_buffer@D3D12Compute@Internal@Runtime@Halide@@YA?AUd3d12_buffer@1234@PEAUhalide_d3d12compute_device@@_K@Z"(%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* nonnull sret(%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer") align 8 %5, %struct.halide_d3d12compute_device* %0, i64 %19) #11
  %59 = bitcast %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* nonnull align 8 %58, i64 96, i1 true), !tbaa.struct !119
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %58) #12
  br label %61

60:                                               ; preds = %45
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([106 x i8], [106 x i8]* @"??_C@_0GK@BCNCIOPH@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  tail call void @abort() #10
  br label %61

61:                                               ; preds = %51, %57, %60, %3
  %62 = load i32, i32* %6, align 4, !tbaa !63
  %63 = zext i32 %62 to i64
  %64 = icmp ult i64 %63, %2
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  call void @halide_print(i8* null, i8* getelementptr inbounds ([136 x i8], [136 x i8]* @"??_C@_0II@CBKJDPFH@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  call void @abort() #10
  br label %66

66:                                               ; preds = %61, %65
  %67 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %1, i64 0, i32 14
  %68 = atomicrmw volatile add i64* %67, i64 1 seq_cst
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %66
  call void @halide_print(i8* null, i8* getelementptr inbounds ([117 x i8], [117 x i8]* @"??_C@_0HF@CECKD@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  call void @abort() #10
  br label %71

71:                                               ; preds = %70, %66
  ret i64 0
}

; Function Attrs: nounwind
define dso_local %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_profiler"* @"?new_profiler@D3D12Compute@Internal@Runtime@Halide@@YAPEAUd3d12_profiler@1234@PEAUhalide_d3d12compute_device@@_K@Z"(%struct.halide_d3d12compute_device* %0, i64 %1) local_unnamed_addr #4 {
  %3 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  %4 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ID3D12QueryHeap*, align 8
  %7 = alloca %struct.D3D12_QUERY_HEAP_DESC, align 4
  %8 = alloca %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", align 8
  %9 = bitcast i64* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #12
  store i64 0, i64* %5, align 8, !tbaa !6
  %10 = load %struct.ID3D12CommandQueue*, %struct.ID3D12CommandQueue** bitcast (%struct.halide_d3d12compute_command_queue** @"?queue@D3D12Compute@Internal@Runtime@Halide@@3PEAUhalide_d3d12compute_command_queue@@EA" to %struct.ID3D12CommandQueue**), align 8, !tbaa !49
  %11 = bitcast %struct.ID3D12CommandQueue* %10 to i32 (%struct.ID3D12CommandQueue*, i64*)***
  %12 = load i32 (%struct.ID3D12CommandQueue*, i64*)**, i32 (%struct.ID3D12CommandQueue*, i64*)*** %11, align 8, !tbaa !50
  %13 = getelementptr inbounds i32 (%struct.ID3D12CommandQueue*, i64*)*, i32 (%struct.ID3D12CommandQueue*, i64*)** %12, i64 16
  %14 = load i32 (%struct.ID3D12CommandQueue*, i64*)*, i32 (%struct.ID3D12CommandQueue*, i64*)** %13, align 8
  %15 = call i32 %14(%struct.ID3D12CommandQueue* nonnull dereferenceable(8) %10, i64* nonnull %5) #10
  %16 = load i64, i64* %5, align 8, !tbaa !6
  %17 = inttoptr i64 %16 to %"struct.Halide::Runtime::Internal::D3D12Compute::ID3D12CommandQueueTimestampFrequencyFAUX"*
  %18 = icmp sgt i32 %15, -1
  %19 = icmp ne i64 %16, 0
  %20 = and i1 %18, %19
  br i1 %20, label %67, label %21

21:                                               ; preds = %2
  %22 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %22) #12
  %23 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i64 0, i32 3
  store i8* null, i8** %23, align 8, !tbaa !41
  %24 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i64 0, i32 4
  store i8 1, i8* %24, align 8, !tbaa !44
  %25 = call i8* @malloc(i64 1024) #10
  %26 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i64 0, i32 0
  store i8* %25, i8** %26, align 8, !tbaa !45
  %27 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i64 0, i32 1
  %28 = icmp eq i8* %25, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %21
  %30 = getelementptr inbounds i8, i8* %25, i64 1023
  store i8 0, i8* %30, align 1, !tbaa !40
  br label %31

31:                                               ; preds = %29, %21
  %32 = phi i8* [ %30, %29 ], [ null, %21 ]
  %33 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i64 0, i32 2
  store i8* %32, i8** %33, align 8
  %34 = call i8* @halide_string_to_string(i8* %25, i8* %32, i8* nonnull getelementptr inbounds ([61 x i8], [61 x i8]* @"??_C@_0DN@OAKEFMAC@Unable?5to?5query?5the?5timestamp?5fr@", i64 0, i64 0)) #10
  %35 = call i8* @halide_string_to_string(i8* %34, i8* %32, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @"??_C@_0L@IAGCJOCP@?5?$CIHRESULT?$DN?$AA@", i64 0, i64 0)) #10
  %36 = sext i32 %15 to i64
  %37 = inttoptr i64 %36 to i8*
  %38 = call i8* @halide_pointer_to_string(i8* %35, i8* %32, i8* %37) #10
  %39 = call i8* @halide_string_to_string(i8* %38, i8* %32, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @"??_C@_0L@FELFIFPM@?0?5object?$CK?$DN?$AA@", i64 0, i64 0)) #10
  %40 = bitcast %"struct.Halide::Runtime::Internal::D3D12Compute::ID3D12CommandQueueTimestampFrequencyFAUX"* %17 to i8*
  %41 = call i8* @halide_pointer_to_string(i8* %39, i8* %32, i8* %40) #10
  %42 = call i8* @halide_string_to_string(i8* %41, i8* %32, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01PKGAHCOL@?$CJ?$AA@", i64 0, i64 0)) #10
  %43 = call i8* @halide_string_to_string(i8* %42, i8* %32, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #10
  %44 = call i8* @halide_string_to_string(i8* %43, i8* %32, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @"??_C@_0CE@MGMMPJGA@vvvvv?5D3D12?5Begin?5Debug?5Dump?5vvv@", i64 0, i64 0)) #10
  store i8* %44, i8** %27, align 8, !tbaa !46
  call fastcc void @"?d3d12_debug_dump@@YAXAEAV?$Printer@$00$0EAA@@?A0x2B71E647@Internal@Runtime@Halide@@@Z"(%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* nonnull align 8 dereferenceable(40) %4) #10
  %45 = load i8*, i8** %33, align 8, !tbaa !47
  %46 = load i8*, i8** %27, align 8, !tbaa !46
  %47 = call i8* @halide_string_to_string(i8* %46, i8* %45, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @"??_C@_0CE@PCPJBLP@?$FO?$FO?$FO?$FO?$FO?5D3D12?5?5End?5?5Debug?5Dump?5?$FO?$FO?$FO@", i64 0, i64 0)) #10
  %48 = call i8* @halide_string_to_string(i8* %47, i8* %45, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @"??_C@_0BA@FGKOLOB@D3D12?5HALT?5?$CB?$CB?$CB?6?$AA@", i64 0, i64 0)) #10
  store i8* %48, i8** %27, align 8, !tbaa !46
  %49 = load i8*, i8** %26, align 8, !tbaa !45
  %50 = icmp eq i8* %49, null
  %51 = load i8*, i8** %23, align 8, !tbaa !41
  br i1 %50, label %52, label %53

52:                                               ; preds = %31
  call void @halide_error(i8* %51, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #10
  br label %59

53:                                               ; preds = %31
  %54 = ptrtoint i8* %48 to i64
  %55 = ptrtoint i8* %49 to i64
  %56 = add i64 %54, 1
  %57 = sub i64 %56, %55
  %58 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %51, i8* nonnull %49, i64 %57) #10
  call void @halide_error(i8* %51, i8* nonnull %49) #10
  br label %59

59:                                               ; preds = %53, %52
  %60 = load i8, i8* %24, align 8, !tbaa !44, !range !48
  %61 = icmp eq i8 %60, 0
  %62 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i64 0, i32 5, i64 0
  %63 = icmp eq i8* %49, %62
  %64 = or i1 %63, %61
  br i1 %64, label %66, label %65

65:                                               ; preds = %59
  call void @free(i8* %49) #10
  br label %66

66:                                               ; preds = %59, %65
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %22) #12
  br label %148

67:                                               ; preds = %2
  %68 = bitcast %struct.ID3D12QueryHeap** %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %68) #12
  store %struct.ID3D12QueryHeap* null, %struct.ID3D12QueryHeap** %6, align 8, !tbaa !49
  %69 = bitcast %struct.D3D12_QUERY_HEAP_DESC* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %69) #12
  %70 = getelementptr inbounds %struct.D3D12_QUERY_HEAP_DESC, %struct.D3D12_QUERY_HEAP_DESC* %7, i64 0, i32 0
  store i32 1, i32* %70, align 4, !tbaa !123
  %71 = trunc i64 %1 to i32
  %72 = getelementptr inbounds %struct.D3D12_QUERY_HEAP_DESC, %struct.D3D12_QUERY_HEAP_DESC* %7, i64 0, i32 1
  store i32 %71, i32* %72, align 4, !tbaa !126
  %73 = getelementptr inbounds %struct.D3D12_QUERY_HEAP_DESC, %struct.D3D12_QUERY_HEAP_DESC* %7, i64 0, i32 2
  store i32 0, i32* %73, align 4, !tbaa !127
  %74 = bitcast %struct.halide_d3d12compute_device* %0 to %struct.ID3D12Device*
  %75 = bitcast %struct.ID3D12QueryHeap** %6 to i8**
  %76 = bitcast %struct.halide_d3d12compute_device* %0 to i32 (%struct.ID3D12Device*, %struct.D3D12_QUERY_HEAP_DESC*, %struct._GUID*, i8**)***
  %77 = load i32 (%struct.ID3D12Device*, %struct.D3D12_QUERY_HEAP_DESC*, %struct._GUID*, i8**)**, i32 (%struct.ID3D12Device*, %struct.D3D12_QUERY_HEAP_DESC*, %struct._GUID*, i8**)*** %76, align 8, !tbaa !50
  %78 = getelementptr inbounds i32 (%struct.ID3D12Device*, %struct.D3D12_QUERY_HEAP_DESC*, %struct._GUID*, i8**)*, i32 (%struct.ID3D12Device*, %struct.D3D12_QUERY_HEAP_DESC*, %struct._GUID*, i8**)** %77, i64 39
  %79 = load i32 (%struct.ID3D12Device*, %struct.D3D12_QUERY_HEAP_DESC*, %struct._GUID*, i8**)*, i32 (%struct.ID3D12Device*, %struct.D3D12_QUERY_HEAP_DESC*, %struct._GUID*, i8**)** %78, align 8
  %80 = call i32 %79(%struct.ID3D12Device* nonnull dereferenceable(8) %74, %struct.D3D12_QUERY_HEAP_DESC* nonnull %7, %struct._GUID* nonnull align 4 dereferenceable(16) @_GUID_0d9658ae_ed45_469e_a61d_970ec583cab4, i8** nonnull %75) #10
  %81 = load %struct.ID3D12QueryHeap*, %struct.ID3D12QueryHeap** %6, align 8, !tbaa !49
  %82 = icmp sgt i32 %80, -1
  %83 = icmp ne %struct.ID3D12QueryHeap* %81, null
  %84 = and i1 %82, %83
  br i1 %84, label %131, label %85

85:                                               ; preds = %67
  %86 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %86) #12
  %87 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, i64 0, i32 3
  store i8* null, i8** %87, align 8, !tbaa !41
  %88 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, i64 0, i32 4
  store i8 1, i8* %88, align 8, !tbaa !44
  %89 = call i8* @malloc(i64 1024) #10
  %90 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, i64 0, i32 0
  store i8* %89, i8** %90, align 8, !tbaa !45
  %91 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, i64 0, i32 1
  %92 = icmp eq i8* %89, null
  br i1 %92, label %95, label %93

93:                                               ; preds = %85
  %94 = getelementptr inbounds i8, i8* %89, i64 1023
  store i8 0, i8* %94, align 1, !tbaa !40
  br label %95

95:                                               ; preds = %93, %85
  %96 = phi i8* [ %94, %93 ], [ null, %85 ]
  %97 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, i64 0, i32 2
  store i8* %96, i8** %97, align 8
  %98 = call i8* @halide_string_to_string(i8* %89, i8* %96, i8* nonnull getelementptr inbounds ([38 x i8], [38 x i8]* @"??_C@_0CG@NBKDFBHJ@Unable?5to?5create?5timestamp?5query@", i64 0, i64 0)) #10
  %99 = call i8* @halide_string_to_string(i8* %98, i8* %96, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @"??_C@_0L@IAGCJOCP@?5?$CIHRESULT?$DN?$AA@", i64 0, i64 0)) #10
  %100 = sext i32 %80 to i64
  %101 = inttoptr i64 %100 to i8*
  %102 = call i8* @halide_pointer_to_string(i8* %99, i8* %96, i8* %101) #10
  %103 = call i8* @halide_string_to_string(i8* %102, i8* %96, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @"??_C@_0L@FELFIFPM@?0?5object?$CK?$DN?$AA@", i64 0, i64 0)) #10
  %104 = bitcast %struct.ID3D12QueryHeap* %81 to i8*
  %105 = call i8* @halide_pointer_to_string(i8* %103, i8* %96, i8* %104) #10
  %106 = call i8* @halide_string_to_string(i8* %105, i8* %96, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01PKGAHCOL@?$CJ?$AA@", i64 0, i64 0)) #10
  %107 = call i8* @halide_string_to_string(i8* %106, i8* %96, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #10
  %108 = call i8* @halide_string_to_string(i8* %107, i8* %96, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @"??_C@_0CE@MGMMPJGA@vvvvv?5D3D12?5Begin?5Debug?5Dump?5vvv@", i64 0, i64 0)) #10
  store i8* %108, i8** %91, align 8, !tbaa !46
  call fastcc void @"?d3d12_debug_dump@@YAXAEAV?$Printer@$00$0EAA@@?A0x2B71E647@Internal@Runtime@Halide@@@Z"(%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* nonnull align 8 dereferenceable(40) %3) #10
  %109 = load i8*, i8** %97, align 8, !tbaa !47
  %110 = load i8*, i8** %91, align 8, !tbaa !46
  %111 = call i8* @halide_string_to_string(i8* %110, i8* %109, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @"??_C@_0CE@PCPJBLP@?$FO?$FO?$FO?$FO?$FO?5D3D12?5?5End?5?5Debug?5Dump?5?$FO?$FO?$FO@", i64 0, i64 0)) #10
  %112 = call i8* @halide_string_to_string(i8* %111, i8* %109, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @"??_C@_0BA@FGKOLOB@D3D12?5HALT?5?$CB?$CB?$CB?6?$AA@", i64 0, i64 0)) #10
  store i8* %112, i8** %91, align 8, !tbaa !46
  %113 = load i8*, i8** %90, align 8, !tbaa !45
  %114 = icmp eq i8* %113, null
  %115 = load i8*, i8** %87, align 8, !tbaa !41
  br i1 %114, label %116, label %117

116:                                              ; preds = %95
  call void @halide_error(i8* %115, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #10
  br label %123

117:                                              ; preds = %95
  %118 = ptrtoint i8* %112 to i64
  %119 = ptrtoint i8* %113 to i64
  %120 = add i64 %118, 1
  %121 = sub i64 %120, %119
  %122 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %115, i8* nonnull %113, i64 %121) #10
  call void @halide_error(i8* %115, i8* nonnull %113) #10
  br label %123

123:                                              ; preds = %117, %116
  %124 = load i8, i8* %88, align 8, !tbaa !44, !range !48
  %125 = icmp eq i8 %124, 0
  %126 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, i64 0, i32 5, i64 0
  %127 = icmp eq i8* %113, %126
  %128 = or i1 %127, %125
  br i1 %128, label %130, label %129

129:                                              ; preds = %123
  call void @free(i8* %113) #10
  br label %130

130:                                              ; preds = %123, %129
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %86) #12
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %69) #12
  br label %146

131:                                              ; preds = %67
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %69) #12
  %132 = shl i64 %1, 3
  %133 = bitcast %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %133) #12
  call void @"?new_readback_buffer@D3D12Compute@Internal@Runtime@Halide@@YA?AUd3d12_buffer@1234@PEAUhalide_d3d12compute_device@@_K@Z"(%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* nonnull sret(%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer") align 8 %8, %struct.halide_d3d12compute_device* nonnull %0, i64 %132) #11
  %134 = call i8* @malloc(i64 120) #10
  %135 = bitcast i8* %134 to %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_profiler"*
  %136 = load %struct.ID3D12QueryHeap*, %struct.ID3D12QueryHeap** %6, align 8, !tbaa !49
  %137 = getelementptr inbounds i8, i8* %134, i64 104
  %138 = bitcast i8* %137 to %struct.ID3D12QueryHeap**
  store %struct.ID3D12QueryHeap* %136, %struct.ID3D12QueryHeap** %138, align 8, !tbaa !128
  %139 = load i64, i64* %5, align 8, !tbaa !6
  %140 = getelementptr inbounds i8, i8* %134, i64 96
  %141 = bitcast i8* %140 to i64*
  store i64 %139, i64* %141, align 8, !tbaa !130
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %134, i8* nonnull align 8 %133, i64 96, i1 true), !tbaa.struct !119
  %142 = getelementptr inbounds i8, i8* %134, i64 112
  %143 = bitcast i8* %142 to i32*
  store i32 0, i32* %143, align 8, !tbaa !131
  %144 = getelementptr inbounds i8, i8* %134, i64 116
  %145 = bitcast i8* %144 to i32*
  store i32 %71, i32* %145, align 4, !tbaa !132
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %133) #12
  br label %146

146:                                              ; preds = %130, %131
  %147 = phi %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_profiler"* [ %135, %131 ], [ null, %130 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %68) #12
  br label %148

148:                                              ; preds = %66, %146
  %149 = phi %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_profiler"* [ %147, %146 ], [ null, %66 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #12
  ret %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_profiler"* %149
}

; Function Attrs: nounwind mustprogress
define dso_local i64 @"?request_timestamp_checkpoint@D3D12Compute@Internal@Runtime@Halide@@YA_KPEAUd3d12_graphics_command_list@1234@PEAUd3d12_profiler@1234@@Z"(%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_graphics_command_list"* nocapture readonly %0, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_profiler"* nocapture %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_profiler", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_profiler"* %1, i64 0, i32 2
  %4 = load %struct.ID3D12QueryHeap*, %struct.ID3D12QueryHeap** %3, align 8, !tbaa !128
  %5 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_profiler", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_profiler"* %1, i64 0, i32 3
  %6 = load i32, i32* %5, align 8, !tbaa !131
  %7 = add i32 %6, 1
  store i32 %7, i32* %5, align 8, !tbaa !131
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_graphics_command_list", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_graphics_command_list"* %0, i64 0, i32 0, i32 0
  %9 = load %struct.ID3D12GraphicsCommandList*, %struct.ID3D12GraphicsCommandList** %8, align 8, !tbaa !88
  %10 = bitcast %struct.ID3D12GraphicsCommandList* %9 to void (%struct.ID3D12GraphicsCommandList*, %struct.ID3D12QueryHeap*, i32, i32)***
  %11 = load void (%struct.ID3D12GraphicsCommandList*, %struct.ID3D12QueryHeap*, i32, i32)**, void (%struct.ID3D12GraphicsCommandList*, %struct.ID3D12QueryHeap*, i32, i32)*** %10, align 8, !tbaa !50
  %12 = getelementptr inbounds void (%struct.ID3D12GraphicsCommandList*, %struct.ID3D12QueryHeap*, i32, i32)*, void (%struct.ID3D12GraphicsCommandList*, %struct.ID3D12QueryHeap*, i32, i32)** %11, i64 53
  %13 = load void (%struct.ID3D12GraphicsCommandList*, %struct.ID3D12QueryHeap*, i32, i32)*, void (%struct.ID3D12GraphicsCommandList*, %struct.ID3D12QueryHeap*, i32, i32)** %12, align 8
  tail call void %13(%struct.ID3D12GraphicsCommandList* nonnull dereferenceable(8) %9, %struct.ID3D12QueryHeap* %4, i32 2, i32 %6) #10
  %14 = zext i32 %6 to i64
  ret i64 %14
}

; Function Attrs: nounwind mustprogress
define dso_local void @"?begin_profiling@D3D12Compute@Internal@Runtime@Halide@@YAXPEAUd3d12_graphics_command_list@1234@PEAUd3d12_profiler@1234@@Z"(%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_graphics_command_list"* nocapture readnone %0, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_profiler"* %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_profiler", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_profiler"* %1, i64 0, i32 0
  tail call void @"?unmap_buffer@D3D12Compute@Internal@Runtime@Halide@@YAXPEAUd3d12_buffer@1234@@Z"(%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %3) #11
  %4 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_profiler", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_profiler"* %1, i64 0, i32 3
  store i32 0, i32* %4, align 8, !tbaa !131
  ret void
}

; Function Attrs: nounwind mustprogress
define dso_local void @"?end_profiling@D3D12Compute@Internal@Runtime@Halide@@YAXPEAUd3d12_graphics_command_list@1234@PEAUd3d12_profiler@1234@@Z"(%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_graphics_command_list"* nocapture readonly %0, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_profiler"* nocapture readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_profiler", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_profiler"* %1, i64 0, i32 2
  %4 = load %struct.ID3D12QueryHeap*, %struct.ID3D12QueryHeap** %3, align 8, !tbaa !128
  %5 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_profiler", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_profiler"* %1, i64 0, i32 3
  %6 = load i32, i32* %5, align 8, !tbaa !131
  %7 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_profiler", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_profiler"* %1, i64 0, i32 0, i32 0
  %8 = load %struct.ID3D12Resource*, %struct.ID3D12Resource** %7, align 8, !tbaa !133
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_graphics_command_list", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_graphics_command_list"* %0, i64 0, i32 0, i32 0
  %10 = load %struct.ID3D12GraphicsCommandList*, %struct.ID3D12GraphicsCommandList** %9, align 8, !tbaa !88
  %11 = bitcast %struct.ID3D12GraphicsCommandList* %10 to void (%struct.ID3D12GraphicsCommandList*, %struct.ID3D12QueryHeap*, i32, i32, i32, %struct.ID3D12Resource*, i64)***
  %12 = load void (%struct.ID3D12GraphicsCommandList*, %struct.ID3D12QueryHeap*, i32, i32, i32, %struct.ID3D12Resource*, i64)**, void (%struct.ID3D12GraphicsCommandList*, %struct.ID3D12QueryHeap*, i32, i32, i32, %struct.ID3D12Resource*, i64)*** %11, align 8, !tbaa !50
  %13 = getelementptr inbounds void (%struct.ID3D12GraphicsCommandList*, %struct.ID3D12QueryHeap*, i32, i32, i32, %struct.ID3D12Resource*, i64)*, void (%struct.ID3D12GraphicsCommandList*, %struct.ID3D12QueryHeap*, i32, i32, i32, %struct.ID3D12Resource*, i64)** %12, i64 54
  %14 = load void (%struct.ID3D12GraphicsCommandList*, %struct.ID3D12QueryHeap*, i32, i32, i32, %struct.ID3D12Resource*, i64)*, void (%struct.ID3D12GraphicsCommandList*, %struct.ID3D12QueryHeap*, i32, i32, i32, %struct.ID3D12Resource*, i64)** %13, align 8
  tail call void %14(%struct.ID3D12GraphicsCommandList* nonnull dereferenceable(8) %10, %struct.ID3D12QueryHeap* %4, i32 2, i32 0, i32 %6, %struct.ID3D12Resource* %8, i64 0) #10
  ret void
}

; Function Attrs: nounwind mustprogress
define dso_local i64* @"?get_profiling_results@D3D12Compute@Internal@Runtime@Halide@@YAPEA_KPEAUd3d12_profiler@1234@@Z"(%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_profiler"* %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_profiler", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_profiler"* %0, i64 0, i32 0
  %3 = tail call i8* @"?map_buffer@D3D12Compute@Internal@Runtime@Halide@@YAPEAXPEAUd3d12_buffer@1234@@Z"(%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %2) #11
  %4 = bitcast i8* %3 to i64*
  ret i64* %4
}

; Function Attrs: nounwind mustprogress
define dso_local double @"?get_elapsed_time@D3D12Compute@Internal@Runtime@Halide@@YANPEAUd3d12_profiler@1234@_K1N@Z"(%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_profiler"* %0, i64 %1, i64 %2, double %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_profiler", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_profiler"* %0, i64 0, i32 0
  %6 = tail call i8* @"?map_buffer@D3D12Compute@Internal@Runtime@Halide@@YAPEAXPEAUd3d12_buffer@1234@@Z"(%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %5) #10
  %7 = bitcast i8* %6 to i64*
  %8 = getelementptr inbounds i64, i64* %7, i64 %1
  %9 = load i64, i64* %8, align 8, !tbaa !6
  %10 = getelementptr inbounds i64, i64* %7, i64 %2
  %11 = load i64, i64* %10, align 8, !tbaa !6
  %12 = sub i64 %11, %9
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_profiler", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_profiler"* %0, i64 0, i32 1
  %14 = load i64, i64* %13, align 8, !tbaa !130
  %15 = uitofp i64 %14 to double
  %16 = fmul double %15, %3
  %17 = uitofp i64 %12 to double
  %18 = fdiv double %17, %16
  ret double %18
}

; Function Attrs: nounwind
define weak dso_local %struct.halide_d3d12compute_command_queue* @"?new_command_queue@D3D12Compute@Internal@Runtime@Halide@@YAPEAUhalide_d3d12compute_command_queue@@PEAUhalide_d3d12compute_device@@@Z"(%struct.halide_d3d12compute_device* %0) local_unnamed_addr #4 {
  %2 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  %3 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  %4 = alloca %struct.ID3D12CommandQueue*, align 8
  %5 = alloca <4 x i32>, align 16
  %6 = bitcast <4 x i32>* %5 to %struct.D3D12_COMMAND_QUEUE_DESC*
  %7 = alloca %struct.ID3D12Fence*, align 8
  %8 = bitcast %struct.ID3D12CommandQueue** %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #12
  store %struct.ID3D12CommandQueue* null, %struct.ID3D12CommandQueue** %4, align 8, !tbaa !49
  %9 = bitcast <4 x i32>* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %9) #12
  store <4 x i32> <i32 2, i32 0, i32 0, i32 0>, <4 x i32>* %5, align 16, !tbaa !40
  %10 = bitcast %struct.halide_d3d12compute_device* %0 to %struct.ID3D12Device*
  %11 = bitcast %struct.ID3D12CommandQueue** %4 to i8**
  %12 = bitcast %struct.halide_d3d12compute_device* %0 to i32 (%struct.ID3D12Device*, %struct.D3D12_COMMAND_QUEUE_DESC*, %struct._GUID*, i8**)***
  %13 = load i32 (%struct.ID3D12Device*, %struct.D3D12_COMMAND_QUEUE_DESC*, %struct._GUID*, i8**)**, i32 (%struct.ID3D12Device*, %struct.D3D12_COMMAND_QUEUE_DESC*, %struct._GUID*, i8**)*** %12, align 8, !tbaa !50
  %14 = getelementptr inbounds i32 (%struct.ID3D12Device*, %struct.D3D12_COMMAND_QUEUE_DESC*, %struct._GUID*, i8**)*, i32 (%struct.ID3D12Device*, %struct.D3D12_COMMAND_QUEUE_DESC*, %struct._GUID*, i8**)** %13, i64 8
  %15 = load i32 (%struct.ID3D12Device*, %struct.D3D12_COMMAND_QUEUE_DESC*, %struct._GUID*, i8**)*, i32 (%struct.ID3D12Device*, %struct.D3D12_COMMAND_QUEUE_DESC*, %struct._GUID*, i8**)** %14, align 8
  %16 = call i32 %15(%struct.ID3D12Device* nonnull dereferenceable(8) %10, %struct.D3D12_COMMAND_QUEUE_DESC* nonnull %6, %struct._GUID* nonnull align 4 dereferenceable(16) @_GUID_0ec870a6_5d7e_4c22_8cfc_5baae07616ed, i8** nonnull %11) #10
  %17 = load %struct.ID3D12CommandQueue*, %struct.ID3D12CommandQueue** %4, align 8, !tbaa !49
  %18 = icmp sgt i32 %16, -1
  %19 = icmp ne %struct.ID3D12CommandQueue* %17, null
  %20 = and i1 %18, %19
  br i1 %20, label %67, label %21

21:                                               ; preds = %1
  %22 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %22) #12
  %23 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %2, i64 0, i32 3
  store i8* null, i8** %23, align 8, !tbaa !41
  %24 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %2, i64 0, i32 4
  store i8 1, i8* %24, align 8, !tbaa !44
  %25 = call i8* @malloc(i64 1024) #10
  %26 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %2, i64 0, i32 0
  store i8* %25, i8** %26, align 8, !tbaa !45
  %27 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %2, i64 0, i32 1
  %28 = icmp eq i8* %25, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %21
  %30 = getelementptr inbounds i8, i8* %25, i64 1023
  store i8 0, i8* %30, align 1, !tbaa !40
  br label %31

31:                                               ; preds = %29, %21
  %32 = phi i8* [ %30, %29 ], [ null, %21 ]
  %33 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %2, i64 0, i32 2
  store i8* %32, i8** %33, align 8
  %34 = call i8* @halide_string_to_string(i8* %25, i8* %32, i8* nonnull getelementptr inbounds ([47 x i8], [47 x i8]* @"??_C@_0CP@MODFOMNJ@Unable?5to?5create?5the?5Direct3D?512@", i64 0, i64 0)) #10
  %35 = call i8* @halide_string_to_string(i8* %34, i8* %32, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @"??_C@_0L@IAGCJOCP@?5?$CIHRESULT?$DN?$AA@", i64 0, i64 0)) #10
  %36 = sext i32 %16 to i64
  %37 = inttoptr i64 %36 to i8*
  %38 = call i8* @halide_pointer_to_string(i8* %35, i8* %32, i8* %37) #10
  %39 = call i8* @halide_string_to_string(i8* %38, i8* %32, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @"??_C@_0L@FELFIFPM@?0?5object?$CK?$DN?$AA@", i64 0, i64 0)) #10
  %40 = bitcast %struct.ID3D12CommandQueue* %17 to i8*
  %41 = call i8* @halide_pointer_to_string(i8* %39, i8* %32, i8* %40) #10
  %42 = call i8* @halide_string_to_string(i8* %41, i8* %32, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01PKGAHCOL@?$CJ?$AA@", i64 0, i64 0)) #10
  %43 = call i8* @halide_string_to_string(i8* %42, i8* %32, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #10
  %44 = call i8* @halide_string_to_string(i8* %43, i8* %32, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @"??_C@_0CE@MGMMPJGA@vvvvv?5D3D12?5Begin?5Debug?5Dump?5vvv@", i64 0, i64 0)) #10
  store i8* %44, i8** %27, align 8, !tbaa !46
  call fastcc void @"?d3d12_debug_dump@@YAXAEAV?$Printer@$00$0EAA@@?A0x2B71E647@Internal@Runtime@Halide@@@Z"(%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* nonnull align 8 dereferenceable(40) %2) #10
  %45 = load i8*, i8** %33, align 8, !tbaa !47
  %46 = load i8*, i8** %27, align 8, !tbaa !46
  %47 = call i8* @halide_string_to_string(i8* %46, i8* %45, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @"??_C@_0CE@PCPJBLP@?$FO?$FO?$FO?$FO?$FO?5D3D12?5?5End?5?5Debug?5Dump?5?$FO?$FO?$FO@", i64 0, i64 0)) #10
  %48 = call i8* @halide_string_to_string(i8* %47, i8* %45, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @"??_C@_0BA@FGKOLOB@D3D12?5HALT?5?$CB?$CB?$CB?6?$AA@", i64 0, i64 0)) #10
  store i8* %48, i8** %27, align 8, !tbaa !46
  %49 = load i8*, i8** %26, align 8, !tbaa !45
  %50 = icmp eq i8* %49, null
  %51 = load i8*, i8** %23, align 8, !tbaa !41
  br i1 %50, label %52, label %53

52:                                               ; preds = %31
  call void @halide_error(i8* %51, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #10
  br label %59

53:                                               ; preds = %31
  %54 = ptrtoint i8* %48 to i64
  %55 = ptrtoint i8* %49 to i64
  %56 = add i64 %54, 1
  %57 = sub i64 %56, %55
  %58 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %51, i8* nonnull %49, i64 %57) #10
  call void @halide_error(i8* %51, i8* nonnull %49) #10
  br label %59

59:                                               ; preds = %53, %52
  %60 = load i8, i8* %24, align 8, !tbaa !44, !range !48
  %61 = icmp eq i8 %60, 0
  %62 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %2, i64 0, i32 5, i64 0
  %63 = icmp eq i8* %49, %62
  %64 = or i1 %63, %61
  br i1 %64, label %66, label %65

65:                                               ; preds = %59
  call void @free(i8* %49) #10
  br label %66

66:                                               ; preds = %59, %65
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %22) #12
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %9) #12
  br label %131

67:                                               ; preds = %1
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %9) #12
  %68 = bitcast %struct.ID3D12Fence** %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %68) #12
  store %struct.ID3D12Fence* null, %struct.ID3D12Fence** %7, align 8, !tbaa !49
  %69 = bitcast %struct.ID3D12Fence** %7 to i8**
  %70 = bitcast %struct.halide_d3d12compute_device* %0 to i32 (%struct.ID3D12Device*, i64, i32, %struct._GUID*, i8**)***
  %71 = load i32 (%struct.ID3D12Device*, i64, i32, %struct._GUID*, i8**)**, i32 (%struct.ID3D12Device*, i64, i32, %struct._GUID*, i8**)*** %70, align 8, !tbaa !50
  %72 = getelementptr inbounds i32 (%struct.ID3D12Device*, i64, i32, %struct._GUID*, i8**)*, i32 (%struct.ID3D12Device*, i64, i32, %struct._GUID*, i8**)** %71, i64 36
  %73 = load i32 (%struct.ID3D12Device*, i64, i32, %struct._GUID*, i8**)*, i32 (%struct.ID3D12Device*, i64, i32, %struct._GUID*, i8**)** %72, align 8
  %74 = call i32 %73(%struct.ID3D12Device* nonnull dereferenceable(8) %10, i64 0, i32 0, %struct._GUID* nonnull align 4 dereferenceable(16) @_GUID_0a753dcf_c4d8_4b91_adf6_be5a60d95a76, i8** nonnull %69) #10
  %75 = load %struct.ID3D12Fence*, %struct.ID3D12Fence** %7, align 8, !tbaa !49
  %76 = icmp sgt i32 %74, -1
  %77 = icmp ne %struct.ID3D12Fence* %75, null
  %78 = and i1 %76, %77
  br i1 %78, label %125, label %79

79:                                               ; preds = %67
  %80 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %80) #12
  %81 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, i64 0, i32 3
  store i8* null, i8** %81, align 8, !tbaa !41
  %82 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, i64 0, i32 4
  store i8 1, i8* %82, align 8, !tbaa !44
  %83 = call i8* @malloc(i64 1024) #10
  %84 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, i64 0, i32 0
  store i8* %83, i8** %84, align 8, !tbaa !45
  %85 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, i64 0, i32 1
  %86 = icmp eq i8* %83, null
  br i1 %86, label %89, label %87

87:                                               ; preds = %79
  %88 = getelementptr inbounds i8, i8* %83, i64 1023
  store i8 0, i8* %88, align 1, !tbaa !40
  br label %89

89:                                               ; preds = %87, %79
  %90 = phi i8* [ %88, %87 ], [ null, %79 ]
  %91 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, i64 0, i32 2
  store i8* %90, i8** %91, align 8
  %92 = call i8* @halide_string_to_string(i8* %83, i8* %90, i8* nonnull getelementptr inbounds ([57 x i8], [57 x i8]* @"??_C@_0DJ@DBKGGAGH@Unable?5to?5create?5the?5Direct3D?512@", i64 0, i64 0)) #10
  %93 = call i8* @halide_string_to_string(i8* %92, i8* %90, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @"??_C@_0L@IAGCJOCP@?5?$CIHRESULT?$DN?$AA@", i64 0, i64 0)) #10
  %94 = sext i32 %74 to i64
  %95 = inttoptr i64 %94 to i8*
  %96 = call i8* @halide_pointer_to_string(i8* %93, i8* %90, i8* %95) #10
  %97 = call i8* @halide_string_to_string(i8* %96, i8* %90, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @"??_C@_0L@FELFIFPM@?0?5object?$CK?$DN?$AA@", i64 0, i64 0)) #10
  %98 = bitcast %struct.ID3D12Fence* %75 to i8*
  %99 = call i8* @halide_pointer_to_string(i8* %97, i8* %90, i8* %98) #10
  %100 = call i8* @halide_string_to_string(i8* %99, i8* %90, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01PKGAHCOL@?$CJ?$AA@", i64 0, i64 0)) #10
  %101 = call i8* @halide_string_to_string(i8* %100, i8* %90, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #10
  %102 = call i8* @halide_string_to_string(i8* %101, i8* %90, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @"??_C@_0CE@MGMMPJGA@vvvvv?5D3D12?5Begin?5Debug?5Dump?5vvv@", i64 0, i64 0)) #10
  store i8* %102, i8** %85, align 8, !tbaa !46
  call fastcc void @"?d3d12_debug_dump@@YAXAEAV?$Printer@$00$0EAA@@?A0x2B71E647@Internal@Runtime@Halide@@@Z"(%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* nonnull align 8 dereferenceable(40) %3) #10
  %103 = load i8*, i8** %91, align 8, !tbaa !47
  %104 = load i8*, i8** %85, align 8, !tbaa !46
  %105 = call i8* @halide_string_to_string(i8* %104, i8* %103, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @"??_C@_0CE@PCPJBLP@?$FO?$FO?$FO?$FO?$FO?5D3D12?5?5End?5?5Debug?5Dump?5?$FO?$FO?$FO@", i64 0, i64 0)) #10
  %106 = call i8* @halide_string_to_string(i8* %105, i8* %103, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @"??_C@_0BA@FGKOLOB@D3D12?5HALT?5?$CB?$CB?$CB?6?$AA@", i64 0, i64 0)) #10
  store i8* %106, i8** %85, align 8, !tbaa !46
  %107 = load i8*, i8** %84, align 8, !tbaa !45
  %108 = icmp eq i8* %107, null
  %109 = load i8*, i8** %81, align 8, !tbaa !41
  br i1 %108, label %110, label %111

110:                                              ; preds = %89
  call void @halide_error(i8* %109, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #10
  br label %117

111:                                              ; preds = %89
  %112 = ptrtoint i8* %106 to i64
  %113 = ptrtoint i8* %107 to i64
  %114 = add i64 %112, 1
  %115 = sub i64 %114, %113
  %116 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %109, i8* nonnull %107, i64 %115) #10
  call void @halide_error(i8* %109, i8* nonnull %107) #10
  br label %117

117:                                              ; preds = %111, %110
  %118 = load i8, i8* %82, align 8, !tbaa !44, !range !48
  %119 = icmp eq i8 %118, 0
  %120 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, i64 0, i32 5, i64 0
  %121 = icmp eq i8* %107, %120
  %122 = or i1 %121, %119
  br i1 %122, label %124, label %123

123:                                              ; preds = %117
  call void @free(i8* %107) #10
  br label %124

124:                                              ; preds = %117, %123
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %80) #12
  br label %129

125:                                              ; preds = %67
  store %struct.ID3D12Fence* %75, %struct.ID3D12Fence** @"?queue_fence@D3D12Compute@Internal@Runtime@Halide@@3PEAUID3D12Fence@@EA", align 8, !tbaa !49
  store atomic volatile i64 0, i64* @"?queue_last_signal@D3D12Compute@Internal@Runtime@Halide@@3_KC" seq_cst, align 8
  %126 = call i8* @CreateEventA(%struct._SECURITY_ATTRIBUTES* null, i32 0, i32 0, i8* null) #10
  store i8* %126, i8** @"?hFenceEvent@D3D12Compute@Internal@Runtime@Halide@@3PEAXEA", align 8, !tbaa !49
  %127 = bitcast %struct.ID3D12CommandQueue** %4 to %struct.halide_d3d12compute_command_queue**
  %128 = load %struct.halide_d3d12compute_command_queue*, %struct.halide_d3d12compute_command_queue** %127, align 8, !tbaa !49
  br label %129

129:                                              ; preds = %124, %125
  %130 = phi %struct.halide_d3d12compute_command_queue* [ %128, %125 ], [ null, %124 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %68) #12
  br label %131

131:                                              ; preds = %66, %129
  %132 = phi %struct.halide_d3d12compute_command_queue* [ %130, %129 ], [ null, %66 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #12
  ret %struct.halide_d3d12compute_command_queue* %132
}

declare dllimport i8* @CreateEventA(%struct._SECURITY_ATTRIBUTES*, i32, i32, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
define weak dso_local void @"?set_input_buffer@D3D12Compute@Internal@Runtime@Halide@@YAXPEAUd3d12_binder@1234@PEAUd3d12_buffer@1234@I@Z"(%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_binder"* %0, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %1, i32 %2) local_unnamed_addr #4 {
  %4 = alloca %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC, align 8
  %5 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  %6 = alloca %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC, align 8
  %7 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %1, i64 0, i32 8
  %8 = load i32, i32* %7, align 4, !tbaa !111
  switch i32 %8, label %115 [
    i32 1, label %9
    i32 3, label %41
    i32 2, label %41
    i32 4, label %41
  ]

9:                                                ; preds = %3
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %1, i64 0, i32 6
  %11 = load i32, i32* %10, align 4, !tbaa !69
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([144 x i8], [144 x i8]* @"??_C@_0JA@ODKGALFD@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  tail call void @abort() #10
  br label %14

14:                                               ; preds = %9, %13
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %1, i64 0, i32 0
  %16 = load %struct.ID3D12Resource*, %struct.ID3D12Resource** %15, align 8, !tbaa !54
  %17 = bitcast %struct.ID3D12Resource* %16 to i64 (%struct.ID3D12Resource*)***
  %18 = load i64 (%struct.ID3D12Resource*)**, i64 (%struct.ID3D12Resource*)*** %17, align 8, !tbaa !50
  %19 = getelementptr inbounds i64 (%struct.ID3D12Resource*)*, i64 (%struct.ID3D12Resource*)** %18, i64 11
  %20 = load i64 (%struct.ID3D12Resource*)*, i64 (%struct.ID3D12Resource*)** %19, align 8
  %21 = tail call i64 %20(%struct.ID3D12Resource* nonnull dereferenceable(8) %16) #10
  %22 = bitcast %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %22) #12
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %22, i8 0, i64 16, i1 false)
  %23 = getelementptr inbounds %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC* %4, i64 0, i32 0
  store i64 %21, i64* %23, align 8, !tbaa !134
  %24 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %1, i64 0, i32 2
  %25 = load i32, i32* %24, align 4, !tbaa !63
  %26 = getelementptr inbounds %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC* %4, i64 0, i32 1
  store i32 %25, i32* %26, align 8, !tbaa !136
  %27 = icmp ult i32 %2, 14
  br i1 %27, label %29, label %28

28:                                               ; preds = %14
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([137 x i8], [137 x i8]* @"??_C@_0IJ@OPLHAIKP@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  tail call void @abort() #10
  br label %29

29:                                               ; preds = %28, %14
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_binder", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_binder"* %0, i64 0, i32 3, i64 1, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_binder", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_binder"* %0, i64 0, i32 5
  %33 = load i32, i32* %32, align 8, !tbaa !137
  %34 = zext i32 %33 to i64
  %35 = add i64 %31, %34
  store i64 %35, i64* %30, align 8, !tbaa !141
  %36 = load %struct.ID3D12Device*, %struct.ID3D12Device** bitcast (%struct.halide_d3d12compute_device** @"?device@D3D12Compute@Internal@Runtime@Halide@@3PEAUhalide_d3d12compute_device@@EA" to %struct.ID3D12Device**), align 8, !tbaa !49
  %37 = bitcast %struct.ID3D12Device* %36 to void (%struct.ID3D12Device*, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC*, i64)***
  %38 = load void (%struct.ID3D12Device*, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC*, i64)**, void (%struct.ID3D12Device*, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC*, i64)*** %37, align 8, !tbaa !50
  %39 = getelementptr inbounds void (%struct.ID3D12Device*, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC*, i64)*, void (%struct.ID3D12Device*, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC*, i64)** %38, i64 17
  %40 = load void (%struct.ID3D12Device*, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC*, i64)*, void (%struct.ID3D12Device*, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC*, i64)** %39, align 8
  call void %40(%struct.ID3D12Device* nonnull dereferenceable(8) %36, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC* nonnull %4, i64 %31) #10
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %22) #12
  br label %116

41:                                               ; preds = %3, %3, %3
  %42 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %1, i64 0, i32 6
  %43 = load i32, i32* %42, align 4, !tbaa !69
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %85

45:                                               ; preds = %41
  %46 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %46) #12
  %47 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i64 0, i32 3
  store i8* null, i8** %47, align 8, !tbaa !41
  %48 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i64 0, i32 4
  store i8 1, i8* %48, align 8, !tbaa !44
  %49 = tail call i8* @malloc(i64 1024) #10
  %50 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i64 0, i32 0
  store i8* %49, i8** %50, align 8, !tbaa !45
  %51 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i64 0, i32 1
  %52 = icmp eq i8* %49, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %45
  %54 = getelementptr inbounds i8, i8* %49, i64 1023
  store i8 0, i8* %54, align 1, !tbaa !40
  br label %55

55:                                               ; preds = %45, %53
  %56 = phi i8* [ %54, %53 ], [ null, %45 ]
  %57 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i64 0, i32 2
  store i8* %56, i8** %57, align 8
  %58 = tail call i8* @halide_string_to_string(i8* %49, i8* %56, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @"??_C@_0CC@BDDMCIOG@unsupported?5buffer?5element?5type?3@", i64 0, i64 0)) #10
  %59 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %1, i64 0, i32 9
  %60 = tail call i8* @halide_type_to_string(i8* %58, i8* %56, %struct.halide_type_t* nonnull %59) #10
  %61 = tail call i8* @halide_string_to_string(i8* %60, i8* %56, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #10
  %62 = tail call i8* @halide_string_to_string(i8* %61, i8* %56, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @"??_C@_0CE@MGMMPJGA@vvvvv?5D3D12?5Begin?5Debug?5Dump?5vvv@", i64 0, i64 0)) #10
  store i8* %62, i8** %51, align 8, !tbaa !46
  call fastcc void @"?d3d12_debug_dump@@YAXAEAV?$Printer@$00$0EAA@@?A0x2B71E647@Internal@Runtime@Halide@@@Z"(%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* nonnull align 8 dereferenceable(40) %5) #11
  %63 = load i8*, i8** %57, align 8, !tbaa !47
  %64 = load i8*, i8** %51, align 8, !tbaa !46
  %65 = tail call i8* @halide_string_to_string(i8* %64, i8* %63, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @"??_C@_0CE@PCPJBLP@?$FO?$FO?$FO?$FO?$FO?5D3D12?5?5End?5?5Debug?5Dump?5?$FO?$FO?$FO@", i64 0, i64 0)) #10
  %66 = tail call i8* @halide_string_to_string(i8* %65, i8* %63, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @"??_C@_0BA@FGKOLOB@D3D12?5HALT?5?$CB?$CB?$CB?6?$AA@", i64 0, i64 0)) #10
  store i8* %66, i8** %51, align 8, !tbaa !46
  %67 = load i8*, i8** %50, align 8, !tbaa !45
  %68 = icmp eq i8* %67, null
  %69 = load i8*, i8** %47, align 8, !tbaa !41
  br i1 %68, label %70, label %71

70:                                               ; preds = %55
  tail call void @halide_error(i8* %69, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #10
  br label %77

71:                                               ; preds = %55
  %72 = ptrtoint i8* %66 to i64
  %73 = ptrtoint i8* %67 to i64
  %74 = add i64 %72, 1
  %75 = sub i64 %74, %73
  %76 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %69, i8* nonnull %67, i64 %75) #10
  tail call void @halide_error(i8* %69, i8* nonnull %67) #10
  br label %77

77:                                               ; preds = %71, %70
  %78 = load i8, i8* %48, align 8, !tbaa !44, !range !48
  %79 = icmp eq i8 %78, 0
  %80 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i64 0, i32 5, i64 0
  %81 = icmp eq i8* %67, %80
  %82 = or i1 %79, %81
  br i1 %82, label %84, label %83

83:                                               ; preds = %77
  call void @free(i8* %67) #10
  br label %84

84:                                               ; preds = %77, %83
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %46) #12
  br label %85

85:                                               ; preds = %84, %41
  %86 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %1, i64 0, i32 3
  %87 = load i32, i32* %86, align 8, !tbaa !59
  %88 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %1, i64 0, i32 4
  %89 = load i32, i32* %88, align 4, !tbaa !65
  %90 = bitcast %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %90) #12
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(40) %90, i8 0, i64 40, i1 false)
  %91 = getelementptr inbounds %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC* %6, i64 0, i32 0
  store i32 %43, i32* %91, align 8, !tbaa !142
  %92 = getelementptr inbounds %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC* %6, i64 0, i32 1
  store i32 1, i32* %92, align 4, !tbaa !145
  %93 = zext i32 %87 to i64
  %94 = getelementptr inbounds %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC* %6, i64 0, i32 2, i32 0, i32 0
  store i64 %93, i64* %94, align 8, !tbaa !40
  %95 = getelementptr inbounds %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC* %6, i64 0, i32 2, i32 0, i32 1
  store i32 %89, i32* %95, align 8, !tbaa !40
  %96 = getelementptr inbounds %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC* %6, i64 0, i32 2, i32 0, i32 2
  store i32 0, i32* %96, align 4, !tbaa !40
  %97 = getelementptr inbounds %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC* %6, i64 0, i32 2, i32 0, i32 3
  store i64 0, i64* %97, align 8, !tbaa !40
  %98 = getelementptr inbounds %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC* %6, i64 0, i32 2, i32 0, i32 4
  store i32 0, i32* %98, align 8, !tbaa !40
  %99 = icmp ult i32 %2, 16
  br i1 %99, label %101, label %100

100:                                              ; preds = %85
  call void @halide_print(i8* null, i8* getelementptr inbounds ([137 x i8], [137 x i8]* @"??_C@_0IJ@HNGKJPKA@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  call void @abort() #10
  br label %101

101:                                              ; preds = %100, %85
  %102 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_binder", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_binder"* %0, i64 0, i32 3, i64 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_binder", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_binder"* %0, i64 0, i32 5
  %105 = load i32, i32* %104, align 8, !tbaa !137
  %106 = zext i32 %105 to i64
  %107 = add i64 %103, %106
  store i64 %107, i64* %102, align 8, !tbaa !141
  %108 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %1, i64 0, i32 0
  %109 = load %struct.ID3D12Resource*, %struct.ID3D12Resource** %108, align 8, !tbaa !54
  %110 = load %struct.ID3D12Device*, %struct.ID3D12Device** bitcast (%struct.halide_d3d12compute_device** @"?device@D3D12Compute@Internal@Runtime@Halide@@3PEAUhalide_d3d12compute_device@@EA" to %struct.ID3D12Device**), align 8, !tbaa !49
  %111 = bitcast %struct.ID3D12Device* %110 to void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)***
  %112 = load void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)**, void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)*** %111, align 8, !tbaa !50
  %113 = getelementptr inbounds void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)*, void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)** %112, i64 19
  %114 = load void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)*, void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)** %113, align 8
  call void %114(%struct.ID3D12Device* nonnull dereferenceable(8) %110, %struct.ID3D12Resource* %109, %struct.ID3D12Resource* null, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC* nonnull %6, i64 %103) #10
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %90) #12
  br label %116

115:                                              ; preds = %3
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([106 x i8], [106 x i8]* @"??_C@_0GK@KJKJJPGE@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  tail call void @abort() #10
  br label %116

116:                                              ; preds = %115, %101, %29
  ret void
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @"?save@D3D12ContextHolder@D3D12Compute@Internal@Runtime@Halide@@AEAAXPEAX_N@Z"(%"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder"* nonnull dereferenceable(32) %0, i8* %1, i1 %2) local_unnamed_addr #0 align 2 {
  %4 = getelementptr inbounds %"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder", %"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder"* %0, i64 0, i32 0
  store i8* %1, i8** %4, align 8, !tbaa !146
  %5 = getelementptr inbounds %"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder", %"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder"* %0, i64 0, i32 2
  %6 = getelementptr inbounds %"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder", %"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder"* %0, i64 0, i32 1
  %7 = tail call i32 @halide_d3d12compute_acquire_context(i8* %1, %struct.halide_d3d12compute_device** nonnull %6, %struct.halide_d3d12compute_command_queue** nonnull %5, i1 %2) #11
  %8 = getelementptr inbounds %"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder", %"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder"* %0, i64 0, i32 3
  store i32 %7, i32* %8, align 8, !tbaa !148
  ret void
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_d3d12compute_acquire_context(i8* %0, %struct.halide_d3d12compute_device** %1, %struct.halide_d3d12compute_command_queue** %2, i1 %3) local_unnamed_addr #4 {
  %5 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  %6 = alloca %struct.ID3D12CommandAllocator*, align 8
  %7 = alloca %struct.DXGI_ADAPTER_DESC1, align 8
  %8 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  %9 = alloca %struct.ID3D12Device*, align 8
  %10 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  %11 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  %12 = alloca %struct.IDXGIFactory1*, align 8
  %13 = alloca %struct.IDXGIAdapter1*, align 8
  %14 = alloca %struct.DXGI_ADAPTER_DESC1, align 8
  %15 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  %16 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  %17 = alloca %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", align 8
  %18 = alloca %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", align 8
  %19 = tail call i32 @halide_start_clock(i8* %0) #10
  br label %20

20:                                               ; preds = %20, %4
  %21 = atomicrmw volatile xchg i8* @"?thread_lock@D3D12Compute@Internal@Runtime@Halide@@3DC", i8 1 acquire
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %20, !llvm.loop !149

23:                                               ; preds = %20
  %24 = load %struct.halide_d3d12compute_device*, %struct.halide_d3d12compute_device** @"?device@D3D12Compute@Internal@Runtime@Halide@@3PEAUhalide_d3d12compute_device@@EA", align 8
  %25 = icmp eq %struct.halide_d3d12compute_device* %24, null
  %26 = and i1 %25, %3
  br i1 %26, label %27, label %548

27:                                               ; preds = %23
  %28 = load i8*, i8** @lib_d3d12, align 8, !tbaa !49
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = tail call i8* @"?d3d12_load_library@@YAPEAXPEBD@Z"(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"??_C@_09ICPCIOEL@d3d12?4dll?$AA@", i64 0, i64 0)) #10
  store i8* %31, i8** @lib_d3d12, align 8, !tbaa !49
  br label %32

32:                                               ; preds = %30, %27
  %33 = load i8*, i8** @lib_D3DCompiler_47, align 8, !tbaa !49
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = tail call i8* @"?d3d12_load_library@@YAPEAXPEBD@Z"(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @"??_C@_0BD@CLKCCNEK@D3DCompiler_47?4dll?$AA@", i64 0, i64 0)) #10
  store i8* %36, i8** @lib_D3DCompiler_47, align 8, !tbaa !49
  br label %37

37:                                               ; preds = %35, %32
  %38 = load i8*, i8** @lib_dxgi, align 8, !tbaa !49
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = tail call i8* @"?d3d12_load_library@@YAPEAXPEBD@Z"(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"??_C@_08EEBGHKPL@dxgi?4dll?$AA@", i64 0, i64 0)) #10
  store i8* %41, i8** @lib_dxgi, align 8, !tbaa !49
  br label %42

42:                                               ; preds = %40, %37
  %43 = load i8*, i8** @lib_d3d12, align 8, !tbaa !49
  %44 = tail call i8* @"?d3d12_get_library_symbol@@YAPEAXPEAXPEBD@Z"(i8* %43, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"??_C@_0BC@OOAMCEEI@D3D12CreateDevice?$AA@", i64 0, i64 0)) #10
  store i8* %44, i8** bitcast (i32 (%struct.IUnknown*, i32, %struct._GUID*, i8**)** @D3D12CreateDevice to i8**), align 8, !tbaa !49
  %45 = load i8*, i8** @lib_d3d12, align 8, !tbaa !49
  %46 = tail call i8* @"?d3d12_get_library_symbol@@YAPEAXPEAXPEBD@Z"(i8* %45, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@BKICNBLB@D3D12GetDebugInterface?$AA@", i64 0, i64 0)) #10
  store i8* %46, i8** bitcast (i32 (%struct._GUID*, i8**)** @D3D12GetDebugInterface to i8**), align 8, !tbaa !49
  %47 = load i8*, i8** @lib_d3d12, align 8, !tbaa !49
  %48 = tail call i8* @"?d3d12_get_library_symbol@@YAPEAXPEAXPEBD@Z"(i8* %47, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @"??_C@_0BM@FFPIANAM@D3D12SerializeRootSignature?$AA@", i64 0, i64 0)) #10
  store i8* %48, i8** bitcast (i32 (%struct.D3D12_ROOT_SIGNATURE_DESC*, i32, %struct.ID3D10Blob**, %struct.ID3D10Blob**)** @D3D12SerializeRootSignature to i8**), align 8, !tbaa !49
  %49 = load i8*, i8** @lib_D3DCompiler_47, align 8, !tbaa !49
  %50 = tail call i8* @"?d3d12_get_library_symbol@@YAPEAXPEAXPEBD@Z"(i8* %49, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"??_C@_0L@HKGOFPCI@D3DCompile?$AA@", i64 0, i64 0)) #10
  store i8* %50, i8** bitcast (i32 (i8*, i64, i8*, %struct._D3D_SHADER_MACRO*, %struct.ID3DInclude*, i8*, i8*, i32, i32, %struct.ID3D10Blob**, %struct.ID3D10Blob**)** @D3DCompile to i8**), align 8, !tbaa !49
  %51 = load i8*, i8** @lib_dxgi, align 8, !tbaa !49
  %52 = tail call i8* @"?d3d12_get_library_symbol@@YAPEAXPEAXPEBD@Z"(i8* %51, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @"??_C@_0BD@JFLLLCON@CreateDXGIFactory1?$AA@", i64 0, i64 0)) #10
  store i8* %52, i8** bitcast (i32 (%struct._GUID*, i8**)** @CreateDXGIFactory1 to i8**), align 8, !tbaa !49
  %53 = bitcast %struct.IDXGIFactory1** %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %53) #12
  store %struct.IDXGIFactory1* null, %struct.IDXGIFactory1** %12, align 8, !tbaa !49
  %54 = bitcast i8* %52 to i32 (%struct._GUID*, i8**)*
  %55 = bitcast %struct.IDXGIFactory1** %12 to i8**
  %56 = call i32 %54(%struct._GUID* nonnull align 4 dereferenceable(16) @_GUID_770aae78_f26f_4dba_a829_253c83d1b387, i8** nonnull %55) #10
  %57 = load %struct.IDXGIFactory1*, %struct.IDXGIFactory1** %12, align 8, !tbaa !49
  %58 = icmp sgt i32 %56, -1
  %59 = icmp ne %struct.IDXGIFactory1* %57, null
  %60 = and i1 %58, %59
  br i1 %60, label %107, label %61

61:                                               ; preds = %42
  %62 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %62) #12
  %63 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %11, i64 0, i32 3
  store i8* null, i8** %63, align 8, !tbaa !41
  %64 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %11, i64 0, i32 4
  store i8 1, i8* %64, align 8, !tbaa !44
  %65 = call i8* @malloc(i64 1024) #10
  %66 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %11, i64 0, i32 0
  store i8* %65, i8** %66, align 8, !tbaa !45
  %67 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %11, i64 0, i32 1
  %68 = icmp eq i8* %65, null
  br i1 %68, label %71, label %69

69:                                               ; preds = %61
  %70 = getelementptr inbounds i8, i8* %65, i64 1023
  store i8 0, i8* %70, align 1, !tbaa !40
  br label %71

71:                                               ; preds = %69, %61
  %72 = phi i8* [ %70, %69 ], [ null, %61 ]
  %73 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %11, i64 0, i32 2
  store i8* %72, i8** %73, align 8
  %74 = call i8* @halide_string_to_string(i8* %65, i8* %72, i8* nonnull getelementptr inbounds ([46 x i8], [46 x i8]* @"??_C@_0CO@PFDCLHOL@Unable?5to?5create?5DXGI?5Factory?5?$CII@", i64 0, i64 0)) #10
  %75 = call i8* @halide_string_to_string(i8* %74, i8* %72, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @"??_C@_0L@IAGCJOCP@?5?$CIHRESULT?$DN?$AA@", i64 0, i64 0)) #10
  %76 = sext i32 %56 to i64
  %77 = inttoptr i64 %76 to i8*
  %78 = call i8* @halide_pointer_to_string(i8* %75, i8* %72, i8* %77) #10
  %79 = call i8* @halide_string_to_string(i8* %78, i8* %72, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @"??_C@_0L@FELFIFPM@?0?5object?$CK?$DN?$AA@", i64 0, i64 0)) #10
  %80 = bitcast %struct.IDXGIFactory1* %57 to i8*
  %81 = call i8* @halide_pointer_to_string(i8* %79, i8* %72, i8* %80) #10
  %82 = call i8* @halide_string_to_string(i8* %81, i8* %72, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01PKGAHCOL@?$CJ?$AA@", i64 0, i64 0)) #10
  %83 = call i8* @halide_string_to_string(i8* %82, i8* %72, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #10
  %84 = call i8* @halide_string_to_string(i8* %83, i8* %72, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @"??_C@_0CE@MGMMPJGA@vvvvv?5D3D12?5Begin?5Debug?5Dump?5vvv@", i64 0, i64 0)) #10
  store i8* %84, i8** %67, align 8, !tbaa !46
  call fastcc void @"?d3d12_debug_dump@@YAXAEAV?$Printer@$00$0EAA@@?A0x2B71E647@Internal@Runtime@Halide@@@Z"(%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* nonnull align 8 dereferenceable(40) %11) #10
  %85 = load i8*, i8** %73, align 8, !tbaa !47
  %86 = load i8*, i8** %67, align 8, !tbaa !46
  %87 = call i8* @halide_string_to_string(i8* %86, i8* %85, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @"??_C@_0CE@PCPJBLP@?$FO?$FO?$FO?$FO?$FO?5D3D12?5?5End?5?5Debug?5Dump?5?$FO?$FO?$FO@", i64 0, i64 0)) #10
  %88 = call i8* @halide_string_to_string(i8* %87, i8* %85, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @"??_C@_0BA@FGKOLOB@D3D12?5HALT?5?$CB?$CB?$CB?6?$AA@", i64 0, i64 0)) #10
  store i8* %88, i8** %67, align 8, !tbaa !46
  %89 = load i8*, i8** %66, align 8, !tbaa !45
  %90 = icmp eq i8* %89, null
  %91 = load i8*, i8** %63, align 8, !tbaa !41
  br i1 %90, label %92, label %93

92:                                               ; preds = %71
  call void @halide_error(i8* %91, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #10
  br label %99

93:                                               ; preds = %71
  %94 = ptrtoint i8* %88 to i64
  %95 = ptrtoint i8* %89 to i64
  %96 = add i64 %94, 1
  %97 = sub i64 %96, %95
  %98 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %91, i8* nonnull %89, i64 %97) #10
  call void @halide_error(i8* %91, i8* nonnull %89) #10
  br label %99

99:                                               ; preds = %93, %92
  %100 = load i8, i8* %64, align 8, !tbaa !44, !range !48
  %101 = icmp eq i8 %100, 0
  %102 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %11, i64 0, i32 5, i64 0
  %103 = icmp eq i8* %89, %102
  %104 = or i1 %103, %101
  br i1 %104, label %106, label %105

105:                                              ; preds = %99
  call void @free(i8* %89) #10
  br label %106

106:                                              ; preds = %105, %99
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %62) #12
  br label %383

107:                                              ; preds = %42
  %108 = load %struct.IDXGIAdapter1*, %struct.IDXGIAdapter1** @"?dxgiAdapter@D3D12Compute@Internal@Runtime@Halide@@3PEAUIDXGIAdapter1@@EA", align 8, !tbaa !49
  %109 = icmp eq %struct.IDXGIAdapter1* %108, null
  br i1 %109, label %112, label %110

110:                                              ; preds = %107
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([125 x i8], [125 x i8]* @"??_C@_0HN@EFBLJJLF@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  call void @abort() #10
  %111 = load %struct.IDXGIFactory1*, %struct.IDXGIFactory1** %12, align 8, !tbaa !49
  br label %112

112:                                              ; preds = %110, %107
  %113 = phi %struct.IDXGIFactory1* [ %111, %110 ], [ %57, %107 ]
  %114 = bitcast %struct.IDXGIAdapter1** %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %114) #12
  store %struct.IDXGIAdapter1* null, %struct.IDXGIAdapter1** %13, align 8, !tbaa !49
  %115 = bitcast %struct.IDXGIFactory1* %113 to i32 (%struct.IDXGIFactory1*, i32, %struct.IDXGIAdapter1**)***
  %116 = load i32 (%struct.IDXGIFactory1*, i32, %struct.IDXGIAdapter1**)**, i32 (%struct.IDXGIFactory1*, i32, %struct.IDXGIAdapter1**)*** %115, align 8, !tbaa !50
  %117 = getelementptr inbounds i32 (%struct.IDXGIFactory1*, i32, %struct.IDXGIAdapter1**)*, i32 (%struct.IDXGIFactory1*, i32, %struct.IDXGIAdapter1**)** %116, i64 12
  %118 = load i32 (%struct.IDXGIFactory1*, i32, %struct.IDXGIAdapter1**)*, i32 (%struct.IDXGIFactory1*, i32, %struct.IDXGIAdapter1**)** %117, align 8
  %119 = call i32 %118(%struct.IDXGIFactory1* nonnull dereferenceable(8) %113, i32 0, %struct.IDXGIAdapter1** nonnull %13) #10
  %120 = icmp eq i32 %119, -2005270526
  br i1 %120, label %268, label %121

121:                                              ; preds = %112
  %122 = bitcast %struct.DXGI_ADAPTER_DESC1* %14 to i8*
  %123 = getelementptr inbounds %struct.DXGI_ADAPTER_DESC1, %struct.DXGI_ADAPTER_DESC1* %14, i64 0, i32 9
  %124 = getelementptr inbounds %struct.DXGI_ADAPTER_DESC1, %struct.DXGI_ADAPTER_DESC1* %14, i64 0, i32 5
  br label %125

125:                                              ; preds = %258, %121
  %126 = phi i32 [ %119, %121 ], [ %266, %258 ]
  %127 = phi i32 [ 0, %121 ], [ %260, %258 ]
  %128 = phi i64 [ 0, %121 ], [ %259, %258 ]
  %129 = load %struct.IDXGIAdapter1*, %struct.IDXGIAdapter1** %13, align 8, !tbaa !49
  %130 = icmp sgt i32 %126, -1
  %131 = icmp ne %struct.IDXGIAdapter1* %129, null
  %132 = and i1 %130, %131
  br i1 %132, label %179, label %133

133:                                              ; preds = %125
  %134 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %134) #12
  %135 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %10, i64 0, i32 3
  store i8* null, i8** %135, align 8, !tbaa !41
  %136 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %10, i64 0, i32 4
  store i8 1, i8* %136, align 8, !tbaa !44
  %137 = call i8* @malloc(i64 1024) #10
  %138 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %10, i64 0, i32 0
  store i8* %137, i8** %138, align 8, !tbaa !45
  %139 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %10, i64 0, i32 1
  %140 = icmp eq i8* %137, null
  br i1 %140, label %143, label %141

141:                                              ; preds = %133
  %142 = getelementptr inbounds i8, i8* %137, i64 1023
  store i8 0, i8* %142, align 1, !tbaa !40
  br label %143

143:                                              ; preds = %141, %133
  %144 = phi i8* [ %142, %141 ], [ null, %133 ]
  %145 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %10, i64 0, i32 2
  store i8* %144, i8** %145, align 8
  %146 = call i8* @halide_string_to_string(i8* %137, i8* %144, i8* nonnull getelementptr inbounds ([50 x i8], [50 x i8]* @"??_C@_0DC@FNBIDBIK@Unable?5to?5enumerate?5DXGI?5adapter@", i64 0, i64 0)) #10
  %147 = call i8* @halide_string_to_string(i8* %146, i8* %144, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @"??_C@_0L@IAGCJOCP@?5?$CIHRESULT?$DN?$AA@", i64 0, i64 0)) #10
  %148 = sext i32 %126 to i64
  %149 = inttoptr i64 %148 to i8*
  %150 = call i8* @halide_pointer_to_string(i8* %147, i8* %144, i8* %149) #10
  %151 = call i8* @halide_string_to_string(i8* %150, i8* %144, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @"??_C@_0L@FELFIFPM@?0?5object?$CK?$DN?$AA@", i64 0, i64 0)) #10
  %152 = bitcast %struct.IDXGIAdapter1* %129 to i8*
  %153 = call i8* @halide_pointer_to_string(i8* %151, i8* %144, i8* %152) #10
  %154 = call i8* @halide_string_to_string(i8* %153, i8* %144, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01PKGAHCOL@?$CJ?$AA@", i64 0, i64 0)) #10
  %155 = call i8* @halide_string_to_string(i8* %154, i8* %144, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #10
  %156 = call i8* @halide_string_to_string(i8* %155, i8* %144, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @"??_C@_0CE@MGMMPJGA@vvvvv?5D3D12?5Begin?5Debug?5Dump?5vvv@", i64 0, i64 0)) #10
  store i8* %156, i8** %139, align 8, !tbaa !46
  call fastcc void @"?d3d12_debug_dump@@YAXAEAV?$Printer@$00$0EAA@@?A0x2B71E647@Internal@Runtime@Halide@@@Z"(%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* nonnull align 8 dereferenceable(40) %10) #10
  %157 = load i8*, i8** %145, align 8, !tbaa !47
  %158 = load i8*, i8** %139, align 8, !tbaa !46
  %159 = call i8* @halide_string_to_string(i8* %158, i8* %157, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @"??_C@_0CE@PCPJBLP@?$FO?$FO?$FO?$FO?$FO?5D3D12?5?5End?5?5Debug?5Dump?5?$FO?$FO?$FO@", i64 0, i64 0)) #10
  %160 = call i8* @halide_string_to_string(i8* %159, i8* %157, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @"??_C@_0BA@FGKOLOB@D3D12?5HALT?5?$CB?$CB?$CB?6?$AA@", i64 0, i64 0)) #10
  store i8* %160, i8** %139, align 8, !tbaa !46
  %161 = load i8*, i8** %138, align 8, !tbaa !45
  %162 = icmp eq i8* %161, null
  %163 = load i8*, i8** %135, align 8, !tbaa !41
  br i1 %162, label %164, label %165

164:                                              ; preds = %143
  call void @halide_error(i8* %163, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #10
  br label %171

165:                                              ; preds = %143
  %166 = ptrtoint i8* %160 to i64
  %167 = ptrtoint i8* %161 to i64
  %168 = add i64 %166, 1
  %169 = sub i64 %168, %167
  %170 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %163, i8* nonnull %161, i64 %169) #10
  call void @halide_error(i8* %163, i8* nonnull %161) #10
  br label %171

171:                                              ; preds = %165, %164
  %172 = load i8, i8* %136, align 8, !tbaa !44, !range !48
  %173 = icmp eq i8 %172, 0
  %174 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %10, i64 0, i32 5, i64 0
  %175 = icmp eq i8* %161, %174
  %176 = or i1 %175, %173
  br i1 %176, label %178, label %177

177:                                              ; preds = %171
  call void @free(i8* %161) #10
  br label %178

178:                                              ; preds = %177, %171
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %134) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %114) #12
  br label %383

179:                                              ; preds = %125
  call void @llvm.lifetime.start.p0i8(i64 312, i8* nonnull %122) #12
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(312) %122, i8 0, i64 312, i1 false) #12
  %180 = bitcast %struct.IDXGIAdapter1* %129 to i32 (%struct.IDXGIAdapter1*, %struct.DXGI_ADAPTER_DESC1*)***
  %181 = load i32 (%struct.IDXGIAdapter1*, %struct.DXGI_ADAPTER_DESC1*)**, i32 (%struct.IDXGIAdapter1*, %struct.DXGI_ADAPTER_DESC1*)*** %180, align 8, !tbaa !50
  %182 = getelementptr inbounds i32 (%struct.IDXGIAdapter1*, %struct.DXGI_ADAPTER_DESC1*)*, i32 (%struct.IDXGIAdapter1*, %struct.DXGI_ADAPTER_DESC1*)** %181, i64 10
  %183 = load i32 (%struct.IDXGIAdapter1*, %struct.DXGI_ADAPTER_DESC1*)*, i32 (%struct.IDXGIAdapter1*, %struct.DXGI_ADAPTER_DESC1*)** %182, align 8
  %184 = call i32 %183(%struct.IDXGIAdapter1* nonnull dereferenceable(8) %129, %struct.DXGI_ADAPTER_DESC1* nonnull %14) #10
  %185 = icmp slt i32 %184, 0
  br i1 %185, label %190, label %186

186:                                              ; preds = %179
  %187 = load i32, i32* %123, align 8, !tbaa !150
  %188 = and i32 %187, 2
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %242, label %232

190:                                              ; preds = %179
  %191 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %15 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %191) #12
  %192 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %15, i64 0, i32 3
  store i8* null, i8** %192, align 8, !tbaa !41
  %193 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %15, i64 0, i32 4
  store i8 1, i8* %193, align 8, !tbaa !44
  %194 = call i8* @malloc(i64 1024) #10
  %195 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %15, i64 0, i32 0
  store i8* %194, i8** %195, align 8, !tbaa !45
  %196 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %15, i64 0, i32 1
  store i8* %194, i8** %196, align 8, !tbaa !46
  %197 = icmp eq i8* %194, null
  br i1 %197, label %200, label %198

198:                                              ; preds = %190
  %199 = getelementptr inbounds i8, i8* %194, i64 1023
  store i8 0, i8* %199, align 1, !tbaa !40
  br label %200

200:                                              ; preds = %198, %190
  %201 = phi i8* [ %199, %198 ], [ null, %190 ]
  %202 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %15, i64 0, i32 2
  store i8* %201, i8** %202, align 8
  %203 = call i8* @halide_string_to_string(i8* %194, i8* %201, i8* nonnull getelementptr inbounds ([75 x i8], [75 x i8]* @"??_C@_0EL@CNMMEDGN@Unable?5to?5retrieve?5information?5?$CI@", i64 0, i64 0)) #10
  store i8* %203, i8** %196, align 8, !tbaa !46
  %204 = zext i32 %127 to i64
  %205 = call i8* @halide_int64_to_string(i8* %203, i8* %201, i64 %204, i32 1) #10
  store i8* %205, i8** %196, align 8, !tbaa !46
  %206 = call i8* @halide_string_to_string(i8* %205, i8* %201, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #10
  store i8* %206, i8** %196, align 8, !tbaa !46
  %207 = call i8* @halide_string_to_string(i8* %206, i8* %201, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @"??_C@_0CE@MGMMPJGA@vvvvv?5D3D12?5Begin?5Debug?5Dump?5vvv@", i64 0, i64 0)) #10
  store i8* %207, i8** %196, align 8, !tbaa !46
  call fastcc void @"?d3d12_debug_dump@@YAXAEAV?$Printer@$00$0EAA@@?A0x2B71E647@Internal@Runtime@Halide@@@Z"(%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* nonnull align 8 dereferenceable(40) %15) #10
  %208 = load i8*, i8** %202, align 8, !tbaa !47
  %209 = load i8*, i8** %196, align 8, !tbaa !46
  %210 = call i8* @halide_string_to_string(i8* %209, i8* %208, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @"??_C@_0CE@PCPJBLP@?$FO?$FO?$FO?$FO?$FO?5D3D12?5?5End?5?5Debug?5Dump?5?$FO?$FO?$FO@", i64 0, i64 0)) #10
  store i8* %210, i8** %196, align 8, !tbaa !46
  %211 = call i8* @halide_string_to_string(i8* %210, i8* %208, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @"??_C@_0BA@FGKOLOB@D3D12?5HALT?5?$CB?$CB?$CB?6?$AA@", i64 0, i64 0)) #10
  store i8* %211, i8** %196, align 8, !tbaa !46
  %212 = load i8*, i8** %195, align 8, !tbaa !45
  %213 = icmp eq i8* %212, null
  %214 = load i8*, i8** %192, align 8, !tbaa !41
  br i1 %213, label %215, label %216

215:                                              ; preds = %200
  call void @halide_error(i8* %214, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #10
  br label %224

216:                                              ; preds = %200
  %217 = ptrtoint i8* %211 to i64
  %218 = ptrtoint i8* %212 to i64
  %219 = add i64 %217, 1
  %220 = sub i64 %219, %218
  %221 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %214, i8* nonnull %212, i64 %220) #10
  %222 = load i8*, i8** %195, align 8, !tbaa !45
  %223 = load i8*, i8** %192, align 8, !tbaa !41
  call void @halide_error(i8* %223, i8* %222) #10
  br label %224

224:                                              ; preds = %216, %215
  %225 = load i8, i8* %193, align 8, !tbaa !44, !range !48
  %226 = icmp eq i8 %225, 0
  br i1 %226, label %257, label %227

227:                                              ; preds = %224
  %228 = load i8*, i8** %195, align 8, !tbaa !45
  %229 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %15, i64 0, i32 5, i64 0
  %230 = icmp eq i8* %228, %229
  br i1 %230, label %257, label %231

231:                                              ; preds = %227
  call void @free(i8* %228) #10
  br label %257

232:                                              ; preds = %186
  %233 = load %struct.IDXGIAdapter1*, %struct.IDXGIAdapter1** %13, align 8, !tbaa !49
  %234 = icmp eq %struct.IDXGIAdapter1* %233, null
  br i1 %234, label %258, label %235

235:                                              ; preds = %232
  %236 = getelementptr %struct.IDXGIAdapter1, %struct.IDXGIAdapter1* %233, i64 0, i32 0, i32 0, i32 0
  %237 = bitcast %struct.IDXGIAdapter1* %233 to i32 (%struct.IUnknown*)***
  %238 = load i32 (%struct.IUnknown*)**, i32 (%struct.IUnknown*)*** %237, align 8, !tbaa !50
  %239 = getelementptr inbounds i32 (%struct.IUnknown*)*, i32 (%struct.IUnknown*)** %238, i64 2
  %240 = load i32 (%struct.IUnknown*)*, i32 (%struct.IUnknown*)** %239, align 8
  %241 = call i32 %240(%struct.IUnknown* nonnull dereferenceable(8) %236) #10
  br label %258

242:                                              ; preds = %186
  %243 = load i64, i64* %124, align 8, !tbaa !153
  %244 = icmp ugt i64 %243, %128
  br i1 %244, label %245, label %258

245:                                              ; preds = %242
  %246 = load %struct.IDXGIAdapter1*, %struct.IDXGIAdapter1** @"?dxgiAdapter@D3D12Compute@Internal@Runtime@Halide@@3PEAUIDXGIAdapter1@@EA", align 8, !tbaa !49
  %247 = icmp eq %struct.IDXGIAdapter1* %246, null
  br i1 %247, label %255, label %248

248:                                              ; preds = %245
  %249 = getelementptr %struct.IDXGIAdapter1, %struct.IDXGIAdapter1* %246, i64 0, i32 0, i32 0, i32 0
  %250 = bitcast %struct.IDXGIAdapter1* %246 to i32 (%struct.IUnknown*)***
  %251 = load i32 (%struct.IUnknown*)**, i32 (%struct.IUnknown*)*** %250, align 8, !tbaa !50
  %252 = getelementptr inbounds i32 (%struct.IUnknown*)*, i32 (%struct.IUnknown*)** %251, i64 2
  %253 = load i32 (%struct.IUnknown*)*, i32 (%struct.IUnknown*)** %252, align 8
  %254 = call i32 %253(%struct.IUnknown* nonnull dereferenceable(8) %249) #10
  br label %255

255:                                              ; preds = %248, %245
  %256 = load %struct.IDXGIAdapter1*, %struct.IDXGIAdapter1** %13, align 8, !tbaa !49
  store %struct.IDXGIAdapter1* %256, %struct.IDXGIAdapter1** @"?dxgiAdapter@D3D12Compute@Internal@Runtime@Halide@@3PEAUIDXGIAdapter1@@EA", align 8, !tbaa !49
  br label %258

257:                                              ; preds = %231, %227, %224
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %191) #12
  call void @llvm.lifetime.end.p0i8(i64 312, i8* nonnull %122) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %114) #12
  br label %383

258:                                              ; preds = %255, %242, %235, %232
  %259 = phi i64 [ %128, %235 ], [ %128, %232 ], [ %128, %242 ], [ %243, %255 ]
  call void @llvm.lifetime.end.p0i8(i64 312, i8* nonnull %122) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %114) #12
  %260 = add nuw nsw i32 %127, 1
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %114) #12
  store %struct.IDXGIAdapter1* null, %struct.IDXGIAdapter1** %13, align 8, !tbaa !49
  %261 = load %struct.IDXGIFactory1*, %struct.IDXGIFactory1** %12, align 8, !tbaa !49
  %262 = bitcast %struct.IDXGIFactory1* %261 to i32 (%struct.IDXGIFactory1*, i32, %struct.IDXGIAdapter1**)***
  %263 = load i32 (%struct.IDXGIFactory1*, i32, %struct.IDXGIAdapter1**)**, i32 (%struct.IDXGIFactory1*, i32, %struct.IDXGIAdapter1**)*** %262, align 8, !tbaa !50
  %264 = getelementptr inbounds i32 (%struct.IDXGIFactory1*, i32, %struct.IDXGIAdapter1**)*, i32 (%struct.IDXGIFactory1*, i32, %struct.IDXGIAdapter1**)** %263, i64 12
  %265 = load i32 (%struct.IDXGIFactory1*, i32, %struct.IDXGIAdapter1**)*, i32 (%struct.IDXGIFactory1*, i32, %struct.IDXGIAdapter1**)** %264, align 8
  %266 = call i32 %265(%struct.IDXGIFactory1* nonnull dereferenceable(8) %261, i32 %260, %struct.IDXGIAdapter1** nonnull %13) #10
  %267 = icmp eq i32 %266, -2005270526
  br i1 %267, label %268, label %125

268:                                              ; preds = %258, %112
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %114) #12
  %269 = load %struct.IDXGIAdapter1*, %struct.IDXGIAdapter1** @"?dxgiAdapter@D3D12Compute@Internal@Runtime@Halide@@3PEAUIDXGIAdapter1@@EA", align 8, !tbaa !49
  %270 = icmp eq %struct.IDXGIAdapter1* %269, null
  br i1 %270, label %271, label %312

271:                                              ; preds = %268
  %272 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %16 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %272) #12
  %273 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %16, i64 0, i32 3
  store i8* null, i8** %273, align 8, !tbaa !41
  %274 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %16, i64 0, i32 4
  store i8 1, i8* %274, align 8, !tbaa !44
  %275 = call i8* @malloc(i64 1024) #10
  %276 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %16, i64 0, i32 0
  store i8* %275, i8** %276, align 8, !tbaa !45
  %277 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %16, i64 0, i32 1
  store i8* %275, i8** %277, align 8, !tbaa !46
  %278 = icmp eq i8* %275, null
  br i1 %278, label %281, label %279

279:                                              ; preds = %271
  %280 = getelementptr inbounds i8, i8* %275, i64 1023
  store i8 0, i8* %280, align 1, !tbaa !40
  br label %281

281:                                              ; preds = %279, %271
  %282 = phi i8* [ %280, %279 ], [ null, %271 ]
  %283 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %16, i64 0, i32 2
  store i8* %282, i8** %283, align 8
  %284 = call i8* @halide_string_to_string(i8* %275, i8* %282, i8* nonnull getelementptr inbounds ([41 x i8], [41 x i8]* @"??_C@_0CJ@GPPKLMOI@Unable?5to?5find?5a?5suitable?5D3D12?5@", i64 0, i64 0)) #10
  store i8* %284, i8** %277, align 8, !tbaa !46
  %285 = call i8* @halide_string_to_string(i8* %284, i8* %282, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #10
  store i8* %285, i8** %277, align 8, !tbaa !46
  %286 = call i8* @halide_string_to_string(i8* %285, i8* %282, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @"??_C@_0CE@MGMMPJGA@vvvvv?5D3D12?5Begin?5Debug?5Dump?5vvv@", i64 0, i64 0)) #10
  store i8* %286, i8** %277, align 8, !tbaa !46
  call fastcc void @"?d3d12_debug_dump@@YAXAEAV?$Printer@$00$0EAA@@?A0x2B71E647@Internal@Runtime@Halide@@@Z"(%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* nonnull align 8 dereferenceable(40) %16) #10
  %287 = load i8*, i8** %283, align 8, !tbaa !47
  %288 = load i8*, i8** %277, align 8, !tbaa !46
  %289 = call i8* @halide_string_to_string(i8* %288, i8* %287, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @"??_C@_0CE@PCPJBLP@?$FO?$FO?$FO?$FO?$FO?5D3D12?5?5End?5?5Debug?5Dump?5?$FO?$FO?$FO@", i64 0, i64 0)) #10
  store i8* %289, i8** %277, align 8, !tbaa !46
  %290 = call i8* @halide_string_to_string(i8* %289, i8* %287, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @"??_C@_0BA@FGKOLOB@D3D12?5HALT?5?$CB?$CB?$CB?6?$AA@", i64 0, i64 0)) #10
  store i8* %290, i8** %277, align 8, !tbaa !46
  %291 = load i8*, i8** %276, align 8, !tbaa !45
  %292 = icmp eq i8* %291, null
  %293 = load i8*, i8** %273, align 8, !tbaa !41
  br i1 %292, label %294, label %295

294:                                              ; preds = %281
  call void @halide_error(i8* %293, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #10
  br label %303

295:                                              ; preds = %281
  %296 = ptrtoint i8* %290 to i64
  %297 = ptrtoint i8* %291 to i64
  %298 = add i64 %296, 1
  %299 = sub i64 %298, %297
  %300 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %293, i8* nonnull %291, i64 %299) #10
  %301 = load i8*, i8** %276, align 8, !tbaa !45
  %302 = load i8*, i8** %273, align 8, !tbaa !41
  call void @halide_error(i8* %302, i8* %301) #10
  br label %303

303:                                              ; preds = %295, %294
  %304 = load i8, i8* %274, align 8, !tbaa !44, !range !48
  %305 = icmp eq i8 %304, 0
  br i1 %305, label %311, label %306

306:                                              ; preds = %303
  %307 = load i8*, i8** %276, align 8, !tbaa !45
  %308 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %16, i64 0, i32 5, i64 0
  %309 = icmp eq i8* %307, %308
  br i1 %309, label %311, label %310

310:                                              ; preds = %306
  call void @free(i8* %307) #10
  br label %311

311:                                              ; preds = %310, %306, %303
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %272) #12
  br label %383

312:                                              ; preds = %268
  %313 = bitcast %struct.DXGI_ADAPTER_DESC1* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 312, i8* nonnull %313) #12
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(312) %313, i8 0, i64 312, i1 false) #12
  %314 = bitcast %struct.IDXGIAdapter1* %269 to i32 (%struct.IDXGIAdapter1*, %struct.DXGI_ADAPTER_DESC1*)***
  %315 = load i32 (%struct.IDXGIAdapter1*, %struct.DXGI_ADAPTER_DESC1*)**, i32 (%struct.IDXGIAdapter1*, %struct.DXGI_ADAPTER_DESC1*)*** %314, align 8, !tbaa !50
  %316 = getelementptr inbounds i32 (%struct.IDXGIAdapter1*, %struct.DXGI_ADAPTER_DESC1*)*, i32 (%struct.IDXGIAdapter1*, %struct.DXGI_ADAPTER_DESC1*)** %315, i64 10
  %317 = load i32 (%struct.IDXGIAdapter1*, %struct.DXGI_ADAPTER_DESC1*)*, i32 (%struct.IDXGIAdapter1*, %struct.DXGI_ADAPTER_DESC1*)** %316, align 8
  %318 = call i32 %317(%struct.IDXGIAdapter1* nonnull dereferenceable(8) %269, %struct.DXGI_ADAPTER_DESC1* nonnull %7) #10
  %319 = icmp slt i32 %318, 0
  br i1 %319, label %331, label %320

320:                                              ; preds = %312
  %321 = bitcast %struct.ID3D12Device** %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %321) #12
  store %struct.ID3D12Device* null, %struct.ID3D12Device** %9, align 8, !tbaa !49
  %322 = load i32 (%struct.IUnknown*, i32, %struct._GUID*, i8**)*, i32 (%struct.IUnknown*, i32, %struct._GUID*, i8**)** @D3D12CreateDevice, align 8, !tbaa !49
  %323 = bitcast %struct.ID3D12Device** %9 to i8**
  %324 = load %struct.IUnknown*, %struct.IUnknown** bitcast (%struct.IDXGIAdapter1** @"?dxgiAdapter@D3D12Compute@Internal@Runtime@Halide@@3PEAUIDXGIAdapter1@@EA" to %struct.IUnknown**), align 8, !tbaa !49
  %325 = call i32 %322(%struct.IUnknown* %324, i32 45056, %struct._GUID* nonnull align 4 dereferenceable(16) @_GUID_189819f1_1db6_4b57_be54_1821339b85f7, i8** nonnull %323) #10
  %326 = load %struct.ID3D12Device*, %struct.ID3D12Device** %9, align 8, !tbaa !49
  %327 = call fastcc i1 @"??$D3DErrorCheck@UID3D12Device@@@@YA_NHPEAUID3D12Device@@PEAXPEBD@Z"(i32 %325, %struct.ID3D12Device* %326) #10
  %328 = bitcast %struct.ID3D12Device** %9 to %struct.halide_d3d12compute_device**
  %329 = load %struct.halide_d3d12compute_device*, %struct.halide_d3d12compute_device** %328, align 8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %321) #12
  %330 = select i1 %327, %struct.halide_d3d12compute_device* null, %struct.halide_d3d12compute_device* %329
  br label %372

331:                                              ; preds = %312
  %332 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %332) #12
  %333 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8, i64 0, i32 3
  store i8* null, i8** %333, align 8, !tbaa !41
  %334 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8, i64 0, i32 4
  store i8 1, i8* %334, align 8, !tbaa !44
  %335 = call i8* @malloc(i64 1024) #10
  %336 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8, i64 0, i32 0
  store i8* %335, i8** %336, align 8, !tbaa !45
  %337 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8, i64 0, i32 1
  store i8* %335, i8** %337, align 8, !tbaa !46
  %338 = icmp eq i8* %335, null
  br i1 %338, label %341, label %339

339:                                              ; preds = %331
  %340 = getelementptr inbounds i8, i8* %335, i64 1023
  store i8 0, i8* %340, align 1, !tbaa !40
  br label %341

341:                                              ; preds = %339, %331
  %342 = phi i8* [ %340, %339 ], [ null, %331 ]
  %343 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8, i64 0, i32 2
  store i8* %342, i8** %343, align 8
  %344 = call i8* @halide_string_to_string(i8* %335, i8* %342, i8* nonnull getelementptr inbounds ([79 x i8], [79 x i8]* @"??_C@_0EP@FDCDGPDE@Unable?5to?5retrieve?5information?5?$CI@", i64 0, i64 0)) #10
  store i8* %344, i8** %337, align 8, !tbaa !46
  %345 = call i8* @halide_string_to_string(i8* %344, i8* %342, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #10
  store i8* %345, i8** %337, align 8, !tbaa !46
  %346 = call i8* @halide_string_to_string(i8* %345, i8* %342, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @"??_C@_0CE@MGMMPJGA@vvvvv?5D3D12?5Begin?5Debug?5Dump?5vvv@", i64 0, i64 0)) #10
  store i8* %346, i8** %337, align 8, !tbaa !46
  call fastcc void @"?d3d12_debug_dump@@YAXAEAV?$Printer@$00$0EAA@@?A0x2B71E647@Internal@Runtime@Halide@@@Z"(%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* nonnull align 8 dereferenceable(40) %8) #10
  %347 = load i8*, i8** %343, align 8, !tbaa !47
  %348 = load i8*, i8** %337, align 8, !tbaa !46
  %349 = call i8* @halide_string_to_string(i8* %348, i8* %347, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @"??_C@_0CE@PCPJBLP@?$FO?$FO?$FO?$FO?$FO?5D3D12?5?5End?5?5Debug?5Dump?5?$FO?$FO?$FO@", i64 0, i64 0)) #10
  store i8* %349, i8** %337, align 8, !tbaa !46
  %350 = call i8* @halide_string_to_string(i8* %349, i8* %347, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @"??_C@_0BA@FGKOLOB@D3D12?5HALT?5?$CB?$CB?$CB?6?$AA@", i64 0, i64 0)) #10
  store i8* %350, i8** %337, align 8, !tbaa !46
  %351 = load i8*, i8** %336, align 8, !tbaa !45
  %352 = icmp eq i8* %351, null
  %353 = load i8*, i8** %333, align 8, !tbaa !41
  br i1 %352, label %354, label %355

354:                                              ; preds = %341
  call void @halide_error(i8* %353, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #10
  br label %363

355:                                              ; preds = %341
  %356 = ptrtoint i8* %350 to i64
  %357 = ptrtoint i8* %351 to i64
  %358 = add i64 %356, 1
  %359 = sub i64 %358, %357
  %360 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %353, i8* nonnull %351, i64 %359) #10
  %361 = load i8*, i8** %336, align 8, !tbaa !45
  %362 = load i8*, i8** %333, align 8, !tbaa !41
  call void @halide_error(i8* %362, i8* %361) #10
  br label %363

363:                                              ; preds = %355, %354
  %364 = load i8, i8* %334, align 8, !tbaa !44, !range !48
  %365 = icmp eq i8 %364, 0
  br i1 %365, label %371, label %366

366:                                              ; preds = %363
  %367 = load i8*, i8** %336, align 8, !tbaa !45
  %368 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8, i64 0, i32 5, i64 0
  %369 = icmp eq i8* %367, %368
  br i1 %369, label %371, label %370

370:                                              ; preds = %366
  call void @free(i8* %367) #10
  br label %371

371:                                              ; preds = %370, %366, %363
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %332) #12
  br label %372

372:                                              ; preds = %320, %371
  %373 = phi %struct.halide_d3d12compute_device* [ null, %371 ], [ %330, %320 ]
  call void @llvm.lifetime.end.p0i8(i64 312, i8* nonnull %313) #12
  %374 = load %struct.IDXGIFactory1*, %struct.IDXGIFactory1** %12, align 8, !tbaa !49
  %375 = icmp eq %struct.IDXGIFactory1* %374, null
  br i1 %375, label %384, label %376

376:                                              ; preds = %372
  %377 = getelementptr %struct.IDXGIFactory1, %struct.IDXGIFactory1* %374, i64 0, i32 0, i32 0, i32 0
  %378 = bitcast %struct.IDXGIFactory1* %374 to i32 (%struct.IUnknown*)***
  %379 = load i32 (%struct.IUnknown*)**, i32 (%struct.IUnknown*)*** %378, align 8, !tbaa !50
  %380 = getelementptr inbounds i32 (%struct.IUnknown*)*, i32 (%struct.IUnknown*)** %379, i64 2
  %381 = load i32 (%struct.IUnknown*)*, i32 (%struct.IUnknown*)** %380, align 8
  %382 = call i32 %381(%struct.IUnknown* nonnull dereferenceable(8) %377) #10
  br label %384

383:                                              ; preds = %311, %257, %178, %106
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %53) #12
  store %struct.halide_d3d12compute_device* null, %struct.halide_d3d12compute_device** @"?device@D3D12Compute@Internal@Runtime@Halide@@3PEAUhalide_d3d12compute_device@@EA", align 8, !tbaa !49
  br label %471

384:                                              ; preds = %376, %372
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %53) #12
  store %struct.halide_d3d12compute_device* %373, %struct.halide_d3d12compute_device** @"?device@D3D12Compute@Internal@Runtime@Halide@@3PEAUhalide_d3d12compute_device@@EA", align 8, !tbaa !49
  %385 = icmp eq %struct.halide_d3d12compute_device* %373, null
  br i1 %385, label %471, label %386

386:                                              ; preds = %384
  %387 = bitcast %struct.halide_d3d12compute_device* %373 to %struct.ID3D12Device*
  %388 = load %struct.ID3D12RootSignature*, %struct.ID3D12RootSignature** @"?rootSignature@D3D12Compute@Internal@Runtime@Halide@@3PEAUID3D12RootSignature@@EA", align 8, !tbaa !49
  %389 = icmp eq %struct.ID3D12RootSignature* %388, null
  br i1 %389, label %392, label %390

390:                                              ; preds = %386
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([127 x i8], [127 x i8]* @"??_C@_0HP@CJJAKJAL@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  call void @abort() #10
  %391 = load %struct.ID3D12Device*, %struct.ID3D12Device** bitcast (%struct.halide_d3d12compute_device** @"?device@D3D12Compute@Internal@Runtime@Halide@@3PEAUhalide_d3d12compute_device@@EA" to %struct.ID3D12Device**), align 8, !tbaa !49
  br label %392

392:                                              ; preds = %390, %386
  %393 = phi %struct.ID3D12Device* [ %391, %390 ], [ %387, %386 ]
  %394 = call %struct.ID3D12RootSignature* @"?D3D12CreateMasterRootSignature@D3D12Compute@Internal@Runtime@Halide@@YAPEAUID3D12RootSignature@@PEAUID3D12Device@@@Z"(%struct.ID3D12Device* %393) #10
  store %struct.ID3D12RootSignature* %394, %struct.ID3D12RootSignature** @"?rootSignature@D3D12Compute@Internal@Runtime@Halide@@3PEAUID3D12RootSignature@@EA", align 8, !tbaa !49
  %395 = icmp eq %struct.ID3D12RootSignature* %394, null
  br i1 %395, label %471, label %396

396:                                              ; preds = %392
  %397 = load %struct.halide_d3d12compute_command_queue*, %struct.halide_d3d12compute_command_queue** @"?queue@D3D12Compute@Internal@Runtime@Halide@@3PEAUhalide_d3d12compute_command_queue@@EA", align 8, !tbaa !49
  %398 = icmp eq %struct.halide_d3d12compute_command_queue* %397, null
  br i1 %398, label %400, label %399

399:                                              ; preds = %396
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"??_C@_0HH@BCDAACAG@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  call void @abort() #10
  br label %400

400:                                              ; preds = %399, %396
  %401 = load %struct.halide_d3d12compute_device*, %struct.halide_d3d12compute_device** @"?device@D3D12Compute@Internal@Runtime@Halide@@3PEAUhalide_d3d12compute_device@@EA", align 8, !tbaa !49
  %402 = call %struct.halide_d3d12compute_command_queue* @"?new_command_queue@D3D12Compute@Internal@Runtime@Halide@@YAPEAUhalide_d3d12compute_command_queue@@PEAUhalide_d3d12compute_device@@@Z"(%struct.halide_d3d12compute_device* %401) #10
  store %struct.halide_d3d12compute_command_queue* %402, %struct.halide_d3d12compute_command_queue** @"?queue@D3D12Compute@Internal@Runtime@Halide@@3PEAUhalide_d3d12compute_command_queue@@EA", align 8, !tbaa !49
  %403 = icmp eq %struct.halide_d3d12compute_command_queue* %402, null
  br i1 %403, label %471, label %404

404:                                              ; preds = %400
  %405 = load %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_command_allocator"*, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_command_allocator"** @"?cmd_allocator_main@D3D12Compute@Internal@Runtime@Halide@@3PEAUd3d12_command_allocator@1234@EA", align 8, !tbaa !49
  %406 = icmp eq %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_command_allocator"* %405, null
  br i1 %406, label %408, label %407

407:                                              ; preds = %404
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([132 x i8], [132 x i8]* @"??_C@_0IE@KCBLAMLL@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  call void @abort() #10
  br label %408

408:                                              ; preds = %407, %404
  %409 = load %struct.halide_d3d12compute_device*, %struct.halide_d3d12compute_device** @"?device@D3D12Compute@Internal@Runtime@Halide@@3PEAUhalide_d3d12compute_device@@EA", align 8, !tbaa !49
  %410 = icmp eq %struct.halide_d3d12compute_device* %409, null
  br i1 %410, label %411, label %412

411:                                              ; preds = %408
  call void @halide_print(i8* null, i8* getelementptr inbounds ([107 x i8], [107 x i8]* @"??_C@_0GL@MKEDKIBD@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  call void @abort() #10
  br label %412

412:                                              ; preds = %411, %408
  %413 = bitcast %struct.ID3D12CommandAllocator** %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %413) #12
  store %struct.ID3D12CommandAllocator* null, %struct.ID3D12CommandAllocator** %6, align 8, !tbaa !49
  %414 = bitcast %struct.halide_d3d12compute_device* %409 to %struct.ID3D12Device*
  %415 = bitcast %struct.ID3D12CommandAllocator** %6 to i8**
  %416 = bitcast %struct.halide_d3d12compute_device* %409 to i32 (%struct.ID3D12Device*, i32, %struct._GUID*, i8**)***
  %417 = load i32 (%struct.ID3D12Device*, i32, %struct._GUID*, i8**)**, i32 (%struct.ID3D12Device*, i32, %struct._GUID*, i8**)*** %416, align 8, !tbaa !50
  %418 = getelementptr inbounds i32 (%struct.ID3D12Device*, i32, %struct._GUID*, i8**)*, i32 (%struct.ID3D12Device*, i32, %struct._GUID*, i8**)** %417, i64 9
  %419 = load i32 (%struct.ID3D12Device*, i32, %struct._GUID*, i8**)*, i32 (%struct.ID3D12Device*, i32, %struct._GUID*, i8**)** %418, align 8
  %420 = call i32 %419(%struct.ID3D12Device* nonnull dereferenceable(8) %414, i32 2, %struct._GUID* nonnull align 4 dereferenceable(16) @_GUID_6102dee4_af59_4b09_b999_b44d73f09b24, i8** nonnull %415) #10
  %421 = load %struct.ID3D12CommandAllocator*, %struct.ID3D12CommandAllocator** %6, align 8, !tbaa !49
  %422 = icmp sgt i32 %420, -1
  %423 = icmp ne %struct.ID3D12CommandAllocator* %421, null
  %424 = and i1 %422, %423
  br i1 %424, label %474, label %425

425:                                              ; preds = %412
  %426 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %426) #12
  %427 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i64 0, i32 3
  store i8* null, i8** %427, align 8, !tbaa !41
  %428 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i64 0, i32 4
  store i8 1, i8* %428, align 8, !tbaa !44
  %429 = call i8* @malloc(i64 1024) #10
  %430 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i64 0, i32 0
  store i8* %429, i8** %430, align 8, !tbaa !45
  %431 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i64 0, i32 1
  %432 = icmp eq i8* %429, null
  br i1 %432, label %435, label %433

433:                                              ; preds = %425
  %434 = getelementptr inbounds i8, i8* %429, i64 1023
  store i8 0, i8* %434, align 1, !tbaa !40
  br label %435

435:                                              ; preds = %433, %425
  %436 = phi i8* [ %434, %433 ], [ null, %425 ]
  %437 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i64 0, i32 2
  store i8* %436, i8** %437, align 8
  %438 = call i8* @halide_string_to_string(i8* %429, i8* %436, i8* nonnull getelementptr inbounds ([51 x i8], [51 x i8]* @"??_C@_0DD@BGLBECPN@Unable?5to?5create?5the?5Direct3D?512@", i64 0, i64 0)) #10
  %439 = call i8* @halide_string_to_string(i8* %438, i8* %436, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @"??_C@_0L@IAGCJOCP@?5?$CIHRESULT?$DN?$AA@", i64 0, i64 0)) #10
  %440 = sext i32 %420 to i64
  %441 = inttoptr i64 %440 to i8*
  %442 = call i8* @halide_pointer_to_string(i8* %439, i8* %436, i8* %441) #10
  %443 = call i8* @halide_string_to_string(i8* %442, i8* %436, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @"??_C@_0L@FELFIFPM@?0?5object?$CK?$DN?$AA@", i64 0, i64 0)) #10
  %444 = bitcast %struct.ID3D12CommandAllocator* %421 to i8*
  %445 = call i8* @halide_pointer_to_string(i8* %443, i8* %436, i8* %444) #10
  %446 = call i8* @halide_string_to_string(i8* %445, i8* %436, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01PKGAHCOL@?$CJ?$AA@", i64 0, i64 0)) #10
  %447 = call i8* @halide_string_to_string(i8* %446, i8* %436, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #10
  %448 = call i8* @halide_string_to_string(i8* %447, i8* %436, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @"??_C@_0CE@MGMMPJGA@vvvvv?5D3D12?5Begin?5Debug?5Dump?5vvv@", i64 0, i64 0)) #10
  store i8* %448, i8** %431, align 8, !tbaa !46
  call fastcc void @"?d3d12_debug_dump@@YAXAEAV?$Printer@$00$0EAA@@?A0x2B71E647@Internal@Runtime@Halide@@@Z"(%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* nonnull align 8 dereferenceable(40) %5) #10
  %449 = load i8*, i8** %437, align 8, !tbaa !47
  %450 = load i8*, i8** %431, align 8, !tbaa !46
  %451 = call i8* @halide_string_to_string(i8* %450, i8* %449, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @"??_C@_0CE@PCPJBLP@?$FO?$FO?$FO?$FO?$FO?5D3D12?5?5End?5?5Debug?5Dump?5?$FO?$FO?$FO@", i64 0, i64 0)) #10
  %452 = call i8* @halide_string_to_string(i8* %451, i8* %449, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @"??_C@_0BA@FGKOLOB@D3D12?5HALT?5?$CB?$CB?$CB?6?$AA@", i64 0, i64 0)) #10
  store i8* %452, i8** %431, align 8, !tbaa !46
  %453 = load i8*, i8** %430, align 8, !tbaa !45
  %454 = icmp eq i8* %453, null
  %455 = load i8*, i8** %427, align 8, !tbaa !41
  br i1 %454, label %456, label %457

456:                                              ; preds = %435
  call void @halide_error(i8* %455, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #10
  br label %463

457:                                              ; preds = %435
  %458 = ptrtoint i8* %452 to i64
  %459 = ptrtoint i8* %453 to i64
  %460 = add i64 %458, 1
  %461 = sub i64 %460, %459
  %462 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %455, i8* nonnull %453, i64 %461) #10
  call void @halide_error(i8* %455, i8* nonnull %453) #10
  br label %463

463:                                              ; preds = %457, %456
  %464 = load i8, i8* %428, align 8, !tbaa !44, !range !48
  %465 = icmp eq i8 %464, 0
  %466 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i64 0, i32 5, i64 0
  %467 = icmp eq i8* %453, %466
  %468 = or i1 %467, %465
  br i1 %468, label %470, label %469

469:                                              ; preds = %463
  call void @free(i8* %453) #10
  br label %470

470:                                              ; preds = %469, %463
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %426) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %413) #12
  br label %489

471:                                              ; preds = %400, %392, %384, %383
  %472 = load %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_command_allocator"*, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_command_allocator"** @"?cmd_allocator_main@D3D12Compute@Internal@Runtime@Halide@@3PEAUd3d12_command_allocator@1234@EA", align 8, !tbaa !49
  %473 = icmp eq %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_command_allocator"* %472, null
  br i1 %473, label %490, label %482

474:                                              ; preds = %412
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %413) #12
  store %struct.ID3D12CommandAllocator* %421, %struct.ID3D12CommandAllocator** bitcast (%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_command_allocator"** @"?cmd_allocator_main@D3D12Compute@Internal@Runtime@Halide@@3PEAUd3d12_command_allocator@1234@EA" to %struct.ID3D12CommandAllocator**), align 8, !tbaa !49
  %475 = load %struct.ID3D12Resource*, %struct.ID3D12Resource** getelementptr inbounds (%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* @"?upload@D3D12Compute@Internal@Runtime@Halide@@3Ud3d12_buffer@1234@A", i64 0, i32 0), align 16, !tbaa !54
  %476 = icmp eq %struct.ID3D12Resource* %475, null
  br i1 %476, label %478, label %477

477:                                              ; preds = %474
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([114 x i8], [114 x i8]* @"??_C@_0HC@EJNCMKGA@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  call void @abort() #10
  br label %478

478:                                              ; preds = %477, %474
  %479 = load %struct.ID3D12Resource*, %struct.ID3D12Resource** getelementptr inbounds (%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* @"?readback@D3D12Compute@Internal@Runtime@Halide@@3Ud3d12_buffer@1234@A", i64 0, i32 0), align 16, !tbaa !54
  %480 = icmp eq %struct.ID3D12Resource* %479, null
  br i1 %480, label %540, label %481

481:                                              ; preds = %478
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([116 x i8], [116 x i8]* @"??_C@_0HE@JADBJBDC@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  call void @abort() #10
  br label %540

482:                                              ; preds = %471
  %483 = bitcast %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_command_allocator"* %472 to %struct.IUnknown*
  %484 = bitcast %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_command_allocator"* %472 to i32 (%struct.IUnknown*)***
  %485 = load i32 (%struct.IUnknown*)**, i32 (%struct.IUnknown*)*** %484, align 8, !tbaa !50
  %486 = getelementptr inbounds i32 (%struct.IUnknown*)*, i32 (%struct.IUnknown*)** %485, i64 2
  %487 = load i32 (%struct.IUnknown*)*, i32 (%struct.IUnknown*)** %486, align 8
  %488 = call i32 %487(%struct.IUnknown* nonnull dereferenceable(8) %483) #10
  br label %489

489:                                              ; preds = %470, %482
  store %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_command_allocator"* null, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_command_allocator"** @"?cmd_allocator_main@D3D12Compute@Internal@Runtime@Halide@@3PEAUd3d12_command_allocator@1234@EA", align 8, !tbaa !49
  br label %490

490:                                              ; preds = %489, %471
  %491 = load %struct.halide_d3d12compute_command_queue*, %struct.halide_d3d12compute_command_queue** @"?queue@D3D12Compute@Internal@Runtime@Halide@@3PEAUhalide_d3d12compute_command_queue@@EA", align 8, !tbaa !49
  %492 = icmp eq %struct.halide_d3d12compute_command_queue* %491, null
  br i1 %492, label %510, label %493

493:                                              ; preds = %490
  %494 = bitcast %struct.halide_d3d12compute_command_queue* %491 to %struct.IUnknown*
  %495 = bitcast %struct.halide_d3d12compute_command_queue* %491 to i32 (%struct.IUnknown*)***
  %496 = load i32 (%struct.IUnknown*)**, i32 (%struct.IUnknown*)*** %495, align 8, !tbaa !50
  %497 = getelementptr inbounds i32 (%struct.IUnknown*)*, i32 (%struct.IUnknown*)** %496, i64 2
  %498 = load i32 (%struct.IUnknown*)*, i32 (%struct.IUnknown*)** %497, align 8
  %499 = call i32 %498(%struct.IUnknown* nonnull dereferenceable(8) %494) #10
  %500 = load %struct.ID3D12Fence*, %struct.ID3D12Fence** @"?queue_fence@D3D12Compute@Internal@Runtime@Halide@@3PEAUID3D12Fence@@EA", align 8, !tbaa !49
  %501 = icmp eq %struct.ID3D12Fence* %500, null
  br i1 %501, label %509, label %502

502:                                              ; preds = %493
  %503 = getelementptr %struct.ID3D12Fence, %struct.ID3D12Fence* %500, i64 0, i32 0, i32 0, i32 0, i32 0
  %504 = bitcast %struct.ID3D12Fence* %500 to i32 (%struct.IUnknown*)***
  %505 = load i32 (%struct.IUnknown*)**, i32 (%struct.IUnknown*)*** %504, align 8, !tbaa !50
  %506 = getelementptr inbounds i32 (%struct.IUnknown*)*, i32 (%struct.IUnknown*)** %505, i64 2
  %507 = load i32 (%struct.IUnknown*)*, i32 (%struct.IUnknown*)** %506, align 8
  %508 = call i32 %507(%struct.IUnknown* nonnull dereferenceable(8) %503) #10
  br label %509

509:                                              ; preds = %502, %493
  store %struct.halide_d3d12compute_command_queue* null, %struct.halide_d3d12compute_command_queue** @"?queue@D3D12Compute@Internal@Runtime@Halide@@3PEAUhalide_d3d12compute_command_queue@@EA", align 8, !tbaa !49
  br label %510

510:                                              ; preds = %509, %490
  %511 = load %struct.ID3D12RootSignature*, %struct.ID3D12RootSignature** @"?rootSignature@D3D12Compute@Internal@Runtime@Halide@@3PEAUID3D12RootSignature@@EA", align 8, !tbaa !49
  %512 = icmp eq %struct.ID3D12RootSignature* %511, null
  br i1 %512, label %520, label %513

513:                                              ; preds = %510
  %514 = getelementptr %struct.ID3D12RootSignature, %struct.ID3D12RootSignature* %511, i64 0, i32 0, i32 0, i32 0
  %515 = bitcast %struct.ID3D12RootSignature* %511 to i32 (%struct.IUnknown*)***
  %516 = load i32 (%struct.IUnknown*)**, i32 (%struct.IUnknown*)*** %515, align 8, !tbaa !50
  %517 = getelementptr inbounds i32 (%struct.IUnknown*)*, i32 (%struct.IUnknown*)** %516, i64 2
  %518 = load i32 (%struct.IUnknown*)*, i32 (%struct.IUnknown*)** %517, align 8
  %519 = call i32 %518(%struct.IUnknown* nonnull dereferenceable(8) %514) #10
  store %struct.ID3D12RootSignature* null, %struct.ID3D12RootSignature** @"?rootSignature@D3D12Compute@Internal@Runtime@Halide@@3PEAUID3D12RootSignature@@EA", align 8, !tbaa !49
  br label %520

520:                                              ; preds = %513, %510
  %521 = load %struct.halide_d3d12compute_device*, %struct.halide_d3d12compute_device** @"?device@D3D12Compute@Internal@Runtime@Halide@@3PEAUhalide_d3d12compute_device@@EA", align 8, !tbaa !49
  %522 = icmp eq %struct.halide_d3d12compute_device* %521, null
  br i1 %522, label %546, label %523

523:                                              ; preds = %520
  %524 = bitcast %struct.halide_d3d12compute_device* %521 to %struct.IUnknown*
  %525 = bitcast %struct.halide_d3d12compute_device* %521 to i32 (%struct.IUnknown*)***
  %526 = load i32 (%struct.IUnknown*)**, i32 (%struct.IUnknown*)*** %525, align 8, !tbaa !50
  %527 = getelementptr inbounds i32 (%struct.IUnknown*)*, i32 (%struct.IUnknown*)** %526, i64 2
  %528 = load i32 (%struct.IUnknown*)*, i32 (%struct.IUnknown*)** %527, align 8
  %529 = call i32 %528(%struct.IUnknown* nonnull dereferenceable(8) %524) #10
  %530 = load %struct.IDXGIAdapter1*, %struct.IDXGIAdapter1** @"?dxgiAdapter@D3D12Compute@Internal@Runtime@Halide@@3PEAUIDXGIAdapter1@@EA", align 8, !tbaa !49
  %531 = icmp eq %struct.IDXGIAdapter1* %530, null
  br i1 %531, label %539, label %532

532:                                              ; preds = %523
  %533 = getelementptr %struct.IDXGIAdapter1, %struct.IDXGIAdapter1* %530, i64 0, i32 0, i32 0, i32 0
  %534 = bitcast %struct.IDXGIAdapter1* %530 to i32 (%struct.IUnknown*)***
  %535 = load i32 (%struct.IUnknown*)**, i32 (%struct.IUnknown*)*** %534, align 8, !tbaa !50
  %536 = getelementptr inbounds i32 (%struct.IUnknown*)*, i32 (%struct.IUnknown*)** %535, i64 2
  %537 = load i32 (%struct.IUnknown*)*, i32 (%struct.IUnknown*)** %536, align 8
  %538 = call i32 %537(%struct.IUnknown* nonnull dereferenceable(8) %533) #10
  br label %539

539:                                              ; preds = %532, %523
  store %struct.IDXGIAdapter1* null, %struct.IDXGIAdapter1** @"?dxgiAdapter@D3D12Compute@Internal@Runtime@Halide@@3PEAUIDXGIAdapter1@@EA", align 8, !tbaa !49
  store %struct.halide_d3d12compute_device* null, %struct.halide_d3d12compute_device** @"?device@D3D12Compute@Internal@Runtime@Halide@@3PEAUhalide_d3d12compute_device@@EA", align 8, !tbaa !49
  br label %546

540:                                              ; preds = %478, %481
  %541 = bitcast %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %17 to i8*
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %541) #12
  %542 = load %struct.halide_d3d12compute_device*, %struct.halide_d3d12compute_device** @"?device@D3D12Compute@Internal@Runtime@Halide@@3PEAUhalide_d3d12compute_device@@EA", align 8, !tbaa !49
  call void @"?new_upload_buffer@D3D12Compute@Internal@Runtime@Halide@@YA?AUd3d12_buffer@1234@PEAUhalide_d3d12compute_device@@_K@Z"(%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* nonnull sret(%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer") align 8 %17, %struct.halide_d3d12compute_device* %542, i64 4194304) #10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 bitcast (%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* @"?upload@D3D12Compute@Internal@Runtime@Halide@@3Ud3d12_buffer@1234@A" to i8*), i8* nonnull align 8 %541, i64 96, i1 true) #12, !tbaa.struct !119
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %541) #12
  %543 = bitcast %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %18 to i8*
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %543) #12
  %544 = load %struct.halide_d3d12compute_device*, %struct.halide_d3d12compute_device** @"?device@D3D12Compute@Internal@Runtime@Halide@@3PEAUhalide_d3d12compute_device@@EA", align 8, !tbaa !49
  call void @"?new_readback_buffer@D3D12Compute@Internal@Runtime@Halide@@YA?AUd3d12_buffer@1234@PEAUhalide_d3d12compute_device@@_K@Z"(%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* nonnull sret(%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer") align 8 %18, %struct.halide_d3d12compute_device* %544, i64 4194304) #10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 bitcast (%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* @"?readback@D3D12Compute@Internal@Runtime@Halide@@3Ud3d12_buffer@1234@A" to i8*), i8* nonnull align 8 %543, i64 96, i1 true) #12, !tbaa.struct !119
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %543) #12
  %545 = load %struct.halide_d3d12compute_device*, %struct.halide_d3d12compute_device** @"?device@D3D12Compute@Internal@Runtime@Halide@@3PEAUhalide_d3d12compute_device@@EA", align 8, !tbaa !49
  br label %548

546:                                              ; preds = %520, %539
  %547 = call i32 @halide_d3d12compute_release_context(i8* %0) #11
  br label %559

548:                                              ; preds = %540, %23
  %549 = phi %struct.halide_d3d12compute_device* [ %545, %540 ], [ %24, %23 ]
  %550 = icmp eq %struct.halide_d3d12compute_device* %549, null
  %551 = load %struct.halide_d3d12compute_command_queue*, %struct.halide_d3d12compute_command_queue** @"?queue@D3D12Compute@Internal@Runtime@Halide@@3PEAUhalide_d3d12compute_command_queue@@EA", align 8
  %552 = icmp ne %struct.halide_d3d12compute_command_queue* %551, null
  %553 = or i1 %550, %552
  br i1 %553, label %556, label %554

554:                                              ; preds = %548
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([142 x i8], [142 x i8]* @"??_C@_0IO@KLEIPOMC@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  call void @abort() #10
  %555 = load %struct.halide_d3d12compute_device*, %struct.halide_d3d12compute_device** @"?device@D3D12Compute@Internal@Runtime@Halide@@3PEAUhalide_d3d12compute_device@@EA", align 8, !tbaa !49
  br label %556

556:                                              ; preds = %548, %554
  %557 = phi %struct.halide_d3d12compute_device* [ %549, %548 ], [ %555, %554 ]
  store %struct.halide_d3d12compute_device* %557, %struct.halide_d3d12compute_device** %1, align 8, !tbaa !49
  %558 = load %struct.halide_d3d12compute_command_queue*, %struct.halide_d3d12compute_command_queue** @"?queue@D3D12Compute@Internal@Runtime@Halide@@3PEAUhalide_d3d12compute_command_queue@@EA", align 8, !tbaa !49
  store %struct.halide_d3d12compute_command_queue* %558, %struct.halide_d3d12compute_command_queue** %2, align 8, !tbaa !49
  br label %559

559:                                              ; preds = %546, %556
  %560 = phi i32 [ 0, %556 ], [ -1, %546 ]
  ret i32 %560
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local void @"?restore@D3D12ContextHolder@D3D12Compute@Internal@Runtime@Halide@@AEAAXXZ"(%"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder"* nonnull dereferenceable(32) %0) local_unnamed_addr #5 align 2 {
  %2 = getelementptr inbounds %"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder", %"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder"* %0, i64 0, i32 0
  %3 = load i8*, i8** %2, align 8, !tbaa !146
  %4 = tail call i32 @halide_d3d12compute_release_context(i8* %3) #11
  ret void
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 @halide_d3d12compute_release_context(i8* %0) local_unnamed_addr #5 {
  store atomic volatile i8 0, i8* @"?thread_lock@D3D12Compute@Internal@Runtime@Halide@@3DC" release, align 1
  ret i32 0
}

; Function Attrs: nounwind
define weak dso_local %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_library"* @"?compile_kernel@D3D12Compute@Internal@Runtime@Halide@@YAPEAUd3d12_library@1234@PEAUhalide_d3d12compute_device@@PEBDHPEAH@Z"(%struct.halide_d3d12compute_device* %0, i8* %1, i32 %2, i32* %3) #4 {
  %5 = sext i32 %2 to i64
  %6 = shl nsw i64 %5, 32
  %7 = add i64 %6, 9174050144256
  %8 = ashr exact i64 %7, 32
  %9 = tail call i8* @malloc(i64 %8) #10
  %10 = bitcast i8* %9 to %"struct.Halide::Runtime::Internal::THashMap"*
  %11 = getelementptr inbounds i8, i8* %9, i64 2120
  store i8 0, i8* %11, align 8, !tbaa !154
  %12 = tail call i8* @memset(i8* nonnull %9, i32 0, i64 8) #10
  %13 = load i8, i8* %11, align 8, !tbaa !154, !range !48
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @"??_C@_0GE@IILGOCND@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  tail call void @abort() #10
  br label %16

16:                                               ; preds = %15, %4
  %17 = getelementptr inbounds i8, i8* %9, i64 2056
  %18 = bitcast i8* %17 to <2 x %"struct.Halide::Runtime::Internal::CacheEntry"*>*
  store <2 x %"struct.Halide::Runtime::Internal::CacheEntry"*> zeroinitializer, <2 x %"struct.Halide::Runtime::Internal::CacheEntry"*>* %18, align 8, !tbaa !49
  %19 = getelementptr inbounds i8, i8* %9, i64 2072
  %20 = bitcast i8* %19 to <2 x i64>*
  store <2 x i64> <i64 1048576, i64 1048576>, <2 x i64>* %20, align 8, !tbaa !6
  %21 = getelementptr inbounds i8, i8* %9, i64 2088
  %22 = bitcast i8* %21 to i64*
  store i64 0, i64* %22, align 8, !tbaa !157
  br label %23

23:                                               ; preds = %23, %16
  %24 = phi i64 [ 0, %16 ], [ %26, %23 ]
  %25 = getelementptr inbounds %"struct.Halide::Runtime::Internal::THashMap", %"struct.Halide::Runtime::Internal::THashMap"* %10, i64 0, i32 0, i32 1, i64 %24
  store %"struct.Halide::Runtime::Internal::CacheEntry"* null, %"struct.Halide::Runtime::Internal::CacheEntry"** %25, align 8, !tbaa !49
  %26 = add nuw nsw i64 %24, 1
  %27 = icmp eq i64 %26, 256
  br i1 %27, label %28, label %23, !llvm.loop !158

28:                                               ; preds = %23
  %29 = getelementptr inbounds i8, i8* %9, i64 2096
  %30 = bitcast i8* %29 to void (i8*, i8*, i64)**
  store void (i8*, i8*, i64)* @"?copy_value_func@?$THashMap@PEADPEAUd3d12_function@D3D12Compute@Internal@Runtime@Halide@@@Internal@Runtime@Halide@@SAXPEAEPEBE_K@Z", void (i8*, i8*, i64)** %30, align 8, !tbaa !159
  %31 = getelementptr inbounds i8, i8* %9, i64 2104
  %32 = bitcast i8* %31 to void (i8*, i64)**
  store void (i8*, i64)* @"?destroy_value_func@?$THashMap@PEADPEAUd3d12_function@D3D12Compute@Internal@Runtime@Halide@@@Internal@Runtime@Halide@@SAXPEAE_K@Z", void (i8*, i64)** %32, align 8, !tbaa !160
  store i8 1, i8* %11, align 8, !tbaa !154
  %33 = getelementptr inbounds i8, i8* %9, i64 2112
  %34 = bitcast i8* %33 to i8**
  store i8* null, i8** %34, align 8, !tbaa !161
  %35 = getelementptr inbounds i8, i8* %9, i64 2128
  %36 = bitcast i8* %35 to i32*
  store i32 %2, i32* %36, align 8, !tbaa !162
  %37 = icmp eq i32 %2, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %28
  %39 = getelementptr inbounds i8, i8* %9, i64 2132
  br label %40

40:                                               ; preds = %40, %38
  %41 = phi i64 [ 0, %38 ], [ %45, %40 ]
  %42 = getelementptr inbounds i8, i8* %1, i64 %41
  %43 = load i8, i8* %42, align 1, !tbaa !40
  %44 = getelementptr inbounds i8, i8* %39, i64 %41
  store i8 %43, i8* %44, align 1, !tbaa !40
  %45 = add nuw i64 %41, 1
  %46 = icmp eq i64 %45, %5
  br i1 %46, label %47, label %40, !llvm.loop !165

47:                                               ; preds = %40, %28
  %48 = bitcast i8* %9 to %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_library"*
  %49 = getelementptr inbounds i8, i8* %9, i64 2132
  %50 = getelementptr inbounds i8, i8* %49, i64 %5
  store i8 0, i8* %50, align 1, !tbaa !40
  ret %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_library"* %48
}

declare extern_weak i32 @halide_start_clock(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
define weak dso_local i32 @halide_d3d12compute_device_malloc(i8* %0, %struct.halide_buffer_t* %1) #4 {
  %3 = alloca %"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder", align 8
  %4 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  %5 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  %6 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %7 = load i64, i64* %6, align 8, !tbaa !25
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %226

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 5
  %11 = load i32, i32* %10, align 4, !tbaa !27
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 1
  %15 = load i8, i8* %14, align 1, !tbaa !26
  br label %59

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 6
  %18 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %17, align 8, !tbaa !28
  %19 = zext i32 %11 to i64
  br label %20

20:                                               ; preds = %34, %16
  %21 = phi i64 [ 0, %16 ], [ %36, %34 ]
  %22 = phi i64 [ 0, %16 ], [ %35, %34 ]
  %23 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %18, i64 %21, i32 2
  %24 = load i32, i32* %23, align 4, !tbaa !29
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %20
  %27 = zext i32 %24 to i64
  %28 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %18, i64 %21, i32 1
  %29 = load i32, i32* %28, align 4, !tbaa !34
  %30 = add nsw i32 %29, -1
  %31 = sext i32 %30 to i64
  %32 = mul nsw i64 %31, %27
  %33 = add nsw i64 %32, %22
  br label %34

34:                                               ; preds = %26, %20
  %35 = phi i64 [ %33, %26 ], [ %22, %20 ]
  %36 = add nuw nsw i64 %21, 1
  %37 = icmp eq i64 %36, %19
  br i1 %37, label %38, label %20, !llvm.loop !61

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 1
  %40 = load i8, i8* %39, align 1, !tbaa !26
  br label %41

41:                                               ; preds = %55, %38
  %42 = phi i64 [ 0, %38 ], [ %57, %55 ]
  %43 = phi i64 [ 0, %38 ], [ %56, %55 ]
  %44 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %18, i64 %42, i32 2
  %45 = load i32, i32* %44, align 4, !tbaa !29
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %41
  %48 = sext i32 %45 to i64
  %49 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %18, i64 %42, i32 1
  %50 = load i32, i32* %49, align 4, !tbaa !34
  %51 = add nsw i32 %50, -1
  %52 = sext i32 %51 to i64
  %53 = mul nsw i64 %52, %48
  %54 = add nsw i64 %53, %43
  br label %55

55:                                               ; preds = %47, %41
  %56 = phi i64 [ %54, %47 ], [ %43, %41 ]
  %57 = add nuw nsw i64 %42, 1
  %58 = icmp eq i64 %57, %19
  br i1 %58, label %59, label %41, !llvm.loop !62

59:                                               ; preds = %55, %13
  %60 = phi i8 [ %15, %13 ], [ %40, %55 ]
  %61 = phi i64 [ 0, %13 ], [ %35, %55 ]
  %62 = phi i64 [ 0, %13 ], [ %56, %55 ]
  %63 = zext i8 %60 to i64
  %64 = add nuw nsw i64 %63, 7
  %65 = lshr i64 %64, 3
  %66 = add nsw i64 %61, 1
  %67 = sub i64 %66, %62
  %68 = mul i64 %67, %65
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %59
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @"??_C@_0GN@EDMIPHNF@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  tail call void @abort() #10
  %71 = load i32, i32* %10, align 4, !tbaa !27
  br label %72

72:                                               ; preds = %70, %59
  %73 = phi i32 [ %71, %70 ], [ %11, %59 ]
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 6
  br label %116

77:                                               ; preds = %125, %72
  %78 = tail call i1 @halide_can_reuse_device_allocations(i8* %0) #10
  %79 = load i8, i8* @"?enable_allocation_cache@@3_NA", align 1
  %80 = icmp ne i8 %79, 0
  %81 = and i1 %78, %80
  br i1 %81, label %82, label %110

82:                                               ; preds = %77
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull @"?buffer_pool_lock@@3Uhalide_mutex@@A") #10
  br label %85

83:                                               ; preds = %101
  %84 = icmp eq %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %102, null
  br i1 %84, label %109, label %107

85:                                               ; preds = %101, %82
  %86 = phi i64 [ 0, %82 ], [ %105, %101 ]
  %87 = phi i64 [ 0, %82 ], [ %104, %101 ]
  %88 = phi i64 [ -1, %82 ], [ %103, %101 ]
  %89 = phi %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* [ null, %82 ], [ %102, %101 ]
  %90 = getelementptr inbounds [32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*], [32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*]* @"?buffer_pool@@3PAPEAUd3d12_buffer@D3D12Compute@Internal@Runtime@Halide@@A", i64 0, i64 %86
  %91 = load %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"** %90, align 8, !tbaa !49
  %92 = icmp eq %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %91, null
  br i1 %92, label %101, label %93

93:                                               ; preds = %85
  %94 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %91, i64 0, i32 1
  %95 = load i32, i32* %94, align 8, !tbaa !109
  %96 = zext i32 %95 to i64
  %97 = icmp ugt i64 %68, %96
  %98 = icmp ult i64 %88, %96
  %99 = or i1 %97, %98
  br i1 %99, label %101, label %100

100:                                              ; preds = %93
  br label %101

101:                                              ; preds = %100, %93, %85
  %102 = phi %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* [ %89, %85 ], [ %91, %100 ], [ %89, %93 ]
  %103 = phi i64 [ %88, %85 ], [ %96, %100 ], [ %88, %93 ]
  %104 = phi i64 [ %87, %85 ], [ %86, %100 ], [ %87, %93 ]
  %105 = add nuw nsw i64 %86, 1
  %106 = icmp eq i64 %105, 32
  br i1 %106, label %83, label %85, !llvm.loop !166

107:                                              ; preds = %83
  %108 = getelementptr inbounds [32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*], [32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*]* @"?buffer_pool@@3PAPEAUd3d12_buffer@D3D12Compute@Internal@Runtime@Halide@@A", i64 0, i64 %104
  store %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* null, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"** %108, align 8, !tbaa !49
  br label %109

109:                                              ; preds = %107, %83
  tail call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @"?buffer_pool_lock@@3Uhalide_mutex@@A") #10
  br label %110

110:                                              ; preds = %77, %109
  %111 = phi %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* [ %102, %109 ], [ null, %77 ]
  %112 = bitcast %"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder"* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %112) #12
  call void @"?save@D3D12ContextHolder@D3D12Compute@Internal@Runtime@Halide@@AEAAXPEAX_N@Z"(%"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder"* nonnull dereferenceable(32) %3, i8* %0, i1 true) #10
  %113 = getelementptr inbounds %"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder", %"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder"* %3, i64 0, i32 3
  %114 = load i32, i32* %113, align 8, !tbaa !148
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %130, label %224

116:                                              ; preds = %75, %125
  %117 = phi i32 [ %73, %75 ], [ %126, %125 ]
  %118 = phi i64 [ 0, %75 ], [ %127, %125 ]
  %119 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %76, align 8, !tbaa !28
  %120 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %119, i64 %118, i32 2
  %121 = load i32, i32* %120, align 4, !tbaa !29
  %122 = icmp sgt i32 %121, -1
  br i1 %122, label %125, label %123

123:                                              ; preds = %116
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([124 x i8], [124 x i8]* @"??_C@_0HM@KLNKIJPM@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  tail call void @abort() #10
  %124 = load i32, i32* %10, align 4, !tbaa !27
  br label %125

125:                                              ; preds = %116, %123
  %126 = phi i32 [ %117, %116 ], [ %124, %123 ]
  %127 = add nuw nsw i64 %118, 1
  %128 = sext i32 %126 to i64
  %129 = icmp slt i64 %127, %128
  br i1 %129, label %116, label %77, !llvm.loop !167

130:                                              ; preds = %110
  %131 = icmp eq %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %111, null
  br i1 %131, label %132, label %179

132:                                              ; preds = %130
  %133 = getelementptr inbounds %"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder", %"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder"* %3, i64 0, i32 1
  %134 = load %struct.halide_d3d12compute_device*, %struct.halide_d3d12compute_device** %133, align 8, !tbaa !168
  %135 = call %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* @"?new_buffer@D3D12Compute@Internal@Runtime@Halide@@YAPEAUd3d12_buffer@1234@PEAUhalide_d3d12compute_device@@_K@Z"(%struct.halide_d3d12compute_device* %134, i64 %68) #11
  %136 = icmp eq %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %135, null
  br i1 %136, label %137, label %179

137:                                              ; preds = %132
  %138 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %138) #12
  %139 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i64 0, i32 3
  store i8* null, i8** %139, align 8, !tbaa !41
  %140 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i64 0, i32 4
  store i8 1, i8* %140, align 8, !tbaa !44
  %141 = call i8* @malloc(i64 1024) #10
  %142 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i64 0, i32 0
  store i8* %141, i8** %142, align 8, !tbaa !45
  %143 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i64 0, i32 1
  store i8* %141, i8** %143, align 8, !tbaa !46
  %144 = icmp eq i8* %141, null
  br i1 %144, label %147, label %145

145:                                              ; preds = %137
  %146 = getelementptr inbounds i8, i8* %141, i64 1023
  store i8 0, i8* %146, align 1, !tbaa !40
  br label %147

147:                                              ; preds = %137, %145
  %148 = phi i8* [ %146, %145 ], [ null, %137 ]
  %149 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i64 0, i32 2
  store i8* %148, i8** %149, align 8
  %150 = call i8* @halide_string_to_string(i8* %141, i8* %148, i8* nonnull getelementptr inbounds ([42 x i8], [42 x i8]* @"??_C@_0CK@IEEBLAKI@D3D12?3?5Failed?5to?5allocate?5buffer@", i64 0, i64 0)) #10
  store i8* %150, i8** %143, align 8, !tbaa !46
  %151 = call i8* @halide_int64_to_string(i8* %150, i8* %148, i64 %68, i32 1) #10
  store i8* %151, i8** %143, align 8, !tbaa !46
  %152 = call i8* @halide_string_to_string(i8* %151, i8* %148, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #10
  store i8* %152, i8** %143, align 8, !tbaa !46
  %153 = call i8* @halide_string_to_string(i8* %152, i8* %148, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @"??_C@_0CE@MGMMPJGA@vvvvv?5D3D12?5Begin?5Debug?5Dump?5vvv@", i64 0, i64 0)) #10
  store i8* %153, i8** %143, align 8, !tbaa !46
  call fastcc void @"?d3d12_debug_dump@@YAXAEAV?$Printer@$00$0EAA@@?A0x2B71E647@Internal@Runtime@Halide@@@Z"(%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* nonnull align 8 dereferenceable(40) %4) #11
  %154 = load i8*, i8** %149, align 8, !tbaa !47
  %155 = load i8*, i8** %143, align 8, !tbaa !46
  %156 = call i8* @halide_string_to_string(i8* %155, i8* %154, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @"??_C@_0CE@PCPJBLP@?$FO?$FO?$FO?$FO?$FO?5D3D12?5?5End?5?5Debug?5Dump?5?$FO?$FO?$FO@", i64 0, i64 0)) #10
  store i8* %156, i8** %143, align 8, !tbaa !46
  %157 = call i8* @halide_string_to_string(i8* %156, i8* %154, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @"??_C@_0BA@FGKOLOB@D3D12?5HALT?5?$CB?$CB?$CB?6?$AA@", i64 0, i64 0)) #10
  store i8* %157, i8** %143, align 8, !tbaa !46
  %158 = load i8*, i8** %142, align 8, !tbaa !45
  %159 = icmp eq i8* %158, null
  %160 = load i8*, i8** %139, align 8, !tbaa !41
  br i1 %159, label %161, label %162

161:                                              ; preds = %147
  call void @halide_error(i8* %160, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #10
  br label %170

162:                                              ; preds = %147
  %163 = ptrtoint i8* %157 to i64
  %164 = ptrtoint i8* %158 to i64
  %165 = add i64 %163, 1
  %166 = sub i64 %165, %164
  %167 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %160, i8* nonnull %158, i64 %166) #10
  %168 = load i8*, i8** %142, align 8, !tbaa !45
  %169 = load i8*, i8** %139, align 8, !tbaa !41
  call void @halide_error(i8* %169, i8* %168) #10
  br label %170

170:                                              ; preds = %162, %161
  %171 = load i8, i8* %140, align 8, !tbaa !44, !range !48
  %172 = icmp eq i8 %171, 0
  br i1 %172, label %178, label %173

173:                                              ; preds = %170
  %174 = load i8*, i8** %142, align 8, !tbaa !45
  %175 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i64 0, i32 5, i64 0
  %176 = icmp eq i8* %174, %175
  br i1 %176, label %178, label %177

177:                                              ; preds = %173
  call void @free(i8* %174) #10
  br label %178

178:                                              ; preds = %170, %173, %177
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %138) #12
  br label %224

179:                                              ; preds = %130, %132
  %180 = phi %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* [ %135, %132 ], [ %111, %130 ]
  %181 = call i32 @"?wrap_buffer@D3D12Compute@Internal@Runtime@Halide@@YAHPEAXPEAUhalide_buffer_t@@PEAUd3d12_buffer@1234@@Z"(i8* %0, %struct.halide_buffer_t* nonnull %1, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* nonnull %180) #11
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %224, label %183

183:                                              ; preds = %179
  %184 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %184) #12
  %185 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i64 0, i32 3
  store i8* null, i8** %185, align 8, !tbaa !41
  %186 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i64 0, i32 4
  store i8 1, i8* %186, align 8, !tbaa !44
  %187 = call i8* @malloc(i64 1024) #10
  %188 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i64 0, i32 0
  store i8* %187, i8** %188, align 8, !tbaa !45
  %189 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i64 0, i32 1
  store i8* %187, i8** %189, align 8, !tbaa !46
  %190 = icmp eq i8* %187, null
  br i1 %190, label %193, label %191

191:                                              ; preds = %183
  %192 = getelementptr inbounds i8, i8* %187, i64 1023
  store i8 0, i8* %192, align 1, !tbaa !40
  br label %193

193:                                              ; preds = %183, %191
  %194 = phi i8* [ %192, %191 ], [ null, %183 ]
  %195 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i64 0, i32 2
  store i8* %194, i8** %195, align 8
  %196 = call i8* @halide_string_to_string(i8* %187, i8* %194, i8* nonnull getelementptr inbounds ([54 x i8], [54 x i8]* @"??_C@_0DG@DFIKFHFI@D3D12?3?5unable?5to?5wrap?5halide?5buf@", i64 0, i64 0)) #10
  store i8* %196, i8** %189, align 8, !tbaa !46
  %197 = call i8* @halide_string_to_string(i8* %196, i8* %194, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #10
  store i8* %197, i8** %189, align 8, !tbaa !46
  %198 = call i8* @halide_string_to_string(i8* %197, i8* %194, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @"??_C@_0CE@MGMMPJGA@vvvvv?5D3D12?5Begin?5Debug?5Dump?5vvv@", i64 0, i64 0)) #10
  store i8* %198, i8** %189, align 8, !tbaa !46
  call fastcc void @"?d3d12_debug_dump@@YAXAEAV?$Printer@$00$0EAA@@?A0x2B71E647@Internal@Runtime@Halide@@@Z"(%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* nonnull align 8 dereferenceable(40) %5) #11
  %199 = load i8*, i8** %195, align 8, !tbaa !47
  %200 = load i8*, i8** %189, align 8, !tbaa !46
  %201 = call i8* @halide_string_to_string(i8* %200, i8* %199, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @"??_C@_0CE@PCPJBLP@?$FO?$FO?$FO?$FO?$FO?5D3D12?5?5End?5?5Debug?5Dump?5?$FO?$FO?$FO@", i64 0, i64 0)) #10
  store i8* %201, i8** %189, align 8, !tbaa !46
  %202 = call i8* @halide_string_to_string(i8* %201, i8* %199, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @"??_C@_0BA@FGKOLOB@D3D12?5HALT?5?$CB?$CB?$CB?6?$AA@", i64 0, i64 0)) #10
  store i8* %202, i8** %189, align 8, !tbaa !46
  %203 = load i8*, i8** %188, align 8, !tbaa !45
  %204 = icmp eq i8* %203, null
  %205 = load i8*, i8** %185, align 8, !tbaa !41
  br i1 %204, label %206, label %207

206:                                              ; preds = %193
  call void @halide_error(i8* %205, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #10
  br label %215

207:                                              ; preds = %193
  %208 = ptrtoint i8* %202 to i64
  %209 = ptrtoint i8* %203 to i64
  %210 = add i64 %208, 1
  %211 = sub i64 %210, %209
  %212 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %205, i8* nonnull %203, i64 %211) #10
  %213 = load i8*, i8** %188, align 8, !tbaa !45
  %214 = load i8*, i8** %185, align 8, !tbaa !41
  call void @halide_error(i8* %214, i8* %213) #10
  br label %215

215:                                              ; preds = %207, %206
  %216 = load i8, i8* %186, align 8, !tbaa !44, !range !48
  %217 = icmp eq i8 %216, 0
  br i1 %217, label %223, label %218

218:                                              ; preds = %215
  %219 = load i8*, i8** %188, align 8, !tbaa !45
  %220 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i64 0, i32 5, i64 0
  %221 = icmp eq i8* %219, %220
  br i1 %221, label %223, label %222

222:                                              ; preds = %218
  call void @free(i8* %219) #10
  br label %223

223:                                              ; preds = %215, %218, %222
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %184) #12
  br label %224

224:                                              ; preds = %179, %110, %223, %178
  %225 = phi i32 [ -16, %178 ], [ -32, %223 ], [ %114, %110 ], [ 0, %179 ]
  call void @"?restore@D3D12ContextHolder@D3D12Compute@Internal@Runtime@Halide@@AEAAXXZ"(%"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder"* nonnull dereferenceable(32) %3) #10
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %112) #12
  br label %226

226:                                              ; preds = %2, %224
  %227 = phi i32 [ %225, %224 ], [ 0, %2 ]
  ret i32 %227
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_d3d12compute_device_free(i8* %0, %struct.halide_buffer_t* %1) #4 {
  %3 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %4 = load i64, i64* %3, align 8, !tbaa !25
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %146, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  %8 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %7, align 8, !tbaa !70
  %9 = icmp eq %struct.halide_device_interface_t* %8, @"?d3d12compute_device_interface@D3D12Compute@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A"
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([161 x i8], [161 x i8]* @"??_C@_0KB@NININJGE@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  tail call void @abort() #10
  %11 = load i64, i64* %3, align 8, !tbaa !25
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @"??_C@_0HI@MFPPBOBE@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  tail call void @abort() #10
  br label %14

14:                                               ; preds = %6, %10, %13
  %15 = phi i64 [ %11, %10 ], [ 0, %13 ], [ %4, %6 ]
  %16 = inttoptr i64 %15 to %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*
  %17 = tail call i1 @halide_can_reuse_device_allocations(i8* %0) #10
  %18 = load i8, i8* @"?enable_allocation_cache@@3_NA", align 1
  %19 = icmp ne i8 %18, 0
  %20 = and i1 %17, %19
  br i1 %20, label %21, label %121

21:                                               ; preds = %14
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull @"?buffer_pool_lock@@3Uhalide_mutex@@A") #10
  %22 = load %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"** getelementptr inbounds ([32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*], [32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*]* @"?buffer_pool@@3PAPEAUd3d12_buffer@D3D12Compute@Internal@Runtime@Halide@@A", i64 0, i64 0), align 16, !tbaa !49
  %23 = icmp eq %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"** getelementptr inbounds ([32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*], [32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*]* @"?buffer_pool@@3PAPEAUd3d12_buffer@D3D12Compute@Internal@Runtime@Halide@@A", i64 0, i64 1), align 8, !tbaa !49
  %26 = icmp eq %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %117, %114, %111, %108, %105, %102, %99, %96, %93, %90, %87, %84, %81, %78, %75, %72, %69, %66, %63, %60, %57, %54, %51, %48, %45, %42, %39, %36, %33, %30, %24, %21
  %28 = phi %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"** [ getelementptr inbounds ([32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*], [32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*]* @"?buffer_pool@@3PAPEAUd3d12_buffer@D3D12Compute@Internal@Runtime@Halide@@A", i64 0, i64 0), %21 ], [ getelementptr inbounds ([32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*], [32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*]* @"?buffer_pool@@3PAPEAUd3d12_buffer@D3D12Compute@Internal@Runtime@Halide@@A", i64 0, i64 1), %24 ], [ getelementptr inbounds ([32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*], [32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*]* @"?buffer_pool@@3PAPEAUd3d12_buffer@D3D12Compute@Internal@Runtime@Halide@@A", i64 0, i64 2), %30 ], [ getelementptr inbounds ([32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*], [32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*]* @"?buffer_pool@@3PAPEAUd3d12_buffer@D3D12Compute@Internal@Runtime@Halide@@A", i64 0, i64 3), %33 ], [ getelementptr inbounds ([32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*], [32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*]* @"?buffer_pool@@3PAPEAUd3d12_buffer@D3D12Compute@Internal@Runtime@Halide@@A", i64 0, i64 4), %36 ], [ getelementptr inbounds ([32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*], [32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*]* @"?buffer_pool@@3PAPEAUd3d12_buffer@D3D12Compute@Internal@Runtime@Halide@@A", i64 0, i64 5), %39 ], [ getelementptr inbounds ([32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*], [32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*]* @"?buffer_pool@@3PAPEAUd3d12_buffer@D3D12Compute@Internal@Runtime@Halide@@A", i64 0, i64 6), %42 ], [ getelementptr inbounds ([32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*], [32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*]* @"?buffer_pool@@3PAPEAUd3d12_buffer@D3D12Compute@Internal@Runtime@Halide@@A", i64 0, i64 7), %45 ], [ getelementptr inbounds ([32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*], [32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*]* @"?buffer_pool@@3PAPEAUd3d12_buffer@D3D12Compute@Internal@Runtime@Halide@@A", i64 0, i64 8), %48 ], [ getelementptr inbounds ([32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*], [32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*]* @"?buffer_pool@@3PAPEAUd3d12_buffer@D3D12Compute@Internal@Runtime@Halide@@A", i64 0, i64 9), %51 ], [ getelementptr inbounds ([32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*], [32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*]* @"?buffer_pool@@3PAPEAUd3d12_buffer@D3D12Compute@Internal@Runtime@Halide@@A", i64 0, i64 10), %54 ], [ getelementptr inbounds ([32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*], [32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*]* @"?buffer_pool@@3PAPEAUd3d12_buffer@D3D12Compute@Internal@Runtime@Halide@@A", i64 0, i64 11), %57 ], [ getelementptr inbounds ([32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*], [32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*]* @"?buffer_pool@@3PAPEAUd3d12_buffer@D3D12Compute@Internal@Runtime@Halide@@A", i64 0, i64 12), %60 ], [ getelementptr inbounds ([32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*], [32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*]* @"?buffer_pool@@3PAPEAUd3d12_buffer@D3D12Compute@Internal@Runtime@Halide@@A", i64 0, i64 13), %63 ], [ getelementptr inbounds ([32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*], [32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*]* @"?buffer_pool@@3PAPEAUd3d12_buffer@D3D12Compute@Internal@Runtime@Halide@@A", i64 0, i64 14), %66 ], [ getelementptr inbounds ([32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*], [32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*]* @"?buffer_pool@@3PAPEAUd3d12_buffer@D3D12Compute@Internal@Runtime@Halide@@A", i64 0, i64 15), %69 ], [ getelementptr inbounds ([32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*], [32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*]* @"?buffer_pool@@3PAPEAUd3d12_buffer@D3D12Compute@Internal@Runtime@Halide@@A", i64 0, i64 16), %72 ], [ getelementptr inbounds ([32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*], [32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*]* @"?buffer_pool@@3PAPEAUd3d12_buffer@D3D12Compute@Internal@Runtime@Halide@@A", i64 0, i64 17), %75 ], [ getelementptr inbounds ([32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*], [32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*]* @"?buffer_pool@@3PAPEAUd3d12_buffer@D3D12Compute@Internal@Runtime@Halide@@A", i64 0, i64 18), %78 ], [ getelementptr inbounds ([32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*], [32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*]* @"?buffer_pool@@3PAPEAUd3d12_buffer@D3D12Compute@Internal@Runtime@Halide@@A", i64 0, i64 19), %81 ], [ getelementptr inbounds ([32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*], [32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*]* @"?buffer_pool@@3PAPEAUd3d12_buffer@D3D12Compute@Internal@Runtime@Halide@@A", i64 0, i64 20), %84 ], [ getelementptr inbounds ([32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*], [32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*]* @"?buffer_pool@@3PAPEAUd3d12_buffer@D3D12Compute@Internal@Runtime@Halide@@A", i64 0, i64 21), %87 ], [ getelementptr inbounds ([32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*], [32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*]* @"?buffer_pool@@3PAPEAUd3d12_buffer@D3D12Compute@Internal@Runtime@Halide@@A", i64 0, i64 22), %90 ], [ getelementptr inbounds ([32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*], [32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*]* @"?buffer_pool@@3PAPEAUd3d12_buffer@D3D12Compute@Internal@Runtime@Halide@@A", i64 0, i64 23), %93 ], [ getelementptr inbounds ([32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*], [32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*]* @"?buffer_pool@@3PAPEAUd3d12_buffer@D3D12Compute@Internal@Runtime@Halide@@A", i64 0, i64 24), %96 ], [ getelementptr inbounds ([32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*], [32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*]* @"?buffer_pool@@3PAPEAUd3d12_buffer@D3D12Compute@Internal@Runtime@Halide@@A", i64 0, i64 25), %99 ], [ getelementptr inbounds ([32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*], [32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*]* @"?buffer_pool@@3PAPEAUd3d12_buffer@D3D12Compute@Internal@Runtime@Halide@@A", i64 0, i64 26), %102 ], [ getelementptr inbounds ([32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*], [32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*]* @"?buffer_pool@@3PAPEAUd3d12_buffer@D3D12Compute@Internal@Runtime@Halide@@A", i64 0, i64 27), %105 ], [ getelementptr inbounds ([32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*], [32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*]* @"?buffer_pool@@3PAPEAUd3d12_buffer@D3D12Compute@Internal@Runtime@Halide@@A", i64 0, i64 28), %108 ], [ getelementptr inbounds ([32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*], [32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*]* @"?buffer_pool@@3PAPEAUd3d12_buffer@D3D12Compute@Internal@Runtime@Halide@@A", i64 0, i64 29), %111 ], [ getelementptr inbounds ([32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*], [32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*]* @"?buffer_pool@@3PAPEAUd3d12_buffer@D3D12Compute@Internal@Runtime@Halide@@A", i64 0, i64 30), %114 ], [ getelementptr inbounds ([32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*], [32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*]* @"?buffer_pool@@3PAPEAUd3d12_buffer@D3D12Compute@Internal@Runtime@Halide@@A", i64 0, i64 31), %117 ]
  store %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %16, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"** %28, align 8, !tbaa !49
  tail call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @"?buffer_pool_lock@@3Uhalide_mutex@@A") #10
  %29 = tail call i32 @"?unwrap_buffer@D3D12Compute@Internal@Runtime@Halide@@YAHPEAUhalide_buffer_t@@@Z"(%struct.halide_buffer_t* nonnull %1) #11
  br label %146

30:                                               ; preds = %24
  %31 = load %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"** getelementptr inbounds ([32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*], [32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*]* @"?buffer_pool@@3PAPEAUd3d12_buffer@D3D12Compute@Internal@Runtime@Halide@@A", i64 0, i64 2), align 16, !tbaa !49
  %32 = icmp eq %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %31, null
  br i1 %32, label %27, label %33

33:                                               ; preds = %30
  %34 = load %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"** getelementptr inbounds ([32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*], [32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*]* @"?buffer_pool@@3PAPEAUd3d12_buffer@D3D12Compute@Internal@Runtime@Halide@@A", i64 0, i64 3), align 8, !tbaa !49
  %35 = icmp eq %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %34, null
  br i1 %35, label %27, label %36

36:                                               ; preds = %33
  %37 = load %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"** getelementptr inbounds ([32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*], [32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*]* @"?buffer_pool@@3PAPEAUd3d12_buffer@D3D12Compute@Internal@Runtime@Halide@@A", i64 0, i64 4), align 16, !tbaa !49
  %38 = icmp eq %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %37, null
  br i1 %38, label %27, label %39

39:                                               ; preds = %36
  %40 = load %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"** getelementptr inbounds ([32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*], [32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*]* @"?buffer_pool@@3PAPEAUd3d12_buffer@D3D12Compute@Internal@Runtime@Halide@@A", i64 0, i64 5), align 8, !tbaa !49
  %41 = icmp eq %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %40, null
  br i1 %41, label %27, label %42

42:                                               ; preds = %39
  %43 = load %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"** getelementptr inbounds ([32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*], [32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*]* @"?buffer_pool@@3PAPEAUd3d12_buffer@D3D12Compute@Internal@Runtime@Halide@@A", i64 0, i64 6), align 16, !tbaa !49
  %44 = icmp eq %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %43, null
  br i1 %44, label %27, label %45

45:                                               ; preds = %42
  %46 = load %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"** getelementptr inbounds ([32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*], [32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*]* @"?buffer_pool@@3PAPEAUd3d12_buffer@D3D12Compute@Internal@Runtime@Halide@@A", i64 0, i64 7), align 8, !tbaa !49
  %47 = icmp eq %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %46, null
  br i1 %47, label %27, label %48

48:                                               ; preds = %45
  %49 = load %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"** getelementptr inbounds ([32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*], [32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*]* @"?buffer_pool@@3PAPEAUd3d12_buffer@D3D12Compute@Internal@Runtime@Halide@@A", i64 0, i64 8), align 16, !tbaa !49
  %50 = icmp eq %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %49, null
  br i1 %50, label %27, label %51

51:                                               ; preds = %48
  %52 = load %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"** getelementptr inbounds ([32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*], [32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*]* @"?buffer_pool@@3PAPEAUd3d12_buffer@D3D12Compute@Internal@Runtime@Halide@@A", i64 0, i64 9), align 8, !tbaa !49
  %53 = icmp eq %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %52, null
  br i1 %53, label %27, label %54

54:                                               ; preds = %51
  %55 = load %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"** getelementptr inbounds ([32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*], [32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*]* @"?buffer_pool@@3PAPEAUd3d12_buffer@D3D12Compute@Internal@Runtime@Halide@@A", i64 0, i64 10), align 16, !tbaa !49
  %56 = icmp eq %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %55, null
  br i1 %56, label %27, label %57

57:                                               ; preds = %54
  %58 = load %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"** getelementptr inbounds ([32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*], [32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*]* @"?buffer_pool@@3PAPEAUd3d12_buffer@D3D12Compute@Internal@Runtime@Halide@@A", i64 0, i64 11), align 8, !tbaa !49
  %59 = icmp eq %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %58, null
  br i1 %59, label %27, label %60

60:                                               ; preds = %57
  %61 = load %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"** getelementptr inbounds ([32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*], [32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*]* @"?buffer_pool@@3PAPEAUd3d12_buffer@D3D12Compute@Internal@Runtime@Halide@@A", i64 0, i64 12), align 16, !tbaa !49
  %62 = icmp eq %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %61, null
  br i1 %62, label %27, label %63

63:                                               ; preds = %60
  %64 = load %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"** getelementptr inbounds ([32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*], [32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*]* @"?buffer_pool@@3PAPEAUd3d12_buffer@D3D12Compute@Internal@Runtime@Halide@@A", i64 0, i64 13), align 8, !tbaa !49
  %65 = icmp eq %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %64, null
  br i1 %65, label %27, label %66

66:                                               ; preds = %63
  %67 = load %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"** getelementptr inbounds ([32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*], [32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*]* @"?buffer_pool@@3PAPEAUd3d12_buffer@D3D12Compute@Internal@Runtime@Halide@@A", i64 0, i64 14), align 16, !tbaa !49
  %68 = icmp eq %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %67, null
  br i1 %68, label %27, label %69

69:                                               ; preds = %66
  %70 = load %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"** getelementptr inbounds ([32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*], [32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*]* @"?buffer_pool@@3PAPEAUd3d12_buffer@D3D12Compute@Internal@Runtime@Halide@@A", i64 0, i64 15), align 8, !tbaa !49
  %71 = icmp eq %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %70, null
  br i1 %71, label %27, label %72

72:                                               ; preds = %69
  %73 = load %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"** getelementptr inbounds ([32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*], [32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*]* @"?buffer_pool@@3PAPEAUd3d12_buffer@D3D12Compute@Internal@Runtime@Halide@@A", i64 0, i64 16), align 16, !tbaa !49
  %74 = icmp eq %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %73, null
  br i1 %74, label %27, label %75

75:                                               ; preds = %72
  %76 = load %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"** getelementptr inbounds ([32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*], [32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*]* @"?buffer_pool@@3PAPEAUd3d12_buffer@D3D12Compute@Internal@Runtime@Halide@@A", i64 0, i64 17), align 8, !tbaa !49
  %77 = icmp eq %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %76, null
  br i1 %77, label %27, label %78

78:                                               ; preds = %75
  %79 = load %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"** getelementptr inbounds ([32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*], [32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*]* @"?buffer_pool@@3PAPEAUd3d12_buffer@D3D12Compute@Internal@Runtime@Halide@@A", i64 0, i64 18), align 16, !tbaa !49
  %80 = icmp eq %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %79, null
  br i1 %80, label %27, label %81

81:                                               ; preds = %78
  %82 = load %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"** getelementptr inbounds ([32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*], [32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*]* @"?buffer_pool@@3PAPEAUd3d12_buffer@D3D12Compute@Internal@Runtime@Halide@@A", i64 0, i64 19), align 8, !tbaa !49
  %83 = icmp eq %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %82, null
  br i1 %83, label %27, label %84

84:                                               ; preds = %81
  %85 = load %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"** getelementptr inbounds ([32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*], [32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*]* @"?buffer_pool@@3PAPEAUd3d12_buffer@D3D12Compute@Internal@Runtime@Halide@@A", i64 0, i64 20), align 16, !tbaa !49
  %86 = icmp eq %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %85, null
  br i1 %86, label %27, label %87

87:                                               ; preds = %84
  %88 = load %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"** getelementptr inbounds ([32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*], [32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*]* @"?buffer_pool@@3PAPEAUd3d12_buffer@D3D12Compute@Internal@Runtime@Halide@@A", i64 0, i64 21), align 8, !tbaa !49
  %89 = icmp eq %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %88, null
  br i1 %89, label %27, label %90

90:                                               ; preds = %87
  %91 = load %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"** getelementptr inbounds ([32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*], [32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*]* @"?buffer_pool@@3PAPEAUd3d12_buffer@D3D12Compute@Internal@Runtime@Halide@@A", i64 0, i64 22), align 16, !tbaa !49
  %92 = icmp eq %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %91, null
  br i1 %92, label %27, label %93

93:                                               ; preds = %90
  %94 = load %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"** getelementptr inbounds ([32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*], [32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*]* @"?buffer_pool@@3PAPEAUd3d12_buffer@D3D12Compute@Internal@Runtime@Halide@@A", i64 0, i64 23), align 8, !tbaa !49
  %95 = icmp eq %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %94, null
  br i1 %95, label %27, label %96

96:                                               ; preds = %93
  %97 = load %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"** getelementptr inbounds ([32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*], [32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*]* @"?buffer_pool@@3PAPEAUd3d12_buffer@D3D12Compute@Internal@Runtime@Halide@@A", i64 0, i64 24), align 16, !tbaa !49
  %98 = icmp eq %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %97, null
  br i1 %98, label %27, label %99

99:                                               ; preds = %96
  %100 = load %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"** getelementptr inbounds ([32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*], [32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*]* @"?buffer_pool@@3PAPEAUd3d12_buffer@D3D12Compute@Internal@Runtime@Halide@@A", i64 0, i64 25), align 8, !tbaa !49
  %101 = icmp eq %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %100, null
  br i1 %101, label %27, label %102

102:                                              ; preds = %99
  %103 = load %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"** getelementptr inbounds ([32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*], [32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*]* @"?buffer_pool@@3PAPEAUd3d12_buffer@D3D12Compute@Internal@Runtime@Halide@@A", i64 0, i64 26), align 16, !tbaa !49
  %104 = icmp eq %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %103, null
  br i1 %104, label %27, label %105

105:                                              ; preds = %102
  %106 = load %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"** getelementptr inbounds ([32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*], [32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*]* @"?buffer_pool@@3PAPEAUd3d12_buffer@D3D12Compute@Internal@Runtime@Halide@@A", i64 0, i64 27), align 8, !tbaa !49
  %107 = icmp eq %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %106, null
  br i1 %107, label %27, label %108

108:                                              ; preds = %105
  %109 = load %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"** getelementptr inbounds ([32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*], [32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*]* @"?buffer_pool@@3PAPEAUd3d12_buffer@D3D12Compute@Internal@Runtime@Halide@@A", i64 0, i64 28), align 16, !tbaa !49
  %110 = icmp eq %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %109, null
  br i1 %110, label %27, label %111

111:                                              ; preds = %108
  %112 = load %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"** getelementptr inbounds ([32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*], [32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*]* @"?buffer_pool@@3PAPEAUd3d12_buffer@D3D12Compute@Internal@Runtime@Halide@@A", i64 0, i64 29), align 8, !tbaa !49
  %113 = icmp eq %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %112, null
  br i1 %113, label %27, label %114

114:                                              ; preds = %111
  %115 = load %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"** getelementptr inbounds ([32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*], [32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*]* @"?buffer_pool@@3PAPEAUd3d12_buffer@D3D12Compute@Internal@Runtime@Halide@@A", i64 0, i64 30), align 16, !tbaa !49
  %116 = icmp eq %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %115, null
  br i1 %116, label %27, label %117

117:                                              ; preds = %114
  %118 = load %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"** getelementptr inbounds ([32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*], [32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*]* @"?buffer_pool@@3PAPEAUd3d12_buffer@D3D12Compute@Internal@Runtime@Halide@@A", i64 0, i64 31), align 8, !tbaa !49
  %119 = icmp eq %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %118, null
  br i1 %119, label %27, label %120

120:                                              ; preds = %117
  tail call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @"?buffer_pool_lock@@3Uhalide_mutex@@A") #10
  br label %121

121:                                              ; preds = %14, %120
  %122 = tail call i32 @"?unwrap_buffer@D3D12Compute@Internal@Runtime@Halide@@YAHPEAUhalide_buffer_t@@@Z"(%struct.halide_buffer_t* nonnull %1) #11
  %123 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %16, i64 0, i32 15
  %124 = load i64, i64* %123, align 8, !tbaa !114
  tail call fastcc void @"?wait_until_signaled@D3D12Compute@Internal@Runtime@Halide@@YAX_K@Z"(i64 %124) #11
  %125 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %16, i64 0, i32 0
  %126 = load %struct.ID3D12Resource*, %struct.ID3D12Resource** %125, align 8, !tbaa !54
  %127 = icmp eq %struct.ID3D12Resource* %126, null
  br i1 %127, label %135, label %128

128:                                              ; preds = %121
  %129 = getelementptr %struct.ID3D12Resource, %struct.ID3D12Resource* %126, i64 0, i32 0, i32 0, i32 0, i32 0
  %130 = bitcast %struct.ID3D12Resource* %126 to i32 (%struct.IUnknown*)***
  %131 = load i32 (%struct.IUnknown*)**, i32 (%struct.IUnknown*)*** %130, align 8, !tbaa !50
  %132 = getelementptr inbounds i32 (%struct.IUnknown*)*, i32 (%struct.IUnknown*)** %131, i64 2
  %133 = load i32 (%struct.IUnknown*)*, i32 (%struct.IUnknown*)** %132, align 8
  %134 = tail call i32 %133(%struct.IUnknown* nonnull dereferenceable(8) %129) #10
  br label %135

135:                                              ; preds = %128, %121
  %136 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %16, i64 0, i32 12
  %137 = load i8*, i8** %136, align 8, !tbaa !113
  %138 = icmp eq i8* %137, null
  br i1 %138, label %140, label %139

139:                                              ; preds = %135
  tail call void @free(i8* nonnull %137) #10
  br label %140

140:                                              ; preds = %139, %135
  %141 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %16, i64 0, i32 11
  %142 = load i8, i8* %141, align 8, !tbaa !112, !range !48
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %146, label %144

144:                                              ; preds = %140
  %145 = inttoptr i64 %15 to i8*
  tail call void @free(i8* %145) #10
  br label %146

146:                                              ; preds = %27, %144, %140, %2
  ret i32 0
}

; Function Attrs: nounwind
define internal fastcc void @"?wait_until_signaled@D3D12Compute@Internal@Runtime@Halide@@YAX_K@Z"(i64 %0) unnamed_addr #4 {
  %2 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  %3 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  %4 = load %struct.ID3D12Fence*, %struct.ID3D12Fence** @"?queue_fence@D3D12Compute@Internal@Runtime@Halide@@3PEAUID3D12Fence@@EA", align 8, !tbaa !49
  %5 = bitcast %struct.ID3D12Fence* %4 to i64 (%struct.ID3D12Fence*)***
  %6 = load i64 (%struct.ID3D12Fence*)**, i64 (%struct.ID3D12Fence*)*** %5, align 8, !tbaa !50
  %7 = getelementptr inbounds i64 (%struct.ID3D12Fence*)*, i64 (%struct.ID3D12Fence*)** %6, i64 8
  %8 = load i64 (%struct.ID3D12Fence*)*, i64 (%struct.ID3D12Fence*)** %7, align 8
  %9 = tail call i64 %8(%struct.ID3D12Fence* nonnull dereferenceable(8) %4) #10
  %10 = icmp ult i64 %9, %0
  br i1 %10, label %11, label %138

11:                                               ; preds = %1
  %12 = load %struct.ID3D12Device*, %struct.ID3D12Device** bitcast (%struct.halide_d3d12compute_device** @"?device@D3D12Compute@Internal@Runtime@Halide@@3PEAUhalide_d3d12compute_device@@EA" to %struct.ID3D12Device**), align 8, !tbaa !49
  %13 = bitcast %struct.ID3D12Device* %12 to i32 (%struct.ID3D12Device*)***
  %14 = load i32 (%struct.ID3D12Device*)**, i32 (%struct.ID3D12Device*)*** %13, align 8, !tbaa !50
  %15 = getelementptr inbounds i32 (%struct.ID3D12Device*)*, i32 (%struct.ID3D12Device*)** %14, i64 37
  %16 = load i32 (%struct.ID3D12Device*)*, i32 (%struct.ID3D12Device*)** %15, align 8
  %17 = tail call i32 %16(%struct.ID3D12Device* nonnull dereferenceable(8) %12) #10
  %18 = load %struct.ID3D12Fence*, %struct.ID3D12Fence** @"?queue_fence@D3D12Compute@Internal@Runtime@Halide@@3PEAUID3D12Fence@@EA", align 8, !tbaa !49
  %19 = load i8*, i8** @"?hFenceEvent@D3D12Compute@Internal@Runtime@Halide@@3PEAXEA", align 8, !tbaa !49
  %20 = bitcast %struct.ID3D12Fence* %18 to i32 (%struct.ID3D12Fence*, i64, i8*)***
  %21 = load i32 (%struct.ID3D12Fence*, i64, i8*)**, i32 (%struct.ID3D12Fence*, i64, i8*)*** %20, align 8, !tbaa !50
  %22 = getelementptr inbounds i32 (%struct.ID3D12Fence*, i64, i8*)*, i32 (%struct.ID3D12Fence*, i64, i8*)** %21, i64 9
  %23 = load i32 (%struct.ID3D12Fence*, i64, i8*)*, i32 (%struct.ID3D12Fence*, i64, i8*)** %22, align 8
  %24 = tail call i32 %23(%struct.ID3D12Fence* nonnull dereferenceable(8) %18, i64 %0, i8* %19) #10
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %80, label %26

26:                                               ; preds = %11
  %27 = load i8*, i8** @"?hFenceEvent@D3D12Compute@Internal@Runtime@Halide@@3PEAXEA", align 8, !tbaa !49
  %28 = tail call i32 @WaitForSingleObject(i8* %27, i32 15000) #10
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %80, label %30

30:                                               ; preds = %26
  %31 = load i8*, i8** @"?hFenceEvent@D3D12Compute@Internal@Runtime@Halide@@3PEAXEA", align 8, !tbaa !49
  %32 = icmp sgt i32 %28, -1
  %33 = icmp ne i8* %31, null
  %34 = and i1 %32, %33
  br i1 %34, label %80, label %35

35:                                               ; preds = %30
  %36 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %36) #12
  %37 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %2, i64 0, i32 3
  store i8* null, i8** %37, align 8, !tbaa !41
  %38 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %2, i64 0, i32 4
  store i8 1, i8* %38, align 8, !tbaa !44
  %39 = tail call i8* @malloc(i64 1024) #10
  %40 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %2, i64 0, i32 0
  store i8* %39, i8** %40, align 8, !tbaa !45
  %41 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %2, i64 0, i32 1
  %42 = icmp eq i8* %39, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %35
  %44 = getelementptr inbounds i8, i8* %39, i64 1023
  store i8 0, i8* %44, align 1, !tbaa !40
  br label %45

45:                                               ; preds = %43, %35
  %46 = phi i8* [ %44, %43 ], [ null, %35 ]
  %47 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %2, i64 0, i32 2
  store i8* %46, i8** %47, align 8
  %48 = tail call i8* @halide_string_to_string(i8* %39, i8* %46, i8* nonnull getelementptr inbounds ([31 x i8], [31 x i8]* @"??_C@_0BP@JEHMDIGO@Unable?5to?5wait?5for?5Fence?5Event?$AA@", i64 0, i64 0)) #10
  %49 = tail call i8* @halide_string_to_string(i8* %48, i8* %46, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @"??_C@_0L@IAGCJOCP@?5?$CIHRESULT?$DN?$AA@", i64 0, i64 0)) #10
  %50 = sext i32 %28 to i64
  %51 = inttoptr i64 %50 to i8*
  %52 = tail call i8* @halide_pointer_to_string(i8* %49, i8* %46, i8* nonnull %51) #10
  %53 = tail call i8* @halide_string_to_string(i8* %52, i8* %46, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @"??_C@_0L@FELFIFPM@?0?5object?$CK?$DN?$AA@", i64 0, i64 0)) #10
  %54 = tail call i8* @halide_pointer_to_string(i8* %53, i8* %46, i8* %31) #10
  %55 = tail call i8* @halide_string_to_string(i8* %54, i8* %46, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01PKGAHCOL@?$CJ?$AA@", i64 0, i64 0)) #10
  %56 = tail call i8* @halide_string_to_string(i8* %55, i8* %46, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #10
  %57 = tail call i8* @halide_string_to_string(i8* %56, i8* %46, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @"??_C@_0CE@MGMMPJGA@vvvvv?5D3D12?5Begin?5Debug?5Dump?5vvv@", i64 0, i64 0)) #10
  store i8* %57, i8** %41, align 8, !tbaa !46
  call fastcc void @"?d3d12_debug_dump@@YAXAEAV?$Printer@$00$0EAA@@?A0x2B71E647@Internal@Runtime@Halide@@@Z"(%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* nonnull align 8 dereferenceable(40) %2) #10
  %58 = load i8*, i8** %47, align 8, !tbaa !47
  %59 = load i8*, i8** %41, align 8, !tbaa !46
  %60 = tail call i8* @halide_string_to_string(i8* %59, i8* %58, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @"??_C@_0CE@PCPJBLP@?$FO?$FO?$FO?$FO?$FO?5D3D12?5?5End?5?5Debug?5Dump?5?$FO?$FO?$FO@", i64 0, i64 0)) #10
  %61 = tail call i8* @halide_string_to_string(i8* %60, i8* %58, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @"??_C@_0BA@FGKOLOB@D3D12?5HALT?5?$CB?$CB?$CB?6?$AA@", i64 0, i64 0)) #10
  store i8* %61, i8** %41, align 8, !tbaa !46
  %62 = load i8*, i8** %40, align 8, !tbaa !45
  %63 = icmp eq i8* %62, null
  %64 = load i8*, i8** %37, align 8, !tbaa !41
  br i1 %63, label %65, label %66

65:                                               ; preds = %45
  tail call void @halide_error(i8* %64, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #10
  br label %72

66:                                               ; preds = %45
  %67 = ptrtoint i8* %61 to i64
  %68 = ptrtoint i8* %62 to i64
  %69 = add i64 %67, 1
  %70 = sub i64 %69, %68
  %71 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %64, i8* nonnull %62, i64 %70) #10
  tail call void @halide_error(i8* %64, i8* nonnull %62) #10
  br label %72

72:                                               ; preds = %66, %65
  %73 = load i8, i8* %38, align 8, !tbaa !44, !range !48
  %74 = icmp eq i8 %73, 0
  %75 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %2, i64 0, i32 5, i64 0
  %76 = icmp eq i8* %62, %75
  %77 = or i1 %76, %74
  br i1 %77, label %79, label %78

78:                                               ; preds = %72
  call void @free(i8* %62) #10
  br label %79

79:                                               ; preds = %78, %72
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %36) #12
  br label %80

80:                                               ; preds = %11, %26, %30, %79
  %81 = load %struct.ID3D12Device*, %struct.ID3D12Device** bitcast (%struct.halide_d3d12compute_device** @"?device@D3D12Compute@Internal@Runtime@Halide@@3PEAUhalide_d3d12compute_device@@EA" to %struct.ID3D12Device**), align 8, !tbaa !49
  %82 = bitcast %struct.ID3D12Device* %81 to i32 (%struct.ID3D12Device*)***
  %83 = load i32 (%struct.ID3D12Device*)**, i32 (%struct.ID3D12Device*)*** %82, align 8, !tbaa !50
  %84 = getelementptr inbounds i32 (%struct.ID3D12Device*)*, i32 (%struct.ID3D12Device*)** %83, i64 37
  %85 = load i32 (%struct.ID3D12Device*)*, i32 (%struct.ID3D12Device*)** %84, align 8
  %86 = call i32 %85(%struct.ID3D12Device* nonnull dereferenceable(8) %81) #10
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %138

88:                                               ; preds = %80
  %89 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %89) #12
  %90 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, i64 0, i32 3
  store i8* null, i8** %90, align 8, !tbaa !41
  %91 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, i64 0, i32 4
  store i8 1, i8* %91, align 8, !tbaa !44
  %92 = call i8* @malloc(i64 1024) #10
  %93 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, i64 0, i32 0
  store i8* %92, i8** %93, align 8, !tbaa !45
  %94 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, i64 0, i32 1
  store i8* %92, i8** %94, align 8, !tbaa !46
  %95 = icmp eq i8* %92, null
  br i1 %95, label %98, label %96

96:                                               ; preds = %88
  %97 = getelementptr inbounds i8, i8* %92, i64 1023
  store i8 0, i8* %97, align 1, !tbaa !40
  br label %98

98:                                               ; preds = %88, %96
  %99 = phi i8* [ %97, %96 ], [ null, %88 ]
  %100 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, i64 0, i32 2
  store i8* %99, i8** %100, align 8
  %101 = call i8* @halide_string_to_string(i8* %92, i8* %99, i8* nonnull getelementptr inbounds ([40 x i8], [40 x i8]* @"??_C@_0CI@KNFDFENG@Device?5Lost?$CB?5GetDeviceRemovedRea@", i64 0, i64 0)) #10
  store i8* %101, i8** %94, align 8, !tbaa !46
  %102 = call i8* @halide_string_to_string(i8* %101, i8* %99, i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @"??_C@_08NBDONIIG@before?3?5?$AA@", i64 0, i64 0)) #10
  store i8* %102, i8** %94, align 8, !tbaa !46
  %103 = sext i32 %17 to i64
  %104 = inttoptr i64 %103 to i8*
  %105 = call i8* @halide_pointer_to_string(i8* %102, i8* %99, i8* %104) #10
  store i8* %105, i8** %94, align 8, !tbaa !46
  %106 = call i8* @halide_string_to_string(i8* %105, i8* %99, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @"??_C@_03LGOGDKEL@?5?$HM?5?$AA@", i64 0, i64 0)) #10
  store i8* %106, i8** %94, align 8, !tbaa !46
  %107 = call i8* @halide_string_to_string(i8* %106, i8* %99, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @"??_C@_07NCNFGCHF@after?3?5?$AA@", i64 0, i64 0)) #10
  store i8* %107, i8** %94, align 8, !tbaa !46
  %108 = sext i32 %86 to i64
  %109 = inttoptr i64 %108 to i8*
  %110 = call i8* @halide_pointer_to_string(i8* %107, i8* %99, i8* nonnull %109) #10
  store i8* %110, i8** %94, align 8, !tbaa !46
  %111 = call i8* @halide_string_to_string(i8* %110, i8* %99, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #10
  store i8* %111, i8** %94, align 8, !tbaa !46
  %112 = call i8* @halide_string_to_string(i8* %111, i8* %99, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @"??_C@_0CE@MGMMPJGA@vvvvv?5D3D12?5Begin?5Debug?5Dump?5vvv@", i64 0, i64 0)) #10
  store i8* %112, i8** %94, align 8, !tbaa !46
  call fastcc void @"?d3d12_debug_dump@@YAXAEAV?$Printer@$00$0EAA@@?A0x2B71E647@Internal@Runtime@Halide@@@Z"(%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* nonnull align 8 dereferenceable(40) %3) #11
  %113 = load i8*, i8** %100, align 8, !tbaa !47
  %114 = load i8*, i8** %94, align 8, !tbaa !46
  %115 = call i8* @halide_string_to_string(i8* %114, i8* %113, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @"??_C@_0CE@PCPJBLP@?$FO?$FO?$FO?$FO?$FO?5D3D12?5?5End?5?5Debug?5Dump?5?$FO?$FO?$FO@", i64 0, i64 0)) #10
  store i8* %115, i8** %94, align 8, !tbaa !46
  %116 = call i8* @halide_string_to_string(i8* %115, i8* %113, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @"??_C@_0BA@FGKOLOB@D3D12?5HALT?5?$CB?$CB?$CB?6?$AA@", i64 0, i64 0)) #10
  store i8* %116, i8** %94, align 8, !tbaa !46
  %117 = load i8*, i8** %93, align 8, !tbaa !45
  %118 = icmp eq i8* %117, null
  %119 = load i8*, i8** %90, align 8, !tbaa !41
  br i1 %118, label %120, label %121

120:                                              ; preds = %98
  call void @halide_error(i8* %119, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #10
  br label %129

121:                                              ; preds = %98
  %122 = ptrtoint i8* %116 to i64
  %123 = ptrtoint i8* %117 to i64
  %124 = add i64 %122, 1
  %125 = sub i64 %124, %123
  %126 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %119, i8* nonnull %117, i64 %125) #10
  %127 = load i8*, i8** %93, align 8, !tbaa !45
  %128 = load i8*, i8** %90, align 8, !tbaa !41
  call void @halide_error(i8* %128, i8* %127) #10
  br label %129

129:                                              ; preds = %121, %120
  %130 = load i8, i8* %91, align 8, !tbaa !44, !range !48
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %137, label %132

132:                                              ; preds = %129
  %133 = load i8*, i8** %93, align 8, !tbaa !45
  %134 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, i64 0, i32 5, i64 0
  %135 = icmp eq i8* %133, %134
  br i1 %135, label %137, label %136

136:                                              ; preds = %132
  call void @free(i8* %133) #10
  br label %137

137:                                              ; preds = %129, %132, %136
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %89) #12
  br label %138

138:                                              ; preds = %80, %137, %1
  ret void
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_d3d12compute_initialize_kernels(i8* %0, i8** %1, i8* %2, i32 %3) local_unnamed_addr #4 {
  %5 = alloca %"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder", align 8
  %6 = alloca i32, align 4
  %7 = alloca %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_library"*, align 8
  %8 = bitcast %"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #12
  call void @"?save@D3D12ContextHolder@D3D12Compute@Internal@Runtime@Halide@@AEAAXPEAX_N@Z"(%"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder"* nonnull dereferenceable(32) %5, i8* %0, i1 true) #10
  %9 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #12
  store i32 -1, i32* %6, align 4, !tbaa !77
  %10 = bitcast %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_library"** %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #12
  store %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_library"* null, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_library"** %7, align 8, !tbaa !49
  %11 = getelementptr inbounds %"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder", %"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder"* %5, i64 0, i32 1
  %12 = load %struct.halide_d3d12compute_device*, %struct.halide_d3d12compute_device** %11, align 8, !tbaa !168
  %13 = call i1 @"??$kernel_state_setup@P6APEAUd3d12_library@D3D12Compute@Internal@Runtime@Halide@@PEAUhalide_d3d12compute_device@@PEBDHPEAH@ZPEAU6@PEBDHPEAH@?$GPUCompilationCache@PEAUhalide_d3d12compute_device@@PEAUd3d12_library@D3D12Compute@Internal@Runtime@Halide@@@Internal@Halide@@QEAA_NPEAXPEAPEAXPEAUhalide_d3d12compute_device@@AEAPEAUd3d12_library@D3D12Compute@1Runtime@2@P6APEAU45162@2PEBDHPEAH@Z24H5@Z"(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(32) @"?compilation_cache@D3D12Compute@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PEAUhalide_d3d12compute_device@@PEAUd3d12_library@D3D12Compute@Internal@Runtime@Halide@@@24@A", i8* %0, i8** %1, %struct.halide_d3d12compute_device* %12, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_library"** nonnull align 8 dereferenceable(8) %7, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_library"* (%struct.halide_d3d12compute_device*, i8*, i32, i32*)* nonnull @"?compile_kernel@D3D12Compute@Internal@Runtime@Halide@@YAPEAUd3d12_library@1234@PEAUhalide_d3d12compute_device@@PEBDHPEAH@Z", %struct.halide_d3d12compute_device* %12, i8* %2, i32 %3, i32* nonnull %6) #11
  %14 = load i32, i32* %6, align 4
  %15 = select i1 %13, i32 0, i32 %14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #12
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #12
  call void @"?restore@D3D12ContextHolder@D3D12Compute@Internal@Runtime@Halide@@AEAAXXZ"(%"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder"* nonnull dereferenceable(32) %5) #10
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #12
  ret i32 %15
}

; Function Attrs: nounwind
define linkonce_odr dso_local i1 @"??$kernel_state_setup@P6APEAUd3d12_library@D3D12Compute@Internal@Runtime@Halide@@PEAUhalide_d3d12compute_device@@PEBDHPEAH@ZPEAU6@PEBDHPEAH@?$GPUCompilationCache@PEAUhalide_d3d12compute_device@@PEAUd3d12_library@D3D12Compute@Internal@Runtime@Halide@@@Internal@Halide@@QEAA_NPEAXPEAPEAXPEAUhalide_d3d12compute_device@@AEAPEAUd3d12_library@D3D12Compute@1Runtime@2@P6APEAU45162@2PEBDHPEAH@Z24H5@Z"(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(32) %0, i8* %1, i8** %2, %struct.halide_d3d12compute_device* %3, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_library"** nonnull align 8 dereferenceable(8) %4, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_library"* (%struct.halide_d3d12compute_device*, i8*, i32, i32*)* %5, %struct.halide_d3d12compute_device* %6, i8* %7, i32 %8, i32* %9) local_unnamed_addr #4 comdat align 2 {
  %11 = alloca %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation", align 8
  %12 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i64 0, i32 0
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull %12) #10
  %13 = bitcast i8** %2 to i32*
  %14 = load i32, i32* %13, align 4, !tbaa !77
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i64 0, i32 4
  %18 = load i32, i32* %17, align 4, !tbaa !169
  %19 = add i32 %18, 1
  store i32 %19, i32* %17, align 4, !tbaa !169
  store i32 %18, i32* %13, align 4, !tbaa !77
  br label %20

20:                                               ; preds = %16, %10
  %21 = phi i32 [ %18, %16 ], [ %14, %10 ]
  %22 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i64 0, i32 1
  %23 = load i32, i32* %22, align 8, !tbaa !171
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %69, label %25

25:                                               ; preds = %20
  %26 = ptrtoint %struct.halide_d3d12compute_device* %3 to i64
  %27 = zext i32 %21 to i64
  %28 = add i64 %27, %26
  %29 = mul i64 %28, -7046029254386353131
  %30 = sub i32 64, %23
  %31 = zext i32 %30 to i64
  %32 = lshr i64 %29, %31
  %33 = shl nuw i32 1, %23
  %34 = icmp eq i32 %23, 31
  br i1 %34, label %69, label %35

35:                                               ; preds = %25
  %36 = add nsw i32 %33, -1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i64 0, i32 2
  %39 = load %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation"** %38, align 8, !tbaa !172
  %40 = sext i32 %33 to i64
  %41 = icmp sgt i32 %33, 1
  %42 = select i1 %41, i32 %33, i32 1
  %43 = zext i32 %42 to i64
  br label %47

44:                                               ; preds = %55
  %45 = icmp slt i64 %61, %40
  %46 = icmp eq i64 %61, %43
  br i1 %46, label %69, label %47, !llvm.loop !173

47:                                               ; preds = %44, %35
  %48 = phi i64 [ 0, %35 ], [ %61, %44 ]
  %49 = phi i1 [ true, %35 ], [ %45, %44 ]
  %50 = add i64 %48, %32
  %51 = and i64 %50, %37
  %52 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation"* %39, i64 %51, i32 2
  %53 = load i32, i32* %52, align 8, !tbaa !174
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %69, label %55

55:                                               ; preds = %47
  %56 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation"* %39, i64 %51, i32 0
  %57 = load %struct.halide_d3d12compute_device*, %struct.halide_d3d12compute_device** %56, align 8, !tbaa !176
  %58 = icmp eq %struct.halide_d3d12compute_device* %57, %3
  %59 = icmp eq i32 %53, %21
  %60 = and i1 %59, %58
  %61 = add nuw nsw i64 %48, 1
  br i1 %60, label %62, label %44

62:                                               ; preds = %55
  %63 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation"* %39, i64 %51, i32 3
  %64 = load i32, i32* %63, align 4, !tbaa !177
  %65 = add i32 %64, 1
  store i32 %65, i32* %63, align 4, !tbaa !177
  br i1 %49, label %66, label %69

66:                                               ; preds = %62
  %67 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation"* %39, i64 %51, i32 1
  %68 = load %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_library"*, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_library"** %67, align 8, !tbaa !49
  store %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_library"* %68, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_library"** %4, align 8, !tbaa !49
  br label %81

69:                                               ; preds = %47, %44, %25, %20, %62
  %70 = tail call %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_library"* %5(%struct.halide_d3d12compute_device* %6, i8* %7, i32 %8, i32* %9) #10
  %71 = icmp eq %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_library"* %70, null
  br i1 %71, label %81, label %72

72:                                               ; preds = %69
  %73 = bitcast %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation"* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %73) #12
  %74 = load i32, i32* %13, align 4, !tbaa !77
  %75 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation"* %11, i64 0, i32 0
  store %struct.halide_d3d12compute_device* %3, %struct.halide_d3d12compute_device** %75, align 8, !tbaa !176
  %76 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation"* %11, i64 0, i32 1
  store %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_library"* %70, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_library"** %76, align 8, !tbaa !178
  %77 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation"* %11, i64 0, i32 2
  store i32 %74, i32* %77, align 8, !tbaa !174
  %78 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation"* %11, i64 0, i32 3
  store i32 1, i32* %78, align 4, !tbaa !177
  %79 = call i1 @"?insert@?$GPUCompilationCache@PEAUhalide_d3d12compute_device@@PEAUd3d12_library@D3D12Compute@Internal@Runtime@Halide@@@Internal@Halide@@QEAA_NAEBUCachedCompilation@123@@Z"(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(32) %0, %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation"* nonnull align 8 dereferenceable(24) %11) #11
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %73) #12
  br i1 %79, label %80, label %81

80:                                               ; preds = %72
  store %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_library"* %70, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_library"** %4, align 8, !tbaa !49
  br label %81

81:                                               ; preds = %80, %69, %72, %66
  %82 = phi i1 [ true, %66 ], [ true, %80 ], [ false, %69 ], [ false, %72 ]
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull %12) #10
  ret i1 %82
}

; Function Attrs: nounwind
define weak dso_local void @halide_d3d12compute_finalize_kernels(i8* %0, i8* %1) local_unnamed_addr #4 {
  %3 = alloca %"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder", align 8
  %4 = bitcast %"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder"* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %4) #12
  call void @"?save@D3D12ContextHolder@D3D12Compute@Internal@Runtime@Halide@@AEAAXPEAX_N@Z"(%"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder"* nonnull dereferenceable(32) %3, i8* %0, i1 true) #10
  %5 = getelementptr inbounds %"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder", %"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder"* %3, i64 0, i32 3
  %6 = load i32, i32* %5, align 8, !tbaa !148
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %56

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder", %"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder"* %3, i64 0, i32 1
  %10 = load %struct.halide_d3d12compute_device*, %struct.halide_d3d12compute_device** %9, align 8, !tbaa !168
  %11 = ptrtoint i8* %1 to i64
  %12 = trunc i64 %11 to i32
  %13 = load i32, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@D3D12Compute@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PEAUhalide_d3d12compute_device@@PEAUd3d12_library@D3D12Compute@Internal@Runtime@Halide@@@24@A", i64 0, i32 1), align 8, !tbaa !171
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %55, label %15

15:                                               ; preds = %8
  %16 = ptrtoint %struct.halide_d3d12compute_device* %10 to i64
  %17 = and i64 %11, 4294967295
  %18 = add i64 %17, %16
  %19 = mul i64 %18, -7046029254386353131
  %20 = sub i32 64, %13
  %21 = zext i32 %20 to i64
  %22 = lshr i64 %19, %21
  %23 = shl nuw i32 1, %13
  %24 = icmp eq i32 %13, 31
  br i1 %24, label %55, label %25

25:                                               ; preds = %15
  %26 = add nsw i32 %23, -1
  %27 = sext i32 %26 to i64
  %28 = load %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation"** getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@D3D12Compute@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PEAUhalide_d3d12compute_device@@PEAUd3d12_library@D3D12Compute@Internal@Runtime@Halide@@@24@A", i64 0, i32 2), align 8, !tbaa !172
  %29 = sext i32 %23 to i64
  %30 = icmp sgt i32 %23, 1
  %31 = select i1 %30, i32 %23, i32 1
  %32 = zext i32 %31 to i64
  br label %36

33:                                               ; preds = %44
  %34 = icmp slt i64 %50, %29
  %35 = icmp eq i64 %50, %32
  br i1 %35, label %55, label %36, !llvm.loop !173

36:                                               ; preds = %33, %25
  %37 = phi i64 [ 0, %25 ], [ %50, %33 ]
  %38 = phi i1 [ true, %25 ], [ %34, %33 ]
  %39 = add i64 %37, %22
  %40 = and i64 %39, %27
  %41 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation"* %28, i64 %40, i32 2
  %42 = load i32, i32* %41, align 8, !tbaa !174
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %55, label %44

44:                                               ; preds = %36
  %45 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation"* %28, i64 %40, i32 0
  %46 = load %struct.halide_d3d12compute_device*, %struct.halide_d3d12compute_device** %45, align 8, !tbaa !176
  %47 = icmp eq %struct.halide_d3d12compute_device* %46, %10
  %48 = icmp eq i32 %42, %12
  %49 = and i1 %48, %47
  %50 = add nuw nsw i64 %37, 1
  br i1 %49, label %51, label %33

51:                                               ; preds = %44
  %52 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation"* %28, i64 %40, i32 3
  %53 = load i32, i32* %52, align 4, !tbaa !177
  %54 = add i32 %53, -1
  store i32 %54, i32* %52, align 4, !tbaa !177
  br i1 %38, label %56, label %55

55:                                               ; preds = %36, %33, %51, %15, %8
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @"??_C@_0GO@OECFGMGJ@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  call void @abort() #10
  br label %56

56:                                               ; preds = %55, %51, %2
  call void @"?restore@D3D12ContextHolder@D3D12Compute@Internal@Runtime@Halide@@AEAAXXZ"(%"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder"* nonnull dereferenceable(32) %3) #10
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #12
  ret void
}

; Function Attrs: nounwind mustprogress
define dso_local void @compute_barrier(%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_graphics_command_list"* nocapture readonly %0, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* nocapture readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.D3D12_RESOURCE_BARRIER, align 8
  %4 = bitcast %struct.D3D12_RESOURCE_BARRIER* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %4) #12
  %5 = getelementptr inbounds %struct.D3D12_RESOURCE_BARRIER, %struct.D3D12_RESOURCE_BARRIER* %3, i64 0, i32 2, i32 0, i32 1
  %6 = bitcast i32* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(32) %6, i8 0, i64 16, i1 false)
  %7 = bitcast %struct.D3D12_RESOURCE_BARRIER* %3 to <2 x i32>*
  store <2 x i32> <i32 2, i32 0>, <2 x i32>* %7, align 8, !tbaa !40
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %1, i64 0, i32 0
  %9 = load %struct.ID3D12Resource*, %struct.ID3D12Resource** %8, align 8, !tbaa !54
  %10 = getelementptr inbounds %struct.D3D12_RESOURCE_BARRIER, %struct.D3D12_RESOURCE_BARRIER* %3, i64 0, i32 2, i32 0, i32 0
  store %struct.ID3D12Resource* %9, %struct.ID3D12Resource** %10, align 8, !tbaa !40
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_graphics_command_list", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_graphics_command_list"* %0, i64 0, i32 0, i32 0
  %12 = load %struct.ID3D12GraphicsCommandList*, %struct.ID3D12GraphicsCommandList** %11, align 8, !tbaa !88
  %13 = bitcast %struct.ID3D12GraphicsCommandList* %12 to void (%struct.ID3D12GraphicsCommandList*, i32, %struct.D3D12_RESOURCE_BARRIER*)***
  %14 = load void (%struct.ID3D12GraphicsCommandList*, i32, %struct.D3D12_RESOURCE_BARRIER*)**, void (%struct.ID3D12GraphicsCommandList*, i32, %struct.D3D12_RESOURCE_BARRIER*)*** %13, align 8, !tbaa !50
  %15 = getelementptr inbounds void (%struct.ID3D12GraphicsCommandList*, i32, %struct.D3D12_RESOURCE_BARRIER*)*, void (%struct.ID3D12GraphicsCommandList*, i32, %struct.D3D12_RESOURCE_BARRIER*)** %14, i64 26
  %16 = load void (%struct.ID3D12GraphicsCommandList*, i32, %struct.D3D12_RESOURCE_BARRIER*)*, void (%struct.ID3D12GraphicsCommandList*, i32, %struct.D3D12_RESOURCE_BARRIER*)** %15, align 8
  call void %16(%struct.ID3D12GraphicsCommandList* nonnull dereferenceable(8) %12, i32 1, %struct.D3D12_RESOURCE_BARRIER* nonnull %3) #10
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #12
  ret void
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_d3d12compute_device_sync(i8* %0, %struct.halide_buffer_t* %1) #4 {
  %3 = alloca %"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder", align 8
  %4 = bitcast %"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder"* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %4) #12
  call void @"?save@D3D12ContextHolder@D3D12Compute@Internal@Runtime@Halide@@AEAAXPEAX_N@Z"(%"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder"* nonnull dereferenceable(32) %3, i8* %0, i1 true) #10
  %5 = getelementptr inbounds %"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder", %"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder"* %3, i64 0, i32 3
  %6 = load i32, i32* %5, align 8, !tbaa !148
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %25

8:                                                ; preds = %2
  %9 = icmp eq %struct.halide_buffer_t* %1, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %8
  call void @halide_print(i8* null, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @"??_C@_0HI@FNCIDAJF@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  call void @abort() #10
  br label %11

11:                                               ; preds = %10, %8
  %12 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  %13 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %12, align 8, !tbaa !70
  %14 = icmp eq %struct.halide_device_interface_t* %13, @"?d3d12compute_device_interface@D3D12Compute@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A"
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  call void @halide_print(i8* null, i8* getelementptr inbounds ([161 x i8], [161 x i8]* @"??_C@_0KB@NININJGE@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  call void @abort() #10
  br label %16

16:                                               ; preds = %15, %11
  %17 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %18 = load i64, i64* %17, align 8, !tbaa !25
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  call void @halide_print(i8* null, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @"??_C@_0HI@MFPPBOBE@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  call void @abort() #10
  br label %21

21:                                               ; preds = %16, %20
  %22 = inttoptr i64 %18 to %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*
  %23 = getelementptr inbounds %"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder", %"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder"* %3, i64 0, i32 1
  %24 = load %struct.halide_d3d12compute_device*, %struct.halide_d3d12compute_device** %23, align 8, !tbaa !168
  call fastcc void @"?d3d12compute_device_sync_internal@D3D12Compute@Internal@Runtime@Halide@@YAXPEAUhalide_d3d12compute_device@@PEAUd3d12_buffer@1234@@Z"(%struct.halide_d3d12compute_device* %24, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %22) #11
  br label %25

25:                                               ; preds = %2, %21
  call void @"?restore@D3D12ContextHolder@D3D12Compute@Internal@Runtime@Halide@@AEAAXXZ"(%"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder"* nonnull dereferenceable(32) %3) #10
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #12
  ret i32 %6
}

; Function Attrs: nounwind mustprogress
define internal fastcc void @"?d3d12compute_device_sync_internal@D3D12Compute@Internal@Runtime@Halide@@YAXPEAUhalide_d3d12compute_device@@PEAUd3d12_buffer@1234@@Z"(%struct.halide_d3d12compute_device* %0, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %1) unnamed_addr #0 {
  %3 = alloca [1 x %struct.ID3D12CommandList*], align 8
  %4 = icmp eq %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %1, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = load atomic volatile i64, i64* @"?queue_last_signal@D3D12Compute@Internal@Runtime@Halide@@3_KC" seq_cst, align 8
  tail call fastcc void @"?wait_until_signaled@D3D12Compute@Internal@Runtime@Halide@@YAX_K@Z"(i64 %6) #10
  br label %84

7:                                                ; preds = %2
  %8 = getelementptr %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %1, i64 0, i32 10
  %9 = load %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer::transfer_t"*, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer::transfer_t"** %8, align 8, !tbaa !179
  %10 = icmp eq %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer::transfer_t"* %9, null
  br i1 %10, label %84, label %11

11:                                               ; preds = %7
  %12 = tail call fastcc %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame"* @"?acquire_frame@D3D12Compute@Internal@Runtime@Halide@@YAPEAUd3d12_frame@1234@PEAUhalide_d3d12compute_device@@@Z"(%struct.halide_d3d12compute_device* %0) #11
  %13 = getelementptr %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame"* %12, i64 0, i32 0
  %14 = load %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_graphics_command_list"*, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_graphics_command_list"** %13, align 8, !tbaa !180
  %15 = load %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer::transfer_t"*, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer::transfer_t"** %8, align 8, !tbaa !179
  %16 = icmp eq %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer::transfer_t"* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([118 x i8], [118 x i8]* @"??_C@_0HG@BKPBFCDC@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  tail call void @abort() #10
  br label %18

18:                                               ; preds = %17, %11
  %19 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer::transfer_t", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer::transfer_t"* %15, i64 0, i32 2
  %20 = load i64, i64* %19, align 8, !tbaa !182
  %21 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer::transfer_t", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer::transfer_t"* %15, i64 0, i32 0
  %22 = load %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"** %21, align 8, !tbaa !184
  %23 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %22, i64 0, i32 8
  %24 = load i32, i32* %23, align 4, !tbaa !111
  switch i32 %24, label %37 [
    i32 5, label %25
    i32 6, label %31
  ]

25:                                               ; preds = %18
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer::transfer_t", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer::transfer_t"* %15, i64 0, i32 1
  %27 = load i64, i64* %26, align 8, !tbaa !185
  %28 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %1, i64 0, i32 5
  %29 = load i32, i32* %28, align 8, !tbaa !60
  %30 = zext i32 %29 to i64
  br label %38

31:                                               ; preds = %18
  tail call void @"?unmap_buffer@D3D12Compute@Internal@Runtime@Halide@@YAXPEAUd3d12_buffer@1234@@Z"(%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* nonnull %22) #10
  %32 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %1, i64 0, i32 5
  %33 = load i32, i32* %32, align 8, !tbaa !60
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer::transfer_t", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer::transfer_t"* %15, i64 0, i32 1
  %36 = load i64, i64* %35, align 8, !tbaa !185
  br label %38

37:                                               ; preds = %18
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([106 x i8], [106 x i8]* @"??_C@_0GK@KGJGGHMA@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  tail call void @abort() #10
  br label %38

38:                                               ; preds = %37, %31, %25
  %39 = phi i64 [ 0, %37 ], [ %34, %31 ], [ %27, %25 ]
  %40 = phi i64 [ 0, %37 ], [ %36, %31 ], [ %30, %25 ]
  %41 = phi %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* [ null, %37 ], [ %22, %31 ], [ %1, %25 ]
  %42 = phi %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* [ null, %37 ], [ %1, %31 ], [ %22, %25 ]
  tail call fastcc void @"?buffer_copy_command@D3D12Compute@Internal@Runtime@Halide@@YAXPEAUd3d12_graphics_command_list@1234@PEAUd3d12_buffer@1234@1_K22@Z"(%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_graphics_command_list"* %14, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %42, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %41, i64 %39, i64 %40, i64 %20) #10
  %43 = load %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_graphics_command_list"*, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_graphics_command_list"** %13, align 8, !tbaa !180
  %44 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_graphics_command_list", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_graphics_command_list"* %43, i64 0, i32 0, i32 0
  %45 = load %struct.ID3D12GraphicsCommandList*, %struct.ID3D12GraphicsCommandList** %44, align 8, !tbaa !88
  %46 = bitcast %struct.ID3D12GraphicsCommandList* %45 to i32 (%struct.ID3D12GraphicsCommandList*)***
  %47 = load i32 (%struct.ID3D12GraphicsCommandList*)**, i32 (%struct.ID3D12GraphicsCommandList*)*** %46, align 8, !tbaa !50
  %48 = getelementptr inbounds i32 (%struct.ID3D12GraphicsCommandList*)*, i32 (%struct.ID3D12GraphicsCommandList*)** %47, i64 9
  %49 = load i32 (%struct.ID3D12GraphicsCommandList*)*, i32 (%struct.ID3D12GraphicsCommandList*)** %48, align 8
  %50 = tail call i32 %49(%struct.ID3D12GraphicsCommandList* nonnull dereferenceable(8) %45) #10
  %51 = bitcast [1 x %struct.ID3D12CommandList*]* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %51) #12
  %52 = getelementptr inbounds [1 x %struct.ID3D12CommandList*], [1 x %struct.ID3D12CommandList*]* %3, i64 0, i64 0
  %53 = load %struct.ID3D12GraphicsCommandList*, %struct.ID3D12GraphicsCommandList** %44, align 8, !tbaa !88
  %54 = getelementptr %struct.ID3D12GraphicsCommandList, %struct.ID3D12GraphicsCommandList* %53, i64 0, i32 0
  store %struct.ID3D12CommandList* %54, %struct.ID3D12CommandList** %52, align 8, !tbaa !49
  %55 = load %struct.ID3D12CommandQueue*, %struct.ID3D12CommandQueue** bitcast (%struct.halide_d3d12compute_command_queue** @"?queue@D3D12Compute@Internal@Runtime@Halide@@3PEAUhalide_d3d12compute_command_queue@@EA" to %struct.ID3D12CommandQueue**), align 8, !tbaa !49
  %56 = bitcast %struct.ID3D12CommandQueue* %55 to void (%struct.ID3D12CommandQueue*, i32, %struct.ID3D12CommandList**)***
  %57 = load void (%struct.ID3D12CommandQueue*, i32, %struct.ID3D12CommandList**)**, void (%struct.ID3D12CommandQueue*, i32, %struct.ID3D12CommandList**)*** %56, align 8, !tbaa !50
  %58 = getelementptr inbounds void (%struct.ID3D12CommandQueue*, i32, %struct.ID3D12CommandList**)*, void (%struct.ID3D12CommandQueue*, i32, %struct.ID3D12CommandList**)** %57, i64 10
  %59 = load void (%struct.ID3D12CommandQueue*, i32, %struct.ID3D12CommandList**)*, void (%struct.ID3D12CommandQueue*, i32, %struct.ID3D12CommandList**)** %58, align 8
  call void %59(%struct.ID3D12CommandQueue* nonnull dereferenceable(8) %55, i32 1, %struct.ID3D12CommandList** nonnull %52) #10
  %60 = atomicrmw volatile add i64* @"?queue_last_signal@D3D12Compute@Internal@Runtime@Halide@@3_KC", i64 1 seq_cst
  %61 = add i64 %60, 1
  %62 = load %struct.ID3D12CommandQueue*, %struct.ID3D12CommandQueue** bitcast (%struct.halide_d3d12compute_command_queue** @"?queue@D3D12Compute@Internal@Runtime@Halide@@3PEAUhalide_d3d12compute_command_queue@@EA" to %struct.ID3D12CommandQueue**), align 8, !tbaa !49
  %63 = load %struct.ID3D12Fence*, %struct.ID3D12Fence** @"?queue_fence@D3D12Compute@Internal@Runtime@Halide@@3PEAUID3D12Fence@@EA", align 8, !tbaa !49
  %64 = bitcast %struct.ID3D12CommandQueue* %62 to i32 (%struct.ID3D12CommandQueue*, %struct.ID3D12Fence*, i64)***
  %65 = load i32 (%struct.ID3D12CommandQueue*, %struct.ID3D12Fence*, i64)**, i32 (%struct.ID3D12CommandQueue*, %struct.ID3D12Fence*, i64)*** %64, align 8, !tbaa !50
  %66 = getelementptr inbounds i32 (%struct.ID3D12CommandQueue*, %struct.ID3D12Fence*, i64)*, i32 (%struct.ID3D12CommandQueue*, %struct.ID3D12Fence*, i64)** %65, i64 14
  %67 = load i32 (%struct.ID3D12CommandQueue*, %struct.ID3D12Fence*, i64)*, i32 (%struct.ID3D12CommandQueue*, %struct.ID3D12Fence*, i64)** %66, align 8
  %68 = call i32 %67(%struct.ID3D12CommandQueue* nonnull dereferenceable(8) %62, %struct.ID3D12Fence* %63, i64 %61) #10
  %69 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_graphics_command_list", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_graphics_command_list"* %43, i64 0, i32 1
  store i64 %61, i64* %69, align 8, !tbaa !186
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %51) #12
  %70 = load %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_graphics_command_list"*, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_graphics_command_list"** %13, align 8, !tbaa !180
  %71 = getelementptr %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_graphics_command_list", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_graphics_command_list"* %70, i64 0, i32 1
  %72 = load i64, i64* %71, align 8, !tbaa !186
  %73 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame"* %12, i64 0, i32 3
  store i64 %72, i64* %73, align 8, !tbaa !188
  call fastcc void @"?wait_until_signaled@D3D12Compute@Internal@Runtime@Halide@@YAX_K@Z"(i64 %72) #10
  %74 = load %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer::transfer_t"*, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer::transfer_t"** %8, align 8, !tbaa !179
  %75 = icmp eq %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer::transfer_t"* %74, null
  br i1 %75, label %84, label %76

76:                                               ; preds = %38
  %77 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer::transfer_t", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer::transfer_t"* %74, i64 0, i32 0
  %78 = load %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"** %77, align 8, !tbaa !184
  %79 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %78, i64 0, i32 14
  %80 = atomicrmw volatile sub i64* %79, i64 1 seq_cst
  %81 = icmp eq i64 %80, 1
  br i1 %81, label %83, label %82

82:                                               ; preds = %76
  call void @halide_print(i8* null, i8* getelementptr inbounds ([117 x i8], [117 x i8]* @"??_C@_0HF@HPJKODMC@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  call void @abort() #10
  br label %83

83:                                               ; preds = %82, %76
  store %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer::transfer_t"* null, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer::transfer_t"** %8, align 8, !tbaa !179
  br label %84

84:                                               ; preds = %7, %5, %83, %38
  ret void
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_d3d12compute_device_release(i8* %0) #4 {
  %2 = alloca { %struct.ID3D12Resource*, i32, i32, i32, i32, i32, i32, i32, i32 }, align 8
  %3 = alloca i8, align 8
  %4 = alloca i8, align 1
  %5 = alloca i16, align 2
  %6 = alloca [52 x i8], align 4
  %7 = alloca %struct.halide_d3d12compute_device*, align 8
  %8 = alloca %struct.halide_d3d12compute_command_queue*, align 8
  %9 = alloca { %struct.ID3D12Resource*, i32, i32, i32, i32, i32, i32, i32, i32 }, align 8
  %10 = alloca i8, align 8
  %11 = alloca i8, align 1
  %12 = alloca i16, align 2
  %13 = alloca [52 x i8], align 4
  %14 = bitcast %struct.halide_d3d12compute_device** %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %14) #12
  %15 = bitcast %struct.halide_d3d12compute_command_queue** %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %15) #12
  %16 = call i32 @halide_d3d12compute_acquire_context(i8* %0, %struct.halide_d3d12compute_device** nonnull %7, %struct.halide_d3d12compute_command_queue** nonnull %8, i1 false) #11
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %316

18:                                               ; preds = %1
  %19 = load %struct.halide_d3d12compute_device*, %struct.halide_d3d12compute_device** @"?device@D3D12Compute@Internal@Runtime@Halide@@3PEAUhalide_d3d12compute_device@@EA", align 8, !tbaa !49
  %20 = icmp eq %struct.halide_d3d12compute_device* %19, null
  br i1 %20, label %314, label %21

21:                                               ; preds = %18
  %22 = load atomic volatile i64, i64* @"?queue_last_signal@D3D12Compute@Internal@Runtime@Halide@@3_KC" seq_cst, align 8
  call fastcc void @"?wait_until_signaled@D3D12Compute@Internal@Runtime@Halide@@YAX_K@Z"(i64 %22) #10
  %23 = bitcast { %struct.ID3D12Resource*, i32, i32, i32, i32, i32, i32, i32, i32 }* %2 to i8*
  %24 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0
  %25 = bitcast i16* %5 to i8*
  br label %26

26:                                               ; preds = %21, %85
  %27 = phi i64 [ 0, %21 ], [ %95, %85 ]
  %28 = getelementptr inbounds [8 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame"], [8 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame"]* @"?frame_pool@D3D12Compute@Internal@Runtime@Halide@@3PAUd3d12_frame@1234@A", i64 0, i64 %27
  %29 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame"* %28, i64 0, i32 0
  %30 = load %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_graphics_command_list"*, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_graphics_command_list"** %29, align 8, !tbaa !180
  %31 = icmp eq %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_graphics_command_list"* %30, null
  br i1 %31, label %45, label %32

32:                                               ; preds = %26
  %33 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_graphics_command_list", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_graphics_command_list"* %30, i64 0, i32 0, i32 0
  %34 = load %struct.ID3D12GraphicsCommandList*, %struct.ID3D12GraphicsCommandList** %33, align 8, !tbaa !88
  %35 = icmp eq %struct.ID3D12GraphicsCommandList* %34, null
  br i1 %35, label %43, label %36

36:                                               ; preds = %32
  %37 = getelementptr %struct.ID3D12GraphicsCommandList, %struct.ID3D12GraphicsCommandList* %34, i64 0, i32 0, i32 0, i32 0, i32 0
  %38 = bitcast %struct.ID3D12GraphicsCommandList* %34 to i32 (%struct.IUnknown*)***
  %39 = load i32 (%struct.IUnknown*)**, i32 (%struct.IUnknown*)*** %38, align 8, !tbaa !50
  %40 = getelementptr inbounds i32 (%struct.IUnknown*)*, i32 (%struct.IUnknown*)** %39, i64 2
  %41 = load i32 (%struct.IUnknown*)*, i32 (%struct.IUnknown*)** %40, align 8
  %42 = call i32 %41(%struct.IUnknown* nonnull dereferenceable(8) %37) #10
  br label %43

43:                                               ; preds = %36, %32
  %44 = bitcast %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_graphics_command_list"* %30 to i8*
  call void @free(i8* nonnull %44) #10
  br label %45

45:                                               ; preds = %43, %26
  %46 = getelementptr inbounds [8 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame"], [8 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame"]* @"?frame_pool@D3D12Compute@Internal@Runtime@Halide@@3PAUd3d12_frame@1234@A", i64 0, i64 %27, i32 1
  %47 = load %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_binder"*, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_binder"** %46, align 8, !tbaa !189
  %48 = icmp eq %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_binder"* %47, null
  br i1 %48, label %62, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_binder", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_binder"* %47, i64 0, i32 0
  %51 = load %struct.ID3D12DescriptorHeap*, %struct.ID3D12DescriptorHeap** %50, align 8, !tbaa !190
  %52 = icmp eq %struct.ID3D12DescriptorHeap* %51, null
  br i1 %52, label %60, label %53

53:                                               ; preds = %49
  %54 = getelementptr %struct.ID3D12DescriptorHeap, %struct.ID3D12DescriptorHeap* %51, i64 0, i32 0, i32 0, i32 0, i32 0
  %55 = bitcast %struct.ID3D12DescriptorHeap* %51 to i32 (%struct.IUnknown*)***
  %56 = load i32 (%struct.IUnknown*)**, i32 (%struct.IUnknown*)*** %55, align 8, !tbaa !50
  %57 = getelementptr inbounds i32 (%struct.IUnknown*)*, i32 (%struct.IUnknown*)** %56, i64 2
  %58 = load i32 (%struct.IUnknown*)*, i32 (%struct.IUnknown*)** %57, align 8
  %59 = call i32 %58(%struct.IUnknown* nonnull dereferenceable(8) %54) #10
  br label %60

60:                                               ; preds = %53, %49
  %61 = bitcast %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_binder"* %47 to i8*
  call void @free(i8* nonnull %61) #10
  br label %62

62:                                               ; preds = %60, %45
  %63 = getelementptr inbounds [8 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame"], [8 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame"]* @"?frame_pool@D3D12Compute@Internal@Runtime@Halide@@3PAUd3d12_frame@1234@A", i64 0, i64 %27, i32 2
  %64 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %63, i64 0, i32 0
  %65 = load %struct.ID3D12Resource*, %struct.ID3D12Resource** %64, align 8, !tbaa !54
  %66 = icmp eq %struct.ID3D12Resource* %65, null
  br i1 %66, label %74, label %67

67:                                               ; preds = %62
  %68 = getelementptr %struct.ID3D12Resource, %struct.ID3D12Resource* %65, i64 0, i32 0, i32 0, i32 0, i32 0
  %69 = bitcast %struct.ID3D12Resource* %65 to i32 (%struct.IUnknown*)***
  %70 = load i32 (%struct.IUnknown*)**, i32 (%struct.IUnknown*)*** %69, align 8, !tbaa !50
  %71 = getelementptr inbounds i32 (%struct.IUnknown*)*, i32 (%struct.IUnknown*)** %70, i64 2
  %72 = load i32 (%struct.IUnknown*)*, i32 (%struct.IUnknown*)** %71, align 8
  %73 = call i32 %72(%struct.IUnknown* nonnull dereferenceable(8) %68) #10
  br label %74

74:                                               ; preds = %67, %62
  %75 = getelementptr inbounds [8 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame"], [8 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame"]* @"?frame_pool@D3D12Compute@Internal@Runtime@Halide@@3PAUd3d12_frame@1234@A", i64 0, i64 %27, i32 2, i32 12
  %76 = load i8*, i8** %75, align 8, !tbaa !113
  %77 = icmp eq i8* %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %74
  call void @free(i8* nonnull %76) #10
  br label %79

79:                                               ; preds = %78, %74
  %80 = getelementptr inbounds [8 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame"], [8 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame"]* @"?frame_pool@D3D12Compute@Internal@Runtime@Halide@@3PAUd3d12_frame@1234@A", i64 0, i64 %27, i32 2, i32 11
  %81 = load i8, i8* %80, align 8, !tbaa !112, !range !48
  %82 = icmp eq i8 %81, 0
  %83 = bitcast %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %63 to i8*
  br i1 %82, label %85, label %84

84:                                               ; preds = %79
  call void @free(i8* nonnull %83) #10
  br label %85

85:                                               ; preds = %79, %84
  store %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_graphics_command_list"* null, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_graphics_command_list"** %29, align 8, !tbaa !180
  store %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_binder"* null, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_binder"** %46, align 8, !tbaa !189
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %23)
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %3)
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %4)
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %25)
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %24)
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(40) %23, i8 0, i64 40, i1 false), !alias.scope !191
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %24, i8 0, i64 52, i1 false), !alias.scope !191
  store i8 0, i8* %3, align 8, !tbaa !107, !alias.scope !191
  store i8 0, i8* %4, align 1, !tbaa !26, !alias.scope !191
  store i16 0, i16* %5, align 2, !tbaa !108, !alias.scope !191
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %83, i8* nonnull align 8 %23, i64 40, i1 true) #12, !tbaa.struct !119
  %86 = getelementptr inbounds [8 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame"], [8 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame"]* @"?frame_pool@D3D12Compute@Internal@Runtime@Halide@@3PAUd3d12_frame@1234@A", i64 0, i64 %27, i32 2, i32 9, i32 0
  %87 = load volatile i8, i8* %3, align 8, !tbaa.struct !194
  store volatile i8 %87, i8* %86, align 8, !tbaa.struct !194
  %88 = getelementptr inbounds [8 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame"], [8 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame"]* @"?frame_pool@D3D12Compute@Internal@Runtime@Halide@@3PAUd3d12_frame@1234@A", i64 0, i64 %27, i32 2, i32 9, i32 1
  %89 = load volatile i8, i8* %4, align 1, !tbaa.struct !195
  store volatile i8 %89, i8* %88, align 1, !tbaa.struct !195
  %90 = getelementptr inbounds [8 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame"], [8 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame"]* @"?frame_pool@D3D12Compute@Internal@Runtime@Halide@@3PAUd3d12_frame@1234@A", i64 0, i64 %27, i32 2, i32 9, i32 2
  %91 = load volatile i16, i16* %5, align 2, !tbaa.struct !196
  store volatile i16 %91, i16* %90, align 2, !tbaa.struct !196
  %92 = bitcast %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame"* %28 to i8*
  %93 = getelementptr inbounds i8, i8* %92, i64 60
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %93, i8* nonnull align 4 %24, i64 52, i1 true) #12, !tbaa.struct !197
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %23)
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %3)
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %4)
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %25)
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %24)
  %94 = getelementptr inbounds [8 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame"], [8 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame"]* @"?frame_pool@D3D12Compute@Internal@Runtime@Halide@@3PAUd3d12_frame@1234@A", i64 0, i64 %27, i32 3
  store i64 0, i64* %94, align 8, !tbaa !188
  %95 = add nuw nsw i64 %27, 1
  %96 = icmp eq i64 %95, 8
  br i1 %96, label %180, label %26, !llvm.loop !198

97:                                               ; preds = %207
  %98 = load %struct.halide_d3d12compute_device*, %struct.halide_d3d12compute_device** @"?device@D3D12Compute@Internal@Runtime@Halide@@3PEAUhalide_d3d12compute_device@@EA", align 8, !tbaa !49
  call void @halide_mutex_lock(%struct.halide_mutex* nonnull getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@D3D12Compute@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PEAUhalide_d3d12compute_device@@PEAUd3d12_library@D3D12Compute@Internal@Runtime@Halide@@@24@A", i64 0, i32 0)) #10
  %99 = load i32, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@D3D12Compute@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PEAUhalide_d3d12compute_device@@PEAUd3d12_library@D3D12Compute@Internal@Runtime@Halide@@@24@A", i64 0, i32 3), align 8, !tbaa !199
  %100 = icmp eq i32 %99, 0
  %101 = load i32, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@D3D12Compute@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PEAUhalide_d3d12compute_device@@PEAUd3d12_library@D3D12Compute@Internal@Runtime@Halide@@@24@A", i64 0, i32 1), align 8
  %102 = icmp eq i32 %101, 31
  %103 = or i1 %100, %102
  br i1 %103, label %176, label %104

104:                                              ; preds = %97
  %105 = load %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation"** getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@D3D12Compute@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PEAUhalide_d3d12compute_device@@PEAUd3d12_library@D3D12Compute@Internal@Runtime@Halide@@@24@A", i64 0, i32 2), align 8, !tbaa !172
  br label %106

106:                                              ; preds = %166, %104
  %107 = phi i32 [ %101, %104 ], [ %167, %166 ]
  %108 = phi i32 [ %99, %104 ], [ %168, %166 ]
  %109 = phi %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation"* [ %105, %104 ], [ %169, %166 ]
  %110 = phi i32 [ %101, %104 ], [ %170, %166 ]
  %111 = phi %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation"* [ %105, %104 ], [ %171, %166 ]
  %112 = phi i64 [ 0, %104 ], [ %172, %166 ]
  %113 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation"* %111, i64 %112, i32 2
  %114 = load i32, i32* %113, align 8, !tbaa !174
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %166, label %116

116:                                              ; preds = %106
  %117 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation"* %111, i64 %112, i32 0
  %118 = load %struct.halide_d3d12compute_device*, %struct.halide_d3d12compute_device** %117, align 8, !tbaa !176
  %119 = icmp eq %struct.halide_d3d12compute_device* %118, %98
  br i1 %119, label %120, label %166

120:                                              ; preds = %116
  %121 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation"* %111, i64 %112, i32 3
  %122 = load i32, i32* %121, align 4, !tbaa !177
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %166

124:                                              ; preds = %120
  %125 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation"* %111, i64 %112, i32 1
  %126 = load %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_library"*, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_library"** %125, align 8, !tbaa !178
  %127 = icmp eq %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_library"* %126, null
  br i1 %127, label %159, label %128

128:                                              ; preds = %124
  %129 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_library", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_library"* %126, i64 0, i32 0, i32 0, i32 8
  br label %130

130:                                              ; preds = %128, %148
  %131 = phi i64 [ 0, %128 ], [ %149, %148 ]
  %132 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_library", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_library"* %126, i64 0, i32 0, i32 0, i32 1, i64 %131
  %133 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %132, align 8, !tbaa !49
  store %"struct.Halide::Runtime::Internal::CacheEntry"* null, %"struct.Halide::Runtime::Internal::CacheEntry"** %132, align 8, !tbaa !49
  %134 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %133, null
  br i1 %134, label %148, label %135

135:                                              ; preds = %130, %135
  %136 = phi %"struct.Halide::Runtime::Internal::CacheEntry"* [ %138, %135 ], [ %133, %130 ]
  %137 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %136, i64 0, i32 0
  %138 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %137, align 8, !tbaa !200
  %139 = load void (i8*, i64)*, void (i8*, i64)** %129, align 8, !tbaa !160
  %140 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %136, i64 0, i32 8
  %141 = load i64, i64* %140, align 8, !tbaa !202
  %142 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %136, i64 0, i32 9
  %143 = load i8*, i8** %142, align 8, !tbaa !203
  call void %139(i8* %143, i64 %141) #10
  %144 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %136, i64 0, i32 3
  %145 = load i8*, i8** %144, align 8, !tbaa !204
  call void @free(i8* %145) #10
  %146 = bitcast %"struct.Halide::Runtime::Internal::CacheEntry"* %136 to i8*
  call void @free(i8* nonnull %146) #10
  %147 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %138, null
  br i1 %147, label %148, label %135, !llvm.loop !205

148:                                              ; preds = %135, %130
  %149 = add nuw nsw i64 %131, 1
  %150 = icmp eq i64 %149, 256
  br i1 %150, label %151, label %130, !llvm.loop !206

151:                                              ; preds = %148
  %152 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_library", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_library"* %126, i64 0, i32 0, i32 0, i32 6
  store i64 0, i64* %152, align 8, !tbaa !157
  %153 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_library", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_library"* %126, i64 0, i32 0, i32 0, i32 2
  %154 = bitcast %"struct.Halide::Runtime::Internal::CacheEntry"** %153 to <2 x %"struct.Halide::Runtime::Internal::CacheEntry"*>*
  store <2 x %"struct.Halide::Runtime::Internal::CacheEntry"*> zeroinitializer, <2 x %"struct.Halide::Runtime::Internal::CacheEntry"*>* %154, align 8, !tbaa !49
  %155 = bitcast %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_library"* %126 to i8*
  call void @free(i8* nonnull %155) #10
  %156 = load %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation"** getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@D3D12Compute@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PEAUhalide_d3d12compute_device@@PEAUd3d12_library@D3D12Compute@Internal@Runtime@Halide@@@24@A", i64 0, i32 2), align 8, !tbaa !172
  %157 = load i32, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@D3D12Compute@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PEAUhalide_d3d12compute_device@@PEAUd3d12_library@D3D12Compute@Internal@Runtime@Halide@@@24@A", i64 0, i32 3), align 8, !tbaa !199
  %158 = load i32, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@D3D12Compute@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PEAUhalide_d3d12compute_device@@PEAUd3d12_library@D3D12Compute@Internal@Runtime@Halide@@@24@A", i64 0, i32 1), align 8, !tbaa !171
  br label %159

159:                                              ; preds = %124, %151
  %160 = phi i32 [ %107, %124 ], [ %158, %151 ]
  %161 = phi i32 [ %108, %124 ], [ %157, %151 ]
  %162 = phi %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation"* [ %109, %124 ], [ %156, %151 ]
  %163 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation"* %162, i64 %112, i32 1
  store %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_library"* null, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_library"** %163, align 8, !tbaa !178
  %164 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation"* %162, i64 %112, i32 2
  store i32 1, i32* %164, align 8, !tbaa !174
  %165 = add nsw i32 %161, -1
  store i32 %165, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@D3D12Compute@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PEAUhalide_d3d12compute_device@@PEAUd3d12_library@D3D12Compute@Internal@Runtime@Halide@@@24@A", i64 0, i32 3), align 8, !tbaa !199
  br label %166

166:                                              ; preds = %159, %120, %116, %106
  %167 = phi i32 [ %107, %106 ], [ %107, %116 ], [ %107, %120 ], [ %160, %159 ]
  %168 = phi i32 [ %108, %106 ], [ %108, %116 ], [ %108, %120 ], [ %165, %159 ]
  %169 = phi %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation"* [ %109, %106 ], [ %109, %116 ], [ %109, %120 ], [ %162, %159 ]
  %170 = phi i32 [ %110, %106 ], [ %110, %116 ], [ %110, %120 ], [ %160, %159 ]
  %171 = phi %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation"* [ %111, %106 ], [ %111, %116 ], [ %111, %120 ], [ %162, %159 ]
  %172 = add nuw nsw i64 %112, 1
  %173 = shl nuw i32 1, %170
  %174 = sext i32 %173 to i64
  %175 = icmp slt i64 %172, %174
  br i1 %175, label %106, label %176, !llvm.loop !207

176:                                              ; preds = %166, %97
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@D3D12Compute@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PEAUhalide_d3d12compute_device@@PEAUd3d12_library@D3D12Compute@Internal@Runtime@Halide@@@24@A", i64 0, i32 0)) #10
  %177 = load %struct.halide_d3d12compute_device*, %struct.halide_d3d12compute_device** %7, align 8, !tbaa !49
  %178 = load %struct.halide_d3d12compute_device*, %struct.halide_d3d12compute_device** @"?device@D3D12Compute@Internal@Runtime@Halide@@3PEAUhalide_d3d12compute_device@@EA", align 8, !tbaa !49
  %179 = icmp eq %struct.halide_d3d12compute_device* %177, %178
  br i1 %179, label %210, label %314

180:                                              ; preds = %85, %207
  %181 = phi i64 [ %208, %207 ], [ 0, %85 ]
  %182 = getelementptr inbounds [32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*], [32 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*]* @"?buffer_pool@@3PAPEAUd3d12_buffer@D3D12Compute@Internal@Runtime@Halide@@A", i64 0, i64 %181
  %183 = load %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"** %182, align 8, !tbaa !49
  %184 = icmp eq %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %183, null
  br i1 %184, label %207, label %185

185:                                              ; preds = %180
  %186 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %183, i64 0, i32 0
  %187 = load %struct.ID3D12Resource*, %struct.ID3D12Resource** %186, align 8, !tbaa !54
  %188 = icmp eq %struct.ID3D12Resource* %187, null
  br i1 %188, label %196, label %189

189:                                              ; preds = %185
  %190 = getelementptr %struct.ID3D12Resource, %struct.ID3D12Resource* %187, i64 0, i32 0, i32 0, i32 0, i32 0
  %191 = bitcast %struct.ID3D12Resource* %187 to i32 (%struct.IUnknown*)***
  %192 = load i32 (%struct.IUnknown*)**, i32 (%struct.IUnknown*)*** %191, align 8, !tbaa !50
  %193 = getelementptr inbounds i32 (%struct.IUnknown*)*, i32 (%struct.IUnknown*)** %192, i64 2
  %194 = load i32 (%struct.IUnknown*)*, i32 (%struct.IUnknown*)** %193, align 8
  %195 = call i32 %194(%struct.IUnknown* nonnull dereferenceable(8) %190) #10
  br label %196

196:                                              ; preds = %189, %185
  %197 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %183, i64 0, i32 12
  %198 = load i8*, i8** %197, align 8, !tbaa !113
  %199 = icmp eq i8* %198, null
  br i1 %199, label %201, label %200

200:                                              ; preds = %196
  call void @free(i8* nonnull %198) #10
  br label %201

201:                                              ; preds = %200, %196
  %202 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %183, i64 0, i32 11
  %203 = load i8, i8* %202, align 8, !tbaa !112, !range !48
  %204 = icmp eq i8 %203, 0
  br i1 %204, label %207, label %205

205:                                              ; preds = %201
  %206 = bitcast %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %183 to i8*
  call void @free(i8* nonnull %206) #10
  br label %207

207:                                              ; preds = %180, %201, %205
  %208 = add nuw nsw i64 %181, 1
  %209 = icmp eq i64 %208, 32
  br i1 %209, label %97, label %180, !llvm.loop !208

210:                                              ; preds = %176
  %211 = load %struct.ID3D12Resource*, %struct.ID3D12Resource** getelementptr inbounds (%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* @"?upload@D3D12Compute@Internal@Runtime@Halide@@3Ud3d12_buffer@1234@A", i64 0, i32 0), align 16, !tbaa !54
  %212 = icmp eq %struct.ID3D12Resource* %211, null
  br i1 %212, label %220, label %213

213:                                              ; preds = %210
  %214 = getelementptr %struct.ID3D12Resource, %struct.ID3D12Resource* %211, i64 0, i32 0, i32 0, i32 0, i32 0
  %215 = bitcast %struct.ID3D12Resource* %211 to i32 (%struct.IUnknown*)***
  %216 = load i32 (%struct.IUnknown*)**, i32 (%struct.IUnknown*)*** %215, align 8, !tbaa !50
  %217 = getelementptr inbounds i32 (%struct.IUnknown*)*, i32 (%struct.IUnknown*)** %216, i64 2
  %218 = load i32 (%struct.IUnknown*)*, i32 (%struct.IUnknown*)** %217, align 8
  %219 = call i32 %218(%struct.IUnknown* nonnull dereferenceable(8) %214) #10
  br label %220

220:                                              ; preds = %213, %210
  %221 = load i8*, i8** getelementptr inbounds (%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* @"?upload@D3D12Compute@Internal@Runtime@Halide@@3Ud3d12_buffer@1234@A", i64 0, i32 12), align 16, !tbaa !113
  %222 = icmp eq i8* %221, null
  br i1 %222, label %224, label %223

223:                                              ; preds = %220
  call void @free(i8* nonnull %221) #10
  br label %224

224:                                              ; preds = %223, %220
  %225 = load i8, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* @"?upload@D3D12Compute@Internal@Runtime@Halide@@3Ud3d12_buffer@1234@A", i64 0, i32 11), align 8, !tbaa !112, !range !48
  %226 = icmp eq i8 %225, 0
  br i1 %226, label %228, label %227

227:                                              ; preds = %224
  call void @free(i8* nonnull bitcast (%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* @"?upload@D3D12Compute@Internal@Runtime@Halide@@3Ud3d12_buffer@1234@A" to i8*)) #10
  br label %228

228:                                              ; preds = %224, %227
  %229 = load %struct.ID3D12Resource*, %struct.ID3D12Resource** getelementptr inbounds (%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* @"?readback@D3D12Compute@Internal@Runtime@Halide@@3Ud3d12_buffer@1234@A", i64 0, i32 0), align 16, !tbaa !54
  %230 = icmp eq %struct.ID3D12Resource* %229, null
  br i1 %230, label %238, label %231

231:                                              ; preds = %228
  %232 = getelementptr %struct.ID3D12Resource, %struct.ID3D12Resource* %229, i64 0, i32 0, i32 0, i32 0, i32 0
  %233 = bitcast %struct.ID3D12Resource* %229 to i32 (%struct.IUnknown*)***
  %234 = load i32 (%struct.IUnknown*)**, i32 (%struct.IUnknown*)*** %233, align 8, !tbaa !50
  %235 = getelementptr inbounds i32 (%struct.IUnknown*)*, i32 (%struct.IUnknown*)** %234, i64 2
  %236 = load i32 (%struct.IUnknown*)*, i32 (%struct.IUnknown*)** %235, align 8
  %237 = call i32 %236(%struct.IUnknown* nonnull dereferenceable(8) %232) #10
  br label %238

238:                                              ; preds = %231, %228
  %239 = load i8*, i8** getelementptr inbounds (%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* @"?readback@D3D12Compute@Internal@Runtime@Halide@@3Ud3d12_buffer@1234@A", i64 0, i32 12), align 16, !tbaa !113
  %240 = icmp eq i8* %239, null
  br i1 %240, label %242, label %241

241:                                              ; preds = %238
  call void @free(i8* nonnull %239) #10
  br label %242

242:                                              ; preds = %241, %238
  %243 = load i8, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* @"?readback@D3D12Compute@Internal@Runtime@Halide@@3Ud3d12_buffer@1234@A", i64 0, i32 11), align 8, !tbaa !112, !range !48
  %244 = icmp eq i8 %243, 0
  br i1 %244, label %246, label %245

245:                                              ; preds = %242
  call void @free(i8* nonnull bitcast (%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* @"?readback@D3D12Compute@Internal@Runtime@Halide@@3Ud3d12_buffer@1234@A" to i8*)) #10
  br label %246

246:                                              ; preds = %242, %245
  %247 = bitcast { %struct.ID3D12Resource*, i32, i32, i32, i32, i32, i32, i32, i32 }* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %247)
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %10)
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %11)
  %248 = bitcast i16* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %248)
  %249 = getelementptr inbounds [52 x i8], [52 x i8]* %13, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %249)
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(40) %247, i8 0, i64 40, i1 false)
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %249, i8 0, i64 52, i1 false)
  store i8 0, i8* %10, align 8, !tbaa !107
  store i8 0, i8* %11, align 1, !tbaa !26
  store i16 0, i16* %12, align 2, !tbaa !108
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 bitcast (%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* @"?readback@D3D12Compute@Internal@Runtime@Halide@@3Ud3d12_buffer@1234@A" to i8*), i8* nonnull align 8 %247, i64 40, i1 true), !tbaa.struct !119
  %250 = load volatile i8, i8* %10, align 8, !tbaa.struct !194
  store volatile i8 %250, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* @"?readback@D3D12Compute@Internal@Runtime@Halide@@3Ud3d12_buffer@1234@A", i64 0, i32 9, i32 0), align 8, !tbaa.struct !194
  %251 = load volatile i8, i8* %11, align 1, !tbaa.struct !195
  store volatile i8 %251, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* @"?readback@D3D12Compute@Internal@Runtime@Halide@@3Ud3d12_buffer@1234@A", i64 0, i32 9, i32 1), align 1, !tbaa.struct !195
  %252 = load volatile i16, i16* %12, align 2, !tbaa.struct !196
  store volatile i16 %252, i16* getelementptr inbounds (%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* @"?readback@D3D12Compute@Internal@Runtime@Halide@@3Ud3d12_buffer@1234@A", i64 0, i32 9, i32 2), align 2, !tbaa.struct !196
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 getelementptr inbounds (i8, i8* bitcast (%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* @"?readback@D3D12Compute@Internal@Runtime@Halide@@3Ud3d12_buffer@1234@A" to i8*), i64 44), i8* nonnull align 4 %249, i64 52, i1 true), !tbaa.struct !197
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 bitcast (%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* @"?upload@D3D12Compute@Internal@Runtime@Halide@@3Ud3d12_buffer@1234@A" to i8*), i8* align 8 bitcast (%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* @"?readback@D3D12Compute@Internal@Runtime@Halide@@3Ud3d12_buffer@1234@A" to i8*), i64 96, i1 true), !tbaa.struct !119
  %253 = load %struct.ID3D12RootSignature*, %struct.ID3D12RootSignature** @"?rootSignature@D3D12Compute@Internal@Runtime@Halide@@3PEAUID3D12RootSignature@@EA", align 8, !tbaa !49
  %254 = icmp eq %struct.ID3D12RootSignature* %253, null
  br i1 %254, label %262, label %255

255:                                              ; preds = %246
  %256 = getelementptr %struct.ID3D12RootSignature, %struct.ID3D12RootSignature* %253, i64 0, i32 0, i32 0, i32 0
  %257 = bitcast %struct.ID3D12RootSignature* %253 to i32 (%struct.IUnknown*)***
  %258 = load i32 (%struct.IUnknown*)**, i32 (%struct.IUnknown*)*** %257, align 8, !tbaa !50
  %259 = getelementptr inbounds i32 (%struct.IUnknown*)*, i32 (%struct.IUnknown*)** %258, i64 2
  %260 = load i32 (%struct.IUnknown*)*, i32 (%struct.IUnknown*)** %259, align 8
  %261 = call i32 %260(%struct.IUnknown* nonnull dereferenceable(8) %256) #10
  br label %262

262:                                              ; preds = %246, %255
  store %struct.ID3D12RootSignature* null, %struct.ID3D12RootSignature** @"?rootSignature@D3D12Compute@Internal@Runtime@Halide@@3PEAUID3D12RootSignature@@EA", align 8, !tbaa !49
  %263 = load %struct.halide_d3d12compute_command_queue*, %struct.halide_d3d12compute_command_queue** @"?queue@D3D12Compute@Internal@Runtime@Halide@@3PEAUhalide_d3d12compute_command_queue@@EA", align 8, !tbaa !49
  %264 = icmp eq %struct.halide_d3d12compute_command_queue* %263, null
  br i1 %264, label %281, label %265

265:                                              ; preds = %262
  %266 = bitcast %struct.halide_d3d12compute_command_queue* %263 to %struct.IUnknown*
  %267 = bitcast %struct.halide_d3d12compute_command_queue* %263 to i32 (%struct.IUnknown*)***
  %268 = load i32 (%struct.IUnknown*)**, i32 (%struct.IUnknown*)*** %267, align 8, !tbaa !50
  %269 = getelementptr inbounds i32 (%struct.IUnknown*)*, i32 (%struct.IUnknown*)** %268, i64 2
  %270 = load i32 (%struct.IUnknown*)*, i32 (%struct.IUnknown*)** %269, align 8
  %271 = call i32 %270(%struct.IUnknown* nonnull dereferenceable(8) %266) #10
  %272 = load %struct.ID3D12Fence*, %struct.ID3D12Fence** @"?queue_fence@D3D12Compute@Internal@Runtime@Halide@@3PEAUID3D12Fence@@EA", align 8, !tbaa !49
  %273 = icmp eq %struct.ID3D12Fence* %272, null
  br i1 %273, label %281, label %274

274:                                              ; preds = %265
  %275 = getelementptr %struct.ID3D12Fence, %struct.ID3D12Fence* %272, i64 0, i32 0, i32 0, i32 0, i32 0
  %276 = bitcast %struct.ID3D12Fence* %272 to i32 (%struct.IUnknown*)***
  %277 = load i32 (%struct.IUnknown*)**, i32 (%struct.IUnknown*)*** %276, align 8, !tbaa !50
  %278 = getelementptr inbounds i32 (%struct.IUnknown*)*, i32 (%struct.IUnknown*)** %277, i64 2
  %279 = load i32 (%struct.IUnknown*)*, i32 (%struct.IUnknown*)** %278, align 8
  %280 = call i32 %279(%struct.IUnknown* nonnull dereferenceable(8) %275) #10
  br label %281

281:                                              ; preds = %262, %265, %274
  store %struct.halide_d3d12compute_command_queue* null, %struct.halide_d3d12compute_command_queue** @"?queue@D3D12Compute@Internal@Runtime@Halide@@3PEAUhalide_d3d12compute_command_queue@@EA", align 8, !tbaa !49
  %282 = load i8*, i8** @"?hFenceEvent@D3D12Compute@Internal@Runtime@Halide@@3PEAXEA", align 8, !tbaa !49
  %283 = call i32 @CloseHandle(i8* %282) #10
  store i8* null, i8** @"?hFenceEvent@D3D12Compute@Internal@Runtime@Halide@@3PEAXEA", align 8, !tbaa !49
  %284 = load %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_command_allocator"*, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_command_allocator"** @"?cmd_allocator_main@D3D12Compute@Internal@Runtime@Halide@@3PEAUd3d12_command_allocator@1234@EA", align 8, !tbaa !49
  %285 = icmp eq %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_command_allocator"* %284, null
  br i1 %285, label %293, label %286

286:                                              ; preds = %281
  %287 = bitcast %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_command_allocator"* %284 to %struct.IUnknown*
  %288 = bitcast %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_command_allocator"* %284 to i32 (%struct.IUnknown*)***
  %289 = load i32 (%struct.IUnknown*)**, i32 (%struct.IUnknown*)*** %288, align 8, !tbaa !50
  %290 = getelementptr inbounds i32 (%struct.IUnknown*)*, i32 (%struct.IUnknown*)** %289, i64 2
  %291 = load i32 (%struct.IUnknown*)*, i32 (%struct.IUnknown*)** %290, align 8
  %292 = call i32 %291(%struct.IUnknown* nonnull dereferenceable(8) %287) #10
  br label %293

293:                                              ; preds = %281, %286
  store %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_command_allocator"* null, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_command_allocator"** @"?cmd_allocator_main@D3D12Compute@Internal@Runtime@Halide@@3PEAUd3d12_command_allocator@1234@EA", align 8, !tbaa !49
  %294 = load %struct.halide_d3d12compute_device*, %struct.halide_d3d12compute_device** @"?device@D3D12Compute@Internal@Runtime@Halide@@3PEAUhalide_d3d12compute_device@@EA", align 8, !tbaa !49
  %295 = icmp eq %struct.halide_d3d12compute_device* %294, null
  br i1 %295, label %313, label %296

296:                                              ; preds = %293
  %297 = bitcast %struct.halide_d3d12compute_device* %294 to %struct.IUnknown*
  %298 = bitcast %struct.halide_d3d12compute_device* %294 to i32 (%struct.IUnknown*)***
  %299 = load i32 (%struct.IUnknown*)**, i32 (%struct.IUnknown*)*** %298, align 8, !tbaa !50
  %300 = getelementptr inbounds i32 (%struct.IUnknown*)*, i32 (%struct.IUnknown*)** %299, i64 2
  %301 = load i32 (%struct.IUnknown*)*, i32 (%struct.IUnknown*)** %300, align 8
  %302 = call i32 %301(%struct.IUnknown* nonnull dereferenceable(8) %297) #10
  %303 = load %struct.IDXGIAdapter1*, %struct.IDXGIAdapter1** @"?dxgiAdapter@D3D12Compute@Internal@Runtime@Halide@@3PEAUIDXGIAdapter1@@EA", align 8, !tbaa !49
  %304 = icmp eq %struct.IDXGIAdapter1* %303, null
  br i1 %304, label %312, label %305

305:                                              ; preds = %296
  %306 = getelementptr %struct.IDXGIAdapter1, %struct.IDXGIAdapter1* %303, i64 0, i32 0, i32 0, i32 0
  %307 = bitcast %struct.IDXGIAdapter1* %303 to i32 (%struct.IUnknown*)***
  %308 = load i32 (%struct.IUnknown*)**, i32 (%struct.IUnknown*)*** %307, align 8, !tbaa !50
  %309 = getelementptr inbounds i32 (%struct.IUnknown*)*, i32 (%struct.IUnknown*)** %308, i64 2
  %310 = load i32 (%struct.IUnknown*)*, i32 (%struct.IUnknown*)** %309, align 8
  %311 = call i32 %310(%struct.IUnknown* nonnull dereferenceable(8) %306) #10
  br label %312

312:                                              ; preds = %305, %296
  store %struct.IDXGIAdapter1* null, %struct.IDXGIAdapter1** @"?dxgiAdapter@D3D12Compute@Internal@Runtime@Halide@@3PEAUIDXGIAdapter1@@EA", align 8, !tbaa !49
  br label %313

313:                                              ; preds = %293, %312
  store %struct.halide_d3d12compute_device* null, %struct.halide_d3d12compute_device** @"?device@D3D12Compute@Internal@Runtime@Halide@@3PEAUhalide_d3d12compute_device@@EA", align 8, !tbaa !49
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %247)
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %10)
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %11)
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %248)
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %249)
  br label %314

314:                                              ; preds = %176, %313, %18
  %315 = call i32 @halide_d3d12compute_release_context(i8* %0) #11
  br label %316

316:                                              ; preds = %1, %314
  %317 = phi i32 [ 0, %314 ], [ %16, %1 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %15) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %14) #12
  ret i32 %317
}

; Function Attrs: nounwind mustprogress
define internal void @"??$release_object@Ud3d12_library@D3D12Compute@Internal@Runtime@Halide@@@D3D12Compute@Internal@Runtime@Halide@@YAXPEAUd3d12_library@0123@@Z"(%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_library"* %0) #0 {
  %2 = icmp eq %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_library"* %0, null
  br i1 %2, label %31, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_library", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_library"* %0, i64 0, i32 0, i32 0, i32 8
  br label %5

5:                                                ; preds = %23, %3
  %6 = phi i64 [ 0, %3 ], [ %24, %23 ]
  %7 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_library", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_library"* %0, i64 0, i32 0, i32 0, i32 1, i64 %6
  %8 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %7, align 8, !tbaa !49
  store %"struct.Halide::Runtime::Internal::CacheEntry"* null, %"struct.Halide::Runtime::Internal::CacheEntry"** %7, align 8, !tbaa !49
  %9 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %8, null
  br i1 %9, label %23, label %10

10:                                               ; preds = %5, %10
  %11 = phi %"struct.Halide::Runtime::Internal::CacheEntry"* [ %13, %10 ], [ %8, %5 ]
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %11, i64 0, i32 0
  %13 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %12, align 8, !tbaa !200
  %14 = load void (i8*, i64)*, void (i8*, i64)** %4, align 8, !tbaa !160
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %11, i64 0, i32 8
  %16 = load i64, i64* %15, align 8, !tbaa !202
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %11, i64 0, i32 9
  %18 = load i8*, i8** %17, align 8, !tbaa !203
  tail call void %14(i8* %18, i64 %16) #10
  %19 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %11, i64 0, i32 3
  %20 = load i8*, i8** %19, align 8, !tbaa !204
  tail call void @free(i8* %20) #10
  %21 = bitcast %"struct.Halide::Runtime::Internal::CacheEntry"* %11 to i8*
  tail call void @free(i8* nonnull %21) #10
  %22 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %13, null
  br i1 %22, label %23, label %10, !llvm.loop !205

23:                                               ; preds = %10, %5
  %24 = add nuw nsw i64 %6, 1
  %25 = icmp eq i64 %24, 256
  br i1 %25, label %26, label %5, !llvm.loop !206

26:                                               ; preds = %23
  %27 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_library", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_library"* %0, i64 0, i32 0, i32 0, i32 6
  store i64 0, i64* %27, align 8, !tbaa !157
  %28 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_library", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_library"* %0, i64 0, i32 0, i32 0, i32 2
  %29 = bitcast %"struct.Halide::Runtime::Internal::CacheEntry"** %28 to <2 x %"struct.Halide::Runtime::Internal::CacheEntry"*>*
  store <2 x %"struct.Halide::Runtime::Internal::CacheEntry"*> zeroinitializer, <2 x %"struct.Halide::Runtime::Internal::CacheEntry"*>* %29, align 8, !tbaa !49
  %30 = bitcast %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_library"* %0 to i8*
  tail call void @free(i8* nonnull %30) #10
  br label %31

31:                                               ; preds = %1, %26
  ret void
}

declare dllimport i32 @CloseHandle(i8*) local_unnamed_addr #2

; Function Attrs: nounwind mustprogress
define dso_local i32 @do_multidimensional_copy(%struct.halide_d3d12compute_device* %0, %"struct.Halide::Runtime::Internal::device_copy"* nocapture nonnull readonly align 8 dereferenceable(416) %1, i64 %2, i64 %3, i32 %4) local_unnamed_addr #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = icmp eq i32 %4, 0
  br i1 %8, label %18, label %9

9:                                                ; preds = %5
  %10 = add nsw i32 %4, -1
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %1, i64 0, i32 3, i64 %11
  %13 = load i64, i64* %12, align 8, !tbaa !6
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %52, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %1, i64 0, i32 5, i64 %11
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %1, i64 0, i32 4, i64 %11
  br label %38

18:                                               ; preds = %5
  %19 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %1, i64 0, i32 0
  %20 = load i64, i64* %19, align 8, !tbaa !12
  %21 = inttoptr i64 %20 to %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*
  %22 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %1, i64 0, i32 1
  %23 = load i64, i64* %22, align 8, !tbaa !14
  %24 = inttoptr i64 %23 to %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*
  %25 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #12
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %21, i64 0, i32 9, i32 0
  %27 = call i8* @memcpy(i8* nonnull %25, i8* nonnull %26, i64 4) #10
  %28 = load i32, i32* %7, align 4, !tbaa !77
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #12
  %29 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %29) #12
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %24, i64 0, i32 9, i32 0
  %31 = call i8* @memcpy(i8* nonnull %29, i8* nonnull %30, i64 4) #10
  %32 = load i32, i32* %6, align 4, !tbaa !77
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %29) #12
  %33 = icmp eq i32 %28, %32
  br i1 %33, label %35, label %34

34:                                               ; preds = %18
  call void @halide_print(i8* null, i8* getelementptr inbounds ([141 x i8], [141 x i8]* @"??_C@_0IN@BMJECIBC@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  call void @abort() #10
  br label %35

35:                                               ; preds = %34, %18
  %36 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %1, i64 0, i32 6
  %37 = load i64, i64* %36, align 8, !tbaa !15
  call fastcc void @"?d3d12compute_buffer_copy@D3D12Compute@Internal@Runtime@Halide@@YAHPEAUhalide_d3d12compute_device@@PEAUd3d12_buffer@1234@1_K22@Z"(%struct.halide_d3d12compute_device* %0, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %21, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %24, i64 %2, i64 %3, i64 %37) #11
  br label %52

38:                                               ; preds = %15, %38
  %39 = phi i64 [ 0, %15 ], [ %49, %38 ]
  %40 = phi i64 [ 0, %15 ], [ %47, %38 ]
  %41 = phi i64 [ 0, %15 ], [ %48, %38 ]
  %42 = phi i64 [ %3, %15 ], [ %45, %38 ]
  %43 = phi i64 [ %2, %15 ], [ %44, %38 ]
  %44 = add i64 %41, %43
  %45 = add i64 %40, %42
  %46 = tail call i32 @do_multidimensional_copy(%struct.halide_d3d12compute_device* %0, %"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %1, i64 %44, i64 %45, i32 %10) #11
  %47 = load i64, i64* %16, align 8, !tbaa !6
  %48 = load i64, i64* %17, align 8, !tbaa !6
  %49 = add nuw i64 %39, 1
  %50 = load i64, i64* %12, align 8, !tbaa !6
  %51 = icmp ult i64 %49, %50
  br i1 %51, label %38, label %52, !llvm.loop !209

52:                                               ; preds = %38, %9, %35
  ret i32 0
}

; Function Attrs: nounwind mustprogress
define internal fastcc void @"?d3d12compute_buffer_copy@D3D12Compute@Internal@Runtime@Halide@@YAHPEAUhalide_d3d12compute_device@@PEAUd3d12_buffer@1234@1_K22@Z"(%struct.halide_d3d12compute_device* %0, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %1, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %2, i64 %3, i64 %4, i64 %5) unnamed_addr #0 {
  %7 = alloca [1 x %struct.ID3D12CommandList*], align 8
  %8 = alloca %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer::transfer_t", align 8
  %9 = alloca %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer::transfer_t", align 8
  %10 = icmp eq %struct.halide_d3d12compute_device* %0, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([107 x i8], [107 x i8]* @"??_C@_0GL@JKLPMJCE@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  tail call void @abort() #10
  br label %12

12:                                               ; preds = %11, %6
  %13 = icmp eq %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %1, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %12
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @"??_C@_0GI@CIKNBAH@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  tail call void @abort() #10
  br label %15

15:                                               ; preds = %14, %12
  %16 = icmp eq %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %2, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %15
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @"??_C@_0GI@GGLHCMMF@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  tail call void @abort() #10
  br label %18

18:                                               ; preds = %17, %15
  %19 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %1, i64 0, i32 8
  %20 = load i32, i32* %19, align 4, !tbaa !111
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([137 x i8], [137 x i8]* @"??_C@_0IJ@PHCCBPFH@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  tail call void @abort() #10
  br label %23

23:                                               ; preds = %22, %18
  %24 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %2, i64 0, i32 8
  %25 = load i32, i32* %24, align 4, !tbaa !111
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([137 x i8], [137 x i8]* @"??_C@_0IJ@FKOMGEEA@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  tail call void @abort() #10
  br label %28

28:                                               ; preds = %27, %23
  %29 = load i32, i32* %19, align 4, !tbaa !111
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([138 x i8], [138 x i8]* @"??_C@_0IK@ONFBLGCD@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  tail call void @abort() #10
  br label %32

32:                                               ; preds = %31, %28
  %33 = load i32, i32* %24, align 4, !tbaa !111
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([138 x i8], [138 x i8]* @"??_C@_0IK@GOCPPNJP@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  tail call void @abort() #10
  br label %36

36:                                               ; preds = %35, %32
  %37 = icmp eq i64 %5, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %36
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([114 x i8], [114 x i8]* @"??_C@_0HC@DEBHPEJP@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  tail call void @abort() #10
  br label %39

39:                                               ; preds = %36, %38
  %40 = load i32, i32* %19, align 4, !tbaa !111
  %41 = icmp eq i32 %40, 5
  %42 = load i32, i32* %24, align 4, !tbaa !111
  br i1 %41, label %43, label %61

43:                                               ; preds = %39
  %44 = icmp eq i32 %42, 5
  br i1 %44, label %45, label %47

45:                                               ; preds = %43
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([136 x i8], [136 x i8]* @"??_C@_0II@HKEHGFPG@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  tail call void @abort() #10
  %46 = load i32, i32* %24, align 4, !tbaa !111
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i32 [ %46, %45 ], [ %42, %43 ]
  %49 = icmp eq i32 %48, 6
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([138 x i8], [138 x i8]* @"??_C@_0IK@HFNGBPMB@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  tail call void @abort() #10
  br label %51

51:                                               ; preds = %47, %50
  %52 = bitcast %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer::transfer_t"* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %52) #12
  %53 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer::transfer_t", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer::transfer_t"* %8, i64 0, i32 0
  store %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %1, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"** %53, align 8, !tbaa !184
  %54 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer::transfer_t", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer::transfer_t"* %8, i64 0, i32 1
  store i64 %3, i64* %54, align 8, !tbaa !185
  %55 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer::transfer_t", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer::transfer_t"* %8, i64 0, i32 2
  store i64 %5, i64* %55, align 8, !tbaa !182
  %56 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %2, i64 0, i32 10
  %57 = load %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer::transfer_t"*, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer::transfer_t"** %56, align 8, !tbaa !179
  %58 = icmp eq %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer::transfer_t"* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %51
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([123 x i8], [123 x i8]* @"??_C@_0HL@FDNNDOAP@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  tail call void @abort() #10
  br label %60

60:                                               ; preds = %59, %51
  store %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer::transfer_t"* %8, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer::transfer_t"** %56, align 8, !tbaa !179
  call fastcc void @"?d3d12compute_device_sync_internal@D3D12Compute@Internal@Runtime@Halide@@YAXPEAUhalide_d3d12compute_device@@PEAUd3d12_buffer@1234@@Z"(%struct.halide_d3d12compute_device* %0, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* nonnull %2) #11
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %52) #12
  br label %122

61:                                               ; preds = %39
  switch i32 %42, label %77 [
    i32 6, label %62
    i32 5, label %75
  ]

62:                                               ; preds = %61
  %63 = icmp eq i32 %40, 6
  br i1 %63, label %64, label %65

64:                                               ; preds = %62
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([138 x i8], [138 x i8]* @"??_C@_0IK@HCNEAADD@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  tail call void @abort() #10
  br label %65

65:                                               ; preds = %62, %64
  %66 = bitcast %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer::transfer_t"* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %66) #12
  %67 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer::transfer_t", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer::transfer_t"* %9, i64 0, i32 0
  store %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %2, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"** %67, align 8, !tbaa !184
  %68 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer::transfer_t", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer::transfer_t"* %9, i64 0, i32 1
  store i64 %4, i64* %68, align 8, !tbaa !185
  %69 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer::transfer_t", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer::transfer_t"* %9, i64 0, i32 2
  store i64 %5, i64* %69, align 8, !tbaa !182
  %70 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %1, i64 0, i32 10
  %71 = load %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer::transfer_t"*, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer::transfer_t"** %70, align 8, !tbaa !179
  %72 = icmp eq %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer::transfer_t"* %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %65
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([123 x i8], [123 x i8]* @"??_C@_0HL@GDNHBGNM@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  tail call void @abort() #10
  br label %74

74:                                               ; preds = %73, %65
  store %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer::transfer_t"* %9, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer::transfer_t"** %70, align 8, !tbaa !179
  call fastcc void @"?d3d12compute_device_sync_internal@D3D12Compute@Internal@Runtime@Halide@@YAXPEAUhalide_d3d12compute_device@@PEAUd3d12_buffer@1234@@Z"(%struct.halide_d3d12compute_device* %0, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* nonnull %1) #11
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %66) #12
  br label %122

75:                                               ; preds = %61
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([136 x i8], [136 x i8]* @"??_C@_0II@NAEKBKKG@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  tail call void @abort() #10
  %76 = load i32, i32* %19, align 4, !tbaa !111
  br label %77

77:                                               ; preds = %61, %75
  %78 = phi i32 [ %40, %61 ], [ %76, %75 ]
  %79 = icmp eq i32 %78, 6
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([138 x i8], [138 x i8]* @"??_C@_0IK@JBDMNMFO@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  tail call void @abort() #10
  br label %81

81:                                               ; preds = %80, %77
  %82 = load i32, i32* %24, align 4, !tbaa !111
  %83 = icmp eq i32 %82, 6
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([138 x i8], [138 x i8]* @"??_C@_0IK@BCECJHOC@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  tail call void @abort() #10
  br label %85

85:                                               ; preds = %81, %84
  %86 = tail call fastcc %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame"* @"?acquire_frame@D3D12Compute@Internal@Runtime@Halide@@YAPEAUd3d12_frame@1234@PEAUhalide_d3d12compute_device@@@Z"(%struct.halide_d3d12compute_device* %0) #11
  %87 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame"* %86, i64 0, i32 0
  %88 = load %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_graphics_command_list"*, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_graphics_command_list"** %87, align 8, !tbaa !180
  tail call fastcc void @"?buffer_copy_command@D3D12Compute@Internal@Runtime@Halide@@YAXPEAUd3d12_graphics_command_list@1234@PEAUd3d12_buffer@1234@1_K22@Z"(%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_graphics_command_list"* %88, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* nonnull %1, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* nonnull %2, i64 %3, i64 %4, i64 %5) #11
  %89 = load %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_graphics_command_list"*, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_graphics_command_list"** %87, align 8, !tbaa !180
  %90 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_graphics_command_list", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_graphics_command_list"* %89, i64 0, i32 0, i32 0
  %91 = load %struct.ID3D12GraphicsCommandList*, %struct.ID3D12GraphicsCommandList** %90, align 8, !tbaa !88
  %92 = bitcast %struct.ID3D12GraphicsCommandList* %91 to i32 (%struct.ID3D12GraphicsCommandList*)***
  %93 = load i32 (%struct.ID3D12GraphicsCommandList*)**, i32 (%struct.ID3D12GraphicsCommandList*)*** %92, align 8, !tbaa !50
  %94 = getelementptr inbounds i32 (%struct.ID3D12GraphicsCommandList*)*, i32 (%struct.ID3D12GraphicsCommandList*)** %93, i64 9
  %95 = load i32 (%struct.ID3D12GraphicsCommandList*)*, i32 (%struct.ID3D12GraphicsCommandList*)** %94, align 8
  %96 = tail call i32 %95(%struct.ID3D12GraphicsCommandList* nonnull dereferenceable(8) %91) #10
  %97 = bitcast [1 x %struct.ID3D12CommandList*]* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %97) #12
  %98 = getelementptr inbounds [1 x %struct.ID3D12CommandList*], [1 x %struct.ID3D12CommandList*]* %7, i64 0, i64 0
  %99 = load %struct.ID3D12GraphicsCommandList*, %struct.ID3D12GraphicsCommandList** %90, align 8, !tbaa !88
  %100 = getelementptr %struct.ID3D12GraphicsCommandList, %struct.ID3D12GraphicsCommandList* %99, i64 0, i32 0
  store %struct.ID3D12CommandList* %100, %struct.ID3D12CommandList** %98, align 8, !tbaa !49
  %101 = load %struct.ID3D12CommandQueue*, %struct.ID3D12CommandQueue** bitcast (%struct.halide_d3d12compute_command_queue** @"?queue@D3D12Compute@Internal@Runtime@Halide@@3PEAUhalide_d3d12compute_command_queue@@EA" to %struct.ID3D12CommandQueue**), align 8, !tbaa !49
  %102 = bitcast %struct.ID3D12CommandQueue* %101 to void (%struct.ID3D12CommandQueue*, i32, %struct.ID3D12CommandList**)***
  %103 = load void (%struct.ID3D12CommandQueue*, i32, %struct.ID3D12CommandList**)**, void (%struct.ID3D12CommandQueue*, i32, %struct.ID3D12CommandList**)*** %102, align 8, !tbaa !50
  %104 = getelementptr inbounds void (%struct.ID3D12CommandQueue*, i32, %struct.ID3D12CommandList**)*, void (%struct.ID3D12CommandQueue*, i32, %struct.ID3D12CommandList**)** %103, i64 10
  %105 = load void (%struct.ID3D12CommandQueue*, i32, %struct.ID3D12CommandList**)*, void (%struct.ID3D12CommandQueue*, i32, %struct.ID3D12CommandList**)** %104, align 8
  call void %105(%struct.ID3D12CommandQueue* nonnull dereferenceable(8) %101, i32 1, %struct.ID3D12CommandList** nonnull %98) #10
  %106 = atomicrmw volatile add i64* @"?queue_last_signal@D3D12Compute@Internal@Runtime@Halide@@3_KC", i64 1 seq_cst
  %107 = add i64 %106, 1
  %108 = load %struct.ID3D12CommandQueue*, %struct.ID3D12CommandQueue** bitcast (%struct.halide_d3d12compute_command_queue** @"?queue@D3D12Compute@Internal@Runtime@Halide@@3PEAUhalide_d3d12compute_command_queue@@EA" to %struct.ID3D12CommandQueue**), align 8, !tbaa !49
  %109 = load %struct.ID3D12Fence*, %struct.ID3D12Fence** @"?queue_fence@D3D12Compute@Internal@Runtime@Halide@@3PEAUID3D12Fence@@EA", align 8, !tbaa !49
  %110 = bitcast %struct.ID3D12CommandQueue* %108 to i32 (%struct.ID3D12CommandQueue*, %struct.ID3D12Fence*, i64)***
  %111 = load i32 (%struct.ID3D12CommandQueue*, %struct.ID3D12Fence*, i64)**, i32 (%struct.ID3D12CommandQueue*, %struct.ID3D12Fence*, i64)*** %110, align 8, !tbaa !50
  %112 = getelementptr inbounds i32 (%struct.ID3D12CommandQueue*, %struct.ID3D12Fence*, i64)*, i32 (%struct.ID3D12CommandQueue*, %struct.ID3D12Fence*, i64)** %111, i64 14
  %113 = load i32 (%struct.ID3D12CommandQueue*, %struct.ID3D12Fence*, i64)*, i32 (%struct.ID3D12CommandQueue*, %struct.ID3D12Fence*, i64)** %112, align 8
  %114 = call i32 %113(%struct.ID3D12CommandQueue* nonnull dereferenceable(8) %108, %struct.ID3D12Fence* %109, i64 %107) #10
  %115 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_graphics_command_list", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_graphics_command_list"* %89, i64 0, i32 1
  store i64 %107, i64* %115, align 8, !tbaa !186
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %97) #12
  %116 = load %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_graphics_command_list"*, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_graphics_command_list"** %87, align 8, !tbaa !180
  %117 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_graphics_command_list", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_graphics_command_list"* %116, i64 0, i32 1
  %118 = load i64, i64* %117, align 8, !tbaa !186
  %119 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame"* %86, i64 0, i32 3
  store i64 %118, i64* %119, align 8, !tbaa !188
  %120 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %1, i64 0, i32 15
  store i64 %118, i64* %120, align 8, !tbaa !114
  %121 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %2, i64 0, i32 15
  store i64 %118, i64* %121, align 8, !tbaa !114
  br label %122

122:                                              ; preds = %85, %74, %60
  ret void
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_d3d12compute_copy_to_device(i8* %0, %struct.halide_buffer_t* %1) #4 {
  %3 = alloca %"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder", align 8
  %4 = alloca %"struct.Halide::Runtime::Internal::device_copy", align 8
  %5 = icmp eq %struct.halide_buffer_t* %1, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([107 x i8], [107 x i8]* @"??_C@_0GL@HHOHMCJC@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  tail call void @abort() #10
  br label %7

7:                                                ; preds = %6, %2
  %8 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 2
  %9 = load i8*, i8** %8, align 8, !tbaa !18
  %10 = icmp eq i8* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %13 = load i64, i64* %12, align 8, !tbaa !25
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11, %7
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([131 x i8], [131 x i8]* @"??_C@_0ID@GPCJFJNF@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  tail call void @abort() #10
  br label %16

16:                                               ; preds = %11, %15
  %17 = bitcast %"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder"* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %17) #12
  call void @"?save@D3D12ContextHolder@D3D12Compute@Internal@Runtime@Halide@@AEAAXPEAX_N@Z"(%"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder"* nonnull dereferenceable(32) %3, i8* %0, i1 true) #10
  %18 = getelementptr inbounds %"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder", %"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder"* %3, i64 0, i32 3
  %19 = load i32, i32* %18, align 8, !tbaa !148
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %125

21:                                               ; preds = %16
  %22 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 416, i8* nonnull %22) #12
  call void @"?make_host_to_device_copy@Internal@Runtime@Halide@@YA?AUdevice_copy@123@PEBUhalide_buffer_t@@@Z"(%"struct.Halide::Runtime::Internal::device_copy"* nonnull sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %4, %struct.halide_buffer_t* nonnull %1) #11
  %23 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %4, i64 0, i32 1
  %24 = load i64, i64* %23, align 8, !tbaa !14
  %25 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %26 = load i64, i64* %25, align 8, !tbaa !25
  %27 = icmp eq i64 %24, %26
  br i1 %27, label %29, label %28

28:                                               ; preds = %21
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([126 x i8], [126 x i8]* @"??_C@_0HO@OJIECJKO@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  call void @abort() #10
  br label %29

29:                                               ; preds = %21, %28
  %30 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  %31 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %30, align 8, !tbaa !70
  %32 = icmp eq %struct.halide_device_interface_t* %31, @"?d3d12compute_device_interface@D3D12Compute@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A"
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  call void @halide_print(i8* null, i8* getelementptr inbounds ([161 x i8], [161 x i8]* @"??_C@_0KB@NININJGE@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  call void @abort() #10
  br label %34

34:                                               ; preds = %33, %29
  %35 = load i64, i64* %25, align 8, !tbaa !25
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  call void @halide_print(i8* null, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @"??_C@_0HI@MFPPBOBE@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  call void @abort() #10
  br label %38

38:                                               ; preds = %34, %37
  %39 = inttoptr i64 %35 to %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*
  %40 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 5
  %41 = load i32, i32* %40, align 4, !tbaa !27
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 1
  %45 = load i8, i8* %44, align 1, !tbaa !26
  br label %89

46:                                               ; preds = %38
  %47 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 6
  %48 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %47, align 8, !tbaa !28
  %49 = zext i32 %41 to i64
  br label %50

50:                                               ; preds = %64, %46
  %51 = phi i64 [ 0, %46 ], [ %66, %64 ]
  %52 = phi i64 [ 0, %46 ], [ %65, %64 ]
  %53 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %48, i64 %51, i32 2
  %54 = load i32, i32* %53, align 4, !tbaa !29
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %50
  %57 = zext i32 %54 to i64
  %58 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %48, i64 %51, i32 1
  %59 = load i32, i32* %58, align 4, !tbaa !34
  %60 = add nsw i32 %59, -1
  %61 = sext i32 %60 to i64
  %62 = mul nsw i64 %61, %57
  %63 = add nsw i64 %62, %52
  br label %64

64:                                               ; preds = %56, %50
  %65 = phi i64 [ %63, %56 ], [ %52, %50 ]
  %66 = add nuw nsw i64 %51, 1
  %67 = icmp eq i64 %66, %49
  br i1 %67, label %68, label %50, !llvm.loop !61

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 1
  %70 = load i8, i8* %69, align 1, !tbaa !26
  br label %71

71:                                               ; preds = %85, %68
  %72 = phi i64 [ 0, %68 ], [ %87, %85 ]
  %73 = phi i64 [ 0, %68 ], [ %86, %85 ]
  %74 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %48, i64 %72, i32 2
  %75 = load i32, i32* %74, align 4, !tbaa !29
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %71
  %78 = sext i32 %75 to i64
  %79 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %48, i64 %72, i32 1
  %80 = load i32, i32* %79, align 4, !tbaa !34
  %81 = add nsw i32 %80, -1
  %82 = sext i32 %81 to i64
  %83 = mul nsw i64 %82, %78
  %84 = add nsw i64 %83, %73
  br label %85

85:                                               ; preds = %77, %71
  %86 = phi i64 [ %84, %77 ], [ %73, %71 ]
  %87 = add nuw nsw i64 %72, 1
  %88 = icmp eq i64 %87, %49
  br i1 %88, label %89, label %71, !llvm.loop !62

89:                                               ; preds = %85, %43
  %90 = phi i8 [ %45, %43 ], [ %70, %85 ]
  %91 = phi i64 [ 0, %43 ], [ %65, %85 ]
  %92 = phi i64 [ 0, %43 ], [ %86, %85 ]
  %93 = zext i8 %90 to i64
  %94 = add nuw nsw i64 %93, 7
  %95 = lshr i64 %94, 3
  %96 = add nsw i64 %91, 1
  %97 = sub i64 %96, %92
  %98 = mul i64 %97, %95
  %99 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %39, i64 0, i32 2
  %100 = load i32, i32* %99, align 4, !tbaa !63
  %101 = zext i32 %100 to i64
  %102 = icmp eq i64 %98, %101
  br i1 %102, label %106, label %103

103:                                              ; preds = %89
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([151 x i8], [151 x i8]* @"??_C@_0JH@JGIADBHE@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  call void @abort() #10
  %104 = load i32, i32* %99, align 4, !tbaa !63
  %105 = zext i32 %104 to i64
  br label %106

106:                                              ; preds = %103, %89
  %107 = phi i64 [ %105, %103 ], [ %101, %89 ]
  %108 = getelementptr inbounds %"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder", %"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder"* %3, i64 0, i32 1
  %109 = load %struct.halide_d3d12compute_device*, %struct.halide_d3d12compute_device** %108, align 8, !tbaa !168
  %110 = call i64 @"?suballocate@D3D12Compute@Internal@Runtime@Halide@@YA_KPEAUhalide_d3d12compute_device@@PEAUd3d12_buffer@1234@_K@Z"(%struct.halide_d3d12compute_device* %109, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* nonnull @"?upload@D3D12Compute@Internal@Runtime@Halide@@3Ud3d12_buffer@1234@A", i64 %107) #11
  %111 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %39, i64 0, i32 5
  %112 = load i32, i32* %111, align 8, !tbaa !60
  %113 = zext i32 %112 to i64
  %114 = load i8*, i8** %8, align 8, !tbaa !18
  %115 = ptrtoint i8* %114 to i64
  %116 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %4, i64 0, i32 0
  store i64 %115, i64* %116, align 8, !tbaa !12
  %117 = call fastcc i8* @"?buffer_contents@D3D12Compute@Internal@Runtime@Halide@@YAPEAXPEAUd3d12_buffer@1234@@Z"(%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* nonnull @"?upload@D3D12Compute@Internal@Runtime@Halide@@3Ud3d12_buffer@1234@A") #11
  %118 = ptrtoint i8* %117 to i64
  %119 = add i64 %110, %118
  store i64 %119, i64* %23, align 8, !tbaa !14
  %120 = load i64, i64* %116, align 8, !tbaa !12
  %121 = inttoptr i64 %120 to i8*
  %122 = inttoptr i64 %119 to i8*
  %123 = call i8* @memcpy(i8* %122, i8* %121, i64 %107) #10
  %124 = load %struct.halide_d3d12compute_device*, %struct.halide_d3d12compute_device** %108, align 8, !tbaa !168
  call fastcc void @"?d3d12compute_buffer_copy@D3D12Compute@Internal@Runtime@Halide@@YAHPEAUhalide_d3d12compute_device@@PEAUd3d12_buffer@1234@1_K22@Z"(%struct.halide_d3d12compute_device* %124, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* nonnull @"?upload@D3D12Compute@Internal@Runtime@Halide@@3Ud3d12_buffer@1234@A", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* nonnull %39, i64 %110, i64 %113, i64 %107) #11
  call void @llvm.lifetime.end.p0i8(i64 416, i8* nonnull %22) #12
  br label %125

125:                                              ; preds = %16, %106
  %126 = phi i32 [ 0, %106 ], [ %19, %16 ]
  call void @"?restore@D3D12ContextHolder@D3D12Compute@Internal@Runtime@Halide@@AEAAXXZ"(%"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder"* nonnull dereferenceable(32) %3) #10
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %17) #12
  ret i32 %126
}

; Function Attrs: nounwind
define internal fastcc i8* @"?buffer_contents@D3D12Compute@Internal@Runtime@Halide@@YAPEAXPEAUd3d12_buffer@1234@@Z"(%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %0) unnamed_addr #4 {
  %2 = alloca %"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder", align 8
  %3 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %0, i64 0, i32 8
  %4 = load i32, i32* %3, align 4, !tbaa !111
  switch i32 %4, label %31 [
    i32 1, label %5
    i32 5, label %5
    i32 6, label %8
    i32 3, label %10
    i32 4, label %10
    i32 2, label %10
  ]

5:                                                ; preds = %1, %1
  %6 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %0, i64 0, i32 13
  %7 = load i8*, i8** %6, align 8, !tbaa !115
  br label %32

8:                                                ; preds = %1
  %9 = tail call i8* @"?map_buffer@D3D12Compute@Internal@Runtime@Halide@@YAPEAXPEAUd3d12_buffer@1234@@Z"(%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* nonnull @"?readback@D3D12Compute@Internal@Runtime@Halide@@3Ud3d12_buffer@1234@A") #11
  br label %32

10:                                               ; preds = %1, %1, %1
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([106 x i8], [106 x i8]* @"??_C@_0GK@DOBONIIG@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  tail call void @abort() #10
  %11 = bitcast %"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder"* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %11) #12
  call void @"?save@D3D12ContextHolder@D3D12Compute@Internal@Runtime@Halide@@AEAAXPEAX_N@Z"(%"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder"* nonnull dereferenceable(32) %2, i8* null, i1 true) #10
  %12 = getelementptr inbounds %"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder", %"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder"* %2, i64 0, i32 3
  %13 = load i32, i32* %12, align 8, !tbaa !148
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %10
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %0, i64 0, i32 2
  %17 = load i32, i32* %16, align 4, !tbaa !63
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %0, i64 0, i32 5
  %20 = load i32, i32* %19, align 8, !tbaa !60
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder", %"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder"* %2, i64 0, i32 1
  %23 = load %struct.halide_d3d12compute_device*, %struct.halide_d3d12compute_device** %22, align 8, !tbaa !168
  %24 = call i64 @"?suballocate@D3D12Compute@Internal@Runtime@Halide@@YA_KPEAUhalide_d3d12compute_device@@PEAUd3d12_buffer@1234@_K@Z"(%struct.halide_d3d12compute_device* %23, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* nonnull @"?readback@D3D12Compute@Internal@Runtime@Halide@@3Ud3d12_buffer@1234@A", i64 %18) #11
  %25 = load %struct.halide_d3d12compute_device*, %struct.halide_d3d12compute_device** %22, align 8, !tbaa !168
  call fastcc void @"?d3d12compute_buffer_copy@D3D12Compute@Internal@Runtime@Halide@@YAHPEAUhalide_d3d12compute_device@@PEAUd3d12_buffer@1234@1_K22@Z"(%struct.halide_d3d12compute_device* %25, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* nonnull %0, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* nonnull @"?readback@D3D12Compute@Internal@Runtime@Halide@@3Ud3d12_buffer@1234@A", i64 %21, i64 %24, i64 %18) #11
  %26 = call i8* @"?map_buffer@D3D12Compute@Internal@Runtime@Halide@@YAPEAXPEAUd3d12_buffer@1234@@Z"(%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* nonnull @"?readback@D3D12Compute@Internal@Runtime@Halide@@3Ud3d12_buffer@1234@A") #11
  %27 = ptrtoint i8* %26 to i64
  %28 = add i64 %24, %27
  %29 = inttoptr i64 %28 to i8*
  call void @"?restore@D3D12ContextHolder@D3D12Compute@Internal@Runtime@Halide@@AEAAXXZ"(%"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder"* nonnull dereferenceable(32) %2) #10
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %11) #12
  br label %32

30:                                               ; preds = %10
  call void @"?restore@D3D12ContextHolder@D3D12Compute@Internal@Runtime@Halide@@AEAAXXZ"(%"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder"* nonnull dereferenceable(32) %2) #10
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %11) #12
  br label %36

31:                                               ; preds = %1
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([106 x i8], [106 x i8]* @"??_C@_0GK@DKOLFJKC@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  tail call void @abort() #10
  br label %35

32:                                               ; preds = %15, %5, %8
  %33 = phi i8* [ %9, %8 ], [ %7, %5 ], [ %29, %15 ]
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %31, %32
  call void @halide_print(i8* null, i8* getelementptr inbounds ([106 x i8], [106 x i8]* @"??_C@_0GK@GCMMKOFI@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  call void @abort() #10
  br label %36

36:                                               ; preds = %30, %32, %35
  %37 = phi i8* [ null, %30 ], [ null, %35 ], [ %33, %32 ]
  ret i8* %37
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_d3d12compute_copy_to_host(i8* %0, %struct.halide_buffer_t* %1) #4 {
  %3 = alloca %"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder", align 8
  %4 = alloca %"struct.Halide::Runtime::Internal::device_copy", align 8
  %5 = icmp eq %struct.halide_buffer_t* %1, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([107 x i8], [107 x i8]* @"??_C@_0GL@HEDOAOHD@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  tail call void @abort() #10
  br label %7

7:                                                ; preds = %6, %2
  %8 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 2
  %9 = load i8*, i8** %8, align 8, !tbaa !18
  %10 = icmp eq i8* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %13 = load i64, i64* %12, align 8, !tbaa !25
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11, %7
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([131 x i8], [131 x i8]* @"??_C@_0ID@LIPAGPCO@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  tail call void @abort() #10
  br label %16

16:                                               ; preds = %11, %15
  %17 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 5
  %18 = load i32, i32* %17, align 4, !tbaa !27
  %19 = icmp sgt i32 %18, 16
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([106 x i8], [106 x i8]* @"??_C@_0GK@JBIOIBNJ@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  tail call void @abort() #10
  br label %122

21:                                               ; preds = %16
  %22 = bitcast %"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder"* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %22) #12
  call void @"?save@D3D12ContextHolder@D3D12Compute@Internal@Runtime@Halide@@AEAAXPEAX_N@Z"(%"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder"* nonnull dereferenceable(32) %3, i8* %0, i1 true) #10
  %23 = getelementptr inbounds %"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder", %"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder"* %3, i64 0, i32 3
  %24 = load i32, i32* %23, align 8, !tbaa !148
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %120

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  %28 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %27, align 8, !tbaa !70
  %29 = icmp eq %struct.halide_device_interface_t* %28, @"?d3d12compute_device_interface@D3D12Compute@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A"
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  call void @halide_print(i8* null, i8* getelementptr inbounds ([161 x i8], [161 x i8]* @"??_C@_0KB@NININJGE@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  call void @abort() #10
  br label %31

31:                                               ; preds = %30, %26
  %32 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %33 = load i64, i64* %32, align 8, !tbaa !25
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  call void @halide_print(i8* null, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @"??_C@_0HI@MFPPBOBE@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  call void @abort() #10
  br label %36

36:                                               ; preds = %31, %35
  %37 = inttoptr i64 %33 to %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*
  %38 = load i32, i32* %17, align 4, !tbaa !27
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 1
  %42 = load i8, i8* %41, align 1, !tbaa !26
  br label %86

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 6
  %45 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %44, align 8, !tbaa !28
  %46 = zext i32 %38 to i64
  br label %47

47:                                               ; preds = %61, %43
  %48 = phi i64 [ 0, %43 ], [ %63, %61 ]
  %49 = phi i64 [ 0, %43 ], [ %62, %61 ]
  %50 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %45, i64 %48, i32 2
  %51 = load i32, i32* %50, align 4, !tbaa !29
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %47
  %54 = zext i32 %51 to i64
  %55 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %45, i64 %48, i32 1
  %56 = load i32, i32* %55, align 4, !tbaa !34
  %57 = add nsw i32 %56, -1
  %58 = sext i32 %57 to i64
  %59 = mul nsw i64 %58, %54
  %60 = add nsw i64 %59, %49
  br label %61

61:                                               ; preds = %53, %47
  %62 = phi i64 [ %60, %53 ], [ %49, %47 ]
  %63 = add nuw nsw i64 %48, 1
  %64 = icmp eq i64 %63, %46
  br i1 %64, label %65, label %47, !llvm.loop !61

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 1
  %67 = load i8, i8* %66, align 1, !tbaa !26
  br label %68

68:                                               ; preds = %82, %65
  %69 = phi i64 [ 0, %65 ], [ %84, %82 ]
  %70 = phi i64 [ 0, %65 ], [ %83, %82 ]
  %71 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %45, i64 %69, i32 2
  %72 = load i32, i32* %71, align 4, !tbaa !29
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %68
  %75 = sext i32 %72 to i64
  %76 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %45, i64 %69, i32 1
  %77 = load i32, i32* %76, align 4, !tbaa !34
  %78 = add nsw i32 %77, -1
  %79 = sext i32 %78 to i64
  %80 = mul nsw i64 %79, %75
  %81 = add nsw i64 %80, %70
  br label %82

82:                                               ; preds = %74, %68
  %83 = phi i64 [ %81, %74 ], [ %70, %68 ]
  %84 = add nuw nsw i64 %69, 1
  %85 = icmp eq i64 %84, %46
  br i1 %85, label %86, label %68, !llvm.loop !62

86:                                               ; preds = %82, %40
  %87 = phi i8 [ %42, %40 ], [ %67, %82 ]
  %88 = phi i64 [ 0, %40 ], [ %62, %82 ]
  %89 = phi i64 [ 0, %40 ], [ %83, %82 ]
  %90 = zext i8 %87 to i64
  %91 = add nuw nsw i64 %90, 7
  %92 = lshr i64 %91, 3
  %93 = add nsw i64 %88, 1
  %94 = sub i64 %93, %89
  %95 = mul i64 %94, %92
  %96 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %37, i64 0, i32 2
  %97 = load i32, i32* %96, align 4, !tbaa !63
  %98 = zext i32 %97 to i64
  %99 = icmp eq i64 %95, %98
  br i1 %99, label %103, label %100

100:                                              ; preds = %86
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([151 x i8], [151 x i8]* @"??_C@_0JH@DPKKJPPD@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  call void @abort() #10
  %101 = load i32, i32* %96, align 4, !tbaa !63
  %102 = zext i32 %101 to i64
  br label %103

103:                                              ; preds = %100, %86
  %104 = phi i64 [ %102, %100 ], [ %98, %86 ]
  %105 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %37, i64 0, i32 5
  %106 = load i32, i32* %105, align 8, !tbaa !60
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds %"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder", %"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder"* %3, i64 0, i32 1
  %109 = load %struct.halide_d3d12compute_device*, %struct.halide_d3d12compute_device** %108, align 8, !tbaa !168
  %110 = call i64 @"?suballocate@D3D12Compute@Internal@Runtime@Halide@@YA_KPEAUhalide_d3d12compute_device@@PEAUd3d12_buffer@1234@_K@Z"(%struct.halide_d3d12compute_device* %109, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* nonnull @"?readback@D3D12Compute@Internal@Runtime@Halide@@3Ud3d12_buffer@1234@A", i64 %104) #11
  %111 = load %struct.halide_d3d12compute_device*, %struct.halide_d3d12compute_device** %108, align 8, !tbaa !168
  call fastcc void @"?d3d12compute_buffer_copy@D3D12Compute@Internal@Runtime@Halide@@YAHPEAUhalide_d3d12compute_device@@PEAUd3d12_buffer@1234@1_K22@Z"(%struct.halide_d3d12compute_device* %111, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* nonnull %37, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* nonnull @"?readback@D3D12Compute@Internal@Runtime@Halide@@3Ud3d12_buffer@1234@A", i64 %107, i64 %110, i64 %104) #11
  %112 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 416, i8* nonnull %112) #12
  call void @"?make_device_to_host_copy@Internal@Runtime@Halide@@YA?AUdevice_copy@123@PEBUhalide_buffer_t@@@Z"(%"struct.Halide::Runtime::Internal::device_copy"* nonnull sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %4, %struct.halide_buffer_t* nonnull %1) #11
  %113 = call fastcc i8* @"?buffer_contents@D3D12Compute@Internal@Runtime@Halide@@YAPEAXPEAUd3d12_buffer@1234@@Z"(%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* nonnull @"?readback@D3D12Compute@Internal@Runtime@Halide@@3Ud3d12_buffer@1234@A") #11
  %114 = ptrtoint i8* %113 to i64
  %115 = add i64 %110, %114
  %116 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %4, i64 0, i32 0
  store i64 %115, i64* %116, align 8, !tbaa !12
  %117 = load i8*, i8** %8, align 8, !tbaa !18
  %118 = ptrtoint i8* %117 to i64
  %119 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %4, i64 0, i32 1
  store i64 %118, i64* %119, align 8, !tbaa !14
  call void @"?copy_memory@Internal@Runtime@Halide@@YAXAEBUdevice_copy@123@PEAX@Z"(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %4, i8* %0) #11
  call void @llvm.lifetime.end.p0i8(i64 416, i8* nonnull %112) #12
  br label %120

120:                                              ; preds = %21, %103
  %121 = phi i32 [ 0, %103 ], [ %24, %21 ]
  call void @"?restore@D3D12ContextHolder@D3D12Compute@Internal@Runtime@Halide@@AEAAXXZ"(%"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder"* nonnull dereferenceable(32) %3) #10
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %22) #12
  br label %122

122:                                              ; preds = %120, %20
  %123 = phi i32 [ -14, %20 ], [ %121, %120 ]
  ret i32 %123
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_d3d12compute_run(i8* %0, i8* %1, i8* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, %struct.halide_type_t* %10, i8** %11, i8* %12, i32 %13, float* %14, i32 %15, i32 %16) local_unnamed_addr #4 {
  %18 = alloca [0 x i8], align 16
  %19 = alloca %struct.D3D12_RESOURCE_BARRIER, align 8
  %20 = alloca [1 x %struct.ID3D12CommandList*], align 8
  %21 = alloca [1 x %struct.ID3D12DescriptorHeap*], align 8
  %22 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  %23 = alloca %struct.ID3D12PipelineState*, align 8
  %24 = alloca %struct.D3D12_COMPUTE_PIPELINE_STATE_DESC, align 8
  %25 = alloca [4 x %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.11"], align 8
  %26 = alloca [5 x %struct._D3D_SHADER_MACRO], align 8
  %27 = alloca %struct.ID3D10Blob*, align 8
  %28 = alloca %struct.ID3D10Blob*, align 8
  %29 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  %30 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  %31 = alloca %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_function"*, align 8
  %32 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.10", align 8
  %33 = alloca %"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder", align 8
  %34 = alloca %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", align 8
  %35 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  %36 = alloca i32, align 4
  %37 = bitcast %"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder"* %33 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %37) #12
  call void @"?save@D3D12ContextHolder@D3D12Compute@Internal@Runtime@Halide@@AEAAXPEAX_N@Z"(%"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder"* nonnull dereferenceable(32) %33, i8* %0, i1 true) #10
  %38 = getelementptr inbounds %"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder", %"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder"* %33, i64 0, i32 3
  %39 = load i32, i32* %38, align 8, !tbaa !148
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %1089

41:                                               ; preds = %17
  %42 = getelementptr inbounds %"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder", %"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder"* %33, i64 0, i32 1
  %43 = load %struct.halide_d3d12compute_device*, %struct.halide_d3d12compute_device** %42, align 8, !tbaa !168
  call void @halide_mutex_lock(%struct.halide_mutex* nonnull getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@D3D12Compute@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PEAUhalide_d3d12compute_device@@PEAUd3d12_library@D3D12Compute@Internal@Runtime@Halide@@@24@A", i64 0, i32 0)) #10
  %44 = ptrtoint i8* %1 to i64
  %45 = trunc i64 %44 to i32
  %46 = load i32, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@D3D12Compute@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PEAUhalide_d3d12compute_device@@PEAUd3d12_library@D3D12Compute@Internal@Runtime@Halide@@@24@A", i64 0, i32 1), align 8, !tbaa !171
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %85, label %48

48:                                               ; preds = %41
  %49 = ptrtoint %struct.halide_d3d12compute_device* %43 to i64
  %50 = and i64 %44, 4294967295
  %51 = add i64 %50, %49
  %52 = mul i64 %51, -7046029254386353131
  %53 = sub i32 64, %46
  %54 = zext i32 %53 to i64
  %55 = lshr i64 %52, %54
  %56 = shl nuw i32 1, %46
  %57 = icmp eq i32 %46, 31
  br i1 %57, label %85, label %58

58:                                               ; preds = %48
  %59 = add nsw i32 %56, -1
  %60 = sext i32 %59 to i64
  %61 = load %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation"** getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@D3D12Compute@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PEAUhalide_d3d12compute_device@@PEAUd3d12_library@D3D12Compute@Internal@Runtime@Halide@@@24@A", i64 0, i32 2), align 8, !tbaa !172
  %62 = sext i32 %56 to i64
  %63 = icmp sgt i32 %56, 1
  %64 = select i1 %63, i32 %56, i32 1
  %65 = zext i32 %64 to i64
  br label %69

66:                                               ; preds = %77
  %67 = icmp slt i64 %83, %62
  %68 = icmp eq i64 %83, %65
  br i1 %68, label %85, label %69, !llvm.loop !173

69:                                               ; preds = %66, %58
  %70 = phi i64 [ 0, %58 ], [ %83, %66 ]
  %71 = phi i1 [ true, %58 ], [ %67, %66 ]
  %72 = add i64 %70, %55
  %73 = and i64 %72, %60
  %74 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation"* %61, i64 %73, i32 2
  %75 = load i32, i32* %74, align 8, !tbaa !174
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %85, label %77

77:                                               ; preds = %69
  %78 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation"* %61, i64 %73, i32 0
  %79 = load %struct.halide_d3d12compute_device*, %struct.halide_d3d12compute_device** %78, align 8, !tbaa !176
  %80 = icmp eq %struct.halide_d3d12compute_device* %79, %43
  %81 = icmp eq i32 %75, %45
  %82 = and i1 %81, %80
  %83 = add nuw nsw i64 %70, 1
  br i1 %82, label %84, label %66

84:                                               ; preds = %77
  br i1 %71, label %86, label %85

85:                                               ; preds = %66, %69, %84, %41, %48
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@D3D12Compute@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PEAUhalide_d3d12compute_device@@PEAUd3d12_library@D3D12Compute@Internal@Runtime@Halide@@@24@A", i64 0, i32 0)) #10
  br label %90

86:                                               ; preds = %84
  %87 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation"* %61, i64 %73, i32 1
  %88 = load %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_library"*, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_library"** %87, align 8, !tbaa !49
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@D3D12Compute@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PEAUhalide_d3d12compute_device@@PEAUd3d12_library@D3D12Compute@Internal@Runtime@Halide@@@24@A", i64 0, i32 0)) #10
  %89 = icmp eq %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_library"* %88, null
  br i1 %89, label %90, label %91

90:                                               ; preds = %85, %86
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @"??_C@_0IA@GKICIJMP@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  call void @abort() #10
  br label %91

91:                                               ; preds = %86, %90
  %92 = phi %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_library"* [ %88, %86 ], [ null, %90 ]
  %93 = call fastcc %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame"* @"?acquire_frame@D3D12Compute@Internal@Runtime@Halide@@YAPEAUd3d12_frame@1234@PEAUhalide_d3d12compute_device@@@Z"(%struct.halide_d3d12compute_device* %43) #11
  %94 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame"* %93, i64 0, i32 0
  %95 = load %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_graphics_command_list"*, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_graphics_command_list"** %94, align 8, !tbaa !180
  %96 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame"* %93, i64 0, i32 1
  %97 = load %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_binder"*, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_binder"** %96, align 8, !tbaa !189
  %98 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame"* %93, i64 0, i32 2
  %99 = call i64 @strlen(i8* %2) #10
  %100 = bitcast %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_function"** %31 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %100) #12
  store %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_function"* null, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_function"** %31, align 8, !tbaa !49
  %101 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.10"* %32 to i8*
  call void @llvm.lifetime.start.p0i8(i64 296, i8* nonnull %101) #12
  %102 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.10", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.10"* %32, i64 0, i32 3
  store i8* null, i8** %102, align 8, !tbaa !210
  %103 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.10", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.10"* %32, i64 0, i32 4
  store i8 1, i8* %103, align 8, !tbaa !212
  %104 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.10", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.10"* %32, i64 0, i32 5, i64 0
  %105 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.10", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.10"* %32, i64 0, i32 0
  store i8* %104, i8** %105, align 8, !tbaa !213
  %106 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.10", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.10"* %32, i64 0, i32 1
  store i8* %104, i8** %106, align 8, !tbaa !214
  %107 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.10", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.10"* %32, i64 0, i32 5, i64 255
  %108 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.10", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.10"* %32, i64 0, i32 2
  store i8* %107, i8** %108, align 8, !tbaa !215
  store i8 0, i8* %107, align 8, !tbaa !40
  %109 = icmp eq i8* %2, null
  br i1 %109, label %110, label %112

110:                                              ; preds = %91
  %111 = call i8* @halide_string_to_string(i8* nonnull %104, i8* nonnull %107, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"??_C@_09CGLEKJAK@?$DMnullptr?$DO?$AA@", i64 0, i64 0)) #10
  br label %114

112:                                              ; preds = %91
  %113 = call i8* @halide_string_to_string(i8* nonnull %104, i8* nonnull %107, i8* nonnull %2) #10
  br label %114

114:                                              ; preds = %112, %110
  %115 = phi i8* [ %113, %112 ], [ %111, %110 ]
  store i8* %115, i8** %106, align 8, !tbaa !214
  %116 = load i8*, i8** %108, align 8, !tbaa !215
  %117 = call i8* @halide_string_to_string(i8* %115, i8* %116, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @"??_C@_02DKADOBMK@_?$CI?$AA@", i64 0, i64 0)) #10
  store i8* %117, i8** %106, align 8, !tbaa !214
  %118 = sext i32 %6 to i64
  %119 = load i8*, i8** %108, align 8, !tbaa !215
  %120 = call i8* @halide_int64_to_string(i8* %117, i8* %119, i64 %118, i32 1) #10
  store i8* %120, i8** %106, align 8, !tbaa !214
  %121 = load i8*, i8** %108, align 8, !tbaa !215
  %122 = call i8* @halide_string_to_string(i8* %120, i8* %121, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01IHBHIGKO@?0?$AA@", i64 0, i64 0)) #10
  store i8* %122, i8** %106, align 8, !tbaa !214
  %123 = sext i32 %7 to i64
  %124 = load i8*, i8** %108, align 8, !tbaa !215
  %125 = call i8* @halide_int64_to_string(i8* %122, i8* %124, i64 %123, i32 1) #10
  store i8* %125, i8** %106, align 8, !tbaa !214
  %126 = load i8*, i8** %108, align 8, !tbaa !215
  %127 = call i8* @halide_string_to_string(i8* %125, i8* %126, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01IHBHIGKO@?0?$AA@", i64 0, i64 0)) #10
  store i8* %127, i8** %106, align 8, !tbaa !214
  %128 = sext i32 %8 to i64
  %129 = load i8*, i8** %108, align 8, !tbaa !215
  %130 = call i8* @halide_int64_to_string(i8* %127, i8* %129, i64 %128, i32 1) #10
  store i8* %130, i8** %106, align 8, !tbaa !214
  %131 = load i8*, i8** %108, align 8, !tbaa !215
  %132 = call i8* @halide_string_to_string(i8* %130, i8* %131, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @"??_C@_03DNCOCNEF@?$CJ_?$FL?$AA@", i64 0, i64 0)) #10
  store i8* %132, i8** %106, align 8, !tbaa !214
  %133 = sext i32 %9 to i64
  %134 = load i8*, i8** %108, align 8, !tbaa !215
  %135 = call i8* @halide_int64_to_string(i8* %132, i8* %134, i64 %133, i32 1) #10
  store i8* %135, i8** %106, align 8, !tbaa !214
  %136 = load i8*, i8** %108, align 8, !tbaa !215
  %137 = call i8* @halide_string_to_string(i8* %135, i8* %136, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01LBDDMOBJ@?$FN?$AA@", i64 0, i64 0)) #10
  store i8* %137, i8** %106, align 8, !tbaa !214
  %138 = load i8*, i8** %105, align 8, !tbaa !213
  %139 = ptrtoint i8* %137 to i64
  %140 = ptrtoint i8* %138 to i64
  %141 = sub i64 %139, %140
  %142 = icmp ult i64 %141, 255
  br i1 %142, label %149, label %143

143:                                              ; preds = %114
  call void @halide_print(i8* null, i8* getelementptr inbounds ([134 x i8], [134 x i8]* @"??_C@_0IG@KHODCDFK@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  call void @abort() #10
  %144 = load i8*, i8** %105, align 8, !tbaa !213
  %145 = load i8*, i8** %106, align 8, !tbaa !214
  %146 = ptrtoint i8* %145 to i64
  %147 = ptrtoint i8* %144 to i64
  %148 = sub i64 %146, %147
  br label %149

149:                                              ; preds = %143, %114
  %150 = phi i64 [ %148, %143 ], [ %141, %114 ]
  %151 = phi i64 [ %147, %143 ], [ %140, %114 ]
  %152 = phi i64 [ %146, %143 ], [ %139, %114 ]
  %153 = phi i8* [ %144, %143 ], [ %138, %114 ]
  %154 = trunc i64 %150 to i32
  %155 = icmp eq i8* %153, null
  br i1 %155, label %162, label %156

156:                                              ; preds = %149
  %157 = load i8*, i8** %102, align 8, !tbaa !210
  %158 = sub i64 1, %151
  %159 = add i64 %158, %152
  %160 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %157, i8* nonnull %153, i64 %159) #10
  %161 = load i8*, i8** %105, align 8, !tbaa !213
  br label %162

162:                                              ; preds = %156, %149
  %163 = phi i8* [ %161, %156 ], [ getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0), %149 ]
  %164 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_library", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_library"* %92, i64 0, i32 0, i32 0
  %165 = call i32 @"?lookup@HashMap@Internal@Runtime@Halide@@QEAAHPEAXPEBEHPEAE_K@Z"(%"struct.Halide::Runtime::Internal::HashMap"* nonnull dereferenceable(2128) %164, i8* null, i8* %163, i32 %154, i8* nonnull %100, i64 8) #10
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %625, label %167

167:                                              ; preds = %162
  %168 = load %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_function"*, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_function"** %31, align 8, !tbaa !49
  %169 = icmp eq %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_function"* %168, null
  br i1 %169, label %171, label %170

170:                                              ; preds = %167
  call void @halide_print(i8* null, i8* getelementptr inbounds ([122 x i8], [122 x i8]* @"??_C@_0HK@BHBNEKNC@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  call void @abort() #10
  br label %171

171:                                              ; preds = %170, %167
  %172 = icmp sgt i32 %9, 1
  %173 = select i1 %172, i32 %9, i32 1
  %174 = add nuw nsw i32 %173, 15
  %175 = and i32 %174, -16
  %176 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_library", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_library"* %92, i64 0, i32 2, i64 0
  %177 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_library", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_library"* %92, i64 0, i32 1
  %178 = load i32, i32* %177, align 8, !tbaa !162
  %179 = bitcast [4 x %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.11"]* %25 to i8*
  call void @llvm.lifetime.start.p0i8(i64 224, i8* nonnull %179) #12
  %180 = getelementptr inbounds [4 x %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.11"], [4 x %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.11"]* %25, i64 0, i64 0, i32 3
  store i8* null, i8** %180, align 8, !tbaa !216
  %181 = getelementptr inbounds [4 x %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.11"], [4 x %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.11"]* %25, i64 0, i64 0, i32 4
  store i8 1, i8* %181, align 8, !tbaa !218
  %182 = getelementptr inbounds [4 x %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.11"], [4 x %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.11"]* %25, i64 0, i64 0, i32 5, i64 0
  %183 = getelementptr inbounds [4 x %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.11"], [4 x %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.11"]* %25, i64 0, i64 0, i32 0
  store i8* %182, i8** %183, align 8, !tbaa !219
  %184 = getelementptr inbounds [4 x %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.11"], [4 x %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.11"]* %25, i64 0, i64 0, i32 1
  store i8* %182, i8** %184, align 8, !tbaa !220
  %185 = getelementptr inbounds [4 x %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.11"], [4 x %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.11"]* %25, i64 0, i64 0, i32 5, i64 15
  %186 = getelementptr inbounds [4 x %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.11"], [4 x %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.11"]* %25, i64 0, i64 0, i32 2
  store i8* %185, i8** %186, align 8, !tbaa !221
  store i8 0, i8* %185, align 8, !tbaa !40
  %187 = getelementptr inbounds [4 x %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.11"], [4 x %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.11"]* %25, i64 0, i64 1, i32 3
  store i8* null, i8** %187, align 8, !tbaa !216
  %188 = getelementptr inbounds [4 x %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.11"], [4 x %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.11"]* %25, i64 0, i64 1, i32 4
  store i8 1, i8* %188, align 8, !tbaa !218
  %189 = getelementptr inbounds [4 x %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.11"], [4 x %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.11"]* %25, i64 0, i64 1, i32 5, i64 0
  %190 = getelementptr inbounds [4 x %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.11"], [4 x %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.11"]* %25, i64 0, i64 1, i32 0
  store i8* %189, i8** %190, align 8, !tbaa !219
  %191 = getelementptr inbounds [4 x %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.11"], [4 x %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.11"]* %25, i64 0, i64 1, i32 1
  store i8* %189, i8** %191, align 8, !tbaa !220
  %192 = getelementptr inbounds [4 x %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.11"], [4 x %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.11"]* %25, i64 0, i64 1, i32 5, i64 15
  %193 = getelementptr inbounds [4 x %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.11"], [4 x %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.11"]* %25, i64 0, i64 1, i32 2
  store i8* %192, i8** %193, align 8, !tbaa !221
  store i8 0, i8* %192, align 8, !tbaa !40
  %194 = getelementptr inbounds [4 x %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.11"], [4 x %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.11"]* %25, i64 0, i64 2, i32 3
  store i8* null, i8** %194, align 8, !tbaa !216
  %195 = getelementptr inbounds [4 x %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.11"], [4 x %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.11"]* %25, i64 0, i64 2, i32 4
  store i8 1, i8* %195, align 8, !tbaa !218
  %196 = getelementptr inbounds [4 x %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.11"], [4 x %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.11"]* %25, i64 0, i64 2, i32 5, i64 0
  %197 = getelementptr inbounds [4 x %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.11"], [4 x %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.11"]* %25, i64 0, i64 2, i32 0
  store i8* %196, i8** %197, align 8, !tbaa !219
  %198 = getelementptr inbounds [4 x %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.11"], [4 x %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.11"]* %25, i64 0, i64 2, i32 1
  store i8* %196, i8** %198, align 8, !tbaa !220
  %199 = getelementptr inbounds [4 x %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.11"], [4 x %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.11"]* %25, i64 0, i64 2, i32 5, i64 15
  %200 = getelementptr inbounds [4 x %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.11"], [4 x %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.11"]* %25, i64 0, i64 2, i32 2
  store i8* %199, i8** %200, align 8, !tbaa !221
  store i8 0, i8* %199, align 8, !tbaa !40
  %201 = getelementptr inbounds [4 x %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.11"], [4 x %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.11"]* %25, i64 0, i64 3, i32 3
  store i8* null, i8** %201, align 8, !tbaa !216
  %202 = getelementptr inbounds [4 x %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.11"], [4 x %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.11"]* %25, i64 0, i64 3, i32 4
  store i8 1, i8* %202, align 8, !tbaa !218
  %203 = getelementptr inbounds [4 x %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.11"], [4 x %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.11"]* %25, i64 0, i64 3, i32 5, i64 0
  %204 = getelementptr inbounds [4 x %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.11"], [4 x %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.11"]* %25, i64 0, i64 3, i32 0
  store i8* %203, i8** %204, align 8, !tbaa !219
  %205 = getelementptr inbounds [4 x %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.11"], [4 x %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.11"]* %25, i64 0, i64 3, i32 1
  store i8* %203, i8** %205, align 8, !tbaa !220
  %206 = getelementptr inbounds [4 x %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.11"], [4 x %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.11"]* %25, i64 0, i64 3, i32 5, i64 15
  %207 = getelementptr inbounds [4 x %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.11"], [4 x %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.11"]* %25, i64 0, i64 3, i32 2
  store i8* %206, i8** %207, align 8, !tbaa !221
  store i8 0, i8* %206, align 8, !tbaa !40
  %208 = bitcast [5 x %struct._D3D_SHADER_MACRO]* %26 to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %208) #12
  %209 = getelementptr inbounds [5 x %struct._D3D_SHADER_MACRO], [5 x %struct._D3D_SHADER_MACRO]* %26, i64 0, i64 0
  %210 = getelementptr inbounds [5 x %struct._D3D_SHADER_MACRO], [5 x %struct._D3D_SHADER_MACRO]* %26, i64 0, i64 0, i32 0
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @"??_C@_0BM@EDALEHEN@__GROUPSHARED_SIZE_IN_BYTES?$AA@", i64 0, i64 0), i8** %210, align 8, !tbaa !222
  %211 = getelementptr inbounds [5 x %struct._D3D_SHADER_MACRO], [5 x %struct._D3D_SHADER_MACRO]* %26, i64 0, i64 0, i32 1
  %212 = zext i32 %175 to i64
  %213 = call i8* @halide_int64_to_string(i8* nonnull %182, i8* nonnull %185, i64 %212, i32 1) #10
  store i8* %213, i8** %184, align 8, !tbaa !220
  %214 = load i8*, i8** %183, align 8, !tbaa !219
  %215 = icmp eq i8* %214, null
  br i1 %215, label %224, label %216

216:                                              ; preds = %171
  %217 = load i8*, i8** %180, align 8, !tbaa !216
  %218 = ptrtoint i8* %213 to i64
  %219 = ptrtoint i8* %214 to i64
  %220 = add i64 %218, 1
  %221 = sub i64 %220, %219
  %222 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %217, i8* nonnull %214, i64 %221) #10
  %223 = load i8*, i8** %183, align 8, !tbaa !219
  br label %224

224:                                              ; preds = %216, %171
  %225 = phi i8* [ %223, %216 ], [ getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0), %171 ]
  store i8* %225, i8** %211, align 8, !tbaa !224
  %226 = getelementptr inbounds [5 x %struct._D3D_SHADER_MACRO], [5 x %struct._D3D_SHADER_MACRO]* %26, i64 0, i64 1, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"??_C@_0P@LOBBBKDE@__NUM_TREADS_X?$AA@", i64 0, i64 0), i8** %226, align 8, !tbaa !222
  %227 = getelementptr inbounds [5 x %struct._D3D_SHADER_MACRO], [5 x %struct._D3D_SHADER_MACRO]* %26, i64 0, i64 1, i32 1
  %228 = load i8*, i8** %193, align 8, !tbaa !221
  %229 = load i8*, i8** %191, align 8, !tbaa !220
  %230 = call i8* @halide_int64_to_string(i8* %229, i8* %228, i64 %118, i32 1) #10
  store i8* %230, i8** %191, align 8, !tbaa !220
  %231 = load i8*, i8** %190, align 8, !tbaa !219
  %232 = icmp eq i8* %231, null
  br i1 %232, label %241, label %233

233:                                              ; preds = %224
  %234 = load i8*, i8** %187, align 8, !tbaa !216
  %235 = ptrtoint i8* %230 to i64
  %236 = ptrtoint i8* %231 to i64
  %237 = add i64 %235, 1
  %238 = sub i64 %237, %236
  %239 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %234, i8* nonnull %231, i64 %238) #10
  %240 = load i8*, i8** %190, align 8, !tbaa !219
  br label %241

241:                                              ; preds = %233, %224
  %242 = phi i8* [ %240, %233 ], [ getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0), %224 ]
  store i8* %242, i8** %227, align 8, !tbaa !224
  %243 = getelementptr inbounds [5 x %struct._D3D_SHADER_MACRO], [5 x %struct._D3D_SHADER_MACRO]* %26, i64 0, i64 2, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"??_C@_0P@KHAKCLHF@__NUM_TREADS_Y?$AA@", i64 0, i64 0), i8** %243, align 8, !tbaa !222
  %244 = getelementptr inbounds [5 x %struct._D3D_SHADER_MACRO], [5 x %struct._D3D_SHADER_MACRO]* %26, i64 0, i64 2, i32 1
  %245 = load i8*, i8** %200, align 8, !tbaa !221
  %246 = load i8*, i8** %198, align 8, !tbaa !220
  %247 = call i8* @halide_int64_to_string(i8* %246, i8* %245, i64 %123, i32 1) #10
  store i8* %247, i8** %198, align 8, !tbaa !220
  %248 = load i8*, i8** %197, align 8, !tbaa !219
  %249 = icmp eq i8* %248, null
  br i1 %249, label %258, label %250

250:                                              ; preds = %241
  %251 = load i8*, i8** %194, align 8, !tbaa !216
  %252 = ptrtoint i8* %247 to i64
  %253 = ptrtoint i8* %248 to i64
  %254 = add i64 %252, 1
  %255 = sub i64 %254, %253
  %256 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %251, i8* nonnull %248, i64 %255) #10
  %257 = load i8*, i8** %197, align 8, !tbaa !219
  br label %258

258:                                              ; preds = %250, %241
  %259 = phi i8* [ %257, %250 ], [ getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0), %241 ]
  store i8* %259, i8** %244, align 8, !tbaa !224
  %260 = getelementptr inbounds [5 x %struct._D3D_SHADER_MACRO], [5 x %struct._D3D_SHADER_MACRO]* %26, i64 0, i64 3, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"??_C@_0P@IMCHHILG@__NUM_TREADS_Z?$AA@", i64 0, i64 0), i8** %260, align 8, !tbaa !222
  %261 = getelementptr inbounds [5 x %struct._D3D_SHADER_MACRO], [5 x %struct._D3D_SHADER_MACRO]* %26, i64 0, i64 3, i32 1
  %262 = load i8*, i8** %207, align 8, !tbaa !221
  %263 = load i8*, i8** %205, align 8, !tbaa !220
  %264 = call i8* @halide_int64_to_string(i8* %263, i8* %262, i64 %128, i32 1) #10
  store i8* %264, i8** %205, align 8, !tbaa !220
  %265 = load i8*, i8** %204, align 8, !tbaa !219
  %266 = icmp eq i8* %265, null
  br i1 %266, label %275, label %267

267:                                              ; preds = %258
  %268 = load i8*, i8** %201, align 8, !tbaa !216
  %269 = ptrtoint i8* %264 to i64
  %270 = ptrtoint i8* %265 to i64
  %271 = add i64 %269, 1
  %272 = sub i64 %271, %270
  %273 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %268, i8* nonnull %265, i64 %272) #10
  %274 = load i8*, i8** %204, align 8, !tbaa !219
  br label %275

275:                                              ; preds = %267, %258
  %276 = phi i8* [ %274, %267 ], [ getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0), %258 ]
  store i8* %276, i8** %261, align 8, !tbaa !224
  %277 = getelementptr inbounds [5 x %struct._D3D_SHADER_MACRO], [5 x %struct._D3D_SHADER_MACRO]* %26, i64 0, i64 4, i32 0
  %278 = bitcast i8** %277 to <2 x i8*>*
  store <2 x i8*> zeroinitializer, <2 x i8*>* %278, align 8, !tbaa !49
  %279 = bitcast %struct.ID3D10Blob** %27 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %279) #12
  store %struct.ID3D10Blob* null, %struct.ID3D10Blob** %27, align 8, !tbaa !49
  %280 = bitcast %struct.ID3D10Blob** %28 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %280) #12
  store %struct.ID3D10Blob* null, %struct.ID3D10Blob** %28, align 8, !tbaa !49
  %281 = load i32 (i8*, i64, i8*, %struct._D3D_SHADER_MACRO*, %struct.ID3DInclude*, i8*, i8*, i32, i32, %struct.ID3D10Blob**, %struct.ID3D10Blob**)*, i32 (i8*, i64, i8*, %struct._D3D_SHADER_MACRO*, %struct.ID3DInclude*, i8*, i8*, i32, i32, %struct.ID3D10Blob**, %struct.ID3D10Blob**)** @D3DCompile, align 8, !tbaa !49
  %282 = sext i32 %178 to i64
  %283 = call i32 %281(i8* nonnull %176, i64 %282, i8* %2, %struct._D3D_SHADER_MACRO* nonnull %209, %struct.ID3DInclude* null, i8* %2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"??_C@_06IJHADHCA@cs_5_1?$AA@", i64 0, i64 0), i32 1048576, i32 0, %struct.ID3D10Blob** nonnull %27, %struct.ID3D10Blob** nonnull %28) #10
  %284 = icmp slt i32 %283, 0
  %285 = load %struct.ID3D10Blob*, %struct.ID3D10Blob** %27, align 8
  %286 = icmp eq %struct.ID3D10Blob* %285, null
  %287 = or i1 %284, %286
  %288 = load %struct.ID3D10Blob*, %struct.ID3D10Blob** %28, align 8, !tbaa !49
  br i1 %287, label %289, label %340

289:                                              ; preds = %275
  call fastcc void @"?dump_shader@D3D12Compute@Internal@Runtime@Halide@@YAXPEBDPEAUID3D10Blob@@@Z"(i8* nonnull %176, %struct.ID3D10Blob* %288) #10
  %290 = load %struct.ID3D10Blob*, %struct.ID3D10Blob** %28, align 8, !tbaa !49
  %291 = icmp eq %struct.ID3D10Blob* %290, null
  br i1 %291, label %299, label %292

292:                                              ; preds = %289
  %293 = getelementptr %struct.ID3D10Blob, %struct.ID3D10Blob* %290, i64 0, i32 0
  %294 = bitcast %struct.ID3D10Blob* %290 to i32 (%struct.IUnknown*)***
  %295 = load i32 (%struct.IUnknown*)**, i32 (%struct.IUnknown*)*** %294, align 8, !tbaa !50
  %296 = getelementptr inbounds i32 (%struct.IUnknown*)*, i32 (%struct.IUnknown*)** %295, i64 2
  %297 = load i32 (%struct.IUnknown*)*, i32 (%struct.IUnknown*)** %296, align 8
  %298 = call i32 %297(%struct.IUnknown* nonnull dereferenceable(8) %293) #10
  br label %299

299:                                              ; preds = %292, %289
  %300 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %29 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %300) #12
  %301 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %29, i64 0, i32 3
  store i8* null, i8** %301, align 8, !tbaa !41
  %302 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %29, i64 0, i32 4
  store i8 1, i8* %302, align 8, !tbaa !44
  %303 = call i8* @malloc(i64 1024) #10
  %304 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %29, i64 0, i32 0
  store i8* %303, i8** %304, align 8, !tbaa !45
  %305 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %29, i64 0, i32 1
  store i8* %303, i8** %305, align 8, !tbaa !46
  %306 = icmp eq i8* %303, null
  br i1 %306, label %309, label %307

307:                                              ; preds = %299
  %308 = getelementptr inbounds i8, i8* %303, i64 1023
  store i8 0, i8* %308, align 1, !tbaa !40
  br label %309

309:                                              ; preds = %307, %299
  %310 = phi i8* [ %308, %307 ], [ null, %299 ]
  %311 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %29, i64 0, i32 2
  store i8* %310, i8** %311, align 8
  %312 = call i8* @halide_string_to_string(i8* %303, i8* %310, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @"??_C@_0BF@NPMABELF@?$FLend?9of?9shader?9dump?$FN?$AA@", i64 0, i64 0)) #10
  store i8* %312, i8** %305, align 8, !tbaa !46
  %313 = call i8* @halide_string_to_string(i8* %312, i8* %310, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #10
  store i8* %313, i8** %305, align 8, !tbaa !46
  %314 = call i8* @halide_string_to_string(i8* %313, i8* %310, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @"??_C@_0CE@MGMMPJGA@vvvvv?5D3D12?5Begin?5Debug?5Dump?5vvv@", i64 0, i64 0)) #10
  store i8* %314, i8** %305, align 8, !tbaa !46
  call fastcc void @"?d3d12_debug_dump@@YAXAEAV?$Printer@$00$0EAA@@?A0x2B71E647@Internal@Runtime@Halide@@@Z"(%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* nonnull align 8 dereferenceable(40) %29) #10
  %315 = load i8*, i8** %311, align 8, !tbaa !47
  %316 = load i8*, i8** %305, align 8, !tbaa !46
  %317 = call i8* @halide_string_to_string(i8* %316, i8* %315, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @"??_C@_0CE@PCPJBLP@?$FO?$FO?$FO?$FO?$FO?5D3D12?5?5End?5?5Debug?5Dump?5?$FO?$FO?$FO@", i64 0, i64 0)) #10
  store i8* %317, i8** %305, align 8, !tbaa !46
  %318 = call i8* @halide_string_to_string(i8* %317, i8* %315, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @"??_C@_0BA@FGKOLOB@D3D12?5HALT?5?$CB?$CB?$CB?6?$AA@", i64 0, i64 0)) #10
  store i8* %318, i8** %305, align 8, !tbaa !46
  %319 = load i8*, i8** %304, align 8, !tbaa !45
  %320 = icmp eq i8* %319, null
  %321 = load i8*, i8** %301, align 8, !tbaa !41
  br i1 %320, label %322, label %323

322:                                              ; preds = %309
  call void @halide_error(i8* %321, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #10
  br label %331

323:                                              ; preds = %309
  %324 = ptrtoint i8* %318 to i64
  %325 = ptrtoint i8* %319 to i64
  %326 = add i64 %324, 1
  %327 = sub i64 %326, %325
  %328 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %321, i8* nonnull %319, i64 %327) #10
  %329 = load i8*, i8** %304, align 8, !tbaa !45
  %330 = load i8*, i8** %301, align 8, !tbaa !41
  call void @halide_error(i8* %330, i8* %329) #10
  br label %331

331:                                              ; preds = %323, %322
  %332 = load i8, i8* %302, align 8, !tbaa !44, !range !48
  %333 = icmp eq i8 %332, 0
  br i1 %333, label %339, label %334

334:                                              ; preds = %331
  %335 = load i8*, i8** %304, align 8, !tbaa !45
  %336 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %29, i64 0, i32 5, i64 0
  %337 = icmp eq i8* %335, %336
  br i1 %337, label %339, label %338

338:                                              ; preds = %334
  call void @free(i8* %335) #10
  br label %339

339:                                              ; preds = %338, %334, %331
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %300) #12
  br label %525

340:                                              ; preds = %275
  %341 = icmp eq %struct.ID3D10Blob* %288, null
  br i1 %341, label %352, label %342

342:                                              ; preds = %340
  call fastcc void @"?dump_shader@D3D12Compute@Internal@Runtime@Halide@@YAXPEBDPEAUID3D10Blob@@@Z"(i8* nonnull %176, %struct.ID3D10Blob* nonnull %288) #10
  %343 = load %struct.ID3D10Blob*, %struct.ID3D10Blob** %28, align 8, !tbaa !49
  %344 = icmp eq %struct.ID3D10Blob* %343, null
  br i1 %344, label %352, label %345

345:                                              ; preds = %342
  %346 = getelementptr %struct.ID3D10Blob, %struct.ID3D10Blob* %343, i64 0, i32 0
  %347 = bitcast %struct.ID3D10Blob* %343 to i32 (%struct.IUnknown*)***
  %348 = load i32 (%struct.IUnknown*)**, i32 (%struct.IUnknown*)*** %347, align 8, !tbaa !50
  %349 = getelementptr inbounds i32 (%struct.IUnknown*)*, i32 (%struct.IUnknown*)** %348, i64 2
  %350 = load i32 (%struct.IUnknown*)*, i32 (%struct.IUnknown*)** %349, align 8
  %351 = call i32 %350(%struct.IUnknown* nonnull dereferenceable(8) %346) #10
  br label %352

352:                                              ; preds = %345, %342, %340
  %353 = call i8* @malloc(i64 24) #10
  %354 = load %struct.ID3D10Blob*, %struct.ID3D10Blob** %27, align 8, !tbaa !49
  %355 = bitcast i8* %353 to %struct.ID3D10Blob**
  store %struct.ID3D10Blob* %354, %struct.ID3D10Blob** %355, align 8, !tbaa !225
  %356 = load %struct.ID3D12RootSignature*, %struct.ID3D12RootSignature** @"?rootSignature@D3D12Compute@Internal@Runtime@Halide@@3PEAUID3D12RootSignature@@EA", align 8, !tbaa !49
  %357 = getelementptr inbounds i8, i8* %353, i64 8
  %358 = bitcast i8* %357 to %struct.ID3D12RootSignature**
  store %struct.ID3D12RootSignature* %356, %struct.ID3D12RootSignature** %358, align 8, !tbaa !227
  %359 = getelementptr %struct.ID3D12RootSignature, %struct.ID3D12RootSignature* %356, i64 0, i32 0, i32 0, i32 0
  %360 = bitcast %struct.ID3D12RootSignature* %356 to i32 (%struct.IUnknown*)***
  %361 = load i32 (%struct.IUnknown*)**, i32 (%struct.IUnknown*)*** %360, align 8, !tbaa !50
  %362 = getelementptr inbounds i32 (%struct.IUnknown*)*, i32 (%struct.IUnknown*)** %361, i64 1
  %363 = load i32 (%struct.IUnknown*)*, i32 (%struct.IUnknown*)** %362, align 8
  %364 = call i32 %363(%struct.IUnknown* nonnull dereferenceable(8) %359) #10
  %365 = bitcast %struct.ID3D12PipelineState** %23 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %365) #12
  store %struct.ID3D12PipelineState* null, %struct.ID3D12PipelineState** %23, align 8, !tbaa !49
  %366 = bitcast %struct.D3D12_COMPUTE_PIPELINE_STATE_DESC* %24 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %366) #12
  %367 = getelementptr inbounds %struct.D3D12_COMPUTE_PIPELINE_STATE_DESC, %struct.D3D12_COMPUTE_PIPELINE_STATE_DESC* %24, i64 0, i32 1
  %368 = bitcast %struct.D3D12_SHADER_BYTECODE* %367 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %368, i8 0, i64 48, i1 false) #12
  %369 = load %struct.ID3D12RootSignature*, %struct.ID3D12RootSignature** %358, align 8, !tbaa !227
  %370 = getelementptr inbounds %struct.D3D12_COMPUTE_PIPELINE_STATE_DESC, %struct.D3D12_COMPUTE_PIPELINE_STATE_DESC* %24, i64 0, i32 0
  store %struct.ID3D12RootSignature* %369, %struct.ID3D12RootSignature** %370, align 8, !tbaa !228
  %371 = load %struct.ID3D10Blob*, %struct.ID3D10Blob** %355, align 8, !tbaa !225
  %372 = bitcast %struct.ID3D10Blob* %371 to i8* (%struct.ID3D10Blob*)***
  %373 = load i8* (%struct.ID3D10Blob*)**, i8* (%struct.ID3D10Blob*)*** %372, align 8, !tbaa !50
  %374 = getelementptr inbounds i8* (%struct.ID3D10Blob*)*, i8* (%struct.ID3D10Blob*)** %373, i64 3
  %375 = load i8* (%struct.ID3D10Blob*)*, i8* (%struct.ID3D10Blob*)** %374, align 8
  %376 = call i8* %375(%struct.ID3D10Blob* nonnull dereferenceable(8) %371) #10
  %377 = getelementptr inbounds %struct.D3D12_COMPUTE_PIPELINE_STATE_DESC, %struct.D3D12_COMPUTE_PIPELINE_STATE_DESC* %24, i64 0, i32 1, i32 0
  store i8* %376, i8** %377, align 8, !tbaa !233
  %378 = load %struct.ID3D10Blob*, %struct.ID3D10Blob** %355, align 8, !tbaa !225
  %379 = bitcast %struct.ID3D10Blob* %378 to i64 (%struct.ID3D10Blob*)***
  %380 = load i64 (%struct.ID3D10Blob*)**, i64 (%struct.ID3D10Blob*)*** %379, align 8, !tbaa !50
  %381 = getelementptr inbounds i64 (%struct.ID3D10Blob*)*, i64 (%struct.ID3D10Blob*)** %380, i64 4
  %382 = load i64 (%struct.ID3D10Blob*)*, i64 (%struct.ID3D10Blob*)** %381, align 8
  %383 = call i64 %382(%struct.ID3D10Blob* nonnull dereferenceable(8) %378) #10
  %384 = getelementptr inbounds %struct.D3D12_COMPUTE_PIPELINE_STATE_DESC, %struct.D3D12_COMPUTE_PIPELINE_STATE_DESC* %24, i64 0, i32 1, i32 1
  store i64 %383, i64* %384, align 8, !tbaa !234
  %385 = getelementptr inbounds %struct.D3D12_COMPUTE_PIPELINE_STATE_DESC, %struct.D3D12_COMPUTE_PIPELINE_STATE_DESC* %24, i64 0, i32 2
  store i32 0, i32* %385, align 8, !tbaa !235
  %386 = getelementptr inbounds %struct.D3D12_COMPUTE_PIPELINE_STATE_DESC, %struct.D3D12_COMPUTE_PIPELINE_STATE_DESC* %24, i64 0, i32 3, i32 0
  store i8* null, i8** %386, align 8, !tbaa !236
  %387 = getelementptr inbounds %struct.D3D12_COMPUTE_PIPELINE_STATE_DESC, %struct.D3D12_COMPUTE_PIPELINE_STATE_DESC* %24, i64 0, i32 3, i32 1
  store i64 0, i64* %387, align 8, !tbaa !237
  %388 = getelementptr inbounds %struct.D3D12_COMPUTE_PIPELINE_STATE_DESC, %struct.D3D12_COMPUTE_PIPELINE_STATE_DESC* %24, i64 0, i32 4
  store i32 0, i32* %388, align 8, !tbaa !238
  %389 = bitcast %struct.halide_d3d12compute_device* %43 to %struct.ID3D12Device*
  %390 = bitcast %struct.ID3D12PipelineState** %23 to i8**
  %391 = bitcast %struct.halide_d3d12compute_device* %43 to i32 (%struct.ID3D12Device*, %struct.D3D12_COMPUTE_PIPELINE_STATE_DESC*, %struct._GUID*, i8**)***
  %392 = load i32 (%struct.ID3D12Device*, %struct.D3D12_COMPUTE_PIPELINE_STATE_DESC*, %struct._GUID*, i8**)**, i32 (%struct.ID3D12Device*, %struct.D3D12_COMPUTE_PIPELINE_STATE_DESC*, %struct._GUID*, i8**)*** %391, align 8, !tbaa !50
  %393 = getelementptr inbounds i32 (%struct.ID3D12Device*, %struct.D3D12_COMPUTE_PIPELINE_STATE_DESC*, %struct._GUID*, i8**)*, i32 (%struct.ID3D12Device*, %struct.D3D12_COMPUTE_PIPELINE_STATE_DESC*, %struct._GUID*, i8**)** %392, i64 11
  %394 = load i32 (%struct.ID3D12Device*, %struct.D3D12_COMPUTE_PIPELINE_STATE_DESC*, %struct._GUID*, i8**)*, i32 (%struct.ID3D12Device*, %struct.D3D12_COMPUTE_PIPELINE_STATE_DESC*, %struct._GUID*, i8**)** %393, align 8
  %395 = call i32 %394(%struct.ID3D12Device* nonnull dereferenceable(8) %389, %struct.D3D12_COMPUTE_PIPELINE_STATE_DESC* nonnull %24, %struct._GUID* nonnull align 4 dereferenceable(16) @_GUID_765a30f3_f624_4c6f_a828_ace948622445, i8** nonnull %390) #10
  %396 = load %struct.ID3D12PipelineState*, %struct.ID3D12PipelineState** %23, align 8, !tbaa !49
  %397 = icmp sgt i32 %395, -1
  %398 = icmp ne %struct.ID3D12PipelineState* %396, null
  %399 = and i1 %397, %398
  br i1 %399, label %453, label %400

400:                                              ; preds = %352
  %401 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %22 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %401) #12
  %402 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %22, i64 0, i32 3
  store i8* null, i8** %402, align 8, !tbaa !41
  %403 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %22, i64 0, i32 4
  store i8 1, i8* %403, align 8, !tbaa !44
  %404 = call i8* @malloc(i64 1024) #10
  %405 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %22, i64 0, i32 0
  store i8* %404, i8** %405, align 8, !tbaa !45
  %406 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %22, i64 0, i32 1
  %407 = icmp eq i8* %404, null
  br i1 %407, label %410, label %408

408:                                              ; preds = %400
  %409 = getelementptr inbounds i8, i8* %404, i64 1023
  store i8 0, i8* %409, align 1, !tbaa !40
  br label %410

410:                                              ; preds = %408, %400
  %411 = phi i8* [ %409, %408 ], [ null, %400 ]
  %412 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %22, i64 0, i32 2
  store i8* %411, i8** %412, align 8
  %413 = call i8* @halide_string_to_string(i8* %404, i8* %411, i8* nonnull getelementptr inbounds ([48 x i8], [48 x i8]* @"??_C@_0DA@KOEOGIGO@Unable?5to?5create?5the?5Direct3D?512@", i64 0, i64 0)) #10
  %414 = call i8* @halide_string_to_string(i8* %413, i8* %411, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @"??_C@_0L@IAGCJOCP@?5?$CIHRESULT?$DN?$AA@", i64 0, i64 0)) #10
  %415 = sext i32 %395 to i64
  %416 = inttoptr i64 %415 to i8*
  %417 = call i8* @halide_pointer_to_string(i8* %414, i8* %411, i8* %416) #10
  %418 = call i8* @halide_string_to_string(i8* %417, i8* %411, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @"??_C@_0L@FELFIFPM@?0?5object?$CK?$DN?$AA@", i64 0, i64 0)) #10
  %419 = bitcast %struct.ID3D12PipelineState* %396 to i8*
  %420 = call i8* @halide_pointer_to_string(i8* %418, i8* %411, i8* %419) #10
  %421 = call i8* @halide_string_to_string(i8* %420, i8* %411, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01PKGAHCOL@?$CJ?$AA@", i64 0, i64 0)) #10
  %422 = call i8* @halide_string_to_string(i8* %421, i8* %411, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #10
  %423 = call i8* @halide_string_to_string(i8* %422, i8* %411, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @"??_C@_0CE@MGMMPJGA@vvvvv?5D3D12?5Begin?5Debug?5Dump?5vvv@", i64 0, i64 0)) #10
  store i8* %423, i8** %406, align 8, !tbaa !46
  call fastcc void @"?d3d12_debug_dump@@YAXAEAV?$Printer@$00$0EAA@@?A0x2B71E647@Internal@Runtime@Halide@@@Z"(%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* nonnull align 8 dereferenceable(40) %22) #10
  %424 = load i8*, i8** %412, align 8, !tbaa !47
  %425 = load i8*, i8** %406, align 8, !tbaa !46
  %426 = call i8* @halide_string_to_string(i8* %425, i8* %424, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @"??_C@_0CE@PCPJBLP@?$FO?$FO?$FO?$FO?$FO?5D3D12?5?5End?5?5Debug?5Dump?5?$FO?$FO?$FO@", i64 0, i64 0)) #10
  %427 = call i8* @halide_string_to_string(i8* %426, i8* %424, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @"??_C@_0BA@FGKOLOB@D3D12?5HALT?5?$CB?$CB?$CB?6?$AA@", i64 0, i64 0)) #10
  store i8* %427, i8** %406, align 8, !tbaa !46
  %428 = load i8*, i8** %405, align 8, !tbaa !45
  %429 = icmp eq i8* %428, null
  %430 = load i8*, i8** %402, align 8, !tbaa !41
  br i1 %429, label %431, label %432

431:                                              ; preds = %410
  call void @halide_error(i8* %430, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #10
  br label %438

432:                                              ; preds = %410
  %433 = ptrtoint i8* %427 to i64
  %434 = ptrtoint i8* %428 to i64
  %435 = add i64 %433, 1
  %436 = sub i64 %435, %434
  %437 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %430, i8* nonnull %428, i64 %436) #10
  call void @halide_error(i8* %430, i8* nonnull %428) #10
  br label %438

438:                                              ; preds = %432, %431
  %439 = load i8, i8* %403, align 8, !tbaa !44, !range !48
  %440 = icmp eq i8 %439, 0
  %441 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %22, i64 0, i32 5, i64 0
  %442 = icmp eq i8* %428, %441
  %443 = or i1 %442, %440
  br i1 %443, label %445, label %444

444:                                              ; preds = %438
  call void @free(i8* %428) #10
  br label %445

445:                                              ; preds = %444, %438
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %401) #12
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %366) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %365) #12
  %446 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %30 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %446) #12
  %447 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %30, i64 0, i32 3
  store i8* null, i8** %447, align 8, !tbaa !41
  %448 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %30, i64 0, i32 4
  store i8 1, i8* %448, align 8, !tbaa !44
  %449 = call i8* @malloc(i64 1024) #10
  %450 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %30, i64 0, i32 0
  store i8* %449, i8** %450, align 8, !tbaa !45
  %451 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %30, i64 0, i32 1
  store i8* %449, i8** %451, align 8, !tbaa !46
  %452 = icmp eq i8* %449, null
  br i1 %452, label %459, label %457

453:                                              ; preds = %352
  %454 = bitcast i8* %353 to %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_function"*
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %366) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %365) #12
  %455 = getelementptr inbounds i8, i8* %353, i64 16
  %456 = bitcast i8* %455 to %struct.ID3D12PipelineState**
  store %struct.ID3D12PipelineState* %396, %struct.ID3D12PipelineState** %456, align 8, !tbaa !239
  br label %525

457:                                              ; preds = %445
  %458 = getelementptr inbounds i8, i8* %449, i64 1023
  store i8 0, i8* %458, align 1, !tbaa !40
  br label %459

459:                                              ; preds = %457, %445
  %460 = phi i8* [ %458, %457 ], [ null, %445 ]
  %461 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %30, i64 0, i32 2
  store i8* %460, i8** %461, align 8
  %462 = call i8* @halide_string_to_string(i8* %449, i8* %460, i8* nonnull getelementptr inbounds ([49 x i8], [49 x i8]* @"??_C@_0DB@POFDFLDH@D3D12Compute?3?5Could?5not?5allocate@", i64 0, i64 0)) #10
  store i8* %462, i8** %451, align 8, !tbaa !46
  %463 = load i8*, i8** %461, align 8, !tbaa !47
  %464 = call i8* @halide_string_to_string(i8* %462, i8* %463, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #10
  store i8* %464, i8** %451, align 8, !tbaa !46
  %465 = load i8*, i8** %461, align 8, !tbaa !47
  %466 = call i8* @halide_string_to_string(i8* %464, i8* %465, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @"??_C@_0CE@MGMMPJGA@vvvvv?5D3D12?5Begin?5Debug?5Dump?5vvv@", i64 0, i64 0)) #10
  store i8* %466, i8** %451, align 8, !tbaa !46
  call fastcc void @"?d3d12_debug_dump@@YAXAEAV?$Printer@$00$0EAA@@?A0x2B71E647@Internal@Runtime@Halide@@@Z"(%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* nonnull align 8 dereferenceable(40) %30) #10
  %467 = load i8*, i8** %461, align 8, !tbaa !47
  %468 = load i8*, i8** %451, align 8, !tbaa !46
  %469 = call i8* @halide_string_to_string(i8* %468, i8* %467, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @"??_C@_0CE@PCPJBLP@?$FO?$FO?$FO?$FO?$FO?5D3D12?5?5End?5?5Debug?5Dump?5?$FO?$FO?$FO@", i64 0, i64 0)) #10
  store i8* %469, i8** %451, align 8, !tbaa !46
  %470 = load i8*, i8** %461, align 8, !tbaa !47
  %471 = call i8* @halide_string_to_string(i8* %469, i8* %470, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @"??_C@_0BA@FGKOLOB@D3D12?5HALT?5?$CB?$CB?$CB?6?$AA@", i64 0, i64 0)) #10
  store i8* %471, i8** %451, align 8, !tbaa !46
  %472 = load i8*, i8** %450, align 8, !tbaa !45
  %473 = icmp eq i8* %472, null
  %474 = load i8*, i8** %447, align 8, !tbaa !41
  br i1 %473, label %475, label %476

475:                                              ; preds = %459
  call void @halide_error(i8* %474, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #10
  br label %484

476:                                              ; preds = %459
  %477 = ptrtoint i8* %471 to i64
  %478 = ptrtoint i8* %472 to i64
  %479 = add i64 %477, 1
  %480 = sub i64 %479, %478
  %481 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %474, i8* nonnull %472, i64 %480) #10
  %482 = load i8*, i8** %450, align 8, !tbaa !45
  %483 = load i8*, i8** %447, align 8, !tbaa !41
  call void @halide_error(i8* %483, i8* %482) #10
  br label %484

484:                                              ; preds = %476, %475
  %485 = load i8, i8* %448, align 8, !tbaa !44, !range !48
  %486 = icmp eq i8 %485, 0
  br i1 %486, label %492, label %487

487:                                              ; preds = %484
  %488 = load i8*, i8** %450, align 8, !tbaa !45
  %489 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %30, i64 0, i32 5, i64 0
  %490 = icmp eq i8* %488, %489
  br i1 %490, label %492, label %491

491:                                              ; preds = %487
  call void @free(i8* %488) #10
  br label %492

492:                                              ; preds = %491, %487, %484
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %446) #12
  %493 = load %struct.ID3D10Blob*, %struct.ID3D10Blob** %355, align 8, !tbaa !225
  %494 = icmp eq %struct.ID3D10Blob* %493, null
  br i1 %494, label %502, label %495

495:                                              ; preds = %492
  %496 = getelementptr %struct.ID3D10Blob, %struct.ID3D10Blob* %493, i64 0, i32 0
  %497 = bitcast %struct.ID3D10Blob* %493 to i32 (%struct.IUnknown*)***
  %498 = load i32 (%struct.IUnknown*)**, i32 (%struct.IUnknown*)*** %497, align 8, !tbaa !50
  %499 = getelementptr inbounds i32 (%struct.IUnknown*)*, i32 (%struct.IUnknown*)** %498, i64 2
  %500 = load i32 (%struct.IUnknown*)*, i32 (%struct.IUnknown*)** %499, align 8
  %501 = call i32 %500(%struct.IUnknown* nonnull dereferenceable(8) %496) #10
  br label %502

502:                                              ; preds = %495, %492
  %503 = load %struct.ID3D12RootSignature*, %struct.ID3D12RootSignature** %358, align 8, !tbaa !227
  %504 = icmp eq %struct.ID3D12RootSignature* %503, null
  br i1 %504, label %512, label %505

505:                                              ; preds = %502
  %506 = getelementptr %struct.ID3D12RootSignature, %struct.ID3D12RootSignature* %503, i64 0, i32 0, i32 0, i32 0
  %507 = bitcast %struct.ID3D12RootSignature* %503 to i32 (%struct.IUnknown*)***
  %508 = load i32 (%struct.IUnknown*)**, i32 (%struct.IUnknown*)*** %507, align 8, !tbaa !50
  %509 = getelementptr inbounds i32 (%struct.IUnknown*)*, i32 (%struct.IUnknown*)** %508, i64 2
  %510 = load i32 (%struct.IUnknown*)*, i32 (%struct.IUnknown*)** %509, align 8
  %511 = call i32 %510(%struct.IUnknown* nonnull dereferenceable(8) %506) #10
  br label %512

512:                                              ; preds = %505, %502
  %513 = getelementptr inbounds i8, i8* %353, i64 16
  %514 = bitcast i8* %513 to %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_pipeline_state"**
  %515 = load %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_pipeline_state"*, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_pipeline_state"** %514, align 8, !tbaa !239
  %516 = icmp eq %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_pipeline_state"* %515, null
  br i1 %516, label %524, label %517

517:                                              ; preds = %512
  %518 = bitcast %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_pipeline_state"* %515 to %struct.IUnknown*
  %519 = bitcast %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_pipeline_state"* %515 to i32 (%struct.IUnknown*)***
  %520 = load i32 (%struct.IUnknown*)**, i32 (%struct.IUnknown*)*** %519, align 8, !tbaa !50
  %521 = getelementptr inbounds i32 (%struct.IUnknown*)*, i32 (%struct.IUnknown*)** %520, i64 2
  %522 = load i32 (%struct.IUnknown*)*, i32 (%struct.IUnknown*)** %521, align 8
  %523 = call i32 %522(%struct.IUnknown* nonnull dereferenceable(8) %518) #10
  br label %524

524:                                              ; preds = %517, %512
  call void @free(i8* nonnull %353) #10
  br label %525

525:                                              ; preds = %524, %453, %339
  %526 = phi %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_function"* [ null, %339 ], [ null, %524 ], [ %454, %453 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %280) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %279) #12
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %208) #12
  %527 = load i8*, i8** %204, align 8, !tbaa !219
  %528 = icmp eq i8* %527, null
  br i1 %528, label %529, label %531

529:                                              ; preds = %525
  %530 = load i8*, i8** %201, align 8, !tbaa !216
  call void @halide_error(i8* %530, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #10
  br label %539

531:                                              ; preds = %525
  %532 = load i8*, i8** %205, align 8, !tbaa !220
  %533 = load i8*, i8** %201, align 8, !tbaa !216
  %534 = ptrtoint i8* %532 to i64
  %535 = ptrtoint i8* %527 to i64
  %536 = sub i64 1, %535
  %537 = add i64 %536, %534
  %538 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %533, i8* nonnull %527, i64 %537) #10
  br label %539

539:                                              ; preds = %531, %529
  %540 = load i8, i8* %202, align 8, !tbaa !218, !range !48
  %541 = icmp eq i8 %540, 0
  %542 = load i8*, i8** %204, align 8
  %543 = icmp eq i8* %542, %203
  %544 = or i1 %541, %543
  br i1 %544, label %546, label %545

545:                                              ; preds = %539
  call void @free(i8* %542) #10
  br label %546

546:                                              ; preds = %545, %539
  %547 = load i8*, i8** %197, align 8, !tbaa !219
  %548 = icmp eq i8* %547, null
  br i1 %548, label %557, label %549

549:                                              ; preds = %546
  %550 = load i8*, i8** %198, align 8, !tbaa !220
  %551 = load i8*, i8** %194, align 8, !tbaa !216
  %552 = ptrtoint i8* %550 to i64
  %553 = ptrtoint i8* %547 to i64
  %554 = sub i64 1, %553
  %555 = add i64 %554, %552
  %556 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %551, i8* nonnull %547, i64 %555) #10
  br label %559

557:                                              ; preds = %546
  %558 = load i8*, i8** %194, align 8, !tbaa !216
  call void @halide_error(i8* %558, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #10
  br label %559

559:                                              ; preds = %557, %549
  %560 = load i8, i8* %195, align 8, !tbaa !218, !range !48
  %561 = icmp eq i8 %560, 0
  %562 = load i8*, i8** %197, align 8
  %563 = icmp eq i8* %562, %196
  %564 = or i1 %561, %563
  br i1 %564, label %566, label %565

565:                                              ; preds = %559
  call void @free(i8* %562) #10
  br label %566

566:                                              ; preds = %565, %559
  %567 = load i8*, i8** %190, align 8, !tbaa !219
  %568 = icmp eq i8* %567, null
  br i1 %568, label %577, label %569

569:                                              ; preds = %566
  %570 = load i8*, i8** %191, align 8, !tbaa !220
  %571 = load i8*, i8** %187, align 8, !tbaa !216
  %572 = ptrtoint i8* %570 to i64
  %573 = ptrtoint i8* %567 to i64
  %574 = sub i64 1, %573
  %575 = add i64 %574, %572
  %576 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %571, i8* nonnull %567, i64 %575) #10
  br label %579

577:                                              ; preds = %566
  %578 = load i8*, i8** %187, align 8, !tbaa !216
  call void @halide_error(i8* %578, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #10
  br label %579

579:                                              ; preds = %577, %569
  %580 = load i8, i8* %188, align 8, !tbaa !218, !range !48
  %581 = icmp eq i8 %580, 0
  %582 = load i8*, i8** %190, align 8
  %583 = icmp eq i8* %582, %189
  %584 = or i1 %581, %583
  br i1 %584, label %586, label %585

585:                                              ; preds = %579
  call void @free(i8* %582) #10
  br label %586

586:                                              ; preds = %585, %579
  %587 = load i8*, i8** %183, align 8, !tbaa !219
  %588 = icmp eq i8* %587, null
  br i1 %588, label %597, label %589

589:                                              ; preds = %586
  %590 = load i8*, i8** %184, align 8, !tbaa !220
  %591 = load i8*, i8** %180, align 8, !tbaa !216
  %592 = ptrtoint i8* %590 to i64
  %593 = ptrtoint i8* %587 to i64
  %594 = sub i64 1, %593
  %595 = add i64 %594, %592
  %596 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %591, i8* nonnull %587, i64 %595) #10
  br label %599

597:                                              ; preds = %586
  %598 = load i8*, i8** %180, align 8, !tbaa !216
  call void @halide_error(i8* %598, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #10
  br label %599

599:                                              ; preds = %597, %589
  %600 = load i8, i8* %181, align 8, !tbaa !218, !range !48
  %601 = icmp eq i8 %600, 0
  %602 = load i8*, i8** %183, align 8
  %603 = icmp eq i8* %602, %182
  %604 = or i1 %601, %603
  br i1 %604, label %606, label %605

605:                                              ; preds = %599
  call void @free(i8* %602) #10
  br label %606

606:                                              ; preds = %605, %599
  call void @llvm.lifetime.end.p0i8(i64 224, i8* nonnull %179) #12
  store %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_function"* %526, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_function"** %31, align 8, !tbaa !49
  %607 = icmp eq %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_function"* %526, null
  br i1 %607, label %630, label %608

608:                                              ; preds = %606
  %609 = load i8*, i8** %105, align 8, !tbaa !213
  %610 = load i8*, i8** %106, align 8, !tbaa !214
  %611 = ptrtoint i8* %610 to i64
  %612 = ptrtoint i8* %609 to i64
  %613 = sub i64 %611, %612
  %614 = trunc i64 %613 to i32
  %615 = icmp eq i8* %609, null
  br i1 %615, label %622, label %616

616:                                              ; preds = %608
  %617 = load i8*, i8** %102, align 8, !tbaa !210
  %618 = sub i64 1, %612
  %619 = add i64 %618, %611
  %620 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %617, i8* nonnull %609, i64 %619) #10
  %621 = load i8*, i8** %105, align 8, !tbaa !213
  br label %622

622:                                              ; preds = %616, %608
  %623 = phi i8* [ %621, %616 ], [ getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0), %608 ]
  %624 = call i32 @"?store@HashMap@Internal@Runtime@Halide@@QEAAHPEAXPEBEH1_K@Z"(%"struct.Halide::Runtime::Internal::HashMap"* nonnull dereferenceable(2128) %164, i8* null, i8* %623, i32 %614, i8* nonnull %100, i64 8) #10
  br label %625

625:                                              ; preds = %622, %162
  %626 = load %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_function"*, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_function"** %31, align 8, !tbaa !49
  %627 = icmp eq %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_function"* %626, null
  br i1 %627, label %628, label %630

628:                                              ; preds = %625
  call void @halide_print(i8* null, i8* getelementptr inbounds ([122 x i8], [122 x i8]* @"??_C@_0HK@HOPDFHBF@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  call void @abort() #10
  %629 = load %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_function"*, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_function"** %31, align 8, !tbaa !49
  br label %630

630:                                              ; preds = %628, %625, %606
  %631 = phi %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_function"* [ null, %606 ], [ %629, %628 ], [ %626, %625 ]
  %632 = load i8*, i8** %105, align 8, !tbaa !213
  %633 = icmp eq i8* %632, null
  br i1 %633, label %634, label %636

634:                                              ; preds = %630
  %635 = load i8*, i8** %102, align 8, !tbaa !210
  call void @halide_error(i8* %635, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #10
  br label %644

636:                                              ; preds = %630
  %637 = load i8*, i8** %106, align 8, !tbaa !214
  %638 = load i8*, i8** %102, align 8, !tbaa !210
  %639 = ptrtoint i8* %637 to i64
  %640 = ptrtoint i8* %632 to i64
  %641 = sub i64 1, %640
  %642 = add i64 %641, %639
  %643 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %638, i8* nonnull %632, i64 %642) #10
  br label %644

644:                                              ; preds = %636, %634
  %645 = load i8, i8* %103, align 8, !tbaa !212, !range !48
  %646 = icmp eq i8 %645, 0
  %647 = load i8*, i8** %105, align 8
  %648 = icmp eq i8* %647, %104
  %649 = or i1 %646, %648
  br i1 %649, label %651, label %650

650:                                              ; preds = %644
  call void @free(i8* %647) #10
  br label %651

651:                                              ; preds = %644, %650
  call void @llvm.lifetime.end.p0i8(i64 296, i8* nonnull %101) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %100) #12
  %652 = icmp eq %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_function"* %631, null
  br i1 %652, label %700, label %653

653:                                              ; preds = %651
  %654 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_function", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_function"* %631, i64 0, i32 2
  %655 = bitcast %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_pipeline_state"** %654 to %struct.ID3D12PipelineState**
  %656 = load %struct.ID3D12PipelineState*, %struct.ID3D12PipelineState** %655, align 8, !tbaa !239
  %657 = getelementptr %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_function", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_function"* %631, i64 0, i32 1
  %658 = load %struct.ID3D12RootSignature*, %struct.ID3D12RootSignature** %657, align 8, !tbaa !227
  %659 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_graphics_command_list", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_graphics_command_list"* %95, i64 0, i32 0, i32 0
  %660 = load %struct.ID3D12GraphicsCommandList*, %struct.ID3D12GraphicsCommandList** %659, align 8, !tbaa !88
  %661 = bitcast %struct.ID3D12GraphicsCommandList* %660 to void (%struct.ID3D12GraphicsCommandList*, %struct.ID3D12RootSignature*)***
  %662 = load void (%struct.ID3D12GraphicsCommandList*, %struct.ID3D12RootSignature*)**, void (%struct.ID3D12GraphicsCommandList*, %struct.ID3D12RootSignature*)*** %661, align 8, !tbaa !50
  %663 = getelementptr inbounds void (%struct.ID3D12GraphicsCommandList*, %struct.ID3D12RootSignature*)*, void (%struct.ID3D12GraphicsCommandList*, %struct.ID3D12RootSignature*)** %662, i64 29
  %664 = load void (%struct.ID3D12GraphicsCommandList*, %struct.ID3D12RootSignature*)*, void (%struct.ID3D12GraphicsCommandList*, %struct.ID3D12RootSignature*)** %663, align 8
  call void %664(%struct.ID3D12GraphicsCommandList* nonnull dereferenceable(8) %660, %struct.ID3D12RootSignature* %658) #10
  %665 = load %struct.ID3D12GraphicsCommandList*, %struct.ID3D12GraphicsCommandList** %659, align 8, !tbaa !88
  %666 = bitcast %struct.ID3D12GraphicsCommandList* %665 to void (%struct.ID3D12GraphicsCommandList*, %struct.ID3D12PipelineState*)***
  %667 = load void (%struct.ID3D12GraphicsCommandList*, %struct.ID3D12PipelineState*)**, void (%struct.ID3D12GraphicsCommandList*, %struct.ID3D12PipelineState*)*** %666, align 8, !tbaa !50
  %668 = getelementptr inbounds void (%struct.ID3D12GraphicsCommandList*, %struct.ID3D12PipelineState*)*, void (%struct.ID3D12GraphicsCommandList*, %struct.ID3D12PipelineState*)** %667, i64 25
  %669 = load void (%struct.ID3D12GraphicsCommandList*, %struct.ID3D12PipelineState*)*, void (%struct.ID3D12GraphicsCommandList*, %struct.ID3D12PipelineState*)** %668, align 8
  call void %669(%struct.ID3D12GraphicsCommandList* nonnull dereferenceable(8) %665, %struct.ID3D12PipelineState* %656) #10
  %670 = bitcast [1 x %struct.ID3D12DescriptorHeap*]* %21 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %670) #12
  %671 = getelementptr inbounds [1 x %struct.ID3D12DescriptorHeap*], [1 x %struct.ID3D12DescriptorHeap*]* %21, i64 0, i64 0
  %672 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_binder", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_binder"* %97, i64 0, i32 0
  %673 = load %struct.ID3D12DescriptorHeap*, %struct.ID3D12DescriptorHeap** %672, align 8, !tbaa !190
  store %struct.ID3D12DescriptorHeap* %673, %struct.ID3D12DescriptorHeap** %671, align 8, !tbaa !49
  %674 = load %struct.ID3D12GraphicsCommandList*, %struct.ID3D12GraphicsCommandList** %659, align 8, !tbaa !88
  %675 = bitcast %struct.ID3D12GraphicsCommandList* %674 to void (%struct.ID3D12GraphicsCommandList*, i32, %struct.ID3D12DescriptorHeap**)***
  %676 = load void (%struct.ID3D12GraphicsCommandList*, i32, %struct.ID3D12DescriptorHeap**)**, void (%struct.ID3D12GraphicsCommandList*, i32, %struct.ID3D12DescriptorHeap**)*** %675, align 8, !tbaa !50
  %677 = getelementptr inbounds void (%struct.ID3D12GraphicsCommandList*, i32, %struct.ID3D12DescriptorHeap**)*, void (%struct.ID3D12GraphicsCommandList*, i32, %struct.ID3D12DescriptorHeap**)** %676, i64 28
  %678 = load void (%struct.ID3D12GraphicsCommandList*, i32, %struct.ID3D12DescriptorHeap**)*, void (%struct.ID3D12GraphicsCommandList*, i32, %struct.ID3D12DescriptorHeap**)** %677, align 8
  call void %678(%struct.ID3D12GraphicsCommandList* nonnull dereferenceable(8) %674, i32 1, %struct.ID3D12DescriptorHeap** nonnull %671) #10
  %679 = load %struct.ID3D12GraphicsCommandList*, %struct.ID3D12GraphicsCommandList** %659, align 8, !tbaa !88
  %680 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_binder", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_binder"* %97, i64 0, i32 4, i64 0, i32 0
  %681 = load i64, i64* %680, align 8, !tbaa.struct !240
  %682 = bitcast %struct.ID3D12GraphicsCommandList* %679 to void (%struct.ID3D12GraphicsCommandList*, i32, i64)***
  %683 = load void (%struct.ID3D12GraphicsCommandList*, i32, i64)**, void (%struct.ID3D12GraphicsCommandList*, i32, i64)*** %682, align 8, !tbaa !50
  %684 = getelementptr inbounds void (%struct.ID3D12GraphicsCommandList*, i32, i64)*, void (%struct.ID3D12GraphicsCommandList*, i32, i64)** %683, i64 31
  %685 = load void (%struct.ID3D12GraphicsCommandList*, i32, i64)*, void (%struct.ID3D12GraphicsCommandList*, i32, i64)** %684, align 8
  call void %685(%struct.ID3D12GraphicsCommandList* nonnull dereferenceable(8) %679, i32 0, i64 %681) #10
  %686 = load %struct.ID3D12GraphicsCommandList*, %struct.ID3D12GraphicsCommandList** %659, align 8, !tbaa !88
  %687 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_binder", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_binder"* %97, i64 0, i32 4, i64 1, i32 0
  %688 = load i64, i64* %687, align 8, !tbaa.struct !240
  %689 = bitcast %struct.ID3D12GraphicsCommandList* %686 to void (%struct.ID3D12GraphicsCommandList*, i32, i64)***
  %690 = load void (%struct.ID3D12GraphicsCommandList*, i32, i64)**, void (%struct.ID3D12GraphicsCommandList*, i32, i64)*** %689, align 8, !tbaa !50
  %691 = getelementptr inbounds void (%struct.ID3D12GraphicsCommandList*, i32, i64)*, void (%struct.ID3D12GraphicsCommandList*, i32, i64)** %690, i64 31
  %692 = load void (%struct.ID3D12GraphicsCommandList*, i32, i64)*, void (%struct.ID3D12GraphicsCommandList*, i32, i64)** %691, align 8
  call void %692(%struct.ID3D12GraphicsCommandList* nonnull dereferenceable(8) %686, i32 1, i64 %688) #10
  %693 = load %struct.ID3D12GraphicsCommandList*, %struct.ID3D12GraphicsCommandList** %659, align 8, !tbaa !88
  %694 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_binder", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_binder"* %97, i64 0, i32 4, i64 2, i32 0
  %695 = load i64, i64* %694, align 8, !tbaa.struct !240
  %696 = bitcast %struct.ID3D12GraphicsCommandList* %693 to void (%struct.ID3D12GraphicsCommandList*, i32, i64)***
  %697 = load void (%struct.ID3D12GraphicsCommandList*, i32, i64)**, void (%struct.ID3D12GraphicsCommandList*, i32, i64)*** %696, align 8, !tbaa !50
  %698 = getelementptr inbounds void (%struct.ID3D12GraphicsCommandList*, i32, i64)*, void (%struct.ID3D12GraphicsCommandList*, i32, i64)** %697, i64 31
  %699 = load void (%struct.ID3D12GraphicsCommandList*, i32, i64)*, void (%struct.ID3D12GraphicsCommandList*, i32, i64)** %698, align 8
  call void %699(%struct.ID3D12GraphicsCommandList* nonnull dereferenceable(8) %693, i32 2, i64 %695) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %670) #12
  br label %744

700:                                              ; preds = %651
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @"??_C@_0GN@JEILPOMA@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  call void @abort() #10
  %701 = load %struct.ID3D12PipelineState*, %struct.ID3D12PipelineState** inttoptr (i64 16 to %struct.ID3D12PipelineState**), align 16, !tbaa !239
  %702 = load %struct.ID3D12RootSignature*, %struct.ID3D12RootSignature** inttoptr (i64 8 to %struct.ID3D12RootSignature**), align 8, !tbaa !227
  %703 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_graphics_command_list", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_graphics_command_list"* %95, i64 0, i32 0, i32 0
  %704 = load %struct.ID3D12GraphicsCommandList*, %struct.ID3D12GraphicsCommandList** %703, align 8, !tbaa !88
  %705 = bitcast %struct.ID3D12GraphicsCommandList* %704 to void (%struct.ID3D12GraphicsCommandList*, %struct.ID3D12RootSignature*)***
  %706 = load void (%struct.ID3D12GraphicsCommandList*, %struct.ID3D12RootSignature*)**, void (%struct.ID3D12GraphicsCommandList*, %struct.ID3D12RootSignature*)*** %705, align 8, !tbaa !50
  %707 = getelementptr inbounds void (%struct.ID3D12GraphicsCommandList*, %struct.ID3D12RootSignature*)*, void (%struct.ID3D12GraphicsCommandList*, %struct.ID3D12RootSignature*)** %706, i64 29
  %708 = load void (%struct.ID3D12GraphicsCommandList*, %struct.ID3D12RootSignature*)*, void (%struct.ID3D12GraphicsCommandList*, %struct.ID3D12RootSignature*)** %707, align 8
  call void %708(%struct.ID3D12GraphicsCommandList* nonnull dereferenceable(8) %704, %struct.ID3D12RootSignature* %702) #10
  %709 = load %struct.ID3D12GraphicsCommandList*, %struct.ID3D12GraphicsCommandList** %703, align 8, !tbaa !88
  %710 = bitcast %struct.ID3D12GraphicsCommandList* %709 to void (%struct.ID3D12GraphicsCommandList*, %struct.ID3D12PipelineState*)***
  %711 = load void (%struct.ID3D12GraphicsCommandList*, %struct.ID3D12PipelineState*)**, void (%struct.ID3D12GraphicsCommandList*, %struct.ID3D12PipelineState*)*** %710, align 8, !tbaa !50
  %712 = getelementptr inbounds void (%struct.ID3D12GraphicsCommandList*, %struct.ID3D12PipelineState*)*, void (%struct.ID3D12GraphicsCommandList*, %struct.ID3D12PipelineState*)** %711, i64 25
  %713 = load void (%struct.ID3D12GraphicsCommandList*, %struct.ID3D12PipelineState*)*, void (%struct.ID3D12GraphicsCommandList*, %struct.ID3D12PipelineState*)** %712, align 8
  call void %713(%struct.ID3D12GraphicsCommandList* nonnull dereferenceable(8) %709, %struct.ID3D12PipelineState* %701) #10
  %714 = bitcast [1 x %struct.ID3D12DescriptorHeap*]* %21 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %714) #12
  %715 = getelementptr inbounds [1 x %struct.ID3D12DescriptorHeap*], [1 x %struct.ID3D12DescriptorHeap*]* %21, i64 0, i64 0
  %716 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_binder", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_binder"* %97, i64 0, i32 0
  %717 = load %struct.ID3D12DescriptorHeap*, %struct.ID3D12DescriptorHeap** %716, align 8, !tbaa !190
  store %struct.ID3D12DescriptorHeap* %717, %struct.ID3D12DescriptorHeap** %715, align 8, !tbaa !49
  %718 = load %struct.ID3D12GraphicsCommandList*, %struct.ID3D12GraphicsCommandList** %703, align 8, !tbaa !88
  %719 = bitcast %struct.ID3D12GraphicsCommandList* %718 to void (%struct.ID3D12GraphicsCommandList*, i32, %struct.ID3D12DescriptorHeap**)***
  %720 = load void (%struct.ID3D12GraphicsCommandList*, i32, %struct.ID3D12DescriptorHeap**)**, void (%struct.ID3D12GraphicsCommandList*, i32, %struct.ID3D12DescriptorHeap**)*** %719, align 8, !tbaa !50
  %721 = getelementptr inbounds void (%struct.ID3D12GraphicsCommandList*, i32, %struct.ID3D12DescriptorHeap**)*, void (%struct.ID3D12GraphicsCommandList*, i32, %struct.ID3D12DescriptorHeap**)** %720, i64 28
  %722 = load void (%struct.ID3D12GraphicsCommandList*, i32, %struct.ID3D12DescriptorHeap**)*, void (%struct.ID3D12GraphicsCommandList*, i32, %struct.ID3D12DescriptorHeap**)** %721, align 8
  call void %722(%struct.ID3D12GraphicsCommandList* nonnull dereferenceable(8) %718, i32 1, %struct.ID3D12DescriptorHeap** nonnull %715) #10
  %723 = load %struct.ID3D12GraphicsCommandList*, %struct.ID3D12GraphicsCommandList** %703, align 8, !tbaa !88
  %724 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_binder", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_binder"* %97, i64 0, i32 4, i64 0, i32 0
  %725 = load i64, i64* %724, align 8, !tbaa.struct !240
  %726 = bitcast %struct.ID3D12GraphicsCommandList* %723 to void (%struct.ID3D12GraphicsCommandList*, i32, i64)***
  %727 = load void (%struct.ID3D12GraphicsCommandList*, i32, i64)**, void (%struct.ID3D12GraphicsCommandList*, i32, i64)*** %726, align 8, !tbaa !50
  %728 = getelementptr inbounds void (%struct.ID3D12GraphicsCommandList*, i32, i64)*, void (%struct.ID3D12GraphicsCommandList*, i32, i64)** %727, i64 31
  %729 = load void (%struct.ID3D12GraphicsCommandList*, i32, i64)*, void (%struct.ID3D12GraphicsCommandList*, i32, i64)** %728, align 8
  call void %729(%struct.ID3D12GraphicsCommandList* nonnull dereferenceable(8) %723, i32 0, i64 %725) #10
  %730 = load %struct.ID3D12GraphicsCommandList*, %struct.ID3D12GraphicsCommandList** %703, align 8, !tbaa !88
  %731 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_binder", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_binder"* %97, i64 0, i32 4, i64 1, i32 0
  %732 = load i64, i64* %731, align 8, !tbaa.struct !240
  %733 = bitcast %struct.ID3D12GraphicsCommandList* %730 to void (%struct.ID3D12GraphicsCommandList*, i32, i64)***
  %734 = load void (%struct.ID3D12GraphicsCommandList*, i32, i64)**, void (%struct.ID3D12GraphicsCommandList*, i32, i64)*** %733, align 8, !tbaa !50
  %735 = getelementptr inbounds void (%struct.ID3D12GraphicsCommandList*, i32, i64)*, void (%struct.ID3D12GraphicsCommandList*, i32, i64)** %734, i64 31
  %736 = load void (%struct.ID3D12GraphicsCommandList*, i32, i64)*, void (%struct.ID3D12GraphicsCommandList*, i32, i64)** %735, align 8
  call void %736(%struct.ID3D12GraphicsCommandList* nonnull dereferenceable(8) %730, i32 1, i64 %732) #10
  %737 = load %struct.ID3D12GraphicsCommandList*, %struct.ID3D12GraphicsCommandList** %703, align 8, !tbaa !88
  %738 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_binder", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_binder"* %97, i64 0, i32 4, i64 2, i32 0
  %739 = load i64, i64* %738, align 8, !tbaa.struct !240
  %740 = bitcast %struct.ID3D12GraphicsCommandList* %737 to void (%struct.ID3D12GraphicsCommandList*, i32, i64)***
  %741 = load void (%struct.ID3D12GraphicsCommandList*, i32, i64)**, void (%struct.ID3D12GraphicsCommandList*, i32, i64)*** %740, align 8, !tbaa !50
  %742 = getelementptr inbounds void (%struct.ID3D12GraphicsCommandList*, i32, i64)*, void (%struct.ID3D12GraphicsCommandList*, i32, i64)** %741, i64 31
  %743 = load void (%struct.ID3D12GraphicsCommandList*, i32, i64)*, void (%struct.ID3D12GraphicsCommandList*, i32, i64)** %742, align 8
  call void %743(%struct.ID3D12GraphicsCommandList* nonnull dereferenceable(8) %737, i32 2, i64 %739) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %714) #12
  br label %744

744:                                              ; preds = %653, %700
  %745 = load i8*, i8** %11, align 8, !tbaa !49
  %746 = icmp eq i8* %745, null
  br i1 %746, label %747, label %754

747:                                              ; preds = %744
  %748 = bitcast [0 x i8]* %18 to %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"**
  br label %1033

749:                                              ; preds = %754
  %750 = shl i64 %756, 3
  %751 = alloca i8, i64 %750, align 16
  %752 = bitcast i8* %751 to %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"**
  %753 = icmp eq i64 %756, 0
  br i1 %753, label %1033, label %762

754:                                              ; preds = %744, %754
  %755 = phi i64 [ %756, %754 ], [ 0, %744 ]
  %756 = add i64 %755, 1
  %757 = getelementptr inbounds i8*, i8** %11, i64 %756
  %758 = load i8*, i8** %757, align 8, !tbaa !49
  %759 = icmp eq i8* %758, null
  br i1 %759, label %749, label %754, !llvm.loop !241

760:                                              ; preds = %814
  %761 = icmp eq i64 %815, 0
  br i1 %761, label %1016, label %819

762:                                              ; preds = %749, %814
  %763 = phi i64 [ %816, %814 ], [ 0, %749 ]
  %764 = phi i64 [ %815, %814 ], [ 0, %749 ]
  %765 = phi i64 [ %817, %814 ], [ 0, %749 ]
  %766 = getelementptr inbounds i8, i8* %12, i64 %765
  %767 = load i8, i8* %766, align 1, !tbaa !40
  %768 = icmp eq i8 %767, 0
  br i1 %768, label %789, label %769

769:                                              ; preds = %762
  %770 = getelementptr inbounds i8*, i8** %11, i64 %765
  %771 = bitcast i8** %770 to %struct.halide_buffer_t**
  %772 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %771, align 8, !tbaa !49
  %773 = icmp eq %struct.halide_buffer_t* %772, null
  br i1 %773, label %774, label %775

774:                                              ; preds = %769
  call void @halide_print(i8* null, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @"??_C@_0HI@FNCIDAJF@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  call void @abort() #10
  br label %775

775:                                              ; preds = %774, %769
  %776 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %772, i64 0, i32 1
  %777 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %776, align 8, !tbaa !70
  %778 = icmp eq %struct.halide_device_interface_t* %777, @"?d3d12compute_device_interface@D3D12Compute@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A"
  br i1 %778, label %780, label %779

779:                                              ; preds = %775
  call void @halide_print(i8* null, i8* getelementptr inbounds ([161 x i8], [161 x i8]* @"??_C@_0KB@NININJGE@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  call void @abort() #10
  br label %780

780:                                              ; preds = %779, %775
  %781 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %772, i64 0, i32 0
  %782 = load i64, i64* %781, align 8, !tbaa !25
  %783 = icmp eq i64 %782, 0
  br i1 %783, label %784, label %785

784:                                              ; preds = %780
  call void @halide_print(i8* null, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @"??_C@_0HI@MFPPBOBE@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  call void @abort() #10
  br label %785

785:                                              ; preds = %780, %784
  %786 = inttoptr i64 %782 to %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*
  %787 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"** %752, i64 %763
  store %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %786, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"** %787, align 8, !tbaa !49
  %788 = add i64 %763, 1
  br label %814

789:                                              ; preds = %762
  %790 = getelementptr inbounds %struct.halide_type_t, %struct.halide_type_t* %10, i64 %765, i32 0
  %791 = bitcast i8* %790 to i32*
  %792 = load i32, i32* %791, align 2
  %793 = lshr i32 %792, 8
  %794 = and i32 %793, 255
  %795 = add nuw nsw i32 %794, 7
  %796 = lshr i32 %795, 3
  %797 = zext i32 %796 to i64
  %798 = call i64 @llvm.ctpop.i64(i64 %797), !range !242
  %799 = icmp ult i64 %798, 2
  br i1 %799, label %801, label %800

800:                                              ; preds = %789
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([141 x i8], [141 x i8]* @"??_C@_0IN@NBDDCMMP@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  call void @abort() #10
  br label %801

801:                                              ; preds = %789, %800
  %802 = and i32 %792, -65536
  %803 = icmp eq i32 %802, 65536
  br i1 %803, label %805, label %804

804:                                              ; preds = %801
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @"??_C@_0HI@GJGOKOND@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  call void @abort() #10
  br label %805

805:                                              ; preds = %801, %804
  %806 = icmp eq i32 %796, 0
  br i1 %806, label %809, label %807

807:                                              ; preds = %805
  %808 = icmp ult i32 %794, 33
  br i1 %808, label %811, label %809

809:                                              ; preds = %807, %805
  %810 = phi i8* [ getelementptr inbounds ([117 x i8], [117 x i8]* @"??_C@_0HF@DFDPDGHJ@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0), %805 ], [ getelementptr inbounds ([118 x i8], [118 x i8]* @"??_C@_0HG@ONCHKHIM@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0), %807 ]
  call void @halide_print(i8* %0, i8* %810) #10
  call void @abort() #10
  br label %811

811:                                              ; preds = %809, %807
  %812 = add i64 %764, 7
  %813 = and i64 %812, -4
  br label %814

814:                                              ; preds = %785, %811
  %815 = phi i64 [ %764, %785 ], [ %813, %811 ]
  %816 = phi i64 [ %788, %785 ], [ %763, %811 ]
  %817 = add nuw nsw i64 %765, 1
  %818 = icmp eq i64 %765, %755
  br i1 %818, label %760, label %762, !llvm.loop !243

819:                                              ; preds = %760
  %820 = add i64 %815, 255
  %821 = and i64 %820, -256
  %822 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame"* %93, i64 0, i32 2, i32 2
  %823 = load i32, i32* %822, align 4, !tbaa !63
  %824 = zext i32 %823 to i64
  %825 = icmp ugt i64 %821, %824
  br i1 %825, label %826, label %929

826:                                              ; preds = %819
  %827 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %98, i64 0, i32 0
  %828 = load %struct.ID3D12Resource*, %struct.ID3D12Resource** %827, align 8, !tbaa !54
  %829 = icmp eq %struct.ID3D12Resource* %828, null
  br i1 %829, label %837, label %830

830:                                              ; preds = %826
  %831 = getelementptr %struct.ID3D12Resource, %struct.ID3D12Resource* %828, i64 0, i32 0, i32 0, i32 0, i32 0
  %832 = bitcast %struct.ID3D12Resource* %828 to i32 (%struct.IUnknown*)***
  %833 = load i32 (%struct.IUnknown*)**, i32 (%struct.IUnknown*)*** %832, align 8, !tbaa !50
  %834 = getelementptr inbounds i32 (%struct.IUnknown*)*, i32 (%struct.IUnknown*)** %833, i64 2
  %835 = load i32 (%struct.IUnknown*)*, i32 (%struct.IUnknown*)** %834, align 8
  %836 = call i32 %835(%struct.IUnknown* nonnull dereferenceable(8) %831) #10
  br label %837

837:                                              ; preds = %830, %826
  %838 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame"* %93, i64 0, i32 2, i32 12
  %839 = load i8*, i8** %838, align 8, !tbaa !113
  %840 = icmp eq i8* %839, null
  br i1 %840, label %842, label %841

841:                                              ; preds = %837
  call void @free(i8* nonnull %839) #10
  br label %842

842:                                              ; preds = %841, %837
  %843 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame"* %93, i64 0, i32 2, i32 11
  %844 = load i8, i8* %843, align 8, !tbaa !112, !range !48
  %845 = icmp eq i8 %844, 0
  %846 = bitcast %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %98 to i8*
  br i1 %845, label %848, label %847

847:                                              ; preds = %842
  call void @free(i8* nonnull %846) #10
  br label %848

848:                                              ; preds = %842, %847
  %849 = bitcast %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %34 to i8*
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %849) #12
  call void @"?new_constant_buffer@D3D12Compute@Internal@Runtime@Halide@@YA?AUd3d12_buffer@1234@PEAUhalide_d3d12compute_device@@_K@Z"(%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* nonnull sret(%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer") align 8 %34, %struct.halide_d3d12compute_device* %43, i64 %821) #11
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %846, i8* nonnull align 8 %849, i64 96, i1 true), !tbaa.struct !119
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %849) #12
  %850 = load %struct.ID3D12Resource*, %struct.ID3D12Resource** %827, align 8, !tbaa !54
  %851 = icmp eq %struct.ID3D12Resource* %850, null
  br i1 %851, label %852, label %929

852:                                              ; preds = %848
  br i1 %652, label %888, label %853

853:                                              ; preds = %852
  %854 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_function", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_function"* %631, i64 0, i32 0
  %855 = load %struct.ID3D10Blob*, %struct.ID3D10Blob** %854, align 8, !tbaa !225
  %856 = icmp eq %struct.ID3D10Blob* %855, null
  br i1 %856, label %864, label %857

857:                                              ; preds = %853
  %858 = getelementptr %struct.ID3D10Blob, %struct.ID3D10Blob* %855, i64 0, i32 0
  %859 = bitcast %struct.ID3D10Blob* %855 to i32 (%struct.IUnknown*)***
  %860 = load i32 (%struct.IUnknown*)**, i32 (%struct.IUnknown*)*** %859, align 8, !tbaa !50
  %861 = getelementptr inbounds i32 (%struct.IUnknown*)*, i32 (%struct.IUnknown*)** %860, i64 2
  %862 = load i32 (%struct.IUnknown*)*, i32 (%struct.IUnknown*)** %861, align 8
  %863 = call i32 %862(%struct.IUnknown* nonnull dereferenceable(8) %858) #10
  br label %864

864:                                              ; preds = %857, %853
  %865 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_function", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_function"* %631, i64 0, i32 1
  %866 = load %struct.ID3D12RootSignature*, %struct.ID3D12RootSignature** %865, align 8, !tbaa !227
  %867 = icmp eq %struct.ID3D12RootSignature* %866, null
  br i1 %867, label %875, label %868

868:                                              ; preds = %864
  %869 = getelementptr %struct.ID3D12RootSignature, %struct.ID3D12RootSignature* %866, i64 0, i32 0, i32 0, i32 0
  %870 = bitcast %struct.ID3D12RootSignature* %866 to i32 (%struct.IUnknown*)***
  %871 = load i32 (%struct.IUnknown*)**, i32 (%struct.IUnknown*)*** %870, align 8, !tbaa !50
  %872 = getelementptr inbounds i32 (%struct.IUnknown*)*, i32 (%struct.IUnknown*)** %871, i64 2
  %873 = load i32 (%struct.IUnknown*)*, i32 (%struct.IUnknown*)** %872, align 8
  %874 = call i32 %873(%struct.IUnknown* nonnull dereferenceable(8) %869) #10
  br label %875

875:                                              ; preds = %868, %864
  %876 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_function", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_function"* %631, i64 0, i32 2
  %877 = load %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_pipeline_state"*, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_pipeline_state"** %876, align 8, !tbaa !239
  %878 = icmp eq %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_pipeline_state"* %877, null
  br i1 %878, label %886, label %879

879:                                              ; preds = %875
  %880 = bitcast %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_pipeline_state"* %877 to %struct.IUnknown*
  %881 = bitcast %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_pipeline_state"* %877 to i32 (%struct.IUnknown*)***
  %882 = load i32 (%struct.IUnknown*)**, i32 (%struct.IUnknown*)*** %881, align 8, !tbaa !50
  %883 = getelementptr inbounds i32 (%struct.IUnknown*)*, i32 (%struct.IUnknown*)** %882, i64 2
  %884 = load i32 (%struct.IUnknown*)*, i32 (%struct.IUnknown*)** %883, align 8
  %885 = call i32 %884(%struct.IUnknown* nonnull dereferenceable(8) %880) #10
  br label %886

886:                                              ; preds = %879, %875
  %887 = bitcast %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_function"* %631 to i8*
  call void @free(i8* nonnull %887) #10
  br label %888

888:                                              ; preds = %852, %886
  %889 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %35 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %889) #12
  %890 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %35, i64 0, i32 3
  store i8* null, i8** %890, align 8, !tbaa !41
  %891 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %35, i64 0, i32 4
  store i8 1, i8* %891, align 8, !tbaa !44
  %892 = call i8* @malloc(i64 1024) #10
  %893 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %35, i64 0, i32 0
  store i8* %892, i8** %893, align 8, !tbaa !45
  %894 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %35, i64 0, i32 1
  store i8* %892, i8** %894, align 8, !tbaa !46
  %895 = icmp eq i8* %892, null
  br i1 %895, label %898, label %896

896:                                              ; preds = %888
  %897 = getelementptr inbounds i8, i8* %892, i64 1023
  store i8 0, i8* %897, align 1, !tbaa !40
  br label %898

898:                                              ; preds = %888, %896
  %899 = phi i8* [ %897, %896 ], [ null, %888 ]
  %900 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %35, i64 0, i32 2
  store i8* %899, i8** %900, align 8
  %901 = call i8* @halide_string_to_string(i8* %892, i8* %899, i8* nonnull getelementptr inbounds ([51 x i8], [51 x i8]* @"??_C@_0DD@BBIFNIEA@D3D12Compute?3?5Could?5not?5allocate@", i64 0, i64 0)) #10
  store i8* %901, i8** %894, align 8, !tbaa !46
  %902 = call i8* @halide_string_to_string(i8* %901, i8* %899, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #10
  store i8* %902, i8** %894, align 8, !tbaa !46
  %903 = call i8* @halide_string_to_string(i8* %902, i8* %899, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @"??_C@_0CE@MGMMPJGA@vvvvv?5D3D12?5Begin?5Debug?5Dump?5vvv@", i64 0, i64 0)) #10
  store i8* %903, i8** %894, align 8, !tbaa !46
  call fastcc void @"?d3d12_debug_dump@@YAXAEAV?$Printer@$00$0EAA@@?A0x2B71E647@Internal@Runtime@Halide@@@Z"(%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* nonnull align 8 dereferenceable(40) %35) #11
  %904 = load i8*, i8** %900, align 8, !tbaa !47
  %905 = load i8*, i8** %894, align 8, !tbaa !46
  %906 = call i8* @halide_string_to_string(i8* %905, i8* %904, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @"??_C@_0CE@PCPJBLP@?$FO?$FO?$FO?$FO?$FO?5D3D12?5?5End?5?5Debug?5Dump?5?$FO?$FO?$FO@", i64 0, i64 0)) #10
  store i8* %906, i8** %894, align 8, !tbaa !46
  %907 = call i8* @halide_string_to_string(i8* %906, i8* %904, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @"??_C@_0BA@FGKOLOB@D3D12?5HALT?5?$CB?$CB?$CB?6?$AA@", i64 0, i64 0)) #10
  store i8* %907, i8** %894, align 8, !tbaa !46
  %908 = load i8*, i8** %893, align 8, !tbaa !45
  %909 = icmp eq i8* %908, null
  %910 = load i8*, i8** %890, align 8, !tbaa !41
  br i1 %909, label %911, label %912

911:                                              ; preds = %898
  call void @halide_error(i8* %910, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #10
  br label %920

912:                                              ; preds = %898
  %913 = ptrtoint i8* %907 to i64
  %914 = ptrtoint i8* %908 to i64
  %915 = add i64 %913, 1
  %916 = sub i64 %915, %914
  %917 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %910, i8* nonnull %908, i64 %916) #10
  %918 = load i8*, i8** %893, align 8, !tbaa !45
  %919 = load i8*, i8** %890, align 8, !tbaa !41
  call void @halide_error(i8* %919, i8* %918) #10
  br label %920

920:                                              ; preds = %912, %911
  %921 = load i8, i8* %891, align 8, !tbaa !44, !range !48
  %922 = icmp eq i8 %921, 0
  br i1 %922, label %928, label %923

923:                                              ; preds = %920
  %924 = load i8*, i8** %893, align 8, !tbaa !45
  %925 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %35, i64 0, i32 5, i64 0
  %926 = icmp eq i8* %924, %925
  br i1 %926, label %928, label %927

927:                                              ; preds = %923
  call void @free(i8* %924) #10
  br label %928

928:                                              ; preds = %920, %923, %927
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %889) #12
  br label %1089

929:                                              ; preds = %848, %819
  %930 = call fastcc i8* @"?buffer_contents@D3D12Compute@Internal@Runtime@Halide@@YAPEAXPEAUd3d12_buffer@1234@@Z"(%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* nonnull %98) #11
  %931 = bitcast i32* %36 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %931) #12
  store i32 0, i32* %36, align 4, !tbaa !77
  br i1 %753, label %934, label %932

932:                                              ; preds = %929
  %933 = bitcast i32* %36 to float*
  br label %937

934:                                              ; preds = %1010, %929
  %935 = phi i64 [ 0, %929 ], [ %1011, %1010 ]
  %936 = icmp eq i64 %935, %815
  br i1 %936, label %1015, label %1014

937:                                              ; preds = %932, %1010
  %938 = phi i64 [ 0, %932 ], [ %1011, %1010 ]
  %939 = phi i64 [ 0, %932 ], [ %1012, %1010 ]
  %940 = getelementptr inbounds i8, i8* %12, i64 %939
  %941 = load i8, i8* %940, align 1, !tbaa !40
  %942 = icmp eq i8 %941, 0
  br i1 %942, label %943, label %1010

943:                                              ; preds = %937
  %944 = getelementptr inbounds %struct.halide_type_t, %struct.halide_type_t* %10, i64 %939, i32 0
  %945 = load i8, i8* %944, align 2, !tbaa.struct !66
  %946 = getelementptr inbounds %struct.halide_type_t, %struct.halide_type_t* %10, i64 %939, i32 1
  %947 = load i8, i8* %946, align 1, !tbaa.struct !244
  switch i8 %945, label %1004 [
    i8 2, label %948
    i8 0, label %956
    i8 1, label %980
  ]

948:                                              ; preds = %943
  %949 = icmp eq i8 %947, 32
  br i1 %949, label %951, label %950

950:                                              ; preds = %948
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([122 x i8], [122 x i8]* @"??_C@_0HK@OFACIBGA@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  call void @abort() #10
  br label %951

951:                                              ; preds = %950, %948
  %952 = getelementptr inbounds i8*, i8** %11, i64 %939
  %953 = bitcast i8** %952 to float**
  %954 = load float*, float** %953, align 8, !tbaa !49
  %955 = load float, float* %954, align 4, !tbaa !245
  store float %955, float* %933, align 4, !tbaa !245
  br label %1005

956:                                              ; preds = %943
  switch i8 %947, label %979 [
    i8 1, label %957
    i8 8, label %963
    i8 16, label %968
    i8 32, label %974
  ]

957:                                              ; preds = %956
  %958 = getelementptr inbounds i8*, i8** %11, i64 %939
  %959 = load i8*, i8** %958, align 8, !tbaa !49
  %960 = load i8, i8* %959, align 1, !tbaa !40
  %961 = icmp ne i8 %960, 0
  %962 = zext i1 %961 to i32
  store i32 %962, i32* %36, align 4, !tbaa !77
  br label %1005

963:                                              ; preds = %956
  %964 = getelementptr inbounds i8*, i8** %11, i64 %939
  %965 = load i8*, i8** %964, align 8, !tbaa !49
  %966 = load i8, i8* %965, align 1, !tbaa !40
  %967 = sext i8 %966 to i32
  store i32 %967, i32* %36, align 4, !tbaa !77
  br label %1005

968:                                              ; preds = %956
  %969 = getelementptr inbounds i8*, i8** %11, i64 %939
  %970 = bitcast i8** %969 to i16**
  %971 = load i16*, i16** %970, align 8, !tbaa !49
  %972 = load i16, i16* %971, align 2, !tbaa !52
  %973 = sext i16 %972 to i32
  store i32 %973, i32* %36, align 4, !tbaa !77
  br label %1005

974:                                              ; preds = %956
  %975 = getelementptr inbounds i8*, i8** %11, i64 %939
  %976 = bitcast i8** %975 to i32**
  %977 = load i32*, i32** %976, align 8, !tbaa !49
  %978 = load i32, i32* %977, align 4, !tbaa !77
  store i32 %978, i32* %36, align 4, !tbaa !77
  br label %1005

979:                                              ; preds = %956
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([106 x i8], [106 x i8]* @"??_C@_0GK@LJLFAGKH@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  call void @abort() #10
  br label %1005

980:                                              ; preds = %943
  switch i8 %947, label %1003 [
    i8 1, label %981
    i8 8, label %987
    i8 16, label %992
    i8 32, label %998
  ]

981:                                              ; preds = %980
  %982 = getelementptr inbounds i8*, i8** %11, i64 %939
  %983 = load i8*, i8** %982, align 8, !tbaa !49
  %984 = load i8, i8* %983, align 1, !tbaa !40
  %985 = icmp ne i8 %984, 0
  %986 = zext i1 %985 to i32
  store i32 %986, i32* %36, align 4, !tbaa !77
  br label %1005

987:                                              ; preds = %980
  %988 = getelementptr inbounds i8*, i8** %11, i64 %939
  %989 = load i8*, i8** %988, align 8, !tbaa !49
  %990 = load i8, i8* %989, align 1, !tbaa !40
  %991 = zext i8 %990 to i32
  store i32 %991, i32* %36, align 4, !tbaa !77
  br label %1005

992:                                              ; preds = %980
  %993 = getelementptr inbounds i8*, i8** %11, i64 %939
  %994 = bitcast i8** %993 to i16**
  %995 = load i16*, i16** %994, align 8, !tbaa !49
  %996 = load i16, i16* %995, align 2, !tbaa !52
  %997 = zext i16 %996 to i32
  store i32 %997, i32* %36, align 4, !tbaa !77
  br label %1005

998:                                              ; preds = %980
  %999 = getelementptr inbounds i8*, i8** %11, i64 %939
  %1000 = bitcast i8** %999 to i32**
  %1001 = load i32*, i32** %1000, align 8, !tbaa !49
  %1002 = load i32, i32* %1001, align 4, !tbaa !77
  store i32 %1002, i32* %36, align 4, !tbaa !77
  br label %1005

1003:                                             ; preds = %980
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([106 x i8], [106 x i8]* @"??_C@_0GK@BIMLBHIN@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  call void @abort() #10
  br label %1005

1004:                                             ; preds = %943
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([106 x i8], [106 x i8]* @"??_C@_0GK@HBMNIJNC@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  call void @abort() #10
  br label %1005

1005:                                             ; preds = %981, %992, %1003, %998, %987, %957, %968, %979, %974, %963, %1004, %951
  %1006 = getelementptr inbounds i8, i8* %930, i64 %938
  %1007 = call i8* @memcpy(i8* %1006, i8* nonnull %931, i64 4) #10
  %1008 = add i64 %938, 7
  %1009 = and i64 %1008, -4
  br label %1010

1010:                                             ; preds = %937, %1005
  %1011 = phi i64 [ %938, %937 ], [ %1009, %1005 ]
  %1012 = add nuw nsw i64 %939, 1
  %1013 = icmp eq i64 %939, %755
  br i1 %1013, label %934, label %937, !llvm.loop !247

1014:                                             ; preds = %934
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([134 x i8], [134 x i8]* @"??_C@_0IG@MKOCFILD@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  call void @abort() #10
  br label %1015

1015:                                             ; preds = %934, %1014
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %931) #12
  call void @"?set_input_buffer@D3D12Compute@Internal@Runtime@Halide@@YAXPEAUd3d12_binder@1234@PEAUd3d12_buffer@1234@I@Z"(%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_binder"* %97, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* nonnull %98, i32 0) #11
  br label %1016

1016:                                             ; preds = %760, %1015
  %1017 = icmp eq i64 %816, 0
  br i1 %1017, label %1033, label %1026

1018:                                             ; preds = %1026
  br i1 %1017, label %1033, label %1019

1019:                                             ; preds = %1018
  %1020 = bitcast %struct.D3D12_RESOURCE_BARRIER* %19 to i8*
  %1021 = getelementptr inbounds %struct.D3D12_RESOURCE_BARRIER, %struct.D3D12_RESOURCE_BARRIER* %19, i64 0, i32 2, i32 0, i32 1
  %1022 = bitcast i32* %1021 to i8*
  %1023 = getelementptr inbounds %struct.D3D12_RESOURCE_BARRIER, %struct.D3D12_RESOURCE_BARRIER* %19, i64 0, i32 2, i32 0, i32 0
  %1024 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_graphics_command_list", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_graphics_command_list"* %95, i64 0, i32 0, i32 0
  %1025 = bitcast %struct.D3D12_RESOURCE_BARRIER* %19 to <2 x i32>*
  br label %1069

1026:                                             ; preds = %1016, %1026
  %1027 = phi i64 [ %1031, %1026 ], [ 0, %1016 ]
  %1028 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"** %752, i64 %1027
  %1029 = load %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"** %1028, align 8, !tbaa !49
  %1030 = trunc i64 %1027 to i32
  call void @"?set_input_buffer@D3D12Compute@Internal@Runtime@Halide@@YAXPEAUd3d12_binder@1234@PEAUd3d12_buffer@1234@I@Z"(%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_binder"* %97, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %1029, i32 %1030) #11
  %1031 = add nuw i64 %1027, 1
  %1032 = icmp eq i64 %1031, %816
  br i1 %1032, label %1018, label %1026, !llvm.loop !248

1033:                                             ; preds = %1069, %749, %747, %1016, %1018
  %1034 = phi i64 [ %816, %1018 ], [ 0, %1016 ], [ 0, %747 ], [ 0, %749 ], [ %816, %1069 ]
  %1035 = phi i1 [ true, %1018 ], [ true, %1016 ], [ true, %747 ], [ true, %749 ], [ %1017, %1069 ]
  %1036 = phi %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"** [ %752, %1018 ], [ %752, %1016 ], [ %748, %747 ], [ %752, %749 ], [ %752, %1069 ]
  call void @"?dispatch_threadgroups@D3D12Compute@Internal@Runtime@Halide@@YAXPEAUd3d12_graphics_command_list@1234@HHHHHH@Z"(%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_graphics_command_list"* %95, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #11
  %1037 = load %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_graphics_command_list"*, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_graphics_command_list"** %94, align 8, !tbaa !180
  %1038 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_graphics_command_list", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_graphics_command_list"* %1037, i64 0, i32 0, i32 0
  %1039 = load %struct.ID3D12GraphicsCommandList*, %struct.ID3D12GraphicsCommandList** %1038, align 8, !tbaa !88
  %1040 = bitcast %struct.ID3D12GraphicsCommandList* %1039 to i32 (%struct.ID3D12GraphicsCommandList*)***
  %1041 = load i32 (%struct.ID3D12GraphicsCommandList*)**, i32 (%struct.ID3D12GraphicsCommandList*)*** %1040, align 8, !tbaa !50
  %1042 = getelementptr inbounds i32 (%struct.ID3D12GraphicsCommandList*)*, i32 (%struct.ID3D12GraphicsCommandList*)** %1041, i64 9
  %1043 = load i32 (%struct.ID3D12GraphicsCommandList*)*, i32 (%struct.ID3D12GraphicsCommandList*)** %1042, align 8
  %1044 = call i32 %1043(%struct.ID3D12GraphicsCommandList* nonnull dereferenceable(8) %1039) #10
  %1045 = bitcast [1 x %struct.ID3D12CommandList*]* %20 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1045) #12
  %1046 = getelementptr inbounds [1 x %struct.ID3D12CommandList*], [1 x %struct.ID3D12CommandList*]* %20, i64 0, i64 0
  %1047 = load %struct.ID3D12GraphicsCommandList*, %struct.ID3D12GraphicsCommandList** %1038, align 8, !tbaa !88
  %1048 = getelementptr %struct.ID3D12GraphicsCommandList, %struct.ID3D12GraphicsCommandList* %1047, i64 0, i32 0
  store %struct.ID3D12CommandList* %1048, %struct.ID3D12CommandList** %1046, align 8, !tbaa !49
  %1049 = load %struct.ID3D12CommandQueue*, %struct.ID3D12CommandQueue** bitcast (%struct.halide_d3d12compute_command_queue** @"?queue@D3D12Compute@Internal@Runtime@Halide@@3PEAUhalide_d3d12compute_command_queue@@EA" to %struct.ID3D12CommandQueue**), align 8, !tbaa !49
  %1050 = bitcast %struct.ID3D12CommandQueue* %1049 to void (%struct.ID3D12CommandQueue*, i32, %struct.ID3D12CommandList**)***
  %1051 = load void (%struct.ID3D12CommandQueue*, i32, %struct.ID3D12CommandList**)**, void (%struct.ID3D12CommandQueue*, i32, %struct.ID3D12CommandList**)*** %1050, align 8, !tbaa !50
  %1052 = getelementptr inbounds void (%struct.ID3D12CommandQueue*, i32, %struct.ID3D12CommandList**)*, void (%struct.ID3D12CommandQueue*, i32, %struct.ID3D12CommandList**)** %1051, i64 10
  %1053 = load void (%struct.ID3D12CommandQueue*, i32, %struct.ID3D12CommandList**)*, void (%struct.ID3D12CommandQueue*, i32, %struct.ID3D12CommandList**)** %1052, align 8
  call void %1053(%struct.ID3D12CommandQueue* nonnull dereferenceable(8) %1049, i32 1, %struct.ID3D12CommandList** nonnull %1046) #10
  %1054 = atomicrmw volatile add i64* @"?queue_last_signal@D3D12Compute@Internal@Runtime@Halide@@3_KC", i64 1 seq_cst
  %1055 = add i64 %1054, 1
  %1056 = load %struct.ID3D12CommandQueue*, %struct.ID3D12CommandQueue** bitcast (%struct.halide_d3d12compute_command_queue** @"?queue@D3D12Compute@Internal@Runtime@Halide@@3PEAUhalide_d3d12compute_command_queue@@EA" to %struct.ID3D12CommandQueue**), align 8, !tbaa !49
  %1057 = load %struct.ID3D12Fence*, %struct.ID3D12Fence** @"?queue_fence@D3D12Compute@Internal@Runtime@Halide@@3PEAUID3D12Fence@@EA", align 8, !tbaa !49
  %1058 = bitcast %struct.ID3D12CommandQueue* %1056 to i32 (%struct.ID3D12CommandQueue*, %struct.ID3D12Fence*, i64)***
  %1059 = load i32 (%struct.ID3D12CommandQueue*, %struct.ID3D12Fence*, i64)**, i32 (%struct.ID3D12CommandQueue*, %struct.ID3D12Fence*, i64)*** %1058, align 8, !tbaa !50
  %1060 = getelementptr inbounds i32 (%struct.ID3D12CommandQueue*, %struct.ID3D12Fence*, i64)*, i32 (%struct.ID3D12CommandQueue*, %struct.ID3D12Fence*, i64)** %1059, i64 14
  %1061 = load i32 (%struct.ID3D12CommandQueue*, %struct.ID3D12Fence*, i64)*, i32 (%struct.ID3D12CommandQueue*, %struct.ID3D12Fence*, i64)** %1060, align 8
  %1062 = call i32 %1061(%struct.ID3D12CommandQueue* nonnull dereferenceable(8) %1056, %struct.ID3D12Fence* %1057, i64 %1055) #10
  %1063 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_graphics_command_list", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_graphics_command_list"* %1037, i64 0, i32 1
  store i64 %1055, i64* %1063, align 8, !tbaa !186
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1045) #12
  %1064 = load %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_graphics_command_list"*, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_graphics_command_list"** %94, align 8, !tbaa !180
  %1065 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_graphics_command_list", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_graphics_command_list"* %1064, i64 0, i32 1
  %1066 = load i64, i64* %1065, align 8, !tbaa !186
  %1067 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame"* %93, i64 0, i32 3
  store i64 %1066, i64* %1067, align 8, !tbaa !188
  %1068 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame"* %93, i64 0, i32 2, i32 15
  store i64 %1066, i64* %1068, align 8, !tbaa !114
  br i1 %1035, label %1089, label %1082

1069:                                             ; preds = %1019, %1069
  %1070 = phi i64 [ 0, %1019 ], [ %1080, %1069 ]
  %1071 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"** %752, i64 %1070
  %1072 = load %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"** %1071, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1020) #12
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(32) %1022, i8 0, i64 16, i1 false) #12
  store <2 x i32> <i32 2, i32 0>, <2 x i32>* %1025, align 8, !tbaa !40
  %1073 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %1072, i64 0, i32 0
  %1074 = load %struct.ID3D12Resource*, %struct.ID3D12Resource** %1073, align 8, !tbaa !54
  store %struct.ID3D12Resource* %1074, %struct.ID3D12Resource** %1023, align 8, !tbaa !40
  %1075 = load %struct.ID3D12GraphicsCommandList*, %struct.ID3D12GraphicsCommandList** %1024, align 8, !tbaa !88
  %1076 = bitcast %struct.ID3D12GraphicsCommandList* %1075 to void (%struct.ID3D12GraphicsCommandList*, i32, %struct.D3D12_RESOURCE_BARRIER*)***
  %1077 = load void (%struct.ID3D12GraphicsCommandList*, i32, %struct.D3D12_RESOURCE_BARRIER*)**, void (%struct.ID3D12GraphicsCommandList*, i32, %struct.D3D12_RESOURCE_BARRIER*)*** %1076, align 8, !tbaa !50
  %1078 = getelementptr inbounds void (%struct.ID3D12GraphicsCommandList*, i32, %struct.D3D12_RESOURCE_BARRIER*)*, void (%struct.ID3D12GraphicsCommandList*, i32, %struct.D3D12_RESOURCE_BARRIER*)** %1077, i64 26
  %1079 = load void (%struct.ID3D12GraphicsCommandList*, i32, %struct.D3D12_RESOURCE_BARRIER*)*, void (%struct.ID3D12GraphicsCommandList*, i32, %struct.D3D12_RESOURCE_BARRIER*)** %1078, align 8
  call void %1079(%struct.ID3D12GraphicsCommandList* nonnull dereferenceable(8) %1075, i32 1, %struct.D3D12_RESOURCE_BARRIER* nonnull %19) #10
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1020) #12
  %1080 = add nuw i64 %1070, 1
  %1081 = icmp eq i64 %1080, %816
  br i1 %1081, label %1033, label %1069, !llvm.loop !249

1082:                                             ; preds = %1033, %1082
  %1083 = phi i64 [ %1087, %1082 ], [ 0, %1033 ]
  %1084 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"** %1036, i64 %1083
  %1085 = load %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"** %1084, align 8, !tbaa !49
  %1086 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %1085, i64 0, i32 15
  store i64 %1066, i64* %1086, align 8, !tbaa !114
  %1087 = add nuw i64 %1083, 1
  %1088 = icmp eq i64 %1087, %1034
  br i1 %1088, label %1089, label %1082, !llvm.loop !250

1089:                                             ; preds = %1082, %1033, %928, %17
  %1090 = phi i32 [ %39, %17 ], [ -11, %928 ], [ 0, %1033 ], [ 0, %1082 ]
  call void @"?restore@D3D12ContextHolder@D3D12Compute@Internal@Runtime@Halide@@AEAAXXZ"(%"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder"* nonnull dereferenceable(32) %33) #10
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %37) #12
  ret i32 %1090
}

; Function Attrs: nounwind
define internal fastcc %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame"* @"?acquire_frame@D3D12Compute@Internal@Runtime@Halide@@YAPEAUd3d12_frame@1234@PEAUhalide_d3d12compute_device@@@Z"(%struct.halide_d3d12compute_device* %0) unnamed_addr #4 {
  %2 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  %3 = alloca %struct.ID3D12DescriptorHeap*, align 8
  %4 = alloca <4 x i32>, align 16
  %5 = bitcast <4 x i32>* %4 to %struct.D3D12_DESCRIPTOR_HEAP_DESC*
  %6 = alloca %struct.D3D12_CPU_DESCRIPTOR_HANDLE, align 8
  %7 = alloca %struct.D3D12_GPU_DESCRIPTOR_HANDLE, align 8
  %8 = alloca %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC, align 8
  %9 = alloca %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC, align 8
  %10 = alloca %struct.D3D12_SHADER_RESOURCE_VIEW_DESC, align 8
  %11 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  %12 = alloca %struct.ID3D12GraphicsCommandList*, align 8
  %13 = load %struct.ID3D12Fence*, %struct.ID3D12Fence** @"?queue_fence@D3D12Compute@Internal@Runtime@Halide@@3PEAUID3D12Fence@@EA", align 8, !tbaa !49
  %14 = bitcast %struct.ID3D12Fence* %13 to i64 (%struct.ID3D12Fence*)***
  %15 = load i64 (%struct.ID3D12Fence*)**, i64 (%struct.ID3D12Fence*)*** %14, align 8, !tbaa !50
  %16 = getelementptr inbounds i64 (%struct.ID3D12Fence*)*, i64 (%struct.ID3D12Fence*)** %15, i64 8
  %17 = load i64 (%struct.ID3D12Fence*)*, i64 (%struct.ID3D12Fence*)** %16, align 8
  %18 = tail call i64 %17(%struct.ID3D12Fence* nonnull dereferenceable(8) %13) #10
  %19 = load i64, i64* @"?frame_selector@D3D12Compute@Internal@Runtime@Halide@@3_KA", align 8, !tbaa !6
  %20 = and i64 %19, 7
  %21 = getelementptr inbounds [8 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame"], [8 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame"]* @"?frame_pool@D3D12Compute@Internal@Runtime@Halide@@3PAUd3d12_frame@1234@A", i64 0, i64 %20
  %22 = getelementptr inbounds [8 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame"], [8 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame"]* @"?frame_pool@D3D12Compute@Internal@Runtime@Halide@@3PAUd3d12_frame@1234@A", i64 0, i64 %20, i32 3
  %23 = load i64, i64* %22, align 8, !tbaa !188
  %24 = icmp ult i64 %18, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %1
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame"* %21, i64 0, i32 0
  %27 = load %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_graphics_command_list"*, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_graphics_command_list"** %26, align 8, !tbaa !180
  %28 = getelementptr %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_graphics_command_list", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_graphics_command_list"* %27, i64 0, i32 1
  %29 = load i64, i64* %28, align 8, !tbaa !186
  tail call fastcc void @"?wait_until_signaled@D3D12Compute@Internal@Runtime@Halide@@YAX_K@Z"(i64 %29) #10
  br label %30

30:                                               ; preds = %25, %1
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame"* %21, i64 0, i32 0
  %32 = load %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_graphics_command_list"*, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_graphics_command_list"** %31, align 8, !tbaa !180
  %33 = icmp eq %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_graphics_command_list"* %32, null
  br i1 %33, label %34, label %480

34:                                               ; preds = %30
  %35 = load %struct.ID3D12CommandAllocator*, %struct.ID3D12CommandAllocator** bitcast (%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_command_allocator"** @"?cmd_allocator_main@D3D12Compute@Internal@Runtime@Halide@@3PEAUd3d12_command_allocator@1234@EA" to %struct.ID3D12CommandAllocator**), align 8, !tbaa !49
  %36 = bitcast %struct.ID3D12GraphicsCommandList** %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %36) #12
  store %struct.ID3D12GraphicsCommandList* null, %struct.ID3D12GraphicsCommandList** %12, align 8, !tbaa !49
  %37 = bitcast %struct.halide_d3d12compute_device* %0 to %struct.ID3D12Device*
  %38 = bitcast %struct.ID3D12GraphicsCommandList** %12 to i8**
  %39 = bitcast %struct.halide_d3d12compute_device* %0 to i32 (%struct.ID3D12Device*, i32, i32, %struct.ID3D12CommandAllocator*, %struct.ID3D12PipelineState*, %struct._GUID*, i8**)***
  %40 = load i32 (%struct.ID3D12Device*, i32, i32, %struct.ID3D12CommandAllocator*, %struct.ID3D12PipelineState*, %struct._GUID*, i8**)**, i32 (%struct.ID3D12Device*, i32, i32, %struct.ID3D12CommandAllocator*, %struct.ID3D12PipelineState*, %struct._GUID*, i8**)*** %39, align 8, !tbaa !50
  %41 = getelementptr inbounds i32 (%struct.ID3D12Device*, i32, i32, %struct.ID3D12CommandAllocator*, %struct.ID3D12PipelineState*, %struct._GUID*, i8**)*, i32 (%struct.ID3D12Device*, i32, i32, %struct.ID3D12CommandAllocator*, %struct.ID3D12PipelineState*, %struct._GUID*, i8**)** %40, i64 12
  %42 = load i32 (%struct.ID3D12Device*, i32, i32, %struct.ID3D12CommandAllocator*, %struct.ID3D12PipelineState*, %struct._GUID*, i8**)*, i32 (%struct.ID3D12Device*, i32, i32, %struct.ID3D12CommandAllocator*, %struct.ID3D12PipelineState*, %struct._GUID*, i8**)** %41, align 8
  %43 = call i32 %42(%struct.ID3D12Device* nonnull dereferenceable(8) %37, i32 0, i32 2, %struct.ID3D12CommandAllocator* %35, %struct.ID3D12PipelineState* null, %struct._GUID* nonnull align 4 dereferenceable(16) @_GUID_5b160d0f_ac1b_4185_8ba8_b3ae42a5a455, i8** nonnull %38) #10
  %44 = load %struct.ID3D12GraphicsCommandList*, %struct.ID3D12GraphicsCommandList** %12, align 8, !tbaa !49
  %45 = icmp sgt i32 %43, -1
  %46 = icmp ne %struct.ID3D12GraphicsCommandList* %44, null
  %47 = and i1 %45, %46
  br i1 %47, label %94, label %48

48:                                               ; preds = %34
  %49 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %49) #12
  %50 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %11, i64 0, i32 3
  store i8* null, i8** %50, align 8, !tbaa !41
  %51 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %11, i64 0, i32 4
  store i8 1, i8* %51, align 8, !tbaa !44
  %52 = call i8* @malloc(i64 1024) #10
  %53 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %11, i64 0, i32 0
  store i8* %52, i8** %53, align 8, !tbaa !45
  %54 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %11, i64 0, i32 1
  %55 = icmp eq i8* %52, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %48
  %57 = getelementptr inbounds i8, i8* %52, i64 1023
  store i8 0, i8* %57, align 1, !tbaa !40
  br label %58

58:                                               ; preds = %56, %48
  %59 = phi i8* [ %57, %56 ], [ null, %48 ]
  %60 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %11, i64 0, i32 2
  store i8* %59, i8** %60, align 8
  %61 = call i8* @halide_string_to_string(i8* %52, i8* %59, i8* nonnull getelementptr inbounds ([46 x i8], [46 x i8]* @"??_C@_0CO@OKNPIGDH@Unable?5to?5create?5the?5Direct3D?512@", i64 0, i64 0)) #10
  %62 = call i8* @halide_string_to_string(i8* %61, i8* %59, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @"??_C@_0L@IAGCJOCP@?5?$CIHRESULT?$DN?$AA@", i64 0, i64 0)) #10
  %63 = sext i32 %43 to i64
  %64 = inttoptr i64 %63 to i8*
  %65 = call i8* @halide_pointer_to_string(i8* %62, i8* %59, i8* %64) #10
  %66 = call i8* @halide_string_to_string(i8* %65, i8* %59, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @"??_C@_0L@FELFIFPM@?0?5object?$CK?$DN?$AA@", i64 0, i64 0)) #10
  %67 = bitcast %struct.ID3D12GraphicsCommandList* %44 to i8*
  %68 = call i8* @halide_pointer_to_string(i8* %66, i8* %59, i8* %67) #10
  %69 = call i8* @halide_string_to_string(i8* %68, i8* %59, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01PKGAHCOL@?$CJ?$AA@", i64 0, i64 0)) #10
  %70 = call i8* @halide_string_to_string(i8* %69, i8* %59, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #10
  %71 = call i8* @halide_string_to_string(i8* %70, i8* %59, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @"??_C@_0CE@MGMMPJGA@vvvvv?5D3D12?5Begin?5Debug?5Dump?5vvv@", i64 0, i64 0)) #10
  store i8* %71, i8** %54, align 8, !tbaa !46
  call fastcc void @"?d3d12_debug_dump@@YAXAEAV?$Printer@$00$0EAA@@?A0x2B71E647@Internal@Runtime@Halide@@@Z"(%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* nonnull align 8 dereferenceable(40) %11) #10
  %72 = load i8*, i8** %60, align 8, !tbaa !47
  %73 = load i8*, i8** %54, align 8, !tbaa !46
  %74 = call i8* @halide_string_to_string(i8* %73, i8* %72, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @"??_C@_0CE@PCPJBLP@?$FO?$FO?$FO?$FO?$FO?5D3D12?5?5End?5?5Debug?5Dump?5?$FO?$FO?$FO@", i64 0, i64 0)) #10
  %75 = call i8* @halide_string_to_string(i8* %74, i8* %72, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @"??_C@_0BA@FGKOLOB@D3D12?5HALT?5?$CB?$CB?$CB?6?$AA@", i64 0, i64 0)) #10
  store i8* %75, i8** %54, align 8, !tbaa !46
  %76 = load i8*, i8** %53, align 8, !tbaa !45
  %77 = icmp eq i8* %76, null
  %78 = load i8*, i8** %50, align 8, !tbaa !41
  br i1 %77, label %79, label %80

79:                                               ; preds = %58
  call void @halide_error(i8* %78, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #10
  br label %86

80:                                               ; preds = %58
  %81 = ptrtoint i8* %75 to i64
  %82 = ptrtoint i8* %76 to i64
  %83 = add i64 %81, 1
  %84 = sub i64 %83, %82
  %85 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %78, i8* nonnull %76, i64 %84) #10
  call void @halide_error(i8* %78, i8* nonnull %76) #10
  br label %86

86:                                               ; preds = %80, %79
  %87 = load i8, i8* %51, align 8, !tbaa !44, !range !48
  %88 = icmp eq i8 %87, 0
  %89 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %11, i64 0, i32 5, i64 0
  %90 = icmp eq i8* %76, %89
  %91 = or i1 %90, %88
  br i1 %91, label %93, label %92

92:                                               ; preds = %86
  call void @free(i8* %76) #10
  br label %93

93:                                               ; preds = %86, %92
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %49) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %36) #12
  store %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_graphics_command_list"* null, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_graphics_command_list"** %31, align 8, !tbaa !180
  br label %514

94:                                               ; preds = %34
  %95 = call i8* @malloc(i64 16) #10
  %96 = load %struct.ID3D12GraphicsCommandList*, %struct.ID3D12GraphicsCommandList** %12, align 8, !tbaa !49
  %97 = bitcast i8* %95 to %struct.ID3D12GraphicsCommandList**
  store %struct.ID3D12GraphicsCommandList* %96, %struct.ID3D12GraphicsCommandList** %97, align 8, !tbaa !88
  %98 = getelementptr inbounds i8, i8* %95, i64 8
  %99 = bitcast i8* %98 to i64*
  store i64 0, i64* %99, align 8, !tbaa !186
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %36) #12
  %100 = bitcast %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame"* %21 to i8**
  store i8* %95, i8** %100, align 8, !tbaa !180
  %101 = bitcast %struct.ID3D12DescriptorHeap** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %101) #12
  store %struct.ID3D12DescriptorHeap* null, %struct.ID3D12DescriptorHeap** %3, align 8, !tbaa !49
  %102 = bitcast <4 x i32>* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %102) #12
  store <4 x i32> <i32 0, i32 55, i32 1, i32 0>, <4 x i32>* %4, align 16, !tbaa !40
  %103 = bitcast %struct.ID3D12DescriptorHeap** %3 to i8**
  %104 = bitcast %struct.halide_d3d12compute_device* %0 to i32 (%struct.ID3D12Device*, %struct.D3D12_DESCRIPTOR_HEAP_DESC*, %struct._GUID*, i8**)***
  %105 = load i32 (%struct.ID3D12Device*, %struct.D3D12_DESCRIPTOR_HEAP_DESC*, %struct._GUID*, i8**)**, i32 (%struct.ID3D12Device*, %struct.D3D12_DESCRIPTOR_HEAP_DESC*, %struct._GUID*, i8**)*** %104, align 8, !tbaa !50
  %106 = getelementptr inbounds i32 (%struct.ID3D12Device*, %struct.D3D12_DESCRIPTOR_HEAP_DESC*, %struct._GUID*, i8**)*, i32 (%struct.ID3D12Device*, %struct.D3D12_DESCRIPTOR_HEAP_DESC*, %struct._GUID*, i8**)** %105, i64 14
  %107 = load i32 (%struct.ID3D12Device*, %struct.D3D12_DESCRIPTOR_HEAP_DESC*, %struct._GUID*, i8**)*, i32 (%struct.ID3D12Device*, %struct.D3D12_DESCRIPTOR_HEAP_DESC*, %struct._GUID*, i8**)** %106, align 8
  %108 = call i32 %107(%struct.ID3D12Device* nonnull dereferenceable(8) %37, %struct.D3D12_DESCRIPTOR_HEAP_DESC* nonnull %5, %struct._GUID* nonnull align 4 dereferenceable(16) @_GUID_8efb471d_616c_4f49_90f7_127bb763fa51, i8** nonnull %103) #10
  %109 = load %struct.ID3D12DescriptorHeap*, %struct.ID3D12DescriptorHeap** %3, align 8, !tbaa !49
  %110 = icmp sgt i32 %108, -1
  %111 = icmp ne %struct.ID3D12DescriptorHeap* %109, null
  %112 = and i1 %110, %111
  br i1 %112, label %159, label %113

113:                                              ; preds = %94
  %114 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %114) #12
  %115 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %2, i64 0, i32 3
  store i8* null, i8** %115, align 8, !tbaa !41
  %116 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %2, i64 0, i32 4
  store i8 1, i8* %116, align 8, !tbaa !44
  %117 = call i8* @malloc(i64 1024) #10
  %118 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %2, i64 0, i32 0
  store i8* %117, i8** %118, align 8, !tbaa !45
  %119 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %2, i64 0, i32 1
  %120 = icmp eq i8* %117, null
  br i1 %120, label %123, label %121

121:                                              ; preds = %113
  %122 = getelementptr inbounds i8, i8* %117, i64 1023
  store i8 0, i8* %122, align 1, !tbaa !40
  br label %123

123:                                              ; preds = %121, %113
  %124 = phi i8* [ %122, %121 ], [ null, %113 ]
  %125 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %2, i64 0, i32 2
  store i8* %124, i8** %125, align 8
  %126 = call i8* @halide_string_to_string(i8* %117, i8* %124, i8* nonnull getelementptr inbounds ([49 x i8], [49 x i8]* @"??_C@_0DB@GKGAOIPC@Unable?5to?5create?5the?5Direct3D?512@", i64 0, i64 0)) #10
  %127 = call i8* @halide_string_to_string(i8* %126, i8* %124, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @"??_C@_0L@IAGCJOCP@?5?$CIHRESULT?$DN?$AA@", i64 0, i64 0)) #10
  %128 = sext i32 %108 to i64
  %129 = inttoptr i64 %128 to i8*
  %130 = call i8* @halide_pointer_to_string(i8* %127, i8* %124, i8* %129) #10
  %131 = call i8* @halide_string_to_string(i8* %130, i8* %124, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @"??_C@_0L@FELFIFPM@?0?5object?$CK?$DN?$AA@", i64 0, i64 0)) #10
  %132 = bitcast %struct.ID3D12DescriptorHeap* %109 to i8*
  %133 = call i8* @halide_pointer_to_string(i8* %131, i8* %124, i8* %132) #10
  %134 = call i8* @halide_string_to_string(i8* %133, i8* %124, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01PKGAHCOL@?$CJ?$AA@", i64 0, i64 0)) #10
  %135 = call i8* @halide_string_to_string(i8* %134, i8* %124, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #10
  %136 = call i8* @halide_string_to_string(i8* %135, i8* %124, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @"??_C@_0CE@MGMMPJGA@vvvvv?5D3D12?5Begin?5Debug?5Dump?5vvv@", i64 0, i64 0)) #10
  store i8* %136, i8** %119, align 8, !tbaa !46
  call fastcc void @"?d3d12_debug_dump@@YAXAEAV?$Printer@$00$0EAA@@?A0x2B71E647@Internal@Runtime@Halide@@@Z"(%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* nonnull align 8 dereferenceable(40) %2) #10
  %137 = load i8*, i8** %125, align 8, !tbaa !47
  %138 = load i8*, i8** %119, align 8, !tbaa !46
  %139 = call i8* @halide_string_to_string(i8* %138, i8* %137, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @"??_C@_0CE@PCPJBLP@?$FO?$FO?$FO?$FO?$FO?5D3D12?5?5End?5?5Debug?5Dump?5?$FO?$FO?$FO@", i64 0, i64 0)) #10
  %140 = call i8* @halide_string_to_string(i8* %139, i8* %137, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @"??_C@_0BA@FGKOLOB@D3D12?5HALT?5?$CB?$CB?$CB?6?$AA@", i64 0, i64 0)) #10
  store i8* %140, i8** %119, align 8, !tbaa !46
  %141 = load i8*, i8** %118, align 8, !tbaa !45
  %142 = icmp eq i8* %141, null
  %143 = load i8*, i8** %115, align 8, !tbaa !41
  br i1 %142, label %144, label %145

144:                                              ; preds = %123
  call void @halide_error(i8* %143, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #10
  br label %151

145:                                              ; preds = %123
  %146 = ptrtoint i8* %140 to i64
  %147 = ptrtoint i8* %141 to i64
  %148 = add i64 %146, 1
  %149 = sub i64 %148, %147
  %150 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %143, i8* nonnull %141, i64 %149) #10
  call void @halide_error(i8* %143, i8* nonnull %141) #10
  br label %151

151:                                              ; preds = %145, %144
  %152 = load i8, i8* %116, align 8, !tbaa !44, !range !48
  %153 = icmp eq i8 %152, 0
  %154 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %2, i64 0, i32 5, i64 0
  %155 = icmp eq i8* %141, %154
  %156 = or i1 %155, %153
  br i1 %156, label %158, label %157

157:                                              ; preds = %151
  call void @free(i8* %141) #10
  br label %158

158:                                              ; preds = %157, %151
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %114) #12
  br label %476

159:                                              ; preds = %94
  %160 = bitcast %struct.halide_d3d12compute_device* %0 to i32 (%struct.ID3D12Device*, i32)***
  %161 = load i32 (%struct.ID3D12Device*, i32)**, i32 (%struct.ID3D12Device*, i32)*** %160, align 8, !tbaa !50
  %162 = getelementptr inbounds i32 (%struct.ID3D12Device*, i32)*, i32 (%struct.ID3D12Device*, i32)** %161, i64 15
  %163 = load i32 (%struct.ID3D12Device*, i32)*, i32 (%struct.ID3D12Device*, i32)** %162, align 8
  %164 = call i32 %163(%struct.ID3D12Device* nonnull dereferenceable(8) %37, i32 0) #10
  %165 = call i8* @malloc(i64 80) #10
  %166 = load %struct.ID3D12DescriptorHeap*, %struct.ID3D12DescriptorHeap** %3, align 8, !tbaa !49
  %167 = bitcast i8* %165 to %struct.ID3D12DescriptorHeap**
  store %struct.ID3D12DescriptorHeap* %166, %struct.ID3D12DescriptorHeap** %167, align 8, !tbaa !190
  %168 = getelementptr inbounds i8, i8* %165, i64 72
  %169 = bitcast i8* %168 to i32*
  store i32 %164, i32* %169, align 8, !tbaa !137
  %170 = bitcast %struct.D3D12_CPU_DESCRIPTOR_HANDLE* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %170) #12
  %171 = load %struct.ID3D12DescriptorHeap*, %struct.ID3D12DescriptorHeap** %3, align 8, !tbaa !49
  %172 = bitcast %struct.ID3D12DescriptorHeap* %171 to void (%struct.ID3D12DescriptorHeap*, %struct.D3D12_CPU_DESCRIPTOR_HANDLE*)***
  %173 = load void (%struct.ID3D12DescriptorHeap*, %struct.D3D12_CPU_DESCRIPTOR_HANDLE*)**, void (%struct.ID3D12DescriptorHeap*, %struct.D3D12_CPU_DESCRIPTOR_HANDLE*)*** %172, align 8, !tbaa !50
  %174 = getelementptr inbounds void (%struct.ID3D12DescriptorHeap*, %struct.D3D12_CPU_DESCRIPTOR_HANDLE*)*, void (%struct.ID3D12DescriptorHeap*, %struct.D3D12_CPU_DESCRIPTOR_HANDLE*)** %173, i64 9
  %175 = load void (%struct.ID3D12DescriptorHeap*, %struct.D3D12_CPU_DESCRIPTOR_HANDLE*)*, void (%struct.ID3D12DescriptorHeap*, %struct.D3D12_CPU_DESCRIPTOR_HANDLE*)** %174, align 8
  call void %175(%struct.ID3D12DescriptorHeap* nonnull dereferenceable(8) %171, %struct.D3D12_CPU_DESCRIPTOR_HANDLE* inreg nonnull sret(%struct.D3D12_CPU_DESCRIPTOR_HANDLE) align 8 %6) #10
  %176 = getelementptr inbounds %struct.D3D12_CPU_DESCRIPTOR_HANDLE, %struct.D3D12_CPU_DESCRIPTOR_HANDLE* %6, i64 0, i32 0
  %177 = getelementptr inbounds i8, i8* %165, i64 8
  %178 = bitcast i8* %177 to i64*
  %179 = load i64, i64* %176, align 8, !tbaa !6
  store i64 %179, i64* %178, align 8, !tbaa !6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %170) #12
  %180 = getelementptr inbounds i8, i8* %165, i64 24
  %181 = bitcast i8* %180 to i64*
  store i64 %179, i64* %181, align 8, !tbaa !141
  %182 = shl i32 %164, 4
  %183 = zext i32 %182 to i64
  %184 = add i64 %179, %183
  %185 = getelementptr inbounds i8, i8* %165, i64 32
  %186 = bitcast i8* %185 to i64*
  store i64 %184, i64* %186, align 8, !tbaa !141
  %187 = mul i32 %164, 14
  %188 = zext i32 %187 to i64
  %189 = add i64 %184, %188
  %190 = getelementptr inbounds i8, i8* %165, i64 40
  %191 = bitcast i8* %190 to i64*
  store i64 %189, i64* %191, align 8, !tbaa !141
  %192 = bitcast %struct.D3D12_GPU_DESCRIPTOR_HANDLE* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %192) #12
  %193 = load %struct.ID3D12DescriptorHeap*, %struct.ID3D12DescriptorHeap** %3, align 8, !tbaa !49
  %194 = bitcast %struct.ID3D12DescriptorHeap* %193 to void (%struct.ID3D12DescriptorHeap*, %struct.D3D12_GPU_DESCRIPTOR_HANDLE*)***
  %195 = load void (%struct.ID3D12DescriptorHeap*, %struct.D3D12_GPU_DESCRIPTOR_HANDLE*)**, void (%struct.ID3D12DescriptorHeap*, %struct.D3D12_GPU_DESCRIPTOR_HANDLE*)*** %194, align 8, !tbaa !50
  %196 = getelementptr inbounds void (%struct.ID3D12DescriptorHeap*, %struct.D3D12_GPU_DESCRIPTOR_HANDLE*)*, void (%struct.ID3D12DescriptorHeap*, %struct.D3D12_GPU_DESCRIPTOR_HANDLE*)** %195, i64 10
  %197 = load void (%struct.ID3D12DescriptorHeap*, %struct.D3D12_GPU_DESCRIPTOR_HANDLE*)*, void (%struct.ID3D12DescriptorHeap*, %struct.D3D12_GPU_DESCRIPTOR_HANDLE*)** %196, align 8
  call void %197(%struct.ID3D12DescriptorHeap* nonnull dereferenceable(8) %193, %struct.D3D12_GPU_DESCRIPTOR_HANDLE* inreg nonnull sret(%struct.D3D12_GPU_DESCRIPTOR_HANDLE) align 8 %7) #10
  %198 = getelementptr inbounds %struct.D3D12_GPU_DESCRIPTOR_HANDLE, %struct.D3D12_GPU_DESCRIPTOR_HANDLE* %7, i64 0, i32 0
  %199 = getelementptr inbounds i8, i8* %165, i64 16
  %200 = bitcast i8* %199 to i64*
  %201 = load i64, i64* %198, align 8, !tbaa !6
  store i64 %201, i64* %200, align 8, !tbaa !6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %192) #12
  %202 = getelementptr inbounds i8, i8* %165, i64 48
  %203 = bitcast i8* %202 to i64*
  store i64 %201, i64* %203, align 8, !tbaa !251
  %204 = add i64 %201, %183
  %205 = getelementptr inbounds i8, i8* %165, i64 56
  %206 = bitcast i8* %205 to i64*
  store i64 %204, i64* %206, align 8, !tbaa !251
  %207 = add i64 %204, %188
  %208 = getelementptr inbounds i8, i8* %165, i64 64
  %209 = bitcast i8* %208 to i64*
  store i64 %207, i64* %209, align 8, !tbaa !251
  %210 = bitcast %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC* %8 to i8*
  %211 = getelementptr inbounds %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC* %8, i64 0, i32 2, i32 0, i32 0
  %212 = getelementptr inbounds %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC* %8, i64 0, i32 2, i32 0, i32 1
  %213 = getelementptr inbounds %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC* %8, i64 0, i32 2, i32 0, i32 3
  %214 = getelementptr inbounds %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC* %8, i64 0, i32 2, i32 0, i32 4
  %215 = bitcast %struct.halide_d3d12compute_device* %0 to void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)***
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %210) #12
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(40) %210, i8 0, i64 40, i1 false) #12
  %216 = bitcast %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC* %8 to <2 x i32>*
  store <2 x i32> <i32 28, i32 1>, <2 x i32>* %216, align 8, !tbaa !40
  store i64 0, i64* %211, align 8, !tbaa !40
  %217 = bitcast i32* %212 to <2 x i32>*
  store <2 x i32> zeroinitializer, <2 x i32>* %217, align 8, !tbaa !40
  store i64 0, i64* %213, align 8, !tbaa !40
  store i32 0, i32* %214, align 8, !tbaa !40
  %218 = load i64, i64* %181, align 8, !tbaa.struct !240
  %219 = load void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)**, void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)*** %215, align 8, !tbaa !50
  %220 = getelementptr inbounds void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)*, void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)** %219, i64 19
  %221 = load void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)*, void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)** %220, align 8
  call void %221(%struct.ID3D12Device* nonnull dereferenceable(8) %37, %struct.ID3D12Resource* null, %struct.ID3D12Resource* null, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC* nonnull %8, i64 %218) #10
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %210) #12
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %210) #12
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(40) %210, i8 0, i64 40, i1 false) #12
  %222 = bitcast %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC* %8 to <2 x i32>*
  store <2 x i32> <i32 28, i32 1>, <2 x i32>* %222, align 8, !tbaa !40
  store i64 0, i64* %211, align 8, !tbaa !40
  %223 = bitcast i32* %212 to <2 x i32>*
  store <2 x i32> zeroinitializer, <2 x i32>* %223, align 8, !tbaa !40
  store i64 0, i64* %213, align 8, !tbaa !40
  store i32 0, i32* %214, align 8, !tbaa !40
  %224 = load i64, i64* %181, align 8, !tbaa.struct !240
  %225 = zext i32 %164 to i64
  %226 = add i64 %224, %225
  %227 = load void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)**, void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)*** %215, align 8, !tbaa !50
  %228 = getelementptr inbounds void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)*, void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)** %227, i64 19
  %229 = load void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)*, void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)** %228, align 8
  call void %229(%struct.ID3D12Device* nonnull dereferenceable(8) %37, %struct.ID3D12Resource* null, %struct.ID3D12Resource* null, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC* nonnull %8, i64 %226) #10
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %210) #12
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %210) #12
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(40) %210, i8 0, i64 40, i1 false) #12
  %230 = bitcast %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC* %8 to <2 x i32>*
  store <2 x i32> <i32 28, i32 1>, <2 x i32>* %230, align 8, !tbaa !40
  store i64 0, i64* %211, align 8, !tbaa !40
  %231 = bitcast i32* %212 to <2 x i32>*
  store <2 x i32> zeroinitializer, <2 x i32>* %231, align 8, !tbaa !40
  store i64 0, i64* %213, align 8, !tbaa !40
  store i32 0, i32* %214, align 8, !tbaa !40
  %232 = load i64, i64* %181, align 8, !tbaa.struct !240
  %233 = shl i32 %164, 1
  %234 = zext i32 %233 to i64
  %235 = add i64 %232, %234
  %236 = load void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)**, void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)*** %215, align 8, !tbaa !50
  %237 = getelementptr inbounds void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)*, void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)** %236, i64 19
  %238 = load void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)*, void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)** %237, align 8
  call void %238(%struct.ID3D12Device* nonnull dereferenceable(8) %37, %struct.ID3D12Resource* null, %struct.ID3D12Resource* null, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC* nonnull %8, i64 %235) #10
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %210) #12
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %210) #12
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(40) %210, i8 0, i64 40, i1 false) #12
  %239 = bitcast %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC* %8 to <2 x i32>*
  store <2 x i32> <i32 28, i32 1>, <2 x i32>* %239, align 8, !tbaa !40
  store i64 0, i64* %211, align 8, !tbaa !40
  %240 = bitcast i32* %212 to <2 x i32>*
  store <2 x i32> zeroinitializer, <2 x i32>* %240, align 8, !tbaa !40
  store i64 0, i64* %213, align 8, !tbaa !40
  store i32 0, i32* %214, align 8, !tbaa !40
  %241 = load i64, i64* %181, align 8, !tbaa.struct !240
  %242 = mul i32 %164, 3
  %243 = zext i32 %242 to i64
  %244 = add i64 %241, %243
  %245 = load void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)**, void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)*** %215, align 8, !tbaa !50
  %246 = getelementptr inbounds void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)*, void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)** %245, i64 19
  %247 = load void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)*, void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)** %246, align 8
  call void %247(%struct.ID3D12Device* nonnull dereferenceable(8) %37, %struct.ID3D12Resource* null, %struct.ID3D12Resource* null, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC* nonnull %8, i64 %244) #10
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %210) #12
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %210) #12
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(40) %210, i8 0, i64 40, i1 false) #12
  %248 = bitcast %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC* %8 to <2 x i32>*
  store <2 x i32> <i32 28, i32 1>, <2 x i32>* %248, align 8, !tbaa !40
  store i64 0, i64* %211, align 8, !tbaa !40
  %249 = bitcast i32* %212 to <2 x i32>*
  store <2 x i32> zeroinitializer, <2 x i32>* %249, align 8, !tbaa !40
  store i64 0, i64* %213, align 8, !tbaa !40
  store i32 0, i32* %214, align 8, !tbaa !40
  %250 = load i64, i64* %181, align 8, !tbaa.struct !240
  %251 = shl i32 %164, 2
  %252 = zext i32 %251 to i64
  %253 = add i64 %250, %252
  %254 = load void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)**, void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)*** %215, align 8, !tbaa !50
  %255 = getelementptr inbounds void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)*, void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)** %254, i64 19
  %256 = load void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)*, void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)** %255, align 8
  call void %256(%struct.ID3D12Device* nonnull dereferenceable(8) %37, %struct.ID3D12Resource* null, %struct.ID3D12Resource* null, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC* nonnull %8, i64 %253) #10
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %210) #12
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %210) #12
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(40) %210, i8 0, i64 40, i1 false) #12
  %257 = bitcast %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC* %8 to <2 x i32>*
  store <2 x i32> <i32 28, i32 1>, <2 x i32>* %257, align 8, !tbaa !40
  store i64 0, i64* %211, align 8, !tbaa !40
  %258 = bitcast i32* %212 to <2 x i32>*
  store <2 x i32> zeroinitializer, <2 x i32>* %258, align 8, !tbaa !40
  store i64 0, i64* %213, align 8, !tbaa !40
  store i32 0, i32* %214, align 8, !tbaa !40
  %259 = load i64, i64* %181, align 8, !tbaa.struct !240
  %260 = mul i32 %164, 5
  %261 = zext i32 %260 to i64
  %262 = add i64 %259, %261
  %263 = load void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)**, void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)*** %215, align 8, !tbaa !50
  %264 = getelementptr inbounds void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)*, void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)** %263, i64 19
  %265 = load void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)*, void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)** %264, align 8
  call void %265(%struct.ID3D12Device* nonnull dereferenceable(8) %37, %struct.ID3D12Resource* null, %struct.ID3D12Resource* null, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC* nonnull %8, i64 %262) #10
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %210) #12
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %210) #12
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(40) %210, i8 0, i64 40, i1 false) #12
  %266 = bitcast %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC* %8 to <2 x i32>*
  store <2 x i32> <i32 28, i32 1>, <2 x i32>* %266, align 8, !tbaa !40
  store i64 0, i64* %211, align 8, !tbaa !40
  %267 = bitcast i32* %212 to <2 x i32>*
  store <2 x i32> zeroinitializer, <2 x i32>* %267, align 8, !tbaa !40
  store i64 0, i64* %213, align 8, !tbaa !40
  store i32 0, i32* %214, align 8, !tbaa !40
  %268 = load i64, i64* %181, align 8, !tbaa.struct !240
  %269 = mul i32 %164, 6
  %270 = zext i32 %269 to i64
  %271 = add i64 %268, %270
  %272 = load void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)**, void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)*** %215, align 8, !tbaa !50
  %273 = getelementptr inbounds void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)*, void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)** %272, i64 19
  %274 = load void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)*, void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)** %273, align 8
  call void %274(%struct.ID3D12Device* nonnull dereferenceable(8) %37, %struct.ID3D12Resource* null, %struct.ID3D12Resource* null, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC* nonnull %8, i64 %271) #10
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %210) #12
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %210) #12
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(40) %210, i8 0, i64 40, i1 false) #12
  %275 = bitcast %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC* %8 to <2 x i32>*
  store <2 x i32> <i32 28, i32 1>, <2 x i32>* %275, align 8, !tbaa !40
  store i64 0, i64* %211, align 8, !tbaa !40
  %276 = bitcast i32* %212 to <2 x i32>*
  store <2 x i32> zeroinitializer, <2 x i32>* %276, align 8, !tbaa !40
  store i64 0, i64* %213, align 8, !tbaa !40
  store i32 0, i32* %214, align 8, !tbaa !40
  %277 = load i64, i64* %181, align 8, !tbaa.struct !240
  %278 = mul i32 %164, 7
  %279 = zext i32 %278 to i64
  %280 = add i64 %277, %279
  %281 = load void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)**, void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)*** %215, align 8, !tbaa !50
  %282 = getelementptr inbounds void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)*, void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)** %281, i64 19
  %283 = load void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)*, void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)** %282, align 8
  call void %283(%struct.ID3D12Device* nonnull dereferenceable(8) %37, %struct.ID3D12Resource* null, %struct.ID3D12Resource* null, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC* nonnull %8, i64 %280) #10
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %210) #12
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %210) #12
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(40) %210, i8 0, i64 40, i1 false) #12
  %284 = bitcast %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC* %8 to <2 x i32>*
  store <2 x i32> <i32 28, i32 1>, <2 x i32>* %284, align 8, !tbaa !40
  store i64 0, i64* %211, align 8, !tbaa !40
  %285 = bitcast i32* %212 to <2 x i32>*
  store <2 x i32> zeroinitializer, <2 x i32>* %285, align 8, !tbaa !40
  store i64 0, i64* %213, align 8, !tbaa !40
  store i32 0, i32* %214, align 8, !tbaa !40
  %286 = load i64, i64* %181, align 8, !tbaa.struct !240
  %287 = shl i32 %164, 3
  %288 = zext i32 %287 to i64
  %289 = add i64 %286, %288
  %290 = load void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)**, void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)*** %215, align 8, !tbaa !50
  %291 = getelementptr inbounds void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)*, void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)** %290, i64 19
  %292 = load void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)*, void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)** %291, align 8
  call void %292(%struct.ID3D12Device* nonnull dereferenceable(8) %37, %struct.ID3D12Resource* null, %struct.ID3D12Resource* null, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC* nonnull %8, i64 %289) #10
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %210) #12
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %210) #12
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(40) %210, i8 0, i64 40, i1 false) #12
  %293 = bitcast %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC* %8 to <2 x i32>*
  store <2 x i32> <i32 28, i32 1>, <2 x i32>* %293, align 8, !tbaa !40
  store i64 0, i64* %211, align 8, !tbaa !40
  %294 = bitcast i32* %212 to <2 x i32>*
  store <2 x i32> zeroinitializer, <2 x i32>* %294, align 8, !tbaa !40
  store i64 0, i64* %213, align 8, !tbaa !40
  store i32 0, i32* %214, align 8, !tbaa !40
  %295 = load i64, i64* %181, align 8, !tbaa.struct !240
  %296 = mul i32 %164, 9
  %297 = zext i32 %296 to i64
  %298 = add i64 %295, %297
  %299 = load void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)**, void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)*** %215, align 8, !tbaa !50
  %300 = getelementptr inbounds void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)*, void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)** %299, i64 19
  %301 = load void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)*, void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)** %300, align 8
  call void %301(%struct.ID3D12Device* nonnull dereferenceable(8) %37, %struct.ID3D12Resource* null, %struct.ID3D12Resource* null, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC* nonnull %8, i64 %298) #10
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %210) #12
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %210) #12
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(40) %210, i8 0, i64 40, i1 false) #12
  %302 = bitcast %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC* %8 to <2 x i32>*
  store <2 x i32> <i32 28, i32 1>, <2 x i32>* %302, align 8, !tbaa !40
  store i64 0, i64* %211, align 8, !tbaa !40
  %303 = bitcast i32* %212 to <2 x i32>*
  store <2 x i32> zeroinitializer, <2 x i32>* %303, align 8, !tbaa !40
  store i64 0, i64* %213, align 8, !tbaa !40
  store i32 0, i32* %214, align 8, !tbaa !40
  %304 = load i64, i64* %181, align 8, !tbaa.struct !240
  %305 = mul i32 %164, 10
  %306 = zext i32 %305 to i64
  %307 = add i64 %304, %306
  %308 = load void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)**, void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)*** %215, align 8, !tbaa !50
  %309 = getelementptr inbounds void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)*, void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)** %308, i64 19
  %310 = load void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)*, void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)** %309, align 8
  call void %310(%struct.ID3D12Device* nonnull dereferenceable(8) %37, %struct.ID3D12Resource* null, %struct.ID3D12Resource* null, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC* nonnull %8, i64 %307) #10
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %210) #12
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %210) #12
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(40) %210, i8 0, i64 40, i1 false) #12
  %311 = bitcast %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC* %8 to <2 x i32>*
  store <2 x i32> <i32 28, i32 1>, <2 x i32>* %311, align 8, !tbaa !40
  store i64 0, i64* %211, align 8, !tbaa !40
  %312 = bitcast i32* %212 to <2 x i32>*
  store <2 x i32> zeroinitializer, <2 x i32>* %312, align 8, !tbaa !40
  store i64 0, i64* %213, align 8, !tbaa !40
  store i32 0, i32* %214, align 8, !tbaa !40
  %313 = load i64, i64* %181, align 8, !tbaa.struct !240
  %314 = mul i32 %164, 11
  %315 = zext i32 %314 to i64
  %316 = add i64 %313, %315
  %317 = load void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)**, void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)*** %215, align 8, !tbaa !50
  %318 = getelementptr inbounds void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)*, void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)** %317, i64 19
  %319 = load void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)*, void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)** %318, align 8
  call void %319(%struct.ID3D12Device* nonnull dereferenceable(8) %37, %struct.ID3D12Resource* null, %struct.ID3D12Resource* null, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC* nonnull %8, i64 %316) #10
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %210) #12
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %210) #12
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(40) %210, i8 0, i64 40, i1 false) #12
  %320 = bitcast %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC* %8 to <2 x i32>*
  store <2 x i32> <i32 28, i32 1>, <2 x i32>* %320, align 8, !tbaa !40
  store i64 0, i64* %211, align 8, !tbaa !40
  %321 = bitcast i32* %212 to <2 x i32>*
  store <2 x i32> zeroinitializer, <2 x i32>* %321, align 8, !tbaa !40
  store i64 0, i64* %213, align 8, !tbaa !40
  store i32 0, i32* %214, align 8, !tbaa !40
  %322 = load i64, i64* %181, align 8, !tbaa.struct !240
  %323 = mul i32 %164, 12
  %324 = zext i32 %323 to i64
  %325 = add i64 %322, %324
  %326 = load void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)**, void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)*** %215, align 8, !tbaa !50
  %327 = getelementptr inbounds void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)*, void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)** %326, i64 19
  %328 = load void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)*, void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)** %327, align 8
  call void %328(%struct.ID3D12Device* nonnull dereferenceable(8) %37, %struct.ID3D12Resource* null, %struct.ID3D12Resource* null, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC* nonnull %8, i64 %325) #10
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %210) #12
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %210) #12
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(40) %210, i8 0, i64 40, i1 false) #12
  %329 = bitcast %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC* %8 to <2 x i32>*
  store <2 x i32> <i32 28, i32 1>, <2 x i32>* %329, align 8, !tbaa !40
  store i64 0, i64* %211, align 8, !tbaa !40
  %330 = bitcast i32* %212 to <2 x i32>*
  store <2 x i32> zeroinitializer, <2 x i32>* %330, align 8, !tbaa !40
  store i64 0, i64* %213, align 8, !tbaa !40
  store i32 0, i32* %214, align 8, !tbaa !40
  %331 = load i64, i64* %181, align 8, !tbaa.struct !240
  %332 = mul i32 %164, 13
  %333 = zext i32 %332 to i64
  %334 = add i64 %331, %333
  %335 = load void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)**, void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)*** %215, align 8, !tbaa !50
  %336 = getelementptr inbounds void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)*, void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)** %335, i64 19
  %337 = load void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)*, void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)** %336, align 8
  call void %337(%struct.ID3D12Device* nonnull dereferenceable(8) %37, %struct.ID3D12Resource* null, %struct.ID3D12Resource* null, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC* nonnull %8, i64 %334) #10
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %210) #12
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %210) #12
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(40) %210, i8 0, i64 40, i1 false) #12
  %338 = bitcast %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC* %8 to <2 x i32>*
  store <2 x i32> <i32 28, i32 1>, <2 x i32>* %338, align 8, !tbaa !40
  store i64 0, i64* %211, align 8, !tbaa !40
  %339 = bitcast i32* %212 to <2 x i32>*
  store <2 x i32> zeroinitializer, <2 x i32>* %339, align 8, !tbaa !40
  store i64 0, i64* %213, align 8, !tbaa !40
  store i32 0, i32* %214, align 8, !tbaa !40
  %340 = load i64, i64* %181, align 8, !tbaa.struct !240
  %341 = mul i32 %164, 14
  %342 = zext i32 %341 to i64
  %343 = add i64 %340, %342
  %344 = load void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)**, void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)*** %215, align 8, !tbaa !50
  %345 = getelementptr inbounds void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)*, void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)** %344, i64 19
  %346 = load void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)*, void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)** %345, align 8
  call void %346(%struct.ID3D12Device* nonnull dereferenceable(8) %37, %struct.ID3D12Resource* null, %struct.ID3D12Resource* null, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC* nonnull %8, i64 %343) #10
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %210) #12
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %210) #12
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(40) %210, i8 0, i64 40, i1 false) #12
  %347 = bitcast %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC* %8 to <2 x i32>*
  store <2 x i32> <i32 28, i32 1>, <2 x i32>* %347, align 8, !tbaa !40
  store i64 0, i64* %211, align 8, !tbaa !40
  %348 = bitcast i32* %212 to <2 x i32>*
  store <2 x i32> zeroinitializer, <2 x i32>* %348, align 8, !tbaa !40
  store i64 0, i64* %213, align 8, !tbaa !40
  store i32 0, i32* %214, align 8, !tbaa !40
  %349 = load i64, i64* %181, align 8, !tbaa.struct !240
  %350 = mul i32 %164, 15
  %351 = zext i32 %350 to i64
  %352 = add i64 %349, %351
  %353 = load void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)**, void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)*** %215, align 8, !tbaa !50
  %354 = getelementptr inbounds void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)*, void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)** %353, i64 19
  %355 = load void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)*, void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.ID3D12Resource*, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC*, i64)** %354, align 8
  call void %355(%struct.ID3D12Device* nonnull dereferenceable(8) %37, %struct.ID3D12Resource* null, %struct.ID3D12Resource* null, %struct.D3D12_UNORDERED_ACCESS_VIEW_DESC* nonnull %8, i64 %352) #10
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %210) #12
  %356 = bitcast %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC* %9 to i8*
  %357 = getelementptr inbounds %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC* %9, i64 0, i32 0
  %358 = getelementptr inbounds %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC* %9, i64 0, i32 1
  %359 = bitcast %struct.halide_d3d12compute_device* %0 to void (%struct.ID3D12Device*, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC*, i64)***
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %356) #12
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %356, i8 0, i64 16, i1 false) #12
  store i64 0, i64* %357, align 8, !tbaa !134
  store i32 0, i32* %358, align 8, !tbaa !136
  %360 = load i64, i64* %186, align 8, !tbaa.struct !240
  %361 = load void (%struct.ID3D12Device*, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC*, i64)**, void (%struct.ID3D12Device*, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC*, i64)*** %359, align 8, !tbaa !50
  %362 = getelementptr inbounds void (%struct.ID3D12Device*, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC*, i64)*, void (%struct.ID3D12Device*, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC*, i64)** %361, i64 17
  %363 = load void (%struct.ID3D12Device*, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC*, i64)*, void (%struct.ID3D12Device*, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC*, i64)** %362, align 8
  call void %363(%struct.ID3D12Device* nonnull dereferenceable(8) %37, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC* nonnull %9, i64 %360) #10
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %356) #12
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %356) #12
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %356, i8 0, i64 16, i1 false) #12
  store i64 0, i64* %357, align 8, !tbaa !134
  store i32 0, i32* %358, align 8, !tbaa !136
  %364 = load i64, i64* %186, align 8, !tbaa.struct !240
  %365 = zext i32 %164 to i64
  %366 = add i64 %364, %365
  %367 = load void (%struct.ID3D12Device*, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC*, i64)**, void (%struct.ID3D12Device*, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC*, i64)*** %359, align 8, !tbaa !50
  %368 = getelementptr inbounds void (%struct.ID3D12Device*, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC*, i64)*, void (%struct.ID3D12Device*, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC*, i64)** %367, i64 17
  %369 = load void (%struct.ID3D12Device*, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC*, i64)*, void (%struct.ID3D12Device*, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC*, i64)** %368, align 8
  call void %369(%struct.ID3D12Device* nonnull dereferenceable(8) %37, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC* nonnull %9, i64 %366) #10
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %356) #12
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %356) #12
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %356, i8 0, i64 16, i1 false) #12
  store i64 0, i64* %357, align 8, !tbaa !134
  store i32 0, i32* %358, align 8, !tbaa !136
  %370 = load i64, i64* %186, align 8, !tbaa.struct !240
  %371 = shl i32 %164, 1
  %372 = zext i32 %371 to i64
  %373 = add i64 %370, %372
  %374 = load void (%struct.ID3D12Device*, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC*, i64)**, void (%struct.ID3D12Device*, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC*, i64)*** %359, align 8, !tbaa !50
  %375 = getelementptr inbounds void (%struct.ID3D12Device*, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC*, i64)*, void (%struct.ID3D12Device*, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC*, i64)** %374, i64 17
  %376 = load void (%struct.ID3D12Device*, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC*, i64)*, void (%struct.ID3D12Device*, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC*, i64)** %375, align 8
  call void %376(%struct.ID3D12Device* nonnull dereferenceable(8) %37, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC* nonnull %9, i64 %373) #10
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %356) #12
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %356) #12
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %356, i8 0, i64 16, i1 false) #12
  store i64 0, i64* %357, align 8, !tbaa !134
  store i32 0, i32* %358, align 8, !tbaa !136
  %377 = load i64, i64* %186, align 8, !tbaa.struct !240
  %378 = mul i32 %164, 3
  %379 = zext i32 %378 to i64
  %380 = add i64 %377, %379
  %381 = load void (%struct.ID3D12Device*, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC*, i64)**, void (%struct.ID3D12Device*, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC*, i64)*** %359, align 8, !tbaa !50
  %382 = getelementptr inbounds void (%struct.ID3D12Device*, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC*, i64)*, void (%struct.ID3D12Device*, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC*, i64)** %381, i64 17
  %383 = load void (%struct.ID3D12Device*, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC*, i64)*, void (%struct.ID3D12Device*, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC*, i64)** %382, align 8
  call void %383(%struct.ID3D12Device* nonnull dereferenceable(8) %37, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC* nonnull %9, i64 %380) #10
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %356) #12
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %356) #12
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %356, i8 0, i64 16, i1 false) #12
  store i64 0, i64* %357, align 8, !tbaa !134
  store i32 0, i32* %358, align 8, !tbaa !136
  %384 = load i64, i64* %186, align 8, !tbaa.struct !240
  %385 = shl i32 %164, 2
  %386 = zext i32 %385 to i64
  %387 = add i64 %384, %386
  %388 = load void (%struct.ID3D12Device*, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC*, i64)**, void (%struct.ID3D12Device*, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC*, i64)*** %359, align 8, !tbaa !50
  %389 = getelementptr inbounds void (%struct.ID3D12Device*, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC*, i64)*, void (%struct.ID3D12Device*, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC*, i64)** %388, i64 17
  %390 = load void (%struct.ID3D12Device*, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC*, i64)*, void (%struct.ID3D12Device*, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC*, i64)** %389, align 8
  call void %390(%struct.ID3D12Device* nonnull dereferenceable(8) %37, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC* nonnull %9, i64 %387) #10
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %356) #12
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %356) #12
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %356, i8 0, i64 16, i1 false) #12
  store i64 0, i64* %357, align 8, !tbaa !134
  store i32 0, i32* %358, align 8, !tbaa !136
  %391 = load i64, i64* %186, align 8, !tbaa.struct !240
  %392 = mul i32 %164, 5
  %393 = zext i32 %392 to i64
  %394 = add i64 %391, %393
  %395 = load void (%struct.ID3D12Device*, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC*, i64)**, void (%struct.ID3D12Device*, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC*, i64)*** %359, align 8, !tbaa !50
  %396 = getelementptr inbounds void (%struct.ID3D12Device*, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC*, i64)*, void (%struct.ID3D12Device*, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC*, i64)** %395, i64 17
  %397 = load void (%struct.ID3D12Device*, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC*, i64)*, void (%struct.ID3D12Device*, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC*, i64)** %396, align 8
  call void %397(%struct.ID3D12Device* nonnull dereferenceable(8) %37, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC* nonnull %9, i64 %394) #10
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %356) #12
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %356) #12
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %356, i8 0, i64 16, i1 false) #12
  store i64 0, i64* %357, align 8, !tbaa !134
  store i32 0, i32* %358, align 8, !tbaa !136
  %398 = load i64, i64* %186, align 8, !tbaa.struct !240
  %399 = mul i32 %164, 6
  %400 = zext i32 %399 to i64
  %401 = add i64 %398, %400
  %402 = load void (%struct.ID3D12Device*, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC*, i64)**, void (%struct.ID3D12Device*, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC*, i64)*** %359, align 8, !tbaa !50
  %403 = getelementptr inbounds void (%struct.ID3D12Device*, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC*, i64)*, void (%struct.ID3D12Device*, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC*, i64)** %402, i64 17
  %404 = load void (%struct.ID3D12Device*, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC*, i64)*, void (%struct.ID3D12Device*, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC*, i64)** %403, align 8
  call void %404(%struct.ID3D12Device* nonnull dereferenceable(8) %37, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC* nonnull %9, i64 %401) #10
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %356) #12
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %356) #12
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %356, i8 0, i64 16, i1 false) #12
  store i64 0, i64* %357, align 8, !tbaa !134
  store i32 0, i32* %358, align 8, !tbaa !136
  %405 = load i64, i64* %186, align 8, !tbaa.struct !240
  %406 = mul i32 %164, 7
  %407 = zext i32 %406 to i64
  %408 = add i64 %405, %407
  %409 = load void (%struct.ID3D12Device*, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC*, i64)**, void (%struct.ID3D12Device*, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC*, i64)*** %359, align 8, !tbaa !50
  %410 = getelementptr inbounds void (%struct.ID3D12Device*, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC*, i64)*, void (%struct.ID3D12Device*, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC*, i64)** %409, i64 17
  %411 = load void (%struct.ID3D12Device*, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC*, i64)*, void (%struct.ID3D12Device*, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC*, i64)** %410, align 8
  call void %411(%struct.ID3D12Device* nonnull dereferenceable(8) %37, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC* nonnull %9, i64 %408) #10
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %356) #12
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %356) #12
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %356, i8 0, i64 16, i1 false) #12
  store i64 0, i64* %357, align 8, !tbaa !134
  store i32 0, i32* %358, align 8, !tbaa !136
  %412 = load i64, i64* %186, align 8, !tbaa.struct !240
  %413 = shl i32 %164, 3
  %414 = zext i32 %413 to i64
  %415 = add i64 %412, %414
  %416 = load void (%struct.ID3D12Device*, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC*, i64)**, void (%struct.ID3D12Device*, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC*, i64)*** %359, align 8, !tbaa !50
  %417 = getelementptr inbounds void (%struct.ID3D12Device*, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC*, i64)*, void (%struct.ID3D12Device*, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC*, i64)** %416, i64 17
  %418 = load void (%struct.ID3D12Device*, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC*, i64)*, void (%struct.ID3D12Device*, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC*, i64)** %417, align 8
  call void %418(%struct.ID3D12Device* nonnull dereferenceable(8) %37, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC* nonnull %9, i64 %415) #10
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %356) #12
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %356) #12
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %356, i8 0, i64 16, i1 false) #12
  store i64 0, i64* %357, align 8, !tbaa !134
  store i32 0, i32* %358, align 8, !tbaa !136
  %419 = load i64, i64* %186, align 8, !tbaa.struct !240
  %420 = mul i32 %164, 9
  %421 = zext i32 %420 to i64
  %422 = add i64 %419, %421
  %423 = load void (%struct.ID3D12Device*, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC*, i64)**, void (%struct.ID3D12Device*, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC*, i64)*** %359, align 8, !tbaa !50
  %424 = getelementptr inbounds void (%struct.ID3D12Device*, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC*, i64)*, void (%struct.ID3D12Device*, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC*, i64)** %423, i64 17
  %425 = load void (%struct.ID3D12Device*, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC*, i64)*, void (%struct.ID3D12Device*, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC*, i64)** %424, align 8
  call void %425(%struct.ID3D12Device* nonnull dereferenceable(8) %37, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC* nonnull %9, i64 %422) #10
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %356) #12
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %356) #12
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %356, i8 0, i64 16, i1 false) #12
  store i64 0, i64* %357, align 8, !tbaa !134
  store i32 0, i32* %358, align 8, !tbaa !136
  %426 = load i64, i64* %186, align 8, !tbaa.struct !240
  %427 = mul i32 %164, 10
  %428 = zext i32 %427 to i64
  %429 = add i64 %426, %428
  %430 = load void (%struct.ID3D12Device*, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC*, i64)**, void (%struct.ID3D12Device*, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC*, i64)*** %359, align 8, !tbaa !50
  %431 = getelementptr inbounds void (%struct.ID3D12Device*, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC*, i64)*, void (%struct.ID3D12Device*, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC*, i64)** %430, i64 17
  %432 = load void (%struct.ID3D12Device*, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC*, i64)*, void (%struct.ID3D12Device*, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC*, i64)** %431, align 8
  call void %432(%struct.ID3D12Device* nonnull dereferenceable(8) %37, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC* nonnull %9, i64 %429) #10
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %356) #12
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %356) #12
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %356, i8 0, i64 16, i1 false) #12
  store i64 0, i64* %357, align 8, !tbaa !134
  store i32 0, i32* %358, align 8, !tbaa !136
  %433 = load i64, i64* %186, align 8, !tbaa.struct !240
  %434 = mul i32 %164, 11
  %435 = zext i32 %434 to i64
  %436 = add i64 %433, %435
  %437 = load void (%struct.ID3D12Device*, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC*, i64)**, void (%struct.ID3D12Device*, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC*, i64)*** %359, align 8, !tbaa !50
  %438 = getelementptr inbounds void (%struct.ID3D12Device*, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC*, i64)*, void (%struct.ID3D12Device*, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC*, i64)** %437, i64 17
  %439 = load void (%struct.ID3D12Device*, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC*, i64)*, void (%struct.ID3D12Device*, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC*, i64)** %438, align 8
  call void %439(%struct.ID3D12Device* nonnull dereferenceable(8) %37, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC* nonnull %9, i64 %436) #10
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %356) #12
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %356) #12
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %356, i8 0, i64 16, i1 false) #12
  store i64 0, i64* %357, align 8, !tbaa !134
  store i32 0, i32* %358, align 8, !tbaa !136
  %440 = load i64, i64* %186, align 8, !tbaa.struct !240
  %441 = mul i32 %164, 12
  %442 = zext i32 %441 to i64
  %443 = add i64 %440, %442
  %444 = load void (%struct.ID3D12Device*, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC*, i64)**, void (%struct.ID3D12Device*, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC*, i64)*** %359, align 8, !tbaa !50
  %445 = getelementptr inbounds void (%struct.ID3D12Device*, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC*, i64)*, void (%struct.ID3D12Device*, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC*, i64)** %444, i64 17
  %446 = load void (%struct.ID3D12Device*, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC*, i64)*, void (%struct.ID3D12Device*, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC*, i64)** %445, align 8
  call void %446(%struct.ID3D12Device* nonnull dereferenceable(8) %37, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC* nonnull %9, i64 %443) #10
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %356) #12
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %356) #12
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %356, i8 0, i64 16, i1 false) #12
  store i64 0, i64* %357, align 8, !tbaa !134
  store i32 0, i32* %358, align 8, !tbaa !136
  %447 = load i64, i64* %186, align 8, !tbaa.struct !240
  %448 = mul i32 %164, 13
  %449 = zext i32 %448 to i64
  %450 = add i64 %447, %449
  %451 = load void (%struct.ID3D12Device*, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC*, i64)**, void (%struct.ID3D12Device*, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC*, i64)*** %359, align 8, !tbaa !50
  %452 = getelementptr inbounds void (%struct.ID3D12Device*, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC*, i64)*, void (%struct.ID3D12Device*, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC*, i64)** %451, i64 17
  %453 = load void (%struct.ID3D12Device*, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC*, i64)*, void (%struct.ID3D12Device*, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC*, i64)** %452, align 8
  call void %453(%struct.ID3D12Device* nonnull dereferenceable(8) %37, %struct.D3D12_CONSTANT_BUFFER_VIEW_DESC* nonnull %9, i64 %450) #10
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %356) #12
  %454 = bitcast %struct.D3D12_SHADER_RESOURCE_VIEW_DESC* %10 to i8*
  %455 = getelementptr inbounds %struct.D3D12_SHADER_RESOURCE_VIEW_DESC, %struct.D3D12_SHADER_RESOURCE_VIEW_DESC* %10, i64 0, i32 2
  %456 = getelementptr inbounds %struct.D3D12_SHADER_RESOURCE_VIEW_DESC, %struct.D3D12_SHADER_RESOURCE_VIEW_DESC* %10, i64 0, i32 3, i32 0, i32 0
  %457 = getelementptr inbounds %struct.D3D12_SHADER_RESOURCE_VIEW_DESC, %struct.D3D12_SHADER_RESOURCE_VIEW_DESC* %10, i64 0, i32 3, i32 0, i32 1
  %458 = getelementptr inbounds %struct.D3D12_SHADER_RESOURCE_VIEW_DESC, %struct.D3D12_SHADER_RESOURCE_VIEW_DESC* %10, i64 0, i32 3, i32 0, i32 3
  %459 = bitcast %struct.halide_d3d12compute_device* %0 to void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.D3D12_SHADER_RESOURCE_VIEW_DESC*, i64)***
  %460 = bitcast %struct.D3D12_SHADER_RESOURCE_VIEW_DESC* %10 to <2 x i32>*
  %461 = bitcast i32* %457 to <2 x i32>*
  br label %462

462:                                              ; preds = %462, %159
  %463 = phi i64 [ 0, %159 ], [ %472, %462 ]
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %454) #12
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(40) %454, i8 0, i64 40, i1 false) #12
  store <2 x i32> <i32 28, i32 1>, <2 x i32>* %460, align 8, !tbaa !40
  store i32 5768, i32* %455, align 8, !tbaa !252
  store i64 0, i64* %456, align 8, !tbaa !40
  store <2 x i32> zeroinitializer, <2 x i32>* %461, align 8, !tbaa !40
  store i32 0, i32* %458, align 8, !tbaa !40
  %464 = load i64, i64* %191, align 8, !tbaa.struct !240
  %465 = trunc i64 %463 to i32
  %466 = mul i32 %164, %465
  %467 = zext i32 %466 to i64
  %468 = add i64 %464, %467
  %469 = load void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.D3D12_SHADER_RESOURCE_VIEW_DESC*, i64)**, void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.D3D12_SHADER_RESOURCE_VIEW_DESC*, i64)*** %459, align 8, !tbaa !50
  %470 = getelementptr inbounds void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.D3D12_SHADER_RESOURCE_VIEW_DESC*, i64)*, void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.D3D12_SHADER_RESOURCE_VIEW_DESC*, i64)** %469, i64 18
  %471 = load void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.D3D12_SHADER_RESOURCE_VIEW_DESC*, i64)*, void (%struct.ID3D12Device*, %struct.ID3D12Resource*, %struct.D3D12_SHADER_RESOURCE_VIEW_DESC*, i64)** %470, align 8
  call void %471(%struct.ID3D12Device* nonnull dereferenceable(8) %37, %struct.ID3D12Resource* null, %struct.D3D12_SHADER_RESOURCE_VIEW_DESC* nonnull %10, i64 %468) #10
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %454) #12
  %472 = add nuw nsw i64 %463, 1
  %473 = icmp eq i64 %472, 25
  br i1 %473, label %474, label %462, !llvm.loop !255

474:                                              ; preds = %462
  %475 = bitcast i8* %165 to %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_binder"*
  br label %476

476:                                              ; preds = %474, %158
  %477 = phi %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_binder"* [ null, %158 ], [ %475, %474 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %102) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %101) #12
  %478 = getelementptr inbounds [8 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame"], [8 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame"]* @"?frame_pool@D3D12Compute@Internal@Runtime@Halide@@3PAUd3d12_frame@1234@A", i64 0, i64 %20, i32 1
  store %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_binder"* %477, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_binder"** %478, align 8, !tbaa !189
  %479 = icmp eq %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_binder"* %477, null
  br i1 %479, label %514, label %511

480:                                              ; preds = %30
  %481 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_graphics_command_list", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_graphics_command_list"* %32, i64 0, i32 0, i32 0
  %482 = load %struct.ID3D12GraphicsCommandList*, %struct.ID3D12GraphicsCommandList** %481, align 8, !tbaa !88
  %483 = load %struct.ID3D12CommandAllocator*, %struct.ID3D12CommandAllocator** bitcast (%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_command_allocator"** @"?cmd_allocator_main@D3D12Compute@Internal@Runtime@Halide@@3PEAUd3d12_command_allocator@1234@EA" to %struct.ID3D12CommandAllocator**), align 8, !tbaa !49
  %484 = bitcast %struct.ID3D12GraphicsCommandList* %482 to i32 (%struct.ID3D12GraphicsCommandList*, %struct.ID3D12CommandAllocator*, %struct.ID3D12PipelineState*)***
  %485 = load i32 (%struct.ID3D12GraphicsCommandList*, %struct.ID3D12CommandAllocator*, %struct.ID3D12PipelineState*)**, i32 (%struct.ID3D12GraphicsCommandList*, %struct.ID3D12CommandAllocator*, %struct.ID3D12PipelineState*)*** %484, align 8, !tbaa !50
  %486 = getelementptr inbounds i32 (%struct.ID3D12GraphicsCommandList*, %struct.ID3D12CommandAllocator*, %struct.ID3D12PipelineState*)*, i32 (%struct.ID3D12GraphicsCommandList*, %struct.ID3D12CommandAllocator*, %struct.ID3D12PipelineState*)** %485, i64 10
  %487 = load i32 (%struct.ID3D12GraphicsCommandList*, %struct.ID3D12CommandAllocator*, %struct.ID3D12PipelineState*)*, i32 (%struct.ID3D12GraphicsCommandList*, %struct.ID3D12CommandAllocator*, %struct.ID3D12PipelineState*)** %486, align 8
  %488 = tail call i32 %487(%struct.ID3D12GraphicsCommandList* nonnull dereferenceable(8) %482, %struct.ID3D12CommandAllocator* %483, %struct.ID3D12PipelineState* null) #10
  %489 = getelementptr inbounds [8 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame"], [8 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame"]* @"?frame_pool@D3D12Compute@Internal@Runtime@Halide@@3PAUd3d12_frame@1234@A", i64 0, i64 %20, i32 1
  %490 = load %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_binder"*, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_binder"** %489, align 8, !tbaa !189
  %491 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_binder", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_binder"* %490, i64 0, i32 5
  %492 = load i32, i32* %491, align 8, !tbaa !137
  %493 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_binder", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_binder"* %490, i64 0, i32 1, i32 0
  %494 = load i64, i64* %493, align 8, !tbaa.struct !240
  %495 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_binder", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_binder"* %490, i64 0, i32 3, i64 0, i32 0
  store i64 %494, i64* %495, align 8, !tbaa !141
  %496 = shl i32 %492, 4
  %497 = zext i32 %496 to i64
  %498 = add i64 %494, %497
  %499 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_binder", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_binder"* %490, i64 0, i32 3, i64 1, i32 0
  store i64 %498, i64* %499, align 8, !tbaa !141
  %500 = mul i32 %492, 14
  %501 = zext i32 %500 to i64
  %502 = add i64 %498, %501
  %503 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_binder", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_binder"* %490, i64 0, i32 3, i64 2, i32 0
  store i64 %502, i64* %503, align 8, !tbaa !141
  %504 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_binder", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_binder"* %490, i64 0, i32 2, i32 0
  %505 = load i64, i64* %504, align 8, !tbaa.struct !240
  %506 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_binder", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_binder"* %490, i64 0, i32 4, i64 0, i32 0
  store i64 %505, i64* %506, align 8, !tbaa !251
  %507 = add i64 %505, %497
  %508 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_binder", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_binder"* %490, i64 0, i32 4, i64 1, i32 0
  store i64 %507, i64* %508, align 8, !tbaa !251
  %509 = add i64 %507, %501
  %510 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_binder", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_binder"* %490, i64 0, i32 4, i64 2, i32 0
  store i64 %509, i64* %510, align 8, !tbaa !251
  br label %511

511:                                              ; preds = %476, %480
  %512 = load i64, i64* @"?frame_selector@D3D12Compute@Internal@Runtime@Halide@@3_KA", align 8, !tbaa !6
  %513 = add i64 %512, 1
  store i64 %513, i64* @"?frame_selector@D3D12Compute@Internal@Runtime@Halide@@3_KA", align 8, !tbaa !6
  br label %514

514:                                              ; preds = %93, %476, %511
  %515 = phi %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame"* [ %21, %511 ], [ null, %476 ], [ null, %93 ]
  ret %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame"* %515
}

declare dso_local i64 @strlen(i8*) local_unnamed_addr #2

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_d3d12compute_device_and_host_malloc(i8* %0, %struct.halide_buffer_t* %1) #0 {
  %3 = tail call i32 @halide_default_device_and_host_malloc(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_device_interface_t* nonnull @"?d3d12compute_device_interface@D3D12Compute@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A") #10
  ret i32 %3
}

declare extern_weak i32 @halide_default_device_and_host_malloc(i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*) local_unnamed_addr #2

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_d3d12compute_device_and_host_free(i8* %0, %struct.halide_buffer_t* %1) #0 {
  %3 = tail call i32 @halide_default_device_and_host_free(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_device_interface_t* nonnull @"?d3d12compute_device_interface@D3D12Compute@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A") #10
  ret i32 %3
}

declare extern_weak i32 @halide_default_device_and_host_free(i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*) local_unnamed_addr #2

; Function Attrs: nounwind
define weak dso_local i32 @halide_d3d12compute_buffer_copy(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_device_interface_t* %2, %struct.halide_buffer_t* %3) #4 {
  %5 = alloca %"struct.Halide::Runtime::Internal::device_copy", align 8
  %6 = alloca %"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder", align 8
  %7 = alloca %"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder", align 8
  %8 = alloca %"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder", align 8
  %9 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 5
  %10 = load i32, i32* %9, align 4, !tbaa !27
  %11 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 5
  %12 = load i32, i32* %11, align 4, !tbaa !27
  %13 = icmp eq i32 %10, %12
  br i1 %13, label %16, label %14

14:                                               ; preds = %4
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([137 x i8], [137 x i8]* @"??_C@_0IJ@MNBDOJEE@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  tail call void @abort() #10
  %15 = load i32, i32* %11, align 4, !tbaa !27
  br label %16

16:                                               ; preds = %4, %14
  %17 = phi i32 [ %10, %4 ], [ %15, %14 ]
  %18 = icmp sgt i32 %17, 16
  br i1 %18, label %19, label %33

19:                                               ; preds = %16
  %20 = tail call i8* @malloc(i64 1024) #10
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = tail call i8* @halide_string_to_string(i8* %20, i8* null, i8* nonnull getelementptr inbounds ([53 x i8], [53 x i8]* @"??_C@_0DF@LCGCOEGO@Buffer?5has?5too?5many?5dimensions?5t@", i64 0, i64 0)) #10
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #10
  br label %32

24:                                               ; preds = %19
  %25 = getelementptr inbounds i8, i8* %20, i64 1023
  store i8 0, i8* %25, align 1, !tbaa !40
  %26 = tail call i8* @halide_string_to_string(i8* nonnull %20, i8* nonnull %25, i8* nonnull getelementptr inbounds ([53 x i8], [53 x i8]* @"??_C@_0DF@LCGCOEGO@Buffer?5has?5too?5many?5dimensions?5t@", i64 0, i64 0)) #10
  %27 = ptrtoint i8* %26 to i64
  %28 = ptrtoint i8* %20 to i64
  %29 = add i64 %27, 1
  %30 = sub i64 %29, %28
  %31 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %20, i64 %30) #10
  tail call void @halide_error(i8* %0, i8* nonnull %20) #10
  br label %32

32:                                               ; preds = %24, %22
  tail call void @free(i8* %20) #10
  br label %376

33:                                               ; preds = %16
  %34 = icmp eq %struct.halide_device_interface_t* %2, null
  %35 = icmp eq %struct.halide_device_interface_t* %2, @"?d3d12compute_device_interface@D3D12Compute@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A"
  %36 = or i1 %34, %35
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([194 x i8], [194 x i8]* @"??_C@_0MC@HDEPANAE@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  tail call void @abort() #10
  br label %38

38:                                               ; preds = %37, %33
  %39 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 3
  %40 = load i64, i64* %39, align 8, !tbaa !256
  %41 = and i64 %40, 2
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 2
  %45 = load i8*, i8** %44, align 8, !tbaa !18
  %46 = icmp eq i8* %45, null
  br i1 %46, label %47, label %55

47:                                               ; preds = %43, %38
  %48 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  %49 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %48, align 8, !tbaa !70
  %50 = icmp eq %struct.halide_device_interface_t* %49, @"?d3d12compute_device_interface@D3D12Compute@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A"
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  br label %60

53:                                               ; preds = %47
  br i1 %35, label %376, label %54

54:                                               ; preds = %53
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([155 x i8], [155 x i8]* @"??_C@_0JL@MEIFODEH@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  tail call void @abort() #10
  br label %376

55:                                               ; preds = %43
  %56 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  %57 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %56, align 8, !tbaa !70
  %58 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  %59 = icmp eq %struct.halide_device_interface_t* %57, @"?d3d12compute_device_interface@D3D12Compute@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A"
  br i1 %59, label %60, label %73

60:                                               ; preds = %51, %55
  %61 = phi %struct.halide_device_interface_t** [ %52, %51 ], [ %58, %55 ]
  %62 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %63 = load i64, i64* %62, align 8, !tbaa !25
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %73, label %65

65:                                               ; preds = %60
  %66 = and i64 %40, 1
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 2
  %70 = load i8*, i8** %69, align 8, !tbaa !18
  %71 = icmp eq i8* %70, null
  br i1 %71, label %72, label %73

72:                                               ; preds = %65, %68
  br label %73

73:                                               ; preds = %72, %55, %60, %68
  %74 = phi %struct.halide_device_interface_t** [ %61, %68 ], [ %61, %72 ], [ %61, %60 ], [ %58, %55 ]
  %75 = phi i1 [ true, %68 ], [ false, %72 ], [ true, %60 ], [ true, %55 ]
  br i1 %34, label %81, label %76

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 0
  %78 = load i64, i64* %77, align 8, !tbaa !25
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([123 x i8], [123 x i8]* @"??_C@_0HL@BCFBGMIG@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  tail call void @abort() #10
  br label %81

81:                                               ; preds = %80, %76, %73
  %82 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 416, i8* nonnull %82) #12
  call void @"?make_buffer_copy@Internal@Runtime@Halide@@YA?AUdevice_copy@123@PEBUhalide_buffer_t@@_N01@Z"(%"struct.Halide::Runtime::Internal::device_copy"* nonnull sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %5, %struct.halide_buffer_t* nonnull %1, i1 %75, %struct.halide_buffer_t* nonnull %3, i1 %34) #11
  %83 = or i1 %34, %75
  br i1 %83, label %123, label %84

84:                                               ; preds = %81
  %85 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %74, align 8, !tbaa !70
  %86 = icmp eq %struct.halide_device_interface_t* %85, @"?d3d12compute_device_interface@D3D12Compute@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A"
  br i1 %86, label %88, label %87

87:                                               ; preds = %84
  call void @halide_print(i8* null, i8* getelementptr inbounds ([161 x i8], [161 x i8]* @"??_C@_0KB@NININJGE@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  call void @abort() #10
  br label %88

88:                                               ; preds = %87, %84
  %89 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %90 = load i64, i64* %89, align 8, !tbaa !25
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %88
  call void @halide_print(i8* null, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @"??_C@_0HI@MFPPBOBE@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  call void @abort() #10
  br label %93

93:                                               ; preds = %92, %88
  %94 = inttoptr i64 %90 to %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*
  %95 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 1
  %96 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %95, align 8, !tbaa !70
  %97 = icmp eq %struct.halide_device_interface_t* %96, @"?d3d12compute_device_interface@D3D12Compute@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A"
  br i1 %97, label %99, label %98

98:                                               ; preds = %93
  call void @halide_print(i8* null, i8* getelementptr inbounds ([161 x i8], [161 x i8]* @"??_C@_0KB@NININJGE@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  call void @abort() #10
  br label %99

99:                                               ; preds = %98, %93
  %100 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 0
  %101 = load i64, i64* %100, align 8, !tbaa !25
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %99
  call void @halide_print(i8* null, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @"??_C@_0HI@MFPPBOBE@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  call void @abort() #10
  br label %104

104:                                              ; preds = %99, %103
  %105 = inttoptr i64 %101 to %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*
  %106 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %94, i64 0, i32 5
  %107 = load i32, i32* %106, align 8, !tbaa !60
  %108 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %5, i64 0, i32 2
  %109 = load i64, i64* %108, align 8, !tbaa !17
  %110 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %105, i64 0, i32 5
  %111 = load i32, i32* %110, align 8, !tbaa !60
  %112 = bitcast %"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder"* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %112) #12
  call void @"?save@D3D12ContextHolder@D3D12Compute@Internal@Runtime@Halide@@AEAAXPEAX_N@Z"(%"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder"* nonnull dereferenceable(32) %6, i8* %0, i1 true) #10
  %113 = getelementptr inbounds %"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder", %"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder"* %6, i64 0, i32 3
  %114 = load i32, i32* %113, align 8, !tbaa !148
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %371

116:                                              ; preds = %104
  %117 = zext i32 %111 to i64
  %118 = zext i32 %107 to i64
  %119 = add i64 %109, %118
  %120 = getelementptr inbounds %"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder", %"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder"* %6, i64 0, i32 1
  %121 = load %struct.halide_d3d12compute_device*, %struct.halide_d3d12compute_device** %120, align 8, !tbaa !168
  %122 = call i32 @do_multidimensional_copy(%struct.halide_d3d12compute_device* %121, %"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %5, i64 %119, i64 %117, i32 %17) #11
  call void @"?restore@D3D12ContextHolder@D3D12Compute@Internal@Runtime@Halide@@AEAAXXZ"(%"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder"* nonnull dereferenceable(32) %6) #10
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %112) #12
  br label %374

123:                                              ; preds = %81
  br i1 %75, label %124, label %247

124:                                              ; preds = %123
  br i1 %34, label %125, label %126

125:                                              ; preds = %124
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @"??_C@_0GN@LGOPAMLC@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  call void @abort() #10
  br label %126

126:                                              ; preds = %124, %125
  %127 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 1
  %128 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %127, align 8, !tbaa !70
  %129 = icmp eq %struct.halide_device_interface_t* %128, @"?d3d12compute_device_interface@D3D12Compute@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A"
  br i1 %129, label %131, label %130

130:                                              ; preds = %126
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([158 x i8], [158 x i8]* @"??_C@_0JO@MBMNFKIK@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  call void @abort() #10
  br label %131

131:                                              ; preds = %126, %130
  %132 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %74, align 8, !tbaa !70
  %133 = icmp eq %struct.halide_device_interface_t* %132, @"?d3d12compute_device_interface@D3D12Compute@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A"
  br i1 %133, label %134, label %135

134:                                              ; preds = %131
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([158 x i8], [158 x i8]* @"??_C@_0JO@GHEAJMCJ@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  call void @abort() #10
  br label %135

135:                                              ; preds = %131, %134
  %136 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 2
  %137 = load i8*, i8** %136, align 8, !tbaa !18
  %138 = icmp eq i8* %137, null
  br i1 %138, label %139, label %140

139:                                              ; preds = %135
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([123 x i8], [123 x i8]* @"??_C@_0HL@MMJDCFEN@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  call void @abort() #10
  br label %140

140:                                              ; preds = %135, %139
  %141 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 0
  %142 = load i64, i64* %141, align 8, !tbaa !25
  %143 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %5, i64 0, i32 1
  %144 = load i64, i64* %143, align 8, !tbaa !14
  %145 = icmp eq i64 %142, %144
  br i1 %145, label %147, label %146

146:                                              ; preds = %140
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([123 x i8], [123 x i8]* @"??_C@_0HL@GJCHNPHA@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  call void @abort() #10
  br label %147

147:                                              ; preds = %146, %140
  %148 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 2
  %149 = load i8*, i8** %148, align 8, !tbaa !18
  %150 = icmp eq i8* %149, null
  br i1 %150, label %154, label %151

151:                                              ; preds = %147
  %152 = ptrtoint i8* %149 to i64
  store i64 %152, i64* %143, align 8, !tbaa !14
  call void @"?copy_memory@Internal@Runtime@Halide@@YAXAEBUdevice_copy@123@PEAX@Z"(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %5, i8* %0) #11
  %153 = call i32 @halide_d3d12compute_copy_to_device(i8* %0, %struct.halide_buffer_t* nonnull %3) #11
  br label %374

154:                                              ; preds = %147
  %155 = bitcast %"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder"* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %155) #12
  call void @"?save@D3D12ContextHolder@D3D12Compute@Internal@Runtime@Halide@@AEAAXPEAX_N@Z"(%"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder"* nonnull dereferenceable(32) %7, i8* %0, i1 true) #10
  %156 = getelementptr inbounds %"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder", %"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder"* %7, i64 0, i32 3
  %157 = load i32, i32* %156, align 8, !tbaa !148
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %372

159:                                              ; preds = %154
  %160 = load i32, i32* %11, align 4, !tbaa !27
  %161 = icmp sgt i32 %160, 0
  br i1 %161, label %165, label %162

162:                                              ; preds = %159
  %163 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 4, i32 1
  %164 = load i8, i8* %163, align 1, !tbaa !26
  br label %208

165:                                              ; preds = %159
  %166 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 6
  %167 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %166, align 8, !tbaa !28
  %168 = zext i32 %160 to i64
  br label %169

169:                                              ; preds = %183, %165
  %170 = phi i64 [ 0, %165 ], [ %185, %183 ]
  %171 = phi i64 [ 0, %165 ], [ %184, %183 ]
  %172 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %167, i64 %170, i32 2
  %173 = load i32, i32* %172, align 4, !tbaa !29
  %174 = icmp sgt i32 %173, 0
  br i1 %174, label %175, label %183

175:                                              ; preds = %169
  %176 = zext i32 %173 to i64
  %177 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %167, i64 %170, i32 1
  %178 = load i32, i32* %177, align 4, !tbaa !34
  %179 = add nsw i32 %178, -1
  %180 = sext i32 %179 to i64
  %181 = mul nsw i64 %180, %176
  %182 = add nsw i64 %181, %171
  br label %183

183:                                              ; preds = %175, %169
  %184 = phi i64 [ %182, %175 ], [ %171, %169 ]
  %185 = add nuw nsw i64 %170, 1
  %186 = icmp eq i64 %185, %168
  br i1 %186, label %187, label %169, !llvm.loop !61

187:                                              ; preds = %183
  %188 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 4, i32 1
  %189 = load i8, i8* %188, align 1, !tbaa !26
  br label %190

190:                                              ; preds = %204, %187
  %191 = phi i64 [ 0, %187 ], [ %206, %204 ]
  %192 = phi i64 [ 0, %187 ], [ %205, %204 ]
  %193 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %167, i64 %191, i32 2
  %194 = load i32, i32* %193, align 4, !tbaa !29
  %195 = icmp slt i32 %194, 0
  br i1 %195, label %196, label %204

196:                                              ; preds = %190
  %197 = sext i32 %194 to i64
  %198 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %167, i64 %191, i32 1
  %199 = load i32, i32* %198, align 4, !tbaa !34
  %200 = add nsw i32 %199, -1
  %201 = sext i32 %200 to i64
  %202 = mul nsw i64 %201, %197
  %203 = add nsw i64 %202, %192
  br label %204

204:                                              ; preds = %196, %190
  %205 = phi i64 [ %203, %196 ], [ %192, %190 ]
  %206 = add nuw nsw i64 %191, 1
  %207 = icmp eq i64 %206, %168
  br i1 %207, label %208, label %190, !llvm.loop !62

208:                                              ; preds = %204, %162
  %209 = phi i8 [ %164, %162 ], [ %189, %204 ]
  %210 = phi i64 [ 0, %162 ], [ %184, %204 ]
  %211 = phi i64 [ 0, %162 ], [ %205, %204 ]
  %212 = zext i8 %209 to i64
  %213 = add nuw nsw i64 %212, 7
  %214 = lshr i64 %213, 3
  %215 = add nsw i64 %210, 1
  %216 = sub i64 %215, %211
  %217 = mul i64 %216, %214
  %218 = load i8*, i8** %136, align 8, !tbaa !18
  %219 = ptrtoint i8* %218 to i64
  %220 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %5, i64 0, i32 0
  store i64 %219, i64* %220, align 8, !tbaa !12
  %221 = getelementptr inbounds %"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder", %"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder"* %7, i64 0, i32 1
  %222 = load %struct.halide_d3d12compute_device*, %struct.halide_d3d12compute_device** %221, align 8, !tbaa !168
  %223 = call i64 @"?suballocate@D3D12Compute@Internal@Runtime@Halide@@YA_KPEAUhalide_d3d12compute_device@@PEAUd3d12_buffer@1234@_K@Z"(%struct.halide_d3d12compute_device* %222, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* nonnull @"?upload@D3D12Compute@Internal@Runtime@Halide@@3Ud3d12_buffer@1234@A", i64 %217) #11
  %224 = call fastcc i8* @"?buffer_contents@D3D12Compute@Internal@Runtime@Halide@@YAPEAXPEAUd3d12_buffer@1234@@Z"(%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* nonnull @"?upload@D3D12Compute@Internal@Runtime@Halide@@3Ud3d12_buffer@1234@A") #11
  %225 = ptrtoint i8* %224 to i64
  %226 = add i64 %223, %225
  store i64 %226, i64* %143, align 8, !tbaa !14
  call void @"?copy_memory@Internal@Runtime@Halide@@YAXAEBUdevice_copy@123@PEAX@Z"(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %5, i8* %0) #11
  %227 = icmp eq %struct.halide_buffer_t* %3, null
  br i1 %227, label %228, label %229

228:                                              ; preds = %208
  call void @halide_print(i8* null, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @"??_C@_0HI@FNCIDAJF@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  call void @abort() #10
  br label %229

229:                                              ; preds = %228, %208
  %230 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %127, align 8, !tbaa !70
  %231 = icmp eq %struct.halide_device_interface_t* %230, @"?d3d12compute_device_interface@D3D12Compute@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A"
  br i1 %231, label %233, label %232

232:                                              ; preds = %229
  call void @halide_print(i8* null, i8* getelementptr inbounds ([161 x i8], [161 x i8]* @"??_C@_0KB@NININJGE@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  call void @abort() #10
  br label %233

233:                                              ; preds = %232, %229
  %234 = load i64, i64* %141, align 8, !tbaa !25
  %235 = icmp eq i64 %234, 0
  br i1 %235, label %236, label %237

236:                                              ; preds = %233
  call void @halide_print(i8* null, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @"??_C@_0HI@MFPPBOBE@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  call void @abort() #10
  br label %237

237:                                              ; preds = %233, %236
  %238 = inttoptr i64 %234 to %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*
  %239 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %238, i64 0, i32 5
  %240 = load i32, i32* %239, align 8, !tbaa !60
  %241 = zext i32 %240 to i64
  %242 = load %struct.halide_d3d12compute_device*, %struct.halide_d3d12compute_device** %221, align 8, !tbaa !168
  call fastcc void @"?d3d12compute_buffer_copy@D3D12Compute@Internal@Runtime@Halide@@YAHPEAUhalide_d3d12compute_device@@PEAUd3d12_buffer@1234@1_K22@Z"(%struct.halide_d3d12compute_device* %242, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* nonnull @"?upload@D3D12Compute@Internal@Runtime@Halide@@3Ud3d12_buffer@1234@A", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %238, i64 %223, i64 %241, i64 %217) #11
  %243 = load atomic volatile i64, i64* getelementptr inbounds (%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* @"?upload@D3D12Compute@Internal@Runtime@Halide@@3Ud3d12_buffer@1234@A", i64 0, i32 14) seq_cst, align 16
  %244 = icmp eq i64 %243, 0
  br i1 %244, label %246, label %245

245:                                              ; preds = %237
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([117 x i8], [117 x i8]* @"??_C@_0HF@MLNMPA@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  call void @abort() #10
  br label %246

246:                                              ; preds = %237, %245
  call void @"?restore@D3D12ContextHolder@D3D12Compute@Internal@Runtime@Halide@@AEAAXXZ"(%"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder"* nonnull dereferenceable(32) %7) #10
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %155) #12
  br label %374

247:                                              ; preds = %123
  br i1 %34, label %249, label %248

248:                                              ; preds = %247
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @"??_C@_0GM@LMKBMAKN@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  call void @abort() #10
  br label %249

249:                                              ; preds = %247, %248
  %250 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %74, align 8, !tbaa !70
  %251 = icmp eq %struct.halide_device_interface_t* %250, @"?d3d12compute_device_interface@D3D12Compute@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A"
  br i1 %251, label %253, label %252

252:                                              ; preds = %249
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([158 x i8], [158 x i8]* @"??_C@_0JO@GCIBHMBO@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  call void @abort() #10
  br label %253

253:                                              ; preds = %249, %252
  %254 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 1
  %255 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %254, align 8, !tbaa !70
  %256 = icmp eq %struct.halide_device_interface_t* %255, null
  br i1 %256, label %258, label %257

257:                                              ; preds = %253
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([135 x i8], [135 x i8]* @"??_C@_0IH@LKALKAII@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  call void @abort() #10
  br label %258

258:                                              ; preds = %253, %257
  %259 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 2
  %260 = load i8*, i8** %259, align 8, !tbaa !18
  %261 = icmp eq i8* %260, null
  br i1 %261, label %262, label %263

262:                                              ; preds = %258
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([123 x i8], [123 x i8]* @"??_C@_0HL@GHAGNCKA@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  call void @abort() #10
  br label %263

263:                                              ; preds = %258, %262
  %264 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %265 = load i64, i64* %264, align 8, !tbaa !25
  %266 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %5, i64 0, i32 0
  %267 = load i64, i64* %266, align 8, !tbaa !12
  %268 = icmp eq i64 %265, %267
  br i1 %268, label %270, label %269

269:                                              ; preds = %263
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([123 x i8], [123 x i8]* @"??_C@_0HL@CMMPFMCI@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  call void @abort() #10
  br label %270

270:                                              ; preds = %269, %263
  %271 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 2
  %272 = load i8*, i8** %271, align 8, !tbaa !18
  %273 = icmp eq i8* %272, null
  br i1 %273, label %278, label %274

274:                                              ; preds = %270
  %275 = call i32 @halide_d3d12compute_copy_to_host(i8* %0, %struct.halide_buffer_t* nonnull %1) #11
  %276 = load i8*, i8** %271, align 8, !tbaa !18
  %277 = ptrtoint i8* %276 to i64
  store i64 %277, i64* %266, align 8, !tbaa !12
  call void @"?copy_memory@Internal@Runtime@Halide@@YAXAEBUdevice_copy@123@PEAX@Z"(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %5, i8* %0) #11
  br label %374

278:                                              ; preds = %270
  %279 = bitcast %"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder"* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %279) #12
  call void @"?save@D3D12ContextHolder@D3D12Compute@Internal@Runtime@Halide@@AEAAXPEAX_N@Z"(%"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder"* nonnull dereferenceable(32) %8, i8* %0, i1 true) #10
  %280 = getelementptr inbounds %"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder", %"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder"* %8, i64 0, i32 3
  %281 = load i32, i32* %280, align 8, !tbaa !148
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %283, label %373

283:                                              ; preds = %278
  %284 = load i32, i32* %9, align 4, !tbaa !27
  %285 = icmp sgt i32 %284, 0
  br i1 %285, label %289, label %286

286:                                              ; preds = %283
  %287 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 1
  %288 = load i8, i8* %287, align 1, !tbaa !26
  br label %332

289:                                              ; preds = %283
  %290 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 6
  %291 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %290, align 8, !tbaa !28
  %292 = zext i32 %284 to i64
  br label %293

293:                                              ; preds = %307, %289
  %294 = phi i64 [ 0, %289 ], [ %309, %307 ]
  %295 = phi i64 [ 0, %289 ], [ %308, %307 ]
  %296 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %291, i64 %294, i32 2
  %297 = load i32, i32* %296, align 4, !tbaa !29
  %298 = icmp sgt i32 %297, 0
  br i1 %298, label %299, label %307

299:                                              ; preds = %293
  %300 = zext i32 %297 to i64
  %301 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %291, i64 %294, i32 1
  %302 = load i32, i32* %301, align 4, !tbaa !34
  %303 = add nsw i32 %302, -1
  %304 = sext i32 %303 to i64
  %305 = mul nsw i64 %304, %300
  %306 = add nsw i64 %305, %295
  br label %307

307:                                              ; preds = %299, %293
  %308 = phi i64 [ %306, %299 ], [ %295, %293 ]
  %309 = add nuw nsw i64 %294, 1
  %310 = icmp eq i64 %309, %292
  br i1 %310, label %311, label %293, !llvm.loop !61

311:                                              ; preds = %307
  %312 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 1
  %313 = load i8, i8* %312, align 1, !tbaa !26
  br label %314

314:                                              ; preds = %328, %311
  %315 = phi i64 [ 0, %311 ], [ %330, %328 ]
  %316 = phi i64 [ 0, %311 ], [ %329, %328 ]
  %317 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %291, i64 %315, i32 2
  %318 = load i32, i32* %317, align 4, !tbaa !29
  %319 = icmp slt i32 %318, 0
  br i1 %319, label %320, label %328

320:                                              ; preds = %314
  %321 = sext i32 %318 to i64
  %322 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %291, i64 %315, i32 1
  %323 = load i32, i32* %322, align 4, !tbaa !34
  %324 = add nsw i32 %323, -1
  %325 = sext i32 %324 to i64
  %326 = mul nsw i64 %325, %321
  %327 = add nsw i64 %326, %316
  br label %328

328:                                              ; preds = %320, %314
  %329 = phi i64 [ %327, %320 ], [ %316, %314 ]
  %330 = add nuw nsw i64 %315, 1
  %331 = icmp eq i64 %330, %292
  br i1 %331, label %332, label %314, !llvm.loop !62

332:                                              ; preds = %328, %286
  %333 = phi i8 [ %288, %286 ], [ %313, %328 ]
  %334 = phi i64 [ 0, %286 ], [ %308, %328 ]
  %335 = phi i64 [ 0, %286 ], [ %329, %328 ]
  %336 = zext i8 %333 to i64
  %337 = add nuw nsw i64 %336, 7
  %338 = lshr i64 %337, 3
  %339 = add nsw i64 %334, 1
  %340 = sub i64 %339, %335
  %341 = mul i64 %340, %338
  %342 = icmp eq %struct.halide_buffer_t* %1, null
  br i1 %342, label %343, label %344

343:                                              ; preds = %332
  call void @halide_print(i8* null, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @"??_C@_0HI@FNCIDAJF@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  call void @abort() #10
  br label %344

344:                                              ; preds = %343, %332
  %345 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %74, align 8, !tbaa !70
  %346 = icmp eq %struct.halide_device_interface_t* %345, @"?d3d12compute_device_interface@D3D12Compute@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A"
  br i1 %346, label %348, label %347

347:                                              ; preds = %344
  call void @halide_print(i8* null, i8* getelementptr inbounds ([161 x i8], [161 x i8]* @"??_C@_0KB@NININJGE@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  call void @abort() #10
  br label %348

348:                                              ; preds = %347, %344
  %349 = load i64, i64* %264, align 8, !tbaa !25
  %350 = icmp eq i64 %349, 0
  br i1 %350, label %351, label %352

351:                                              ; preds = %348
  call void @halide_print(i8* null, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @"??_C@_0HI@MFPPBOBE@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  call void @abort() #10
  br label %352

352:                                              ; preds = %348, %351
  %353 = inttoptr i64 %349 to %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*
  %354 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %353, i64 0, i32 5
  %355 = load i32, i32* %354, align 8, !tbaa !60
  %356 = zext i32 %355 to i64
  %357 = getelementptr inbounds %"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder", %"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder"* %8, i64 0, i32 1
  %358 = load %struct.halide_d3d12compute_device*, %struct.halide_d3d12compute_device** %357, align 8, !tbaa !168
  %359 = call i64 @"?suballocate@D3D12Compute@Internal@Runtime@Halide@@YA_KPEAUhalide_d3d12compute_device@@PEAUd3d12_buffer@1234@_K@Z"(%struct.halide_d3d12compute_device* %358, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* nonnull @"?readback@D3D12Compute@Internal@Runtime@Halide@@3Ud3d12_buffer@1234@A", i64 %341) #11
  %360 = call fastcc i8* @"?buffer_contents@D3D12Compute@Internal@Runtime@Halide@@YAPEAXPEAUd3d12_buffer@1234@@Z"(%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* nonnull @"?readback@D3D12Compute@Internal@Runtime@Halide@@3Ud3d12_buffer@1234@A") #11
  %361 = load %struct.halide_d3d12compute_device*, %struct.halide_d3d12compute_device** %357, align 8, !tbaa !168
  call fastcc void @"?d3d12compute_buffer_copy@D3D12Compute@Internal@Runtime@Halide@@YAHPEAUhalide_d3d12compute_device@@PEAUd3d12_buffer@1234@1_K22@Z"(%struct.halide_d3d12compute_device* %361, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %353, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* nonnull @"?readback@D3D12Compute@Internal@Runtime@Halide@@3Ud3d12_buffer@1234@A", i64 %356, i64 %359, i64 %341) #11
  %362 = ptrtoint i8* %360 to i64
  %363 = add i64 %359, %362
  store i64 %363, i64* %266, align 8, !tbaa !12
  %364 = load i8*, i8** %259, align 8, !tbaa !18
  %365 = ptrtoint i8* %364 to i64
  %366 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %5, i64 0, i32 1
  store i64 %365, i64* %366, align 8, !tbaa !14
  call void @"?copy_memory@Internal@Runtime@Halide@@YAXAEBUdevice_copy@123@PEAX@Z"(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %5, i8* %0) #11
  %367 = load atomic volatile i64, i64* getelementptr inbounds (%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* @"?readback@D3D12Compute@Internal@Runtime@Halide@@3Ud3d12_buffer@1234@A", i64 0, i32 14) seq_cst, align 16
  %368 = icmp eq i64 %367, 0
  br i1 %368, label %370, label %369

369:                                              ; preds = %352
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([117 x i8], [117 x i8]* @"??_C@_0HF@DIJLIEGH@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  call void @abort() #10
  br label %370

370:                                              ; preds = %352, %369
  call void @"?restore@D3D12ContextHolder@D3D12Compute@Internal@Runtime@Halide@@AEAAXXZ"(%"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder"* nonnull dereferenceable(32) %8) #10
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %279) #12
  br label %374

371:                                              ; preds = %104
  call void @"?restore@D3D12ContextHolder@D3D12Compute@Internal@Runtime@Halide@@AEAAXXZ"(%"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder"* nonnull dereferenceable(32) %6) #10
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %112) #12
  br label %374

372:                                              ; preds = %154
  call void @"?restore@D3D12ContextHolder@D3D12Compute@Internal@Runtime@Halide@@AEAAXXZ"(%"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder"* nonnull dereferenceable(32) %7) #10
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %155) #12
  br label %374

373:                                              ; preds = %278
  call void @"?restore@D3D12ContextHolder@D3D12Compute@Internal@Runtime@Halide@@AEAAXXZ"(%"class.Halide::Runtime::Internal::D3D12Compute::D3D12ContextHolder"* nonnull dereferenceable(32) %8) #10
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %279) #12
  br label %374

374:                                              ; preds = %274, %151, %116, %246, %370, %373, %372, %371
  %375 = phi i32 [ %114, %371 ], [ %157, %372 ], [ %281, %373 ], [ 0, %370 ], [ 0, %246 ], [ 0, %116 ], [ 0, %151 ], [ 0, %274 ]
  call void @llvm.lifetime.end.p0i8(i64 416, i8* nonnull %82) #12
  br label %376

376:                                              ; preds = %53, %54, %374, %32
  %377 = phi i32 [ -39, %32 ], [ %375, %374 ], [ -42, %54 ], [ -42, %53 ]
  ret i32 %377
}

; Function Attrs: nounwind
define weak dso_local i32 @d3d12compute_device_crop_from_offset(i8* %0, %struct.halide_buffer_t* %1, i64 %2, %struct.halide_buffer_t* %3) local_unnamed_addr #4 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  %8 = icmp eq %struct.halide_buffer_t* %1, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %4
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @"??_C@_0HI@FNCIDAJF@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  tail call void @abort() #10
  br label %10

10:                                               ; preds = %9, %4
  %11 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  %12 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %11, align 8, !tbaa !70
  %13 = icmp eq %struct.halide_device_interface_t* %12, @"?d3d12compute_device_interface@D3D12Compute@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A"
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([161 x i8], [161 x i8]* @"??_C@_0KB@NININJGE@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  tail call void @abort() #10
  br label %15

15:                                               ; preds = %14, %10
  %16 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %17 = load i64, i64* %16, align 8, !tbaa !25
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @"??_C@_0HI@MFPPBOBE@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  tail call void @abort() #10
  br label %20

20:                                               ; preds = %15, %19
  %21 = inttoptr i64 %17 to %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*
  %22 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %21, i64 0, i32 0
  %23 = load %struct.ID3D12Resource*, %struct.ID3D12Resource** %22, align 8, !tbaa !54
  %24 = ptrtoint %struct.ID3D12Resource* %23 to i64
  %25 = tail call i32 @halide_d3d12compute_wrap_buffer(i8* %0, %struct.halide_buffer_t* %3, i64 %24) #11
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %65, label %27

27:                                               ; preds = %20
  %28 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %28) #12
  %29 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i64 0, i32 3
  store i8* null, i8** %29, align 8, !tbaa !41
  %30 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i64 0, i32 4
  store i8 1, i8* %30, align 8, !tbaa !44
  %31 = tail call i8* @malloc(i64 1024) #10
  %32 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i64 0, i32 0
  store i8* %31, i8** %32, align 8, !tbaa !45
  %33 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i64 0, i32 1
  %34 = icmp eq i8* %31, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %27
  %36 = getelementptr inbounds i8, i8* %31, i64 1023
  store i8 0, i8* %36, align 1, !tbaa !40
  br label %37

37:                                               ; preds = %27, %35
  %38 = phi i8* [ %36, %35 ], [ null, %27 ]
  %39 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i64 0, i32 2
  store i8* %38, i8** %39, align 8
  %40 = tail call i8* @halide_string_to_string(i8* %31, i8* %38, i8* nonnull getelementptr inbounds ([62 x i8], [62 x i8]* @"??_C@_0DO@DKCCILEE@halide_d3d12compute_device_crop?3@", i64 0, i64 0)) #10
  %41 = tail call i8* @halide_string_to_string(i8* %40, i8* %38, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #10
  %42 = tail call i8* @halide_string_to_string(i8* %41, i8* %38, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @"??_C@_0CE@MGMMPJGA@vvvvv?5D3D12?5Begin?5Debug?5Dump?5vvv@", i64 0, i64 0)) #10
  store i8* %42, i8** %33, align 8, !tbaa !46
  call fastcc void @"?d3d12_debug_dump@@YAXAEAV?$Printer@$00$0EAA@@?A0x2B71E647@Internal@Runtime@Halide@@@Z"(%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* nonnull align 8 dereferenceable(40) %7) #11
  %43 = load i8*, i8** %39, align 8, !tbaa !47
  %44 = load i8*, i8** %33, align 8, !tbaa !46
  %45 = tail call i8* @halide_string_to_string(i8* %44, i8* %43, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @"??_C@_0CE@PCPJBLP@?$FO?$FO?$FO?$FO?$FO?5D3D12?5?5End?5?5Debug?5Dump?5?$FO?$FO?$FO@", i64 0, i64 0)) #10
  %46 = tail call i8* @halide_string_to_string(i8* %45, i8* %43, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @"??_C@_0BA@FGKOLOB@D3D12?5HALT?5?$CB?$CB?$CB?6?$AA@", i64 0, i64 0)) #10
  store i8* %46, i8** %33, align 8, !tbaa !46
  %47 = load i8*, i8** %32, align 8, !tbaa !45
  %48 = icmp eq i8* %47, null
  %49 = load i8*, i8** %29, align 8, !tbaa !41
  br i1 %48, label %50, label %51

50:                                               ; preds = %37
  tail call void @halide_error(i8* %49, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #10
  br label %57

51:                                               ; preds = %37
  %52 = ptrtoint i8* %46 to i64
  %53 = ptrtoint i8* %47 to i64
  %54 = add i64 %52, 1
  %55 = sub i64 %54, %53
  %56 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %49, i8* nonnull %47, i64 %55) #10
  tail call void @halide_error(i8* %49, i8* nonnull %47) #10
  br label %57

57:                                               ; preds = %51, %50
  %58 = load i8, i8* %30, align 8, !tbaa !44, !range !48
  %59 = icmp eq i8 %58, 0
  %60 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i64 0, i32 5, i64 0
  %61 = icmp eq i8* %47, %60
  %62 = or i1 %59, %61
  br i1 %62, label %64, label %63

63:                                               ; preds = %57
  call void @free(i8* %47) #10
  br label %64

64:                                               ; preds = %57, %63
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %28) #12
  br label %116

65:                                               ; preds = %20
  %66 = icmp eq %struct.halide_buffer_t* %3, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %65
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @"??_C@_0HI@FNCIDAJF@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  tail call void @abort() #10
  br label %68

68:                                               ; preds = %67, %65
  %69 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 1
  %70 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %69, align 8, !tbaa !70
  %71 = icmp eq %struct.halide_device_interface_t* %70, @"?d3d12compute_device_interface@D3D12Compute@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A"
  br i1 %71, label %73, label %72

72:                                               ; preds = %68
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([161 x i8], [161 x i8]* @"??_C@_0KB@NININJGE@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  tail call void @abort() #10
  br label %73

73:                                               ; preds = %72, %68
  %74 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 0
  %75 = load i64, i64* %74, align 8, !tbaa !25
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @"??_C@_0HI@MFPPBOBE@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  tail call void @abort() #10
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([124 x i8], [124 x i8]* @"??_C@_0HM@PMHOEIAI@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  tail call void @abort() #10
  br label %78

78:                                               ; preds = %73, %77
  %79 = inttoptr i64 %75 to %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*
  %80 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %80) #12
  %81 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %79, i64 0, i32 9, i32 0
  %82 = call i8* @memcpy(i8* nonnull %80, i8* nonnull %81, i64 4) #10
  %83 = load i32, i32* %6, align 4, !tbaa !77
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %80) #12
  %84 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %84) #12
  %85 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 4, i32 0
  %86 = call i8* @memcpy(i8* nonnull %84, i8* nonnull %85, i64 4) #10
  %87 = load i32, i32* %5, align 4, !tbaa !77
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %84) #12
  %88 = icmp eq i32 %83, %87
  br i1 %88, label %90, label %89

89:                                               ; preds = %78
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([139 x i8], [139 x i8]* @"??_C@_0IL@ELHOHBDO@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  call void @abort() #10
  br label %90

90:                                               ; preds = %78, %89
  %91 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %11, align 8, !tbaa !70
  %92 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %69, align 8, !tbaa !70
  %93 = icmp eq %struct.halide_device_interface_t* %91, %92
  br i1 %93, label %95, label %94

94:                                               ; preds = %90
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([149 x i8], [149 x i8]* @"??_C@_0JF@HBKAJKKG@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  call void @abort() #10
  br label %95

95:                                               ; preds = %94, %90
  %96 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %21, i64 0, i32 3
  %97 = load i32, i32* %96, align 8, !tbaa !59
  %98 = trunc i64 %2 to i32
  %99 = add i32 %97, %98
  %100 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %79, i64 0, i32 3
  store i32 %99, i32* %100, align 8, !tbaa !59
  %101 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 4, i32 1
  %102 = load i8, i8* %101, align 1, !tbaa !26
  %103 = zext i8 %102 to i32
  %104 = add nuw nsw i32 %103, 7
  %105 = lshr i32 %104, 3
  %106 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 4, i32 2
  %107 = load i16, i16* %106, align 2, !tbaa !64
  %108 = zext i16 %107 to i32
  %109 = mul i32 %99, %108
  %110 = mul i32 %109, %105
  %111 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %79, i64 0, i32 5
  store i32 %110, i32* %111, align 8, !tbaa !60
  %112 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %21, i64 0, i32 4
  %113 = load i32, i32* %112, align 4, !tbaa !65
  %114 = sub i32 %113, %98
  %115 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %79, i64 0, i32 4
  store i32 %114, i32* %115, align 4, !tbaa !65
  br label %116

116:                                              ; preds = %95, %64
  ret i32 %25
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_d3d12compute_wrap_buffer(i8* %0, %struct.halide_buffer_t* %1, i64 %2) #4 {
  %4 = alloca %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", align 8
  %5 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  %6 = inttoptr i64 %2 to %struct.ID3D12Resource*
  %7 = icmp eq i64 %2, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([123 x i8], [123 x i8]* @"??_C@_0HL@PJKJFAAC@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  tail call void @abort() #10
  br label %9

9:                                                ; preds = %8, %3
  %10 = bitcast %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %10) #12
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %4, i64 0, i32 1
  %12 = bitcast i32* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(96) %12, i8 0, i64 88, i1 false)
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %4, i64 0, i32 9, i32 0
  store i8 0, i8* %13, align 8, !tbaa !107
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %4, i64 0, i32 9, i32 1
  store i8 0, i8* %14, align 1, !tbaa !26
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %4, i64 0, i32 9, i32 2
  store i16 0, i16* %15, align 2, !tbaa !108
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %4, i64 0, i32 0
  store %struct.ID3D12Resource* %6, %struct.ID3D12Resource** %16, align 8, !tbaa !54
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %4, i64 0, i32 7
  %18 = bitcast i32* %17 to <2 x i32>*
  store <2 x i32> <i32 8, i32 2>, <2 x i32>* %18, align 8, !tbaa !40
  %19 = call i32 @"?wrap_buffer@D3D12Compute@Internal@Runtime@Halide@@YAHPEAXPEAUhalide_buffer_t@@PEAUd3d12_buffer@1234@@Z"(i8* %0, %struct.halide_buffer_t* %1, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* nonnull %4) #11
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %78

21:                                               ; preds = %9
  %22 = call i8* @malloc(i64 96) #10
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %66

24:                                               ; preds = %21
  %25 = call i32 @"?unwrap_buffer@D3D12Compute@Internal@Runtime@Halide@@YAHPEAUhalide_buffer_t@@@Z"(%struct.halide_buffer_t* %1) #11
  %26 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %26) #12
  %27 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i64 0, i32 3
  store i8* null, i8** %27, align 8, !tbaa !41
  %28 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i64 0, i32 4
  store i8 1, i8* %28, align 8, !tbaa !44
  %29 = call i8* @malloc(i64 1024) #10
  %30 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i64 0, i32 0
  store i8* %29, i8** %30, align 8, !tbaa !45
  %31 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i64 0, i32 1
  store i8* %29, i8** %31, align 8, !tbaa !46
  %32 = icmp eq i8* %29, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %24
  %34 = getelementptr inbounds i8, i8* %29, i64 1023
  store i8 0, i8* %34, align 1, !tbaa !40
  br label %35

35:                                               ; preds = %24, %33
  %36 = phi i8* [ %34, %33 ], [ null, %24 ]
  %37 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i64 0, i32 2
  store i8* %36, i8** %37, align 8
  %38 = call i8* @halide_string_to_string(i8* %29, i8* %36, i8* nonnull getelementptr inbounds ([69 x i8], [69 x i8]* @"??_C@_0EF@BJFFFHJC@halide_d3d12compute_wrap_buffer?3@", i64 0, i64 0)) #10
  store i8* %38, i8** %31, align 8, !tbaa !46
  %39 = call i8* @halide_string_to_string(i8* %38, i8* %36, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #10
  store i8* %39, i8** %31, align 8, !tbaa !46
  %40 = call i8* @halide_string_to_string(i8* %39, i8* %36, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @"??_C@_0CE@MGMMPJGA@vvvvv?5D3D12?5Begin?5Debug?5Dump?5vvv@", i64 0, i64 0)) #10
  store i8* %40, i8** %31, align 8, !tbaa !46
  call fastcc void @"?d3d12_debug_dump@@YAXAEAV?$Printer@$00$0EAA@@?A0x2B71E647@Internal@Runtime@Halide@@@Z"(%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* nonnull align 8 dereferenceable(40) %5) #11
  %41 = load i8*, i8** %37, align 8, !tbaa !47
  %42 = load i8*, i8** %31, align 8, !tbaa !46
  %43 = call i8* @halide_string_to_string(i8* %42, i8* %41, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @"??_C@_0CE@PCPJBLP@?$FO?$FO?$FO?$FO?$FO?5D3D12?5?5End?5?5Debug?5Dump?5?$FO?$FO?$FO@", i64 0, i64 0)) #10
  store i8* %43, i8** %31, align 8, !tbaa !46
  %44 = call i8* @halide_string_to_string(i8* %43, i8* %41, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @"??_C@_0BA@FGKOLOB@D3D12?5HALT?5?$CB?$CB?$CB?6?$AA@", i64 0, i64 0)) #10
  store i8* %44, i8** %31, align 8, !tbaa !46
  %45 = load i8*, i8** %30, align 8, !tbaa !45
  %46 = icmp eq i8* %45, null
  %47 = load i8*, i8** %27, align 8, !tbaa !41
  br i1 %46, label %48, label %49

48:                                               ; preds = %35
  call void @halide_error(i8* %47, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #10
  br label %57

49:                                               ; preds = %35
  %50 = ptrtoint i8* %44 to i64
  %51 = ptrtoint i8* %45 to i64
  %52 = add i64 %50, 1
  %53 = sub i64 %52, %51
  %54 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %47, i8* nonnull %45, i64 %53) #10
  %55 = load i8*, i8** %30, align 8, !tbaa !45
  %56 = load i8*, i8** %27, align 8, !tbaa !41
  call void @halide_error(i8* %56, i8* %55) #10
  br label %57

57:                                               ; preds = %49, %48
  %58 = load i8, i8* %28, align 8, !tbaa !44, !range !48
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %57
  %61 = load i8*, i8** %30, align 8, !tbaa !45
  %62 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i64 0, i32 5, i64 0
  %63 = icmp eq i8* %61, %62
  br i1 %63, label %65, label %64

64:                                               ; preds = %60
  call void @free(i8* %61) #10
  br label %65

65:                                               ; preds = %57, %60, %64
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %26) #12
  br label %78

66:                                               ; preds = %21
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %22, i8* nonnull align 8 %10, i64 96, i1 true), !tbaa.struct !119
  %67 = getelementptr inbounds i8, i8* %22, i64 56
  store i8 1, i8* %67, align 8, !tbaa !112
  %68 = getelementptr inbounds i8, i8* %22, i64 80
  %69 = bitcast i8* %68 to i64*
  store atomic volatile i64 0, i64* %69 seq_cst, align 8
  %70 = ptrtoint i8* %22 to i64
  %71 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  store i64 %70, i64* %71, align 8, !tbaa !25
  %72 = getelementptr %struct.ID3D12Resource, %struct.ID3D12Resource* %6, i64 0, i32 0, i32 0, i32 0, i32 0
  %73 = inttoptr i64 %2 to i32 (%struct.IUnknown*)***
  %74 = load i32 (%struct.IUnknown*)**, i32 (%struct.IUnknown*)*** %73, align 8, !tbaa !50
  %75 = getelementptr inbounds i32 (%struct.IUnknown*)*, i32 (%struct.IUnknown*)** %74, i64 1
  %76 = load i32 (%struct.IUnknown*)*, i32 (%struct.IUnknown*)** %75, align 8
  %77 = call i32 %76(%struct.IUnknown* nonnull dereferenceable(8) %72) #10
  br label %78

78:                                               ; preds = %65, %66, %9
  %79 = phi i32 [ %19, %9 ], [ -11, %65 ], [ 0, %66 ]
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %10) #12
  ret i32 %79
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_d3d12compute_device_crop(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_buffer_t* %2) #0 {
  %4 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 5
  %5 = load i32, i32* %4, align 4, !tbaa !27
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %29

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i64 0, i32 6
  %9 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %8, align 8, !tbaa !28
  %10 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 6
  %11 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %10, align 8, !tbaa !28
  %12 = zext i32 %5 to i64
  br label %13

13:                                               ; preds = %13, %7
  %14 = phi i64 [ 0, %7 ], [ %27, %13 ]
  %15 = phi i64 [ 0, %7 ], [ %26, %13 ]
  %16 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %9, i64 %14, i32 0
  %17 = load i32, i32* %16, align 4, !tbaa !31
  %18 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %11, i64 %14, i32 0
  %19 = load i32, i32* %18, align 4, !tbaa !31
  %20 = sub nsw i32 %17, %19
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %11, i64 %14, i32 2
  %23 = load i32, i32* %22, align 4, !tbaa !29
  %24 = sext i32 %23 to i64
  %25 = mul nsw i64 %21, %24
  %26 = add nsw i64 %25, %15
  %27 = add nuw nsw i64 %14, 1
  %28 = icmp eq i64 %27, %12
  br i1 %28, label %29, label %13, !llvm.loop !257

29:                                               ; preds = %13, %3
  %30 = phi i64 [ 0, %3 ], [ %26, %13 ]
  %31 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 1
  %32 = load i8, i8* %31, align 1, !tbaa !26
  %33 = zext i8 %32 to i64
  %34 = add nuw nsw i64 %33, 7
  %35 = lshr i64 %34, 3
  %36 = mul nsw i64 %35, %30
  %37 = srem i64 %36, %35
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %29
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([134 x i8], [134 x i8]* @"??_C@_0IG@JHIDPJCM@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  tail call void @abort() #10
  %40 = load i8, i8* %31, align 1, !tbaa !26
  %41 = zext i8 %40 to i64
  %42 = add nuw nsw i64 %41, 7
  %43 = lshr i64 %42, 3
  br label %44

44:                                               ; preds = %39, %29
  %45 = phi i64 [ %43, %39 ], [ %35, %29 ]
  %46 = sdiv i64 %36, %45
  %47 = tail call i32 @d3d12compute_device_crop_from_offset(i8* %0, %struct.halide_buffer_t* nonnull %1, i64 %46, %struct.halide_buffer_t* %2) #11
  ret i32 %47
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_d3d12compute_device_slice(i8* %0, %struct.halide_buffer_t* %1, i32 %2, i32 %3, %struct.halide_buffer_t* %4) #0 {
  %6 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 6
  %7 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %6, align 8, !tbaa !28
  %8 = sext i32 %2 to i64
  %9 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %7, i64 %8, i32 0
  %10 = load i32, i32* %9, align 4, !tbaa !31
  %11 = sub nsw i32 %3, %10
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %7, i64 %8, i32 2
  %14 = load i32, i32* %13, align 4, !tbaa !29
  %15 = sext i32 %14 to i64
  %16 = mul nsw i64 %12, %15
  %17 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 1
  %18 = load i8, i8* %17, align 1, !tbaa !26
  %19 = zext i8 %18 to i64
  %20 = add nuw nsw i64 %19, 7
  %21 = lshr i64 %20, 3
  %22 = mul nsw i64 %16, %21
  %23 = srem i64 %22, %21
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %5
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([134 x i8], [134 x i8]* @"??_C@_0IG@NLGIEOAM@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  tail call void @abort() #10
  %26 = load i8, i8* %17, align 1, !tbaa !26
  %27 = zext i8 %26 to i64
  %28 = add nuw nsw i64 %27, 7
  %29 = lshr i64 %28, 3
  br label %30

30:                                               ; preds = %25, %5
  %31 = phi i64 [ %29, %25 ], [ %21, %5 ]
  %32 = sdiv i64 %22, %31
  %33 = tail call i32 @d3d12compute_device_crop_from_offset(i8* %0, %struct.halide_buffer_t* nonnull %1, i64 %32, %struct.halide_buffer_t* %4) #11
  ret i32 %33
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_d3d12compute_device_release_crop(i8* %0, %struct.halide_buffer_t* %1) #0 {
  %3 = icmp eq %struct.halide_buffer_t* %1, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @"??_C@_0HI@FNCIDAJF@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  tail call void @abort() #10
  br label %5

5:                                                ; preds = %4, %2
  %6 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  %7 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %6, align 8, !tbaa !70
  %8 = icmp eq %struct.halide_device_interface_t* %7, @"?d3d12compute_device_interface@D3D12Compute@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A"
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([161 x i8], [161 x i8]* @"??_C@_0KB@NININJGE@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  tail call void @abort() #10
  br label %10

10:                                               ; preds = %9, %5
  %11 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %12 = load i64, i64* %11, align 8, !tbaa !25
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @"??_C@_0HI@MFPPBOBE@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  tail call void @abort() #10
  br label %15

15:                                               ; preds = %10, %14
  %16 = inttoptr i64 %12 to %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"*
  %17 = tail call i32 @"?unwrap_buffer@D3D12Compute@Internal@Runtime@Halide@@YAHPEAUhalide_buffer_t@@@Z"(%struct.halide_buffer_t* nonnull %1) #11
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %16, i64 0, i32 0
  %19 = load %struct.ID3D12Resource*, %struct.ID3D12Resource** %18, align 8, !tbaa !54
  %20 = icmp eq %struct.ID3D12Resource* %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %15
  %22 = getelementptr %struct.ID3D12Resource, %struct.ID3D12Resource* %19, i64 0, i32 0, i32 0, i32 0, i32 0
  %23 = bitcast %struct.ID3D12Resource* %19 to i32 (%struct.IUnknown*)***
  %24 = load i32 (%struct.IUnknown*)**, i32 (%struct.IUnknown*)*** %23, align 8, !tbaa !50
  %25 = getelementptr inbounds i32 (%struct.IUnknown*)*, i32 (%struct.IUnknown*)** %24, i64 2
  %26 = load i32 (%struct.IUnknown*)*, i32 (%struct.IUnknown*)** %25, align 8
  %27 = tail call i32 %26(%struct.IUnknown* nonnull dereferenceable(8) %22) #10
  br label %28

28:                                               ; preds = %21, %15
  %29 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %16, i64 0, i32 12
  %30 = load i8*, i8** %29, align 8, !tbaa !113
  %31 = icmp eq i8* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  tail call void @free(i8* nonnull %30) #10
  br label %33

33:                                               ; preds = %32, %28
  %34 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %16, i64 0, i32 11
  %35 = load i8, i8* %34, align 8, !tbaa !112, !range !48
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = inttoptr i64 %12 to i8*
  tail call void @free(i8* %38) #10
  br label %39

39:                                               ; preds = %33, %37
  ret i32 0
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_d3d12compute_detach_buffer(i8* %0, %struct.halide_buffer_t* %1) #0 {
  %3 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %4 = load i64, i64* %3, align 8, !tbaa !25
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 @"?unwrap_buffer@D3D12Compute@Internal@Runtime@Halide@@YAHPEAUhalide_buffer_t@@@Z"(%struct.halide_buffer_t* nonnull %1) #11
  br label %8

8:                                                ; preds = %2, %6
  ret i32 0
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local %struct.halide_device_interface_t* @halide_d3d12compute_device_interface() local_unnamed_addr #5 {
  ret %struct.halide_device_interface_t* @"?d3d12compute_device_interface@D3D12Compute@Internal@Runtime@Halide@@3Uhalide_device_interface_t@@A"
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_d3d12compute_cleanup() #0 {
  tail call void @"??$release_all@$$A6AXPEAUd3d12_library@D3D12Compute@Internal@Runtime@Halide@@@Z@?$GPUCompilationCache@PEAUhalide_d3d12compute_device@@PEAUd3d12_library@D3D12Compute@Internal@Runtime@Halide@@@Internal@Halide@@QEAAXPEAXA6AXPEAUd3d12_library@D3D12Compute@1Runtime@2@@Z@Z"(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(32) @"?compilation_cache@D3D12Compute@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PEAUhalide_d3d12compute_device@@PEAUd3d12_library@D3D12Compute@Internal@Runtime@Halide@@@24@A", i8* null, void (%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_library"*)* nonnull @"??$release_object@Ud3d12_library@D3D12Compute@Internal@Runtime@Halide@@@D3D12Compute@Internal@Runtime@Halide@@YAXPEAUd3d12_library@0123@@Z") #11
  %1 = tail call i32 @halide_d3d12compute_device_release(i8* null) #11
  ret void
}

; Function Attrs: nounwind
define linkonce_odr dso_local void @"??$release_all@$$A6AXPEAUd3d12_library@D3D12Compute@Internal@Runtime@Halide@@@Z@?$GPUCompilationCache@PEAUhalide_d3d12compute_device@@PEAUd3d12_library@D3D12Compute@Internal@Runtime@Halide@@@Internal@Halide@@QEAAXPEAXA6AXPEAUd3d12_library@D3D12Compute@1Runtime@2@@Z@Z"(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(32) %0, i8* %1, void (%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_library"*)* nonnull %2) local_unnamed_addr #4 comdat align 2 {
  %4 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i64 0, i32 0
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull %4) #10
  %5 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i64 0, i32 3
  %6 = load i32, i32* %5, align 8, !tbaa !199
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %46, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i64 0, i32 1
  %10 = load i32, i32* %9, align 8, !tbaa !171
  %11 = icmp eq i32 %10, 31
  br i1 %11, label %51, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i64 0, i32 2
  %14 = load %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation"** %13, align 8, !tbaa !172
  br label %15

15:                                               ; preds = %36, %12
  %16 = phi i32 [ %6, %12 ], [ %37, %36 ]
  %17 = phi i32 [ %10, %12 ], [ %38, %36 ]
  %18 = phi %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation"* [ %14, %12 ], [ %39, %36 ]
  %19 = phi i64 [ 0, %12 ], [ %40, %36 ]
  %20 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation"* %18, i64 %19, i32 2
  %21 = load i32, i32* %20, align 8, !tbaa !174
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %36, label %23

23:                                               ; preds = %15
  %24 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation"* %18, i64 %19, i32 3
  %25 = load i32, i32* %24, align 4, !tbaa !177
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %23
  %28 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation"* %18, i64 %19, i32 1
  %29 = load %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_library"*, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_library"** %28, align 8, !tbaa !178
  tail call void %2(%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_library"* %29) #10
  %30 = load %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation"** %13, align 8, !tbaa !172
  %31 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation"* %30, i64 %19, i32 1
  store %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_library"* null, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_library"** %31, align 8, !tbaa !178
  %32 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation"* %30, i64 %19, i32 2
  store i32 1, i32* %32, align 8, !tbaa !174
  %33 = load i32, i32* %5, align 8, !tbaa !199
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %5, align 8, !tbaa !199
  %35 = load i32, i32* %9, align 8, !tbaa !171
  br label %36

36:                                               ; preds = %27, %23, %15
  %37 = phi i32 [ %34, %27 ], [ %16, %23 ], [ %16, %15 ]
  %38 = phi i32 [ %35, %27 ], [ %17, %23 ], [ %17, %15 ]
  %39 = phi %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation"* [ %30, %27 ], [ %18, %23 ], [ %18, %15 ]
  %40 = add nuw nsw i64 %19, 1
  %41 = shl nuw i32 1, %38
  %42 = sext i32 %41 to i64
  %43 = icmp slt i64 %40, %42
  br i1 %43, label %15, label %44, !llvm.loop !207

44:                                               ; preds = %36
  %45 = icmp eq i32 %37, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %3, %44
  %47 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i64 0, i32 2
  %48 = bitcast %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation"** %47 to i8**
  %49 = load i8*, i8** %48, align 8, !tbaa !172
  tail call void @free(i8* %49) #10
  store %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation"* null, %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation"** %47, align 8, !tbaa !172
  %50 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i64 0, i32 1
  store i32 0, i32* %50, align 8, !tbaa !171
  br label %51

51:                                               ; preds = %8, %46, %44
  tail call void @halide_mutex_unlock(%struct.halide_mutex* nonnull %4) #10
  ret void
}

declare extern_weak void @halide_use_jit_module() #2

declare extern_weak void @halide_release_jit_module() #2

declare dso_local i32 @halide_device_malloc(i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*) #2

declare dso_local i32 @halide_device_free(i8*, %struct.halide_buffer_t*) #2

declare dso_local i32 @halide_device_sync(i8*, %struct.halide_buffer_t*) #2

declare dso_local void @halide_device_release(i8*, %struct.halide_device_interface_t*) #2

declare dso_local i32 @halide_copy_to_host(i8*, %struct.halide_buffer_t*) #2

declare dso_local i32 @halide_copy_to_device(i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*) #2

declare extern_weak i32 @halide_device_and_host_malloc(i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*) #2

declare extern_weak i32 @halide_device_and_host_free(i8*, %struct.halide_buffer_t*) #2

declare dso_local i32 @halide_buffer_copy(i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*) #2

declare dso_local i32 @halide_device_crop(i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*) #2

declare dso_local i32 @halide_device_slice(i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*) #2

declare dso_local i32 @halide_device_release_crop(i8*, %struct.halide_buffer_t*) #2

declare dso_local i32 @halide_device_wrap_native(i8*, %struct.halide_buffer_t*, i64, %struct.halide_device_interface_t*) #2

declare dso_local i32 @halide_device_detach_native(i8*, %struct.halide_buffer_t*) #2

declare dso_local void @free(i8*) local_unnamed_addr #2

declare dso_local i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind mustprogress
define linkonce_odr dso_local void @"?destroy_value_func@?$THashMap@PEADPEAUd3d12_function@D3D12Compute@Internal@Runtime@Halide@@@Internal@Runtime@Halide@@SAXPEAE_K@Z"(i8* %0, i64 %1) #0 comdat align 2 {
  %3 = icmp eq i64 %1, 8
  br i1 %3, label %5, label %4

4:                                                ; preds = %2
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([118 x i8], [118 x i8]* @"??_C@_0HG@HILAPLNM@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  tail call void @abort() #10
  br label %5

5:                                                ; preds = %2, %4
  ret void
}

; Function Attrs: nounwind mustprogress
define linkonce_odr dso_local void @"?copy_value_func@?$THashMap@PEADPEAUd3d12_function@D3D12Compute@Internal@Runtime@Halide@@@Internal@Runtime@Halide@@SAXPEAEPEBE_K@Z"(i8* %0, i8* %1, i64 %2) #0 comdat align 2 {
  %4 = icmp eq i64 %2, 8
  br i1 %4, label %6, label %5

5:                                                ; preds = %3
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([118 x i8], [118 x i8]* @"??_C@_0HG@DPCFCKPA@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  tail call void @abort() #10
  br label %6

6:                                                ; preds = %3, %5
  %7 = bitcast i8* %0 to %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_function"**
  %8 = bitcast i8* %1 to %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_function"**
  %9 = load %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_function"*, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_function"** %8, align 8, !tbaa !49
  store %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_function"* %9, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_function"** %7, align 8, !tbaa !49
  ret void
}

declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #2

declare extern_weak i8* @halide_pointer_to_string(i8*, i8*, i8*) local_unnamed_addr #2

declare extern_weak i8* @halide_int64_to_string(i8*, i8*, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind
define internal fastcc i1 @"??$D3DErrorCheck@UID3D12Device@@@@YA_NHPEAUID3D12Device@@PEAXPEBD@Z"(i32 %0, %struct.ID3D12Device* %1) unnamed_addr #4 {
  %3 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  %4 = icmp sgt i32 %0, -1
  %5 = icmp ne %struct.ID3D12Device* %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %53, label %7

7:                                                ; preds = %2
  %8 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %8) #12
  %9 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, i64 0, i32 3
  store i8* null, i8** %9, align 8, !tbaa !41
  %10 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, i64 0, i32 4
  store i8 1, i8* %10, align 8, !tbaa !44
  %11 = tail call i8* @malloc(i64 1024) #10
  %12 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, i64 0, i32 0
  store i8* %11, i8** %12, align 8, !tbaa !45
  %13 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, i64 0, i32 1
  %14 = icmp eq i8* %11, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %7
  %16 = getelementptr inbounds i8, i8* %11, i64 1023
  store i8 0, i8* %16, align 1, !tbaa !40
  br label %17

17:                                               ; preds = %7, %15
  %18 = phi i8* [ %16, %15 ], [ null, %7 ]
  %19 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, i64 0, i32 2
  store i8* %18, i8** %19, align 8
  %20 = tail call i8* @halide_string_to_string(i8* %11, i8* %18, i8* nonnull getelementptr inbounds ([40 x i8], [40 x i8]* @"??_C@_0CI@IGMLMPFG@Unable?5to?5create?5the?5Direct3D?512@", i64 0, i64 0)) #10
  %21 = tail call i8* @halide_string_to_string(i8* %20, i8* %18, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @"??_C@_0L@IAGCJOCP@?5?$CIHRESULT?$DN?$AA@", i64 0, i64 0)) #10
  %22 = sext i32 %0 to i64
  %23 = inttoptr i64 %22 to i8*
  %24 = tail call i8* @halide_pointer_to_string(i8* %21, i8* %18, i8* %23) #10
  %25 = tail call i8* @halide_string_to_string(i8* %24, i8* %18, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @"??_C@_0L@FELFIFPM@?0?5object?$CK?$DN?$AA@", i64 0, i64 0)) #10
  %26 = bitcast %struct.ID3D12Device* %1 to i8*
  %27 = tail call i8* @halide_pointer_to_string(i8* %25, i8* %18, i8* %26) #10
  %28 = tail call i8* @halide_string_to_string(i8* %27, i8* %18, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01PKGAHCOL@?$CJ?$AA@", i64 0, i64 0)) #10
  %29 = tail call i8* @halide_string_to_string(i8* %28, i8* %18, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #10
  %30 = tail call i8* @halide_string_to_string(i8* %29, i8* %18, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @"??_C@_0CE@MGMMPJGA@vvvvv?5D3D12?5Begin?5Debug?5Dump?5vvv@", i64 0, i64 0)) #10
  store i8* %30, i8** %13, align 8, !tbaa !46
  call fastcc void @"?d3d12_debug_dump@@YAXAEAV?$Printer@$00$0EAA@@?A0x2B71E647@Internal@Runtime@Halide@@@Z"(%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* nonnull align 8 dereferenceable(40) %3) #11
  %31 = load i8*, i8** %19, align 8, !tbaa !47
  %32 = load i8*, i8** %13, align 8, !tbaa !46
  %33 = tail call i8* @halide_string_to_string(i8* %32, i8* %31, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @"??_C@_0CE@PCPJBLP@?$FO?$FO?$FO?$FO?$FO?5D3D12?5?5End?5?5Debug?5Dump?5?$FO?$FO?$FO@", i64 0, i64 0)) #10
  %34 = tail call i8* @halide_string_to_string(i8* %33, i8* %31, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @"??_C@_0BA@FGKOLOB@D3D12?5HALT?5?$CB?$CB?$CB?6?$AA@", i64 0, i64 0)) #10
  store i8* %34, i8** %13, align 8, !tbaa !46
  %35 = load i8*, i8** %12, align 8, !tbaa !45
  %36 = icmp eq i8* %35, null
  %37 = load i8*, i8** %9, align 8, !tbaa !41
  br i1 %36, label %38, label %39

38:                                               ; preds = %17
  tail call void @halide_error(i8* %37, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #10
  br label %45

39:                                               ; preds = %17
  %40 = ptrtoint i8* %34 to i64
  %41 = ptrtoint i8* %35 to i64
  %42 = add i64 %40, 1
  %43 = sub i64 %42, %41
  %44 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %37, i8* nonnull %35, i64 %43) #10
  tail call void @halide_error(i8* %37, i8* nonnull %35) #10
  br label %45

45:                                               ; preds = %39, %38
  %46 = load i8, i8* %10, align 8, !tbaa !44, !range !48
  %47 = icmp eq i8 %46, 0
  %48 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, i64 0, i32 5, i64 0
  %49 = icmp eq i8* %35, %48
  %50 = or i1 %47, %49
  br i1 %50, label %52, label %51

51:                                               ; preds = %45
  call void @free(i8* %35) #10
  br label %52

52:                                               ; preds = %45, %51
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %8) #12
  br label %53

53:                                               ; preds = %2, %52
  %54 = and i1 %4, %5
  %55 = xor i1 %54, true
  ret i1 %55
}

declare dso_local i1 @halide_can_reuse_device_allocations(i8*) local_unnamed_addr #2

declare dso_local void @halide_mutex_lock(%struct.halide_mutex*) local_unnamed_addr #2

declare dso_local void @halide_mutex_unlock(%struct.halide_mutex*) local_unnamed_addr #2

declare dllimport i32 @WaitForSingleObject(i8*, i32) local_unnamed_addr #2

; Function Attrs: nounwind mustprogress
define internal fastcc void @"?buffer_copy_command@D3D12Compute@Internal@Runtime@Halide@@YAXPEAUd3d12_graphics_command_list@1234@PEAUd3d12_buffer@1234@1_K22@Z"(%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_graphics_command_list"* nocapture readonly %0, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* nocapture readonly %1, %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* nocapture readonly %2, i64 %3, i64 %4, i64 %5) unnamed_addr #0 {
  %7 = alloca %struct.D3D12_RESOURCE_BARRIER, align 8
  %8 = alloca %struct.D3D12_RESOURCE_BARRIER, align 8
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %1, i64 0, i32 0
  %10 = load %struct.ID3D12Resource*, %struct.ID3D12Resource** %9, align 8, !tbaa !54
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %2, i64 0, i32 0
  %12 = load %struct.ID3D12Resource*, %struct.ID3D12Resource** %11, align 8, !tbaa !54
  %13 = bitcast %struct.D3D12_RESOURCE_BARRIER* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %13) #12
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(32) %13, i8 0, i64 32, i1 false)
  %14 = bitcast %struct.D3D12_RESOURCE_BARRIER* %7 to <2 x i32>*
  store <2 x i32> zeroinitializer, <2 x i32>* %14, align 8, !tbaa !40
  %15 = getelementptr inbounds %struct.D3D12_RESOURCE_BARRIER, %struct.D3D12_RESOURCE_BARRIER* %7, i64 0, i32 2, i32 0, i32 0
  store %struct.ID3D12Resource* %10, %struct.ID3D12Resource** %15, align 8, !tbaa !40
  %16 = getelementptr inbounds %struct.D3D12_RESOURCE_BARRIER, %struct.D3D12_RESOURCE_BARRIER* %7, i64 0, i32 2, i32 0, i32 1
  store i32 0, i32* %16, align 8, !tbaa !40
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %1, i64 0, i32 7
  %18 = load i32, i32* %17, align 8, !tbaa !110
  %19 = getelementptr inbounds %struct.D3D12_RESOURCE_BARRIER, %struct.D3D12_RESOURCE_BARRIER* %7, i64 0, i32 2, i32 0, i32 2
  store i32 %18, i32* %19, align 4, !tbaa !40
  %20 = getelementptr inbounds %struct.D3D12_RESOURCE_BARRIER, %struct.D3D12_RESOURCE_BARRIER* %7, i64 0, i32 2, i32 0, i32 3
  store i32 2048, i32* %20, align 8, !tbaa !40
  switch i32 %18, label %27 [
    i32 2755, label %21
    i32 8, label %28
  ]

21:                                               ; preds = %6
  %22 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %1, i64 0, i32 8
  %23 = load i32, i32* %22, align 4, !tbaa !111
  %24 = icmp eq i32 %23, 5
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([134 x i8], [134 x i8]* @"??_C@_0IG@GFIJNJDO@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  tail call void @abort() #10
  br label %26

26:                                               ; preds = %25, %21
  store i32 2755, i32* %20, align 8, !tbaa !40
  br label %28

27:                                               ; preds = %6
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([152 x i8], [152 x i8]* @"??_C@_0JI@PCJLNBL@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  tail call void @abort() #10
  br label %28

28:                                               ; preds = %6, %27, %26
  %29 = phi i32 [ 2048, %6 ], [ 2048, %27 ], [ 2755, %26 ]
  %30 = bitcast %struct.D3D12_RESOURCE_BARRIER* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %30) #12
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(32) %30, i8 0, i64 32, i1 false)
  %31 = bitcast %struct.D3D12_RESOURCE_BARRIER* %8 to <2 x i32>*
  store <2 x i32> zeroinitializer, <2 x i32>* %31, align 8, !tbaa !40
  %32 = getelementptr inbounds %struct.D3D12_RESOURCE_BARRIER, %struct.D3D12_RESOURCE_BARRIER* %8, i64 0, i32 2, i32 0, i32 0
  store %struct.ID3D12Resource* %12, %struct.ID3D12Resource** %32, align 8, !tbaa !40
  %33 = getelementptr inbounds %struct.D3D12_RESOURCE_BARRIER, %struct.D3D12_RESOURCE_BARRIER* %8, i64 0, i32 2, i32 0, i32 1
  store i32 0, i32* %33, align 8, !tbaa !40
  %34 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %2, i64 0, i32 7
  %35 = load i32, i32* %34, align 8, !tbaa !110
  %36 = getelementptr inbounds %struct.D3D12_RESOURCE_BARRIER, %struct.D3D12_RESOURCE_BARRIER* %8, i64 0, i32 2, i32 0, i32 2
  store i32 %35, i32* %36, align 4, !tbaa !40
  %37 = getelementptr inbounds %struct.D3D12_RESOURCE_BARRIER, %struct.D3D12_RESOURCE_BARRIER* %8, i64 0, i32 2, i32 0, i32 3
  store i32 1024, i32* %37, align 8, !tbaa !40
  switch i32 %35, label %43 [
    i32 1024, label %38
    i32 8, label %44
  ]

38:                                               ; preds = %28
  %39 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* %2, i64 0, i32 8
  %40 = load i32, i32* %39, align 4, !tbaa !111
  %41 = icmp eq i32 %40, 6
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([136 x i8], [136 x i8]* @"??_C@_0II@PGFAABKF@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  tail call void @abort() #10
  br label %44

43:                                               ; preds = %28
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([152 x i8], [152 x i8]* @"??_C@_0JI@EEDFJGKA@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  tail call void @abort() #10
  br label %44

44:                                               ; preds = %28, %43, %38, %42
  %45 = icmp eq i32 %18, %29
  br i1 %45, label %55, label %46

46:                                               ; preds = %44
  %47 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_graphics_command_list", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_graphics_command_list"* %0, i64 0, i32 0, i32 0
  %48 = load %struct.ID3D12GraphicsCommandList*, %struct.ID3D12GraphicsCommandList** %47, align 8, !tbaa !88
  %49 = bitcast %struct.ID3D12GraphicsCommandList* %48 to void (%struct.ID3D12GraphicsCommandList*, i32, %struct.D3D12_RESOURCE_BARRIER*)***
  %50 = load void (%struct.ID3D12GraphicsCommandList*, i32, %struct.D3D12_RESOURCE_BARRIER*)**, void (%struct.ID3D12GraphicsCommandList*, i32, %struct.D3D12_RESOURCE_BARRIER*)*** %49, align 8, !tbaa !50
  %51 = getelementptr inbounds void (%struct.ID3D12GraphicsCommandList*, i32, %struct.D3D12_RESOURCE_BARRIER*)*, void (%struct.ID3D12GraphicsCommandList*, i32, %struct.D3D12_RESOURCE_BARRIER*)** %50, i64 26
  %52 = load void (%struct.ID3D12GraphicsCommandList*, i32, %struct.D3D12_RESOURCE_BARRIER*)*, void (%struct.ID3D12GraphicsCommandList*, i32, %struct.D3D12_RESOURCE_BARRIER*)** %51, align 8
  call void %52(%struct.ID3D12GraphicsCommandList* nonnull dereferenceable(8) %48, i32 1, %struct.D3D12_RESOURCE_BARRIER* nonnull %7) #10
  %53 = load i32, i32* %36, align 4, !tbaa !40
  %54 = load i32, i32* %37, align 8, !tbaa !40
  br label %55

55:                                               ; preds = %46, %44
  %56 = phi i32 [ %54, %46 ], [ 1024, %44 ]
  %57 = phi i32 [ %53, %46 ], [ %35, %44 ]
  %58 = icmp eq i32 %57, %56
  br i1 %58, label %66, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_graphics_command_list", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_graphics_command_list"* %0, i64 0, i32 0, i32 0
  %61 = load %struct.ID3D12GraphicsCommandList*, %struct.ID3D12GraphicsCommandList** %60, align 8, !tbaa !88
  %62 = bitcast %struct.ID3D12GraphicsCommandList* %61 to void (%struct.ID3D12GraphicsCommandList*, i32, %struct.D3D12_RESOURCE_BARRIER*)***
  %63 = load void (%struct.ID3D12GraphicsCommandList*, i32, %struct.D3D12_RESOURCE_BARRIER*)**, void (%struct.ID3D12GraphicsCommandList*, i32, %struct.D3D12_RESOURCE_BARRIER*)*** %62, align 8, !tbaa !50
  %64 = getelementptr inbounds void (%struct.ID3D12GraphicsCommandList*, i32, %struct.D3D12_RESOURCE_BARRIER*)*, void (%struct.ID3D12GraphicsCommandList*, i32, %struct.D3D12_RESOURCE_BARRIER*)** %63, i64 26
  %65 = load void (%struct.ID3D12GraphicsCommandList*, i32, %struct.D3D12_RESOURCE_BARRIER*)*, void (%struct.ID3D12GraphicsCommandList*, i32, %struct.D3D12_RESOURCE_BARRIER*)** %64, align 8
  call void %65(%struct.ID3D12GraphicsCommandList* nonnull dereferenceable(8) %61, i32 1, %struct.D3D12_RESOURCE_BARRIER* nonnull %8) #10
  br label %66

66:                                               ; preds = %59, %55
  %67 = getelementptr inbounds %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_graphics_command_list", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_graphics_command_list"* %0, i64 0, i32 0, i32 0
  %68 = load %struct.ID3D12GraphicsCommandList*, %struct.ID3D12GraphicsCommandList** %67, align 8, !tbaa !88
  %69 = bitcast %struct.ID3D12GraphicsCommandList* %68 to void (%struct.ID3D12GraphicsCommandList*, %struct.ID3D12Resource*, i64, %struct.ID3D12Resource*, i64, i64)***
  %70 = load void (%struct.ID3D12GraphicsCommandList*, %struct.ID3D12Resource*, i64, %struct.ID3D12Resource*, i64, i64)**, void (%struct.ID3D12GraphicsCommandList*, %struct.ID3D12Resource*, i64, %struct.ID3D12Resource*, i64, i64)*** %69, align 8, !tbaa !50
  %71 = getelementptr inbounds void (%struct.ID3D12GraphicsCommandList*, %struct.ID3D12Resource*, i64, %struct.ID3D12Resource*, i64, i64)*, void (%struct.ID3D12GraphicsCommandList*, %struct.ID3D12Resource*, i64, %struct.ID3D12Resource*, i64, i64)** %70, i64 15
  %72 = load void (%struct.ID3D12GraphicsCommandList*, %struct.ID3D12Resource*, i64, %struct.ID3D12Resource*, i64, i64)*, void (%struct.ID3D12GraphicsCommandList*, %struct.ID3D12Resource*, i64, %struct.ID3D12Resource*, i64, i64)** %71, align 8
  call void %72(%struct.ID3D12GraphicsCommandList* nonnull dereferenceable(8) %68, %struct.ID3D12Resource* %12, i64 %4, %struct.ID3D12Resource* %10, i64 %3, i64 %5) #10
  %73 = load i32, i32* %19, align 4, !tbaa !120
  %74 = load i32, i32* %20, align 8, !tbaa !120
  store i32 %74, i32* %19, align 4, !tbaa !120
  store i32 %73, i32* %20, align 8, !tbaa !120
  %75 = load i32, i32* %36, align 4, !tbaa !120
  %76 = load i32, i32* %37, align 8, !tbaa !120
  store i32 %76, i32* %36, align 4, !tbaa !120
  store i32 %75, i32* %37, align 8, !tbaa !120
  %77 = icmp eq i32 %74, %73
  br i1 %77, label %86, label %78

78:                                               ; preds = %66
  %79 = load %struct.ID3D12GraphicsCommandList*, %struct.ID3D12GraphicsCommandList** %67, align 8, !tbaa !88
  %80 = bitcast %struct.ID3D12GraphicsCommandList* %79 to void (%struct.ID3D12GraphicsCommandList*, i32, %struct.D3D12_RESOURCE_BARRIER*)***
  %81 = load void (%struct.ID3D12GraphicsCommandList*, i32, %struct.D3D12_RESOURCE_BARRIER*)**, void (%struct.ID3D12GraphicsCommandList*, i32, %struct.D3D12_RESOURCE_BARRIER*)*** %80, align 8, !tbaa !50
  %82 = getelementptr inbounds void (%struct.ID3D12GraphicsCommandList*, i32, %struct.D3D12_RESOURCE_BARRIER*)*, void (%struct.ID3D12GraphicsCommandList*, i32, %struct.D3D12_RESOURCE_BARRIER*)** %81, i64 26
  %83 = load void (%struct.ID3D12GraphicsCommandList*, i32, %struct.D3D12_RESOURCE_BARRIER*)*, void (%struct.ID3D12GraphicsCommandList*, i32, %struct.D3D12_RESOURCE_BARRIER*)** %82, align 8
  call void %83(%struct.ID3D12GraphicsCommandList* nonnull dereferenceable(8) %79, i32 1, %struct.D3D12_RESOURCE_BARRIER* nonnull %7) #10
  %84 = load i32, i32* %36, align 4, !tbaa !40
  %85 = load i32, i32* %37, align 8, !tbaa !40
  br label %86

86:                                               ; preds = %78, %66
  %87 = phi i32 [ %85, %78 ], [ %75, %66 ]
  %88 = phi i32 [ %84, %78 ], [ %76, %66 ]
  %89 = icmp eq i32 %88, %87
  br i1 %89, label %96, label %90

90:                                               ; preds = %86
  %91 = load %struct.ID3D12GraphicsCommandList*, %struct.ID3D12GraphicsCommandList** %67, align 8, !tbaa !88
  %92 = bitcast %struct.ID3D12GraphicsCommandList* %91 to void (%struct.ID3D12GraphicsCommandList*, i32, %struct.D3D12_RESOURCE_BARRIER*)***
  %93 = load void (%struct.ID3D12GraphicsCommandList*, i32, %struct.D3D12_RESOURCE_BARRIER*)**, void (%struct.ID3D12GraphicsCommandList*, i32, %struct.D3D12_RESOURCE_BARRIER*)*** %92, align 8, !tbaa !50
  %94 = getelementptr inbounds void (%struct.ID3D12GraphicsCommandList*, i32, %struct.D3D12_RESOURCE_BARRIER*)*, void (%struct.ID3D12GraphicsCommandList*, i32, %struct.D3D12_RESOURCE_BARRIER*)** %93, i64 26
  %95 = load void (%struct.ID3D12GraphicsCommandList*, i32, %struct.D3D12_RESOURCE_BARRIER*)*, void (%struct.ID3D12GraphicsCommandList*, i32, %struct.D3D12_RESOURCE_BARRIER*)** %94, align 8
  call void %95(%struct.ID3D12GraphicsCommandList* nonnull dereferenceable(8) %91, i32 1, %struct.D3D12_RESOURCE_BARRIER* nonnull %8) #10
  br label %96

96:                                               ; preds = %90, %86
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %30) #12
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %13) #12
  ret void
}

declare extern_weak i8* @halide_string_to_string(i8*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind
define linkonce_odr dso_local i32 @"?lookup@HashMap@Internal@Runtime@Halide@@QEAAHPEAXPEBEHPEAE_K@Z"(%"struct.Halide::Runtime::Internal::HashMap"* nonnull dereferenceable(2128) %0, i8* %1, i8* %2, i32 %3, i8* %4, i64 %5) local_unnamed_addr #6 comdat align 2 {
  %7 = sext i32 %3 to i64
  %8 = icmp eq i32 %3, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %6, %9
  %10 = phi i64 [ %17, %9 ], [ 0, %6 ]
  %11 = phi i32 [ %16, %9 ], [ 5381, %6 ]
  %12 = mul i32 %11, 33
  %13 = getelementptr inbounds i8, i8* %2, i64 %10
  %14 = load i8, i8* %13, align 1, !tbaa !40
  %15 = zext i8 %14 to i32
  %16 = add i32 %12, %15
  %17 = add nuw i64 %10, 1
  %18 = icmp eq i64 %17, %7
  br i1 %18, label %19, label %9, !llvm.loop !258

19:                                               ; preds = %9, %6
  %20 = phi i32 [ 5381, %6 ], [ %16, %9 ]
  %21 = and i32 %20, 255
  %22 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HashMap", %"struct.Halide::Runtime::Internal::HashMap"* %0, i64 0, i32 0
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull %22) #10
  %23 = zext i32 %21 to i64
  %24 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HashMap", %"struct.Halide::Runtime::Internal::HashMap"* %0, i64 0, i32 1, i64 %23
  %25 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %24, align 8, !tbaa !49
  %26 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %25, null
  br i1 %26, label %98, label %27

27:                                               ; preds = %19, %94
  %28 = phi %"struct.Halide::Runtime::Internal::CacheEntry"* [ %96, %94 ], [ %25, %19 ]
  %29 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %28, i64 0, i32 6
  %30 = load i32, i32* %29, align 8, !tbaa !259
  %31 = icmp eq i32 %30, %20
  br i1 %31, label %32, label %94

32:                                               ; preds = %27
  %33 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %28, i64 0, i32 4
  %34 = load i64, i64* %33, align 8, !tbaa !260
  %35 = icmp eq i64 %34, %7
  br i1 %35, label %36, label %94

36:                                               ; preds = %32
  %37 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %28, i64 0, i32 5
  %38 = load i8*, i8** %37, align 8, !tbaa !261
  %39 = tail call i32 @memcmp(i8* %38, i8* %2, i64 %7) #10
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %94

41:                                               ; preds = %36
  %42 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HashMap", %"struct.Halide::Runtime::Internal::HashMap"* %0, i64 0, i32 2
  %43 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %42, align 8, !tbaa !262
  %44 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %28, %43
  br i1 %44, label %79, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %28, i64 0, i32 1
  %47 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %46, align 8, !tbaa !263
  %48 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  tail call void @halide_print(i8* %1, i8* getelementptr inbounds ([122 x i8], [122 x i8]* @"??_C@_0HK@ILGBKOLL@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  tail call void @abort() #10
  br label %50

50:                                               ; preds = %49, %45
  %51 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %28, i64 0, i32 2
  %52 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %51, align 8, !tbaa !264
  %53 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %52, null
  br i1 %53, label %58, label %54

54:                                               ; preds = %50
  %55 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %46, align 8, !tbaa !263
  %56 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %52, i64 0, i32 1
  store %"struct.Halide::Runtime::Internal::CacheEntry"* %55, %"struct.Halide::Runtime::Internal::CacheEntry"** %56, align 8, !tbaa !263
  %57 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %46, align 8, !tbaa !263
  br label %65

58:                                               ; preds = %50
  %59 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HashMap", %"struct.Halide::Runtime::Internal::HashMap"* %0, i64 0, i32 3
  %60 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %59, align 8, !tbaa !265
  %61 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %60, %28
  br i1 %61, label %63, label %62

62:                                               ; preds = %58
  tail call void @halide_print(i8* %1, i8* getelementptr inbounds ([121 x i8], [121 x i8]* @"??_C@_0HJ@MNNHDLMG@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  tail call void @abort() #10
  br label %63

63:                                               ; preds = %62, %58
  %64 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %46, align 8, !tbaa !263
  store %"struct.Halide::Runtime::Internal::CacheEntry"* %64, %"struct.Halide::Runtime::Internal::CacheEntry"** %59, align 8, !tbaa !265
  br label %65

65:                                               ; preds = %54, %63
  %66 = phi %"struct.Halide::Runtime::Internal::CacheEntry"* [ %57, %54 ], [ %64, %63 ]
  %67 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  tail call void @halide_print(i8* %1, i8* getelementptr inbounds ([122 x i8], [122 x i8]* @"??_C@_0HK@MPEPNOAE@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  tail call void @abort() #10
  %69 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %46, align 8, !tbaa !263
  br label %70

70:                                               ; preds = %68, %65
  %71 = phi %"struct.Halide::Runtime::Internal::CacheEntry"* [ %69, %68 ], [ %66, %65 ]
  %72 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %51, align 8, !tbaa !264
  %73 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %71, i64 0, i32 2
  store %"struct.Halide::Runtime::Internal::CacheEntry"* %72, %"struct.Halide::Runtime::Internal::CacheEntry"** %73, align 8, !tbaa !264
  store %"struct.Halide::Runtime::Internal::CacheEntry"* null, %"struct.Halide::Runtime::Internal::CacheEntry"** %46, align 8, !tbaa !263
  %74 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %42, align 8, !tbaa !262
  store %"struct.Halide::Runtime::Internal::CacheEntry"* %74, %"struct.Halide::Runtime::Internal::CacheEntry"** %51, align 8, !tbaa !264
  %75 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %74, null
  br i1 %75, label %78, label %76

76:                                               ; preds = %70
  %77 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %74, i64 0, i32 1
  store %"struct.Halide::Runtime::Internal::CacheEntry"* %28, %"struct.Halide::Runtime::Internal::CacheEntry"** %77, align 8, !tbaa !263
  br label %78

78:                                               ; preds = %76, %70
  store %"struct.Halide::Runtime::Internal::CacheEntry"* %28, %"struct.Halide::Runtime::Internal::CacheEntry"** %42, align 8, !tbaa !262
  br label %79

79:                                               ; preds = %41, %78
  %80 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %28, i64 0, i32 8
  %81 = load i64, i64* %80, align 8, !tbaa !202
  %82 = icmp eq i64 %81, %5
  br i1 %82, label %85, label %83

83:                                               ; preds = %79
  tail call void @halide_print(i8* %1, i8* getelementptr inbounds ([132 x i8], [132 x i8]* @"??_C@_0IE@KOIFDNCL@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  tail call void @abort() #10
  %84 = load i64, i64* %80, align 8, !tbaa !202
  br label %85

85:                                               ; preds = %83, %79
  %86 = phi i64 [ %84, %83 ], [ %5, %79 ]
  %87 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HashMap", %"struct.Halide::Runtime::Internal::HashMap"* %0, i64 0, i32 7
  %88 = load void (i8*, i8*, i64)*, void (i8*, i8*, i64)** %87, align 8, !tbaa !159
  %89 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %28, i64 0, i32 9
  %90 = load i8*, i8** %89, align 8, !tbaa !203
  tail call void %88(i8* %4, i8* %90, i64 %86) #10
  %91 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %28, i64 0, i32 7
  %92 = load i32, i32* %91, align 4, !tbaa !266
  %93 = add i32 %92, 1
  store i32 %93, i32* %91, align 4, !tbaa !266
  br label %98

94:                                               ; preds = %36, %32, %27
  %95 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %28, i64 0, i32 0
  %96 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %95, align 8, !tbaa !49
  %97 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %96, null
  br i1 %97, label %98, label %27, !llvm.loop !267

98:                                               ; preds = %94, %19, %85
  %99 = phi i32 [ 0, %85 ], [ 1, %19 ], [ 1, %94 ]
  tail call void @halide_mutex_unlock(%struct.halide_mutex* nonnull %22) #10
  ret i32 %99
}

declare dso_local i32 @memcmp(i8*, i8*, i64) local_unnamed_addr #2

declare dso_local i32 @halide_msan_annotate_memory_is_initialized(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind
define internal fastcc void @"?dump_shader@D3D12Compute@Internal@Runtime@Halide@@YAXPEBDPEAUID3D10Blob@@@Z"(i8* %0, %struct.ID3D10Blob* %1) unnamed_addr #4 {
  %3 = icmp eq %struct.ID3D10Blob* %1, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = bitcast %struct.ID3D10Blob* %1 to i8* (%struct.ID3D10Blob*)***
  %6 = load i8* (%struct.ID3D10Blob*)**, i8* (%struct.ID3D10Blob*)*** %5, align 8, !tbaa !50
  %7 = getelementptr inbounds i8* (%struct.ID3D10Blob*)*, i8* (%struct.ID3D10Blob*)** %6, i64 3
  %8 = load i8* (%struct.ID3D10Blob*)*, i8* (%struct.ID3D10Blob*)** %7, align 8
  %9 = tail call i8* %8(%struct.ID3D10Blob* nonnull dereferenceable(8) %1) #10
  br label %10

10:                                               ; preds = %4, %2
  %11 = phi i8* [ %9, %4 ], [ getelementptr inbounds ([28 x i8], [28 x i8]* @"??_C@_0BM@GELOKDC@?$DMno?5error?5message?5reported?$DO?$AA@", i64 0, i64 0), %2 ]
  %12 = tail call i8* @malloc(i64 65536) #10
  %13 = icmp eq i8* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds i8, i8* %12, i64 65535
  store i8 0, i8* %15, align 1, !tbaa !40
  br label %16

16:                                               ; preds = %10, %14
  %17 = phi i8* [ %15, %14 ], [ null, %10 ]
  %18 = tail call i8* @halide_string_to_string(i8* %12, i8* %17, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @"??_C@_0P@NJDLPAMC@D3DCompile?$CI?$CJ?3?5?$AA@", i64 0, i64 0)) #10
  %19 = icmp eq i8* %11, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = tail call i8* @halide_string_to_string(i8* %18, i8* %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"??_C@_09CGLEKJAK@?$DMnullptr?$DO?$AA@", i64 0, i64 0)) #10
  br label %24

22:                                               ; preds = %16
  %23 = tail call i8* @halide_string_to_string(i8* %18, i8* %17, i8* nonnull %11) #10
  br label %24

24:                                               ; preds = %20, %22
  %25 = phi i8* [ %23, %22 ], [ %21, %20 ]
  %26 = tail call i8* @halide_string_to_string(i8* %25, i8* %17, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #10
  %27 = tail call i8* @halide_string_to_string(i8* %26, i8* %17, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @"??_C@_0CB@LJCJJOMA@?$DO?$DO?$DO?5HLSL?5shader?5source?5dump?5?$DM?$DM?$DM?6@", i64 0, i64 0)) #10
  %28 = icmp eq i8* %0, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = tail call i8* @halide_string_to_string(i8* %27, i8* %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"??_C@_09CGLEKJAK@?$DMnullptr?$DO?$AA@", i64 0, i64 0)) #10
  br label %33

31:                                               ; preds = %24
  %32 = tail call i8* @halide_string_to_string(i8* %27, i8* %17, i8* nonnull %0) #10
  br label %33

33:                                               ; preds = %29, %31
  %34 = phi i8* [ %32, %31 ], [ %30, %29 ]
  %35 = tail call i8* @halide_string_to_string(i8* %34, i8* %17, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #10
  br i1 %13, label %36, label %37

36:                                               ; preds = %33
  tail call void @halide_error(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #10
  br label %43

37:                                               ; preds = %33
  %38 = ptrtoint i8* %35 to i64
  %39 = ptrtoint i8* %12 to i64
  %40 = add i64 %38, 1
  %41 = sub i64 %40, %39
  %42 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* null, i8* nonnull %12, i64 %41) #10
  tail call void @halide_print(i8* null, i8* nonnull %12) #10
  br label %43

43:                                               ; preds = %36, %37
  call void @free(i8* %12) #10
  ret void
}

declare extern_weak void @halide_error(i8*, i8*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind
define linkonce_odr dso_local i32 @"?store@HashMap@Internal@Runtime@Halide@@QEAAHPEAXPEBEH1_K@Z"(%"struct.Halide::Runtime::Internal::HashMap"* nonnull dereferenceable(2128) %0, i8* %1, i8* %2, i32 %3, i8* %4, i64 %5) local_unnamed_addr #6 comdat align 2 {
  %7 = sext i32 %3 to i64
  %8 = icmp eq i32 %3, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %6, %9
  %10 = phi i64 [ %17, %9 ], [ 0, %6 ]
  %11 = phi i32 [ %16, %9 ], [ 5381, %6 ]
  %12 = mul i32 %11, 33
  %13 = getelementptr inbounds i8, i8* %2, i64 %10
  %14 = load i8, i8* %13, align 1, !tbaa !40
  %15 = zext i8 %14 to i32
  %16 = add i32 %12, %15
  %17 = add nuw i64 %10, 1
  %18 = icmp eq i64 %17, %7
  br i1 %18, label %19, label %9, !llvm.loop !258

19:                                               ; preds = %9, %6
  %20 = phi i32 [ 5381, %6 ], [ %16, %9 ]
  %21 = and i32 %20, 255
  %22 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HashMap", %"struct.Halide::Runtime::Internal::HashMap"* %0, i64 0, i32 0
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull %22) #10
  %23 = zext i32 %21 to i64
  %24 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HashMap", %"struct.Halide::Runtime::Internal::HashMap"* %0, i64 0, i32 1, i64 %23
  %25 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %24, align 8, !tbaa !49
  %26 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %25, null
  br i1 %26, label %61, label %27

27:                                               ; preds = %19, %57
  %28 = phi %"struct.Halide::Runtime::Internal::CacheEntry"* [ %59, %57 ], [ %25, %19 ]
  %29 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %28, i64 0, i32 6
  %30 = load i32, i32* %29, align 8, !tbaa !259
  %31 = icmp eq i32 %30, %20
  br i1 %31, label %32, label %57

32:                                               ; preds = %27
  %33 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %28, i64 0, i32 4
  %34 = load i64, i64* %33, align 8, !tbaa !260
  %35 = icmp eq i64 %34, %7
  br i1 %35, label %36, label %57

36:                                               ; preds = %32
  %37 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %28, i64 0, i32 5
  %38 = load i8*, i8** %37, align 8, !tbaa !261
  %39 = tail call i32 @memcmp(i8* %38, i8* %2, i64 %7) #10
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %57

41:                                               ; preds = %36
  %42 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %28, i64 0, i32 8
  %43 = load i64, i64* %42, align 8, !tbaa !202
  %44 = icmp eq i64 %43, %5
  br i1 %44, label %47, label %45

45:                                               ; preds = %41
  tail call void @halide_print(i8* %1, i8* getelementptr inbounds ([132 x i8], [132 x i8]* @"??_C@_0IE@OEGJPCDB@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  tail call void @abort() #10
  %46 = load i64, i64* %42, align 8, !tbaa !202
  br label %47

47:                                               ; preds = %45, %41
  %48 = phi i64 [ %46, %45 ], [ %5, %41 ]
  %49 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HashMap", %"struct.Halide::Runtime::Internal::HashMap"* %0, i64 0, i32 8
  %50 = load void (i8*, i64)*, void (i8*, i64)** %49, align 8, !tbaa !160
  %51 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %28, i64 0, i32 9
  %52 = load i8*, i8** %51, align 8, !tbaa !203
  tail call void %50(i8* %52, i64 %48) #10
  %53 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HashMap", %"struct.Halide::Runtime::Internal::HashMap"* %0, i64 0, i32 7
  %54 = load void (i8*, i8*, i64)*, void (i8*, i8*, i64)** %53, align 8, !tbaa !159
  %55 = load i64, i64* %42, align 8, !tbaa !202
  %56 = load i8*, i8** %51, align 8, !tbaa !203
  tail call void %54(i8* %56, i8* %4, i64 %55) #10
  br label %130

57:                                               ; preds = %27, %32, %36
  %58 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %28, i64 0, i32 0
  %59 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %58, align 8, !tbaa !49
  %60 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %59, null
  br i1 %60, label %61, label %27, !llvm.loop !268

61:                                               ; preds = %57, %19
  %62 = tail call i8* @malloc(i64 72) #10
  %63 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HashMap", %"struct.Halide::Runtime::Internal::HashMap"* %0, i64 0, i32 7
  %64 = load void (i8*, i8*, i64)*, void (i8*, i8*, i64)** %63, align 8, !tbaa !159
  %65 = bitcast i8* %62 to %"struct.Halide::Runtime::Internal::CacheEntry"**
  %66 = bitcast i8* %62 to <2 x %"struct.Halide::Runtime::Internal::CacheEntry"*>*
  store <2 x %"struct.Halide::Runtime::Internal::CacheEntry"*> zeroinitializer, <2 x %"struct.Halide::Runtime::Internal::CacheEntry"*>* %66, align 8, !tbaa !49
  %67 = getelementptr inbounds i8, i8* %62, i64 16
  %68 = bitcast i8* %67 to %"struct.Halide::Runtime::Internal::CacheEntry"**
  store %"struct.Halide::Runtime::Internal::CacheEntry"* null, %"struct.Halide::Runtime::Internal::CacheEntry"** %68, align 8, !tbaa !264
  %69 = getelementptr inbounds i8, i8* %62, i64 32
  %70 = bitcast i8* %69 to i64*
  store i64 %7, i64* %70, align 8, !tbaa !260
  %71 = getelementptr inbounds i8, i8* %62, i64 48
  %72 = bitcast i8* %71 to i32*
  store i32 %20, i32* %72, align 8, !tbaa !259
  %73 = getelementptr inbounds i8, i8* %62, i64 52
  %74 = bitcast i8* %73 to i32*
  store i32 0, i32* %74, align 4, !tbaa !266
  %75 = add i64 %5, 7
  %76 = and i64 %75, -8
  %77 = add i64 %76, %7
  %78 = tail call i8* @malloc(i64 %77) #10
  %79 = getelementptr inbounds i8, i8* %62, i64 24
  %80 = bitcast i8* %79 to i8**
  store i8* %78, i8** %80, align 8, !tbaa !204
  %81 = icmp eq i8* %78, null
  br i1 %81, label %109, label %82

82:                                               ; preds = %61
  %83 = getelementptr inbounds i8, i8* %62, i64 64
  %84 = bitcast i8* %83 to i8**
  store i8* %78, i8** %84, align 8, !tbaa !203
  %85 = getelementptr inbounds i8, i8* %78, i64 %76
  %86 = getelementptr inbounds i8, i8* %62, i64 40
  %87 = bitcast i8* %86 to i8**
  store i8* %85, i8** %87, align 8, !tbaa !261
  %88 = load i64, i64* %70, align 8, !tbaa !260
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %105, label %90

90:                                               ; preds = %82
  %91 = load i8, i8* %2, align 1, !tbaa !40
  store i8 %91, i8* %85, align 1, !tbaa !40
  %92 = load i64, i64* %70, align 8, !tbaa !260
  %93 = icmp ugt i64 %92, 1
  br i1 %93, label %96, label %94, !llvm.loop !269

94:                                               ; preds = %96, %90
  %95 = load i8*, i8** %84, align 8, !tbaa !203
  br label %105

96:                                               ; preds = %90, %96
  %97 = phi i64 [ %102, %96 ], [ 1, %90 ]
  %98 = load i8*, i8** %87, align 8, !tbaa !261
  %99 = getelementptr inbounds i8, i8* %2, i64 %97
  %100 = load i8, i8* %99, align 1, !tbaa !40
  %101 = getelementptr inbounds i8, i8* %98, i64 %97
  store i8 %100, i8* %101, align 1, !tbaa !40
  %102 = add nuw i64 %97, 1
  %103 = load i64, i64* %70, align 8, !tbaa !260
  %104 = icmp ult i64 %102, %103
  br i1 %104, label %96, label %94, !llvm.loop !269

105:                                              ; preds = %82, %94
  %106 = phi i8* [ %95, %94 ], [ %78, %82 ]
  tail call void %64(i8* %106, i8* %4, i64 %5) #10
  %107 = getelementptr inbounds i8, i8* %62, i64 56
  %108 = bitcast i8* %107 to i64*
  store i64 %5, i64* %108, align 8, !tbaa !202
  br label %110

109:                                              ; preds = %61
  tail call void @halide_print(i8* %1, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @"??_C@_0GD@KIHFBKKG@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  tail call void @abort() #10
  br label %110

110:                                              ; preds = %105, %109
  %111 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HashMap", %"struct.Halide::Runtime::Internal::HashMap"* %0, i64 0, i32 6
  %112 = load i64, i64* %111, align 8, !tbaa !157
  %113 = add i64 %112, %5
  store i64 %113, i64* %111, align 8, !tbaa !157
  tail call void @"?prune@HashMap@Internal@Runtime@Halide@@QEAAXXZ"(%"struct.Halide::Runtime::Internal::HashMap"* nonnull dereferenceable(2128) %0) #11
  %114 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %24, align 8, !tbaa !49
  store %"struct.Halide::Runtime::Internal::CacheEntry"* %114, %"struct.Halide::Runtime::Internal::CacheEntry"** %65, align 8, !tbaa !200
  %115 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HashMap", %"struct.Halide::Runtime::Internal::HashMap"* %0, i64 0, i32 2
  %116 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %115, align 8, !tbaa !262
  store %"struct.Halide::Runtime::Internal::CacheEntry"* %116, %"struct.Halide::Runtime::Internal::CacheEntry"** %68, align 8, !tbaa !264
  %117 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %116, null
  br i1 %117, label %121, label %118

118:                                              ; preds = %110
  %119 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %116, i64 0, i32 1
  %120 = bitcast %"struct.Halide::Runtime::Internal::CacheEntry"** %119 to i8**
  store i8* %62, i8** %120, align 8, !tbaa !263
  br label %121

121:                                              ; preds = %118, %110
  %122 = bitcast %"struct.Halide::Runtime::Internal::CacheEntry"** %115 to i8**
  store i8* %62, i8** %122, align 8, !tbaa !262
  %123 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HashMap", %"struct.Halide::Runtime::Internal::HashMap"* %0, i64 0, i32 3
  %124 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %123, align 8, !tbaa !265
  %125 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %124, null
  br i1 %125, label %126, label %128

126:                                              ; preds = %121
  %127 = bitcast %"struct.Halide::Runtime::Internal::CacheEntry"** %123 to i8**
  store i8* %62, i8** %127, align 8, !tbaa !265
  br label %128

128:                                              ; preds = %126, %121
  %129 = bitcast %"struct.Halide::Runtime::Internal::CacheEntry"** %24 to i8**
  store i8* %62, i8** %129, align 8, !tbaa !49
  store i32 1, i32* %74, align 4, !tbaa !266
  br label %130

130:                                              ; preds = %47, %128
  tail call void @halide_mutex_unlock(%struct.halide_mutex* nonnull %22) #10
  ret i32 0
}

; Function Attrs: inlinehint nounwind mustprogress
define linkonce_odr dso_local void @"?prune@HashMap@Internal@Runtime@Halide@@QEAAXXZ"(%"struct.Halide::Runtime::Internal::HashMap"* nonnull dereferenceable(2128) %0) local_unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HashMap", %"struct.Halide::Runtime::Internal::HashMap"* %0, i64 0, i32 3
  %3 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %2, align 8, !tbaa !265
  %4 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HashMap", %"struct.Halide::Runtime::Internal::HashMap"* %0, i64 0, i32 6
  %5 = load i64, i64* %4, align 8, !tbaa !157
  %6 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HashMap", %"struct.Halide::Runtime::Internal::HashMap"* %0, i64 0, i32 5
  %7 = load i64, i64* %6, align 8, !tbaa !270
  %8 = icmp sgt i64 %5, %7
  %9 = icmp ne %"struct.Halide::Runtime::Internal::CacheEntry"* %3, null
  %10 = and i1 %9, %8
  br i1 %10, label %11, label %85

11:                                               ; preds = %1
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HashMap", %"struct.Halide::Runtime::Internal::HashMap"* %0, i64 0, i32 2
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HashMap", %"struct.Halide::Runtime::Internal::HashMap"* %0, i64 0, i32 8
  br label %14

14:                                               ; preds = %11, %79
  %15 = phi i64 [ %7, %11 ], [ %80, %79 ]
  %16 = phi i64 [ %5, %11 ], [ %81, %79 ]
  %17 = phi %"struct.Halide::Runtime::Internal::CacheEntry"* [ %3, %11 ], [ %19, %79 ]
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %17, i64 0, i32 1
  %19 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %18, align 8, !tbaa !263
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %17, i64 0, i32 7
  %21 = load i32, i32* %20, align 4, !tbaa !266
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %79

23:                                               ; preds = %14
  %24 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %17, i64 0, i32 6
  %25 = load i32, i32* %24, align 8, !tbaa !259
  %26 = and i32 %25, 255
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HashMap", %"struct.Halide::Runtime::Internal::HashMap"* %0, i64 0, i32 1, i64 %27
  %29 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %28, align 8, !tbaa !49
  %30 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %29, %17
  br i1 %30, label %31, label %34

31:                                               ; preds = %23
  %32 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %17, i64 0, i32 0
  %33 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %32, align 8, !tbaa !200
  store %"struct.Halide::Runtime::Internal::CacheEntry"* %33, %"struct.Halide::Runtime::Internal::CacheEntry"** %28, align 8, !tbaa !49
  br label %46

34:                                               ; preds = %23, %37
  %35 = phi %"struct.Halide::Runtime::Internal::CacheEntry"* [ %39, %37 ], [ %29, %23 ]
  %36 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %35, i64 0, i32 0
  %39 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %38, align 8, !tbaa !200
  %40 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %39, %17
  br i1 %40, label %42, label %34, !llvm.loop !271

41:                                               ; preds = %34
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"??_C@_0HH@BADGLHLC@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  tail call void @abort() #10
  br label %42

42:                                               ; preds = %37, %41
  %43 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %17, i64 0, i32 0
  %44 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %43, align 8, !tbaa !200
  %45 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %35, i64 0, i32 0
  store %"struct.Halide::Runtime::Internal::CacheEntry"* %44, %"struct.Halide::Runtime::Internal::CacheEntry"** %45, align 8, !tbaa !200
  br label %46

46:                                               ; preds = %42, %31
  %47 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %2, align 8, !tbaa !265
  %48 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %47, %17
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store %"struct.Halide::Runtime::Internal::CacheEntry"* %19, %"struct.Halide::Runtime::Internal::CacheEntry"** %2, align 8, !tbaa !265
  br label %50

50:                                               ; preds = %49, %46
  %51 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %19, null
  br i1 %51, label %56, label %52

52:                                               ; preds = %50
  %53 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %17, i64 0, i32 2
  %54 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %53, align 8, !tbaa !264
  %55 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %19, i64 0, i32 2
  store %"struct.Halide::Runtime::Internal::CacheEntry"* %54, %"struct.Halide::Runtime::Internal::CacheEntry"** %55, align 8, !tbaa !264
  br label %56

56:                                               ; preds = %52, %50
  %57 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %12, align 8, !tbaa !262
  %58 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %57, %17
  %59 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %17, i64 0, i32 2
  %60 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %59, align 8, !tbaa !264
  br i1 %58, label %61, label %62

61:                                               ; preds = %56
  store %"struct.Halide::Runtime::Internal::CacheEntry"* %60, %"struct.Halide::Runtime::Internal::CacheEntry"** %12, align 8, !tbaa !262
  br label %62

62:                                               ; preds = %56, %61
  %63 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %60, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %62
  %65 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %17, i64 0, i32 2
  store %"struct.Halide::Runtime::Internal::CacheEntry"* %19, %"struct.Halide::Runtime::Internal::CacheEntry"** %65, align 8, !tbaa !264
  br label %66

66:                                               ; preds = %64, %62
  %67 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %17, i64 0, i32 8
  %68 = load i64, i64* %67, align 8, !tbaa !202
  %69 = load i64, i64* %4, align 8, !tbaa !157
  %70 = sub i64 %69, %68
  store i64 %70, i64* %4, align 8, !tbaa !157
  %71 = load void (i8*, i64)*, void (i8*, i64)** %13, align 8, !tbaa !160
  %72 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %17, i64 0, i32 9
  %73 = load i8*, i8** %72, align 8, !tbaa !203
  tail call void %71(i8* %73, i64 %68) #10
  %74 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %17, i64 0, i32 3
  %75 = load i8*, i8** %74, align 8, !tbaa !204
  tail call void @free(i8* %75) #10
  %76 = bitcast %"struct.Halide::Runtime::Internal::CacheEntry"* %17 to i8*
  tail call void @free(i8* nonnull %76) #10
  %77 = load i64, i64* %4, align 8, !tbaa !157
  %78 = load i64, i64* %6, align 8, !tbaa !270
  br label %79

79:                                               ; preds = %66, %14
  %80 = phi i64 [ %78, %66 ], [ %15, %14 ]
  %81 = phi i64 [ %77, %66 ], [ %16, %14 ]
  %82 = icmp sgt i64 %81, %80
  %83 = icmp ne %"struct.Halide::Runtime::Internal::CacheEntry"* %19, null
  %84 = and i1 %83, %82
  br i1 %84, label %14, label %85, !llvm.loop !272

85:                                               ; preds = %79, %1
  ret void
}

declare extern_weak i8* @halide_type_to_string(i8*, i8*, %struct.halide_type_t*) local_unnamed_addr #2

; Function Attrs: nounwind mustprogress
define linkonce_odr dso_local i1 @"?insert@?$GPUCompilationCache@PEAUhalide_d3d12compute_device@@PEAUd3d12_library@D3D12Compute@Internal@Runtime@Halide@@@Internal@Halide@@QEAA_NAEBUCachedCompilation@123@@Z"(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(32) %0, %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation"* nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 {
  %3 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i64 0, i32 1
  %4 = load i32, i32* %3, align 8, !tbaa !171
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = tail call i1 @"?resize_table@?$GPUCompilationCache@PEAUhalide_d3d12compute_device@@PEAUd3d12_library@D3D12Compute@Internal@Runtime@Halide@@@Internal@Halide@@QEAA_NH@Z"(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(32) %0, i32 7) #11
  br i1 %7, label %8, label %67

8:                                                ; preds = %6
  %9 = load i32, i32* %3, align 8, !tbaa !171
  br label %10

10:                                               ; preds = %8, %2
  %11 = phi i32 [ %9, %8 ], [ %4, %2 ]
  %12 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i64 0, i32 3
  %13 = load i32, i32* %12, align 8, !tbaa !199
  %14 = add nsw i32 %13, 1
  %15 = sitofp i32 %14 to float
  %16 = shl nuw i32 1, %11
  %17 = sitofp i32 %16 to float
  %18 = fmul float %17, 5.000000e-01
  %19 = fcmp olt float %18, %15
  br i1 %19, label %20, label %28

20:                                               ; preds = %10
  %21 = add nsw i32 %11, 1
  %22 = tail call i1 @"?resize_table@?$GPUCompilationCache@PEAUhalide_d3d12compute_device@@PEAUd3d12_library@D3D12Compute@Internal@Runtime@Halide@@@Internal@Halide@@QEAA_NH@Z"(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(32) %0, i32 %21) #11
  br i1 %22, label %23, label %67

23:                                               ; preds = %20
  %24 = load i32, i32* %12, align 8, !tbaa !199
  %25 = load i32, i32* %3, align 8, !tbaa !171
  %26 = add nsw i32 %24, 1
  %27 = shl nuw i32 1, %25
  br label %28

28:                                               ; preds = %23, %10
  %29 = phi i32 [ %27, %23 ], [ %16, %10 ]
  %30 = phi i32 [ %26, %23 ], [ %14, %10 ]
  %31 = phi i32 [ %25, %23 ], [ %11, %10 ]
  store i32 %30, i32* %12, align 8, !tbaa !199
  %32 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation"* %1, i64 0, i32 2
  %33 = load i32, i32* %32, align 8, !tbaa !174
  %34 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation"* %1, i64 0, i32 0
  %35 = load %struct.halide_d3d12compute_device*, %struct.halide_d3d12compute_device** %34, align 8, !tbaa !176
  %36 = ptrtoint %struct.halide_d3d12compute_device* %35 to i64
  %37 = zext i32 %33 to i64
  %38 = add i64 %36, %37
  %39 = mul i64 %38, -7046029254386353131
  %40 = sub i32 64, %31
  %41 = zext i32 %40 to i64
  %42 = lshr i64 %39, %41
  %43 = icmp eq i32 %31, 31
  br i1 %43, label %66, label %44

44:                                               ; preds = %28
  %45 = add nsw i32 %29, -1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i64 0, i32 2
  %48 = load %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation"** %47, align 8, !tbaa !172
  %49 = icmp sgt i32 %29, 1
  %50 = select i1 %49, i32 %29, i32 1
  %51 = zext i32 %50 to i64
  br label %54

52:                                               ; preds = %54
  %53 = icmp eq i64 %61, %51
  br i1 %53, label %66, label %54, !llvm.loop !273

54:                                               ; preds = %44, %52
  %55 = phi i64 [ 0, %44 ], [ %61, %52 ]
  %56 = add i64 %42, %55
  %57 = and i64 %56, %46
  %58 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation"* %48, i64 %57, i32 2
  %59 = load i32, i32* %58, align 8, !tbaa !174
  %60 = icmp ult i32 %59, 2
  %61 = add nuw nsw i64 %55, 1
  br i1 %60, label %62, label %52

62:                                               ; preds = %54
  %63 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation"* %48, i64 %57
  %64 = bitcast %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation"* %63 to i8*
  %65 = bitcast %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation"* %1 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %64, i8* nonnull align 8 dereferenceable(24) %65, i64 24, i1 false), !tbaa.struct !274
  br label %67

66:                                               ; preds = %52, %28
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @"??_C@_0GM@GIODNIAA@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  tail call void @abort() #10
  br label %67

67:                                               ; preds = %62, %66, %20, %6
  %68 = phi i1 [ false, %6 ], [ false, %20 ], [ true, %62 ], [ false, %66 ]
  ret i1 %68
}

; Function Attrs: nounwind mustprogress
define linkonce_odr dso_local i1 @"?resize_table@?$GPUCompilationCache@PEAUhalide_d3d12compute_device@@PEAUd3d12_library@D3D12Compute@Internal@Runtime@Halide@@@Internal@Halide@@QEAA_NH@Z"(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(32) %0, i32 %1) local_unnamed_addr #0 comdat align 2 {
  %3 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i64 0, i32 1
  %4 = load i32, i32* %3, align 8, !tbaa !171
  %5 = icmp eq i32 %4, %1
  br i1 %5, label %41, label %6

6:                                                ; preds = %2
  %7 = shl nuw i32 1, %1
  %8 = shl nuw i32 1, %4
  %9 = sext i32 %7 to i64
  %10 = mul nsw i64 %9, 24
  %11 = tail call i8* @malloc(i64 %10) #10
  %12 = icmp eq i8* %11, null
  br i1 %12, label %41, label %13

13:                                               ; preds = %6
  %14 = tail call i8* @memset(i8* nonnull %11, i32 0, i64 %10) #10
  %15 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i64 0, i32 2
  %16 = load %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation"** %15, align 8, !tbaa !172
  %17 = bitcast %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation"** %15 to i8**
  store i8* %11, i8** %17, align 8, !tbaa !172
  store i32 %1, i32* %3, align 8, !tbaa !171
  %18 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i64 0, i32 3
  %19 = load i32, i32* %18, align 8, !tbaa !199
  %20 = icmp sgt i32 %19, 0
  %21 = icmp ne i32 %4, 31
  %22 = and i1 %20, %21
  br i1 %22, label %23, label %39

23:                                               ; preds = %13
  %24 = icmp sgt i32 %8, 1
  %25 = select i1 %24, i32 %8, i32 1
  %26 = zext i32 %25 to i64
  br label %27

27:                                               ; preds = %23, %36
  %28 = phi i64 [ 0, %23 ], [ %37, %36 ]
  %29 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation"* %16, i64 %28, i32 2
  %30 = load i32, i32* %29, align 8, !tbaa !174
  %31 = icmp ult i32 %30, 2
  br i1 %31, label %36, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation"* %16, i64 %28
  %34 = tail call i1 @"?insert@?$GPUCompilationCache@PEAUhalide_d3d12compute_device@@PEAUd3d12_library@D3D12Compute@Internal@Runtime@Halide@@@Internal@Halide@@QEAA_NAEBUCachedCompilation@123@@Z"(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(32) %0, %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation"* nonnull align 8 dereferenceable(24) %33) #11
  br i1 %34, label %36, label %35

35:                                               ; preds = %32
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @"??_C@_0GO@DFIAIKAP@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #10
  tail call void @abort() #10
  br label %36

36:                                               ; preds = %27, %32, %35
  %37 = add nuw nsw i64 %28, 1
  %38 = icmp eq i64 %37, %26
  br i1 %38, label %39, label %27, !llvm.loop !275

39:                                               ; preds = %36, %13
  %40 = bitcast %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation"* %16 to i8*
  tail call void @free(i8* %40) #10
  br label %41

41:                                               ; preds = %2, %39, %6
  %42 = phi i1 [ false, %6 ], [ true, %39 ], [ true, %2 ]
  ret i1 %42
}

; Function Attrs: nofree nounwind willreturn writeonly
define internal void @_GLOBAL__sub_I_windows_d3d12compute_arm.cpp() #8 {
  tail call void @llvm.memset.p0i8.i64(i8* nonnull align 16 dereferenceable(96) bitcast (%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* @"?upload@D3D12Compute@Internal@Runtime@Halide@@3Ud3d12_buffer@1234@A" to i8*), i8 0, i64 96, i1 false) #12
  store i8 0, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* @"?upload@D3D12Compute@Internal@Runtime@Halide@@3Ud3d12_buffer@1234@A", i64 0, i32 9, i32 0), align 8, !tbaa !107
  store i8 0, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* @"?upload@D3D12Compute@Internal@Runtime@Halide@@3Ud3d12_buffer@1234@A", i64 0, i32 9, i32 1), align 1, !tbaa !26
  store i16 0, i16* getelementptr inbounds (%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* @"?upload@D3D12Compute@Internal@Runtime@Halide@@3Ud3d12_buffer@1234@A", i64 0, i32 9, i32 2), align 2, !tbaa !108
  tail call void @llvm.memset.p0i8.i64(i8* nonnull align 16 dereferenceable(96) bitcast (%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* @"?readback@D3D12Compute@Internal@Runtime@Halide@@3Ud3d12_buffer@1234@A" to i8*), i8 0, i64 96, i1 false) #12
  store i8 0, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* @"?readback@D3D12Compute@Internal@Runtime@Halide@@3Ud3d12_buffer@1234@A", i64 0, i32 9, i32 0), align 8, !tbaa !107
  store i8 0, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* @"?readback@D3D12Compute@Internal@Runtime@Halide@@3Ud3d12_buffer@1234@A", i64 0, i32 9, i32 1), align 1, !tbaa !26
  store i16 0, i16* getelementptr inbounds (%"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer", %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_buffer"* @"?readback@D3D12Compute@Internal@Runtime@Halide@@3Ud3d12_buffer@1234@A", i64 0, i32 9, i32 2), align 2, !tbaa !108
  tail call void @llvm.memset.p0i8.i64(i8* nonnull align 16 dereferenceable(960) bitcast ([8 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame"]* @"?frame_pool@D3D12Compute@Internal@Runtime@Halide@@3PAUd3d12_frame@1234@A" to i8*), i8 0, i64 960, i1 false) #12
  store i8 0, i8* getelementptr inbounds ([8 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame"], [8 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame"]* @"?frame_pool@D3D12Compute@Internal@Runtime@Halide@@3PAUd3d12_frame@1234@A", i64 0, i64 0, i32 2, i32 9, i32 0), align 8, !tbaa !107
  store i8 0, i8* getelementptr inbounds ([8 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame"], [8 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame"]* @"?frame_pool@D3D12Compute@Internal@Runtime@Halide@@3PAUd3d12_frame@1234@A", i64 0, i64 0, i32 2, i32 9, i32 1), align 1, !tbaa !26
  store i16 0, i16* getelementptr inbounds ([8 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame"], [8 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame"]* @"?frame_pool@D3D12Compute@Internal@Runtime@Halide@@3PAUd3d12_frame@1234@A", i64 0, i64 0, i32 2, i32 9, i32 2), align 2, !tbaa !108
  store i8 0, i8* getelementptr inbounds ([8 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame"], [8 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame"]* @"?frame_pool@D3D12Compute@Internal@Runtime@Halide@@3PAUd3d12_frame@1234@A", i64 0, i64 1, i32 2, i32 9, i32 0), align 16, !tbaa !107
  store i8 0, i8* getelementptr inbounds ([8 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame"], [8 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame"]* @"?frame_pool@D3D12Compute@Internal@Runtime@Halide@@3PAUd3d12_frame@1234@A", i64 0, i64 1, i32 2, i32 9, i32 1), align 1, !tbaa !26
  store i16 0, i16* getelementptr inbounds ([8 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame"], [8 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame"]* @"?frame_pool@D3D12Compute@Internal@Runtime@Halide@@3PAUd3d12_frame@1234@A", i64 0, i64 1, i32 2, i32 9, i32 2), align 2, !tbaa !108
  store i8 0, i8* getelementptr inbounds ([8 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame"], [8 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame"]* @"?frame_pool@D3D12Compute@Internal@Runtime@Halide@@3PAUd3d12_frame@1234@A", i64 0, i64 2, i32 2, i32 9, i32 0), align 8, !tbaa !107
  store i8 0, i8* getelementptr inbounds ([8 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame"], [8 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame"]* @"?frame_pool@D3D12Compute@Internal@Runtime@Halide@@3PAUd3d12_frame@1234@A", i64 0, i64 2, i32 2, i32 9, i32 1), align 1, !tbaa !26
  store i16 0, i16* getelementptr inbounds ([8 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame"], [8 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame"]* @"?frame_pool@D3D12Compute@Internal@Runtime@Halide@@3PAUd3d12_frame@1234@A", i64 0, i64 2, i32 2, i32 9, i32 2), align 2, !tbaa !108
  store i8 0, i8* getelementptr inbounds ([8 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame"], [8 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame"]* @"?frame_pool@D3D12Compute@Internal@Runtime@Halide@@3PAUd3d12_frame@1234@A", i64 0, i64 3, i32 2, i32 9, i32 0), align 16, !tbaa !107
  store i8 0, i8* getelementptr inbounds ([8 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame"], [8 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame"]* @"?frame_pool@D3D12Compute@Internal@Runtime@Halide@@3PAUd3d12_frame@1234@A", i64 0, i64 3, i32 2, i32 9, i32 1), align 1, !tbaa !26
  store i16 0, i16* getelementptr inbounds ([8 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame"], [8 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame"]* @"?frame_pool@D3D12Compute@Internal@Runtime@Halide@@3PAUd3d12_frame@1234@A", i64 0, i64 3, i32 2, i32 9, i32 2), align 2, !tbaa !108
  store i8 0, i8* getelementptr inbounds ([8 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame"], [8 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame"]* @"?frame_pool@D3D12Compute@Internal@Runtime@Halide@@3PAUd3d12_frame@1234@A", i64 0, i64 4, i32 2, i32 9, i32 0), align 8, !tbaa !107
  store i8 0, i8* getelementptr inbounds ([8 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame"], [8 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame"]* @"?frame_pool@D3D12Compute@Internal@Runtime@Halide@@3PAUd3d12_frame@1234@A", i64 0, i64 4, i32 2, i32 9, i32 1), align 1, !tbaa !26
  store i16 0, i16* getelementptr inbounds ([8 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame"], [8 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame"]* @"?frame_pool@D3D12Compute@Internal@Runtime@Halide@@3PAUd3d12_frame@1234@A", i64 0, i64 4, i32 2, i32 9, i32 2), align 2, !tbaa !108
  store i8 0, i8* getelementptr inbounds ([8 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame"], [8 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame"]* @"?frame_pool@D3D12Compute@Internal@Runtime@Halide@@3PAUd3d12_frame@1234@A", i64 0, i64 5, i32 2, i32 9, i32 0), align 16, !tbaa !107
  store i8 0, i8* getelementptr inbounds ([8 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame"], [8 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame"]* @"?frame_pool@D3D12Compute@Internal@Runtime@Halide@@3PAUd3d12_frame@1234@A", i64 0, i64 5, i32 2, i32 9, i32 1), align 1, !tbaa !26
  store i16 0, i16* getelementptr inbounds ([8 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame"], [8 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame"]* @"?frame_pool@D3D12Compute@Internal@Runtime@Halide@@3PAUd3d12_frame@1234@A", i64 0, i64 5, i32 2, i32 9, i32 2), align 2, !tbaa !108
  store i8 0, i8* getelementptr inbounds ([8 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame"], [8 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame"]* @"?frame_pool@D3D12Compute@Internal@Runtime@Halide@@3PAUd3d12_frame@1234@A", i64 0, i64 6, i32 2, i32 9, i32 0), align 8, !tbaa !107
  store i8 0, i8* getelementptr inbounds ([8 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame"], [8 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame"]* @"?frame_pool@D3D12Compute@Internal@Runtime@Halide@@3PAUd3d12_frame@1234@A", i64 0, i64 6, i32 2, i32 9, i32 1), align 1, !tbaa !26
  store i16 0, i16* getelementptr inbounds ([8 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame"], [8 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame"]* @"?frame_pool@D3D12Compute@Internal@Runtime@Halide@@3PAUd3d12_frame@1234@A", i64 0, i64 6, i32 2, i32 9, i32 2), align 2, !tbaa !108
  store i8 0, i8* getelementptr inbounds ([8 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame"], [8 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame"]* @"?frame_pool@D3D12Compute@Internal@Runtime@Halide@@3PAUd3d12_frame@1234@A", i64 0, i64 7, i32 2, i32 9, i32 0), align 16, !tbaa !107
  store i8 0, i8* getelementptr inbounds ([8 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame"], [8 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame"]* @"?frame_pool@D3D12Compute@Internal@Runtime@Halide@@3PAUd3d12_frame@1234@A", i64 0, i64 7, i32 2, i32 9, i32 1), align 1, !tbaa !26
  store i16 0, i16* getelementptr inbounds ([8 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame"], [8 x %"struct.Halide::Runtime::Internal::D3D12Compute::d3d12_frame"]* @"?frame_pool@D3D12Compute@Internal@Runtime@Halide@@3PAUd3d12_frame@1234@A", i64 0, i64 7, i32 2, i32 9, i32 2), align 2, !tbaa !108
  store i32 0, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@D3D12Compute@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PEAUhalide_d3d12compute_device@@PEAUd3d12_library@D3D12Compute@Internal@Runtime@Halide@@@24@A", i64 0, i32 1), align 8, !tbaa !171
  store %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation"* null, %"struct.Halide::Internal::GPUCompilationCache<halide_d3d12compute_device *, Halide::Runtime::Internal::D3D12Compute::d3d12_library *>::CachedCompilation"** getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@D3D12Compute@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PEAUhalide_d3d12compute_device@@PEAUd3d12_library@D3D12Compute@Internal@Runtime@Halide@@@24@A", i64 0, i32 2), align 8, !tbaa !172
  store <2 x i32> <i32 0, i32 2>, <2 x i32>* bitcast (i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @"?compilation_cache@D3D12Compute@Internal@Runtime@Halide@@3V?$GPUCompilationCache@PEAUhalide_d3d12compute_device@@PEAUd3d12_library@D3D12Compute@Internal@Runtime@Halide@@@24@A", i64 0, i32 3) to <2 x i32>*), align 8, !tbaa !77
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctpop.i64(i64) #9

attributes #0 = { nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nofree nosync nounwind willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #4 = { nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind willreturn mustprogress "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { inlinehint nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { inlinehint nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nofree nounwind willreturn writeonly "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nobuiltin nounwind "no-builtins" }
attributes #11 = { nobuiltin "no-builtins" }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!6 = !{!7, !7, i64 0}
!7 = !{!"long long", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C++ TBAA"}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!13, !7, i64 0}
!13 = !{!"?AUdevice_copy@Internal@Runtime@Halide@@", !7, i64 0, !7, i64 8, !7, i64 16, !8, i64 24, !8, i64 152, !8, i64 280, !7, i64 408}
!14 = !{!13, !7, i64 8}
!15 = !{!13, !7, i64 408}
!16 = distinct !{!16, !11}
!17 = !{!13, !7, i64 16}
!18 = !{!19, !20, i64 16}
!19 = !{!"?AUhalide_buffer_t@@", !7, i64 0, !20, i64 8, !20, i64 16, !7, i64 24, !21, i64 32, !24, i64 36, !20, i64 40, !20, i64 48}
!20 = !{!"any pointer", !8, i64 0}
!21 = !{!"?AUhalide_type_t@@", !22, i64 0, !8, i64 1, !23, i64 2}
!22 = !{!"?AW4halide_type_code_t@@", !8, i64 0}
!23 = !{!"short", !8, i64 0}
!24 = !{!"int", !8, i64 0}
!25 = !{!19, !7, i64 0}
!26 = !{!21, !8, i64 1}
!27 = !{!19, !24, i64 36}
!28 = !{!19, !20, i64 40}
!29 = !{!30, !24, i64 8}
!30 = !{!"?AUhalide_dimension_t@@", !24, i64 0, !24, i64 4, !24, i64 8, !24, i64 12}
!31 = !{!30, !24, i64 0}
!32 = distinct !{!32, !11}
!33 = distinct !{!33, !11}
!34 = !{!30, !24, i64 4}
!35 = distinct !{!35, !11}
!36 = distinct !{!36, !11}
!37 = distinct !{!37, !11, !38}
!38 = !{!"llvm.loop.peeled.count", i32 7}
!39 = !{i64 0, i64 8, !6, i64 8, i64 8, !6, i64 16, i64 8, !6, i64 24, i64 128, !40, i64 152, i64 128, !40, i64 280, i64 128, !40, i64 408, i64 8, !6}
!40 = !{!8, !8, i64 0}
!41 = !{!42, !20, i64 24}
!42 = !{!"?AV?$Printer@$00$0EAA@@?A0x2B71E647@Internal@Runtime@Halide@@", !20, i64 0, !20, i64 8, !20, i64 16, !20, i64 24, !43, i64 32, !8, i64 33}
!43 = !{!"bool", !8, i64 0}
!44 = !{!42, !43, i64 32}
!45 = !{!42, !20, i64 0}
!46 = !{!42, !20, i64 8}
!47 = !{!42, !20, i64 16}
!48 = !{i8 0, i8 2}
!49 = !{!20, !20, i64 0}
!50 = !{!51, !51, i64 0}
!51 = !{!"vtable pointer", !9, i64 0}
!52 = !{!23, !23, i64 0}
!53 = distinct !{!53, !11}
!54 = !{!55, !20, i64 0}
!55 = !{!"?AUd3d12_buffer@D3D12Compute@Internal@Runtime@Halide@@", !20, i64 0, !24, i64 8, !24, i64 12, !24, i64 16, !24, i64 20, !24, i64 24, !56, i64 28, !57, i64 32, !58, i64 36, !21, i64 40, !20, i64 48, !43, i64 56, !20, i64 64, !20, i64 72, !7, i64 80, !7, i64 88}
!56 = !{!"?AW4DXGI_FORMAT@@", !8, i64 0}
!57 = !{!"?AW4D3D12_RESOURCE_STATES@@", !8, i64 0}
!58 = !{!"?AW4<unnamed-type-type>@d3d12_buffer@D3D12Compute@Internal@Runtime@Halide@@", !8, i64 0}
!59 = !{!55, !24, i64 16}
!60 = !{!55, !24, i64 24}
!61 = distinct !{!61, !11}
!62 = distinct !{!62, !11}
!63 = !{!55, !24, i64 12}
!64 = !{!19, !23, i64 34}
!65 = !{!55, !24, i64 20}
!66 = !{i64 0, i64 1, !67, i64 1, i64 1, !40, i64 2, i64 2, !52}
!67 = !{!22, !22, i64 0}
!68 = !{!56, !56, i64 0}
!69 = !{!55, !56, i64 28}
!70 = !{!19, !20, i64 8}
!71 = !{!72, !20, i64 120}
!72 = !{!"?AUhalide_device_interface_t@@", !20, i64 0, !20, i64 8, !20, i64 16, !20, i64 24, !20, i64 32, !20, i64 40, !20, i64 48, !20, i64 56, !20, i64 64, !20, i64 72, !20, i64 80, !20, i64 88, !20, i64 96, !20, i64 104, !20, i64 112, !20, i64 120}
!73 = !{!74, !20, i64 0}
!74 = !{!"?AUhalide_device_interface_impl_t@@", !20, i64 0, !20, i64 8, !20, i64 16, !20, i64 24, !20, i64 32, !20, i64 40, !20, i64 48, !20, i64 56, !20, i64 64, !20, i64 72, !20, i64 80, !20, i64 88, !20, i64 96, !20, i64 104, !20, i64 112, !20, i64 120}
!75 = !{!74, !20, i64 8}
!76 = !{i64 0, i64 4, !77, i64 8, i64 8, !49, i64 0, i64 4, !77, i64 4, i64 4, !77, i64 8, i64 4, !77, i64 0, i64 4, !77, i64 4, i64 4, !77, i64 16, i64 4, !78}
!77 = !{!24, !24, i64 0}
!78 = !{!79, !79, i64 0}
!79 = !{!"?AW4D3D12_SHADER_VISIBILITY@@", !8, i64 0}
!80 = !{i64 0, i64 4, !77}
!81 = !{!82, !24, i64 0}
!82 = !{!"?AUD3D12_ROOT_SIGNATURE_DESC@@", !24, i64 0, !20, i64 8, !24, i64 16, !20, i64 24, !83, i64 32}
!83 = !{!"?AW4D3D12_ROOT_SIGNATURE_FLAGS@@", !8, i64 0}
!84 = !{!82, !20, i64 8}
!85 = !{!82, !24, i64 16}
!86 = !{!82, !20, i64 24}
!87 = !{!82, !83, i64 32}
!88 = !{!89, !20, i64 0}
!89 = !{!"?AU?$halide_d3d12_deep_wrapper@UID3D12GraphicsCommandList@@@@", !20, i64 0}
!90 = !{!91, !92, i64 0}
!91 = !{!"?AUD3D12_RESOURCE_DESC@@", !92, i64 0, !7, i64 8, !7, i64 16, !24, i64 24, !23, i64 28, !23, i64 30, !56, i64 32, !93, i64 36, !94, i64 44, !95, i64 48}
!92 = !{!"?AW4D3D12_RESOURCE_DIMENSION@@", !8, i64 0}
!93 = !{!"?AUDXGI_SAMPLE_DESC@@", !24, i64 0, !24, i64 4}
!94 = !{!"?AW4D3D12_TEXTURE_LAYOUT@@", !8, i64 0}
!95 = !{!"?AW4D3D12_RESOURCE_FLAGS@@", !8, i64 0}
!96 = !{!91, !7, i64 8}
!97 = !{!91, !7, i64 16}
!98 = !{!91, !24, i64 24}
!99 = !{!91, !23, i64 28}
!100 = !{!91, !23, i64 30}
!101 = !{!91, !95, i64 48}
!102 = !{!103, !104, i64 0}
!103 = !{!"?AUD3D12_HEAP_PROPERTIES@@", !104, i64 0, !105, i64 4, !106, i64 8, !24, i64 12, !24, i64 16}
!104 = !{!"?AW4D3D12_HEAP_TYPE@@", !8, i64 0}
!105 = !{!"?AW4D3D12_CPU_PAGE_PROPERTY@@", !8, i64 0}
!106 = !{!"?AW4D3D12_MEMORY_POOL@@", !8, i64 0}
!107 = !{!21, !22, i64 0}
!108 = !{!21, !23, i64 2}
!109 = !{!55, !24, i64 8}
!110 = !{!55, !57, i64 32}
!111 = !{!55, !58, i64 36}
!112 = !{!55, !43, i64 56}
!113 = !{!55, !20, i64 64}
!114 = !{!55, !7, i64 88}
!115 = !{!55, !20, i64 72}
!116 = !{!117, !7, i64 0}
!117 = !{!"?AUD3D12_RANGE@@", !7, i64 0, !7, i64 8}
!118 = !{!117, !7, i64 8}
!119 = !{i64 0, i64 8, !49, i64 8, i64 4, !77, i64 12, i64 4, !77, i64 16, i64 4, !77, i64 20, i64 4, !77, i64 24, i64 4, !77, i64 28, i64 4, !68, i64 32, i64 4, !120, i64 36, i64 4, !121, i64 40, i64 1, !67, i64 41, i64 1, !40, i64 42, i64 2, !52, i64 48, i64 8, !49, i64 56, i64 1, !122, i64 64, i64 8, !49, i64 72, i64 8, !49, i64 80, i64 8, !6, i64 88, i64 8, !6}
!120 = !{!57, !57, i64 0}
!121 = !{!58, !58, i64 0}
!122 = !{!43, !43, i64 0}
!123 = !{!124, !125, i64 0}
!124 = !{!"?AUD3D12_QUERY_HEAP_DESC@@", !125, i64 0, !24, i64 4, !24, i64 8}
!125 = !{!"?AW4D3D12_QUERY_HEAP_TYPE@@", !8, i64 0}
!126 = !{!124, !24, i64 4}
!127 = !{!124, !24, i64 8}
!128 = !{!129, !20, i64 104}
!129 = !{!"?AUd3d12_profiler@D3D12Compute@Internal@Runtime@Halide@@", !55, i64 0, !7, i64 96, !20, i64 104, !24, i64 112, !24, i64 116}
!130 = !{!129, !7, i64 96}
!131 = !{!129, !24, i64 112}
!132 = !{!129, !24, i64 116}
!133 = !{!129, !20, i64 0}
!134 = !{!135, !7, i64 0}
!135 = !{!"?AUD3D12_CONSTANT_BUFFER_VIEW_DESC@@", !7, i64 0, !24, i64 8}
!136 = !{!135, !24, i64 8}
!137 = !{!138, !24, i64 72}
!138 = !{!"?AUd3d12_binder@D3D12Compute@Internal@Runtime@Halide@@", !20, i64 0, !139, i64 8, !140, i64 16, !8, i64 24, !8, i64 48, !24, i64 72}
!139 = !{!"?AUD3D12_CPU_DESCRIPTOR_HANDLE@@", !7, i64 0}
!140 = !{!"?AUD3D12_GPU_DESCRIPTOR_HANDLE@@", !7, i64 0}
!141 = !{!139, !7, i64 0}
!142 = !{!143, !56, i64 0}
!143 = !{!"?AUD3D12_UNORDERED_ACCESS_VIEW_DESC@@", !56, i64 0, !144, i64 4, !8, i64 8}
!144 = !{!"?AW4D3D12_UAV_DIMENSION@@", !8, i64 0}
!145 = !{!143, !144, i64 4}
!146 = !{!147, !20, i64 0}
!147 = !{!"?AVD3D12ContextHolder@D3D12Compute@Internal@Runtime@Halide@@", !20, i64 0, !20, i64 8, !20, i64 16, !24, i64 24}
!148 = !{!147, !24, i64 24}
!149 = distinct !{!149, !11}
!150 = !{!151, !24, i64 304}
!151 = !{!"?AUDXGI_ADAPTER_DESC1@@", !8, i64 0, !24, i64 256, !24, i64 260, !24, i64 264, !24, i64 268, !7, i64 272, !7, i64 280, !7, i64 288, !152, i64 296, !24, i64 304}
!152 = !{!"?AU__LUID@@", !24, i64 0, !24, i64 4}
!153 = !{!151, !7, i64 272}
!154 = !{!155, !43, i64 2120}
!155 = !{!"?AUHashMap@Internal@Runtime@Halide@@", !156, i64 0, !8, i64 8, !20, i64 2056, !20, i64 2064, !7, i64 2072, !7, i64 2080, !7, i64 2088, !20, i64 2096, !20, i64 2104, !20, i64 2112, !43, i64 2120}
!156 = !{!"?AUhalide_mutex@@", !8, i64 0}
!157 = !{!155, !7, i64 2088}
!158 = distinct !{!158, !11}
!159 = !{!155, !20, i64 2096}
!160 = !{!155, !20, i64 2104}
!161 = !{!155, !20, i64 2112}
!162 = !{!163, !24, i64 2128}
!163 = !{!"?AUd3d12_library@D3D12Compute@Internal@Runtime@Halide@@", !164, i64 0, !24, i64 2128, !8, i64 2132}
!164 = !{!"?AU?$THashMap@PEADPEAUd3d12_function@D3D12Compute@Internal@Runtime@Halide@@@Internal@Runtime@Halide@@"}
!165 = distinct !{!165, !11}
!166 = distinct !{!166, !11}
!167 = distinct !{!167, !11}
!168 = !{!147, !20, i64 8}
!169 = !{!170, !24, i64 28}
!170 = !{!"?AV?$GPUCompilationCache@PEAUhalide_d3d12compute_device@@PEAUd3d12_library@D3D12Compute@Internal@Runtime@Halide@@@Internal@Halide@@", !156, i64 0, !24, i64 8, !20, i64 16, !24, i64 24, !24, i64 28}
!171 = !{!170, !24, i64 8}
!172 = !{!170, !20, i64 16}
!173 = distinct !{!173, !11}
!174 = !{!175, !24, i64 16}
!175 = !{!"?AUCachedCompilation@?$GPUCompilationCache@PEAUhalide_d3d12compute_device@@PEAUd3d12_library@D3D12Compute@Internal@Runtime@Halide@@@Internal@Halide@@", !20, i64 0, !20, i64 8, !24, i64 16, !24, i64 20}
!176 = !{!175, !20, i64 0}
!177 = !{!175, !24, i64 20}
!178 = !{!175, !20, i64 8}
!179 = !{!55, !20, i64 48}
!180 = !{!181, !20, i64 0}
!181 = !{!"?AUd3d12_frame@D3D12Compute@Internal@Runtime@Halide@@", !20, i64 0, !20, i64 8, !55, i64 16, !7, i64 112}
!182 = !{!183, !7, i64 16}
!183 = !{!"?AUtransfer_t@d3d12_buffer@D3D12Compute@Internal@Runtime@Halide@@", !20, i64 0, !7, i64 8, !7, i64 16}
!184 = !{!183, !20, i64 0}
!185 = !{!183, !7, i64 8}
!186 = !{!187, !7, i64 8}
!187 = !{!"?AUd3d12_graphics_command_list@D3D12Compute@Internal@Runtime@Halide@@", !7, i64 8}
!188 = !{!181, !7, i64 112}
!189 = !{!181, !20, i64 8}
!190 = !{!138, !20, i64 0}
!191 = !{!192}
!192 = distinct !{!192, !193, !"??$zero_struct@Ud3d12_buffer@D3D12Compute@Internal@Runtime@Halide@@@@YA?AUd3d12_buffer@D3D12Compute@Internal@Runtime@Halide@@XZ: argument 0"}
!193 = distinct !{!193, !"??$zero_struct@Ud3d12_buffer@D3D12Compute@Internal@Runtime@Halide@@@@YA?AUd3d12_buffer@D3D12Compute@Internal@Runtime@Halide@@XZ"}
!194 = !{i64 0, i64 1, !67, i64 1, i64 1, !40, i64 2, i64 2, !52, i64 8, i64 8, !49, i64 16, i64 1, !122, i64 24, i64 8, !49, i64 32, i64 8, !49, i64 40, i64 8, !6, i64 48, i64 8, !6}
!195 = !{i64 0, i64 1, !40, i64 1, i64 2, !52, i64 7, i64 8, !49, i64 15, i64 1, !122, i64 23, i64 8, !49, i64 31, i64 8, !49, i64 39, i64 8, !6, i64 47, i64 8, !6}
!196 = !{i64 0, i64 2, !52, i64 6, i64 8, !49, i64 14, i64 1, !122, i64 22, i64 8, !49, i64 30, i64 8, !49, i64 38, i64 8, !6, i64 46, i64 8, !6}
!197 = !{i64 4, i64 8, !49, i64 12, i64 1, !122, i64 20, i64 8, !49, i64 28, i64 8, !49, i64 36, i64 8, !6, i64 44, i64 8, !6}
!198 = distinct !{!198, !11}
!199 = !{!170, !24, i64 24}
!200 = !{!201, !20, i64 0}
!201 = !{!"?AUCacheEntry@Internal@Runtime@Halide@@", !20, i64 0, !20, i64 8, !20, i64 16, !20, i64 24, !7, i64 32, !20, i64 40, !24, i64 48, !24, i64 52, !7, i64 56, !20, i64 64}
!202 = !{!201, !7, i64 56}
!203 = !{!201, !20, i64 64}
!204 = !{!201, !20, i64 24}
!205 = distinct !{!205, !11}
!206 = distinct !{!206, !11}
!207 = distinct !{!207, !11}
!208 = distinct !{!208, !11}
!209 = distinct !{!209, !11}
!210 = !{!211, !20, i64 24}
!211 = !{!"?AV?$Printer@$01$0BAA@@?A0x2B71E647@Internal@Runtime@Halide@@", !20, i64 0, !20, i64 8, !20, i64 16, !20, i64 24, !43, i64 32, !8, i64 33}
!212 = !{!211, !43, i64 32}
!213 = !{!211, !20, i64 0}
!214 = !{!211, !20, i64 8}
!215 = !{!211, !20, i64 16}
!216 = !{!217, !20, i64 24}
!217 = !{!"?AV?$Printer@$01$0BA@@?A0x2B71E647@Internal@Runtime@Halide@@", !20, i64 0, !20, i64 8, !20, i64 16, !20, i64 24, !43, i64 32, !8, i64 33}
!218 = !{!217, !43, i64 32}
!219 = !{!217, !20, i64 0}
!220 = !{!217, !20, i64 8}
!221 = !{!217, !20, i64 16}
!222 = !{!223, !20, i64 0}
!223 = !{!"?AU_D3D_SHADER_MACRO@@", !20, i64 0, !20, i64 8}
!224 = !{!223, !20, i64 8}
!225 = !{!226, !20, i64 0}
!226 = !{!"?AUd3d12_function@D3D12Compute@Internal@Runtime@Halide@@", !20, i64 0, !20, i64 8, !20, i64 16}
!227 = !{!226, !20, i64 8}
!228 = !{!229, !20, i64 0}
!229 = !{!"?AUD3D12_COMPUTE_PIPELINE_STATE_DESC@@", !20, i64 0, !230, i64 8, !24, i64 24, !231, i64 32, !232, i64 48}
!230 = !{!"?AUD3D12_SHADER_BYTECODE@@", !20, i64 0, !7, i64 8}
!231 = !{!"?AUD3D12_CACHED_PIPELINE_STATE@@", !20, i64 0, !7, i64 8}
!232 = !{!"?AW4D3D12_PIPELINE_STATE_FLAGS@@", !8, i64 0}
!233 = !{!229, !20, i64 8}
!234 = !{!229, !7, i64 16}
!235 = !{!229, !24, i64 24}
!236 = !{!229, !20, i64 32}
!237 = !{!229, !7, i64 40}
!238 = !{!229, !232, i64 48}
!239 = !{!226, !20, i64 16}
!240 = !{i64 0, i64 8, !6}
!241 = distinct !{!241, !11}
!242 = !{i64 0, i64 65}
!243 = distinct !{!243, !11}
!244 = !{i64 0, i64 1, !40, i64 1, i64 2, !52}
!245 = !{!246, !246, i64 0}
!246 = !{!"float", !8, i64 0}
!247 = distinct !{!247, !11}
!248 = distinct !{!248, !11}
!249 = distinct !{!249, !11}
!250 = distinct !{!250, !11}
!251 = !{!140, !7, i64 0}
!252 = !{!253, !24, i64 8}
!253 = !{!"?AUD3D12_SHADER_RESOURCE_VIEW_DESC@@", !56, i64 0, !254, i64 4, !24, i64 8, !8, i64 16}
!254 = !{!"?AW4D3D12_SRV_DIMENSION@@", !8, i64 0}
!255 = distinct !{!255, !11}
!256 = !{!19, !7, i64 24}
!257 = distinct !{!257, !11}
!258 = distinct !{!258, !11}
!259 = !{!201, !24, i64 48}
!260 = !{!201, !7, i64 32}
!261 = !{!201, !20, i64 40}
!262 = !{!155, !20, i64 2056}
!263 = !{!201, !20, i64 8}
!264 = !{!201, !20, i64 16}
!265 = !{!155, !20, i64 2064}
!266 = !{!201, !24, i64 52}
!267 = distinct !{!267, !11}
!268 = distinct !{!268, !11}
!269 = distinct !{!269, !11}
!270 = !{!155, !7, i64 2080}
!271 = distinct !{!271, !11}
!272 = distinct !{!272, !11}
!273 = distinct !{!273, !11}
!274 = !{i64 0, i64 8, !49, i64 8, i64 8, !49, i64 16, i64 4, !77, i64 20, i64 4, !77}
!275 = distinct !{!275, !11}
