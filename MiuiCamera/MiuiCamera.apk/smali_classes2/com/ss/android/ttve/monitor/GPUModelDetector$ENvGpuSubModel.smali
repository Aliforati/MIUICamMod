.class public final enum Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ttve/monitor/GPUModelDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ENvGpuSubModel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

.field public static final enum Adreno:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

.field public static final enum Intel_HD_Graphics:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

.field public static final enum Mali:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

.field public static final enum Mali_MP:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

.field public static final enum Mali_T:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

.field public static final enum NVIDIA_AP:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

.field public static final enum NVIDIA_Tegra:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

.field public static final enum NVIDIA_Tegra_X1:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

.field public static final enum PowerVR_Rogue_G:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

.field public static final enum PowerVR_Rogue_Han:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

.field public static final enum PowerVR_Rogue_Hood:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

.field public static final enum PowerVR_Rogue_Marlowe:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

.field public static final enum PowerVR_SGX:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

.field public static final enum PowerVR_SGX_MP:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

.field public static final enum PowerVR_SGX_MP2:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

.field public static final enum Unknown:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

.field public static final enum VideoCore_IV_HW:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

.field public static final enum Vivante_GC:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;


# direct methods
.method public static constructor <clinit>()V
    .locals 17

    new-instance v0, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    const/4 v1, 0x0

    const-string v2, "Unknown"

    invoke-direct {v0, v2, v1}, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;->Unknown:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    new-instance v0, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    const/4 v2, 0x1

    const-string v3, "Adreno"

    invoke-direct {v0, v3, v2}, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;->Adreno:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    new-instance v0, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    const/4 v3, 0x2

    const-string v4, "Mali"

    invoke-direct {v0, v4, v3}, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;->Mali:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    new-instance v0, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    const/4 v4, 0x3

    const-string v5, "Mali_MP"

    invoke-direct {v0, v5, v4}, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;->Mali_MP:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    new-instance v0, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    const/4 v5, 0x4

    const-string v6, "Mali_T"

    invoke-direct {v0, v6, v5}, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;->Mali_T:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    new-instance v0, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    const/4 v6, 0x5

    const-string v7, "PowerVR_SGX"

    invoke-direct {v0, v7, v6}, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;->PowerVR_SGX:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    new-instance v0, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    const/4 v7, 0x6

    const-string v8, "PowerVR_SGX_MP"

    invoke-direct {v0, v8, v7}, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;->PowerVR_SGX_MP:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    new-instance v0, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    const/4 v8, 0x7

    const-string v9, "PowerVR_SGX_MP2"

    invoke-direct {v0, v9, v8}, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;->PowerVR_SGX_MP2:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    new-instance v0, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    const/16 v9, 0x8

    const-string v10, "PowerVR_Rogue_Han"

    invoke-direct {v0, v10, v9}, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;->PowerVR_Rogue_Han:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    new-instance v0, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    const/16 v10, 0x9

    const-string v11, "PowerVR_Rogue_Hood"

    invoke-direct {v0, v11, v10}, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;->PowerVR_Rogue_Hood:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    new-instance v0, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    const/16 v11, 0xa

    const-string v12, "PowerVR_Rogue_Marlowe"

    invoke-direct {v0, v12, v11}, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;->PowerVR_Rogue_Marlowe:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    new-instance v0, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    const/16 v12, 0xb

    const-string v13, "PowerVR_Rogue_G"

    invoke-direct {v0, v13, v12}, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;->PowerVR_Rogue_G:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    new-instance v0, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    const/16 v13, 0xc

    const-string v14, "Intel_HD_Graphics"

    invoke-direct {v0, v14, v13}, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;->Intel_HD_Graphics:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    new-instance v0, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    const/16 v14, 0xd

    const-string v15, "NVIDIA_Tegra"

    invoke-direct {v0, v15, v14}, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;->NVIDIA_Tegra:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    new-instance v0, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    const/16 v15, 0xe

    const-string v14, "NVIDIA_Tegra_X1"

    invoke-direct {v0, v14, v15}, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;->NVIDIA_Tegra_X1:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    new-instance v0, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    const/16 v14, 0xf

    const-string v15, "NVIDIA_AP"

    invoke-direct {v0, v15, v14}, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;->NVIDIA_AP:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    new-instance v0, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    const/16 v15, 0x10

    const-string v14, "Vivante_GC"

    invoke-direct {v0, v14, v15}, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;->Vivante_GC:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    new-instance v0, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    const/16 v14, 0x11

    const-string v15, "VideoCore_IV_HW"

    invoke-direct {v0, v15, v14}, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;->VideoCore_IV_HW:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    const/16 v15, 0x12

    new-array v15, v15, [Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    sget-object v16, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;->Unknown:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    aput-object v16, v15, v1

    sget-object v1, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;->Adreno:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    aput-object v1, v15, v2

    sget-object v1, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;->Mali:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    aput-object v1, v15, v3

    sget-object v1, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;->Mali_MP:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    aput-object v1, v15, v4

    sget-object v1, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;->Mali_T:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    aput-object v1, v15, v5

    sget-object v1, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;->PowerVR_SGX:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    aput-object v1, v15, v6

    sget-object v1, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;->PowerVR_SGX_MP:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    aput-object v1, v15, v7

    sget-object v1, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;->PowerVR_SGX_MP2:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    aput-object v1, v15, v8

    sget-object v1, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;->PowerVR_Rogue_Han:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    aput-object v1, v15, v9

    sget-object v1, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;->PowerVR_Rogue_Hood:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    aput-object v1, v15, v10

    sget-object v1, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;->PowerVR_Rogue_Marlowe:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    aput-object v1, v15, v11

    sget-object v1, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;->PowerVR_Rogue_G:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    aput-object v1, v15, v12

    sget-object v1, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;->Intel_HD_Graphics:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    aput-object v1, v15, v13

    sget-object v1, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;->NVIDIA_Tegra:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    const/16 v2, 0xd

    aput-object v1, v15, v2

    sget-object v1, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;->NVIDIA_Tegra_X1:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    const/16 v2, 0xe

    aput-object v1, v15, v2

    sget-object v1, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;->NVIDIA_AP:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    const/16 v2, 0xf

    aput-object v1, v15, v2

    sget-object v1, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;->Vivante_GC:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    const/16 v2, 0x10

    aput-object v1, v15, v2

    aput-object v0, v15, v14

    sput-object v15, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;->$VALUES:[Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;
    .locals 1

    const-class v0, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;
    .locals 1

    sget-object v0, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;->$VALUES:[Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    invoke-virtual {v0}, [Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    return-object v0
.end method
