.class public final enum Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/medialib/config/GPUModelDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ENvGpuModel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

.field public static final enum Adreno:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

.field public static final enum Intel:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

.field public static final enum Mali:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

.field public static final enum NVIDIA:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

.field public static final enum PowerVR:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

.field public static final enum Unknown:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

.field public static final enum VideoCore:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

.field public static final enum Vivante:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

    const/4 v1, 0x0

    const-string v2, "Unknown"

    invoke-direct {v0, v2, v1}, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;->Unknown:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

    new-instance v0, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

    const/4 v2, 0x1

    const-string v3, "Adreno"

    invoke-direct {v0, v3, v2}, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;->Adreno:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

    new-instance v0, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

    const/4 v3, 0x2

    const-string v4, "Mali"

    invoke-direct {v0, v4, v3}, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;->Mali:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

    new-instance v0, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

    const/4 v4, 0x3

    const-string v5, "PowerVR"

    invoke-direct {v0, v5, v4}, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;->PowerVR:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

    new-instance v0, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

    const/4 v5, 0x4

    const-string v6, "Intel"

    invoke-direct {v0, v6, v5}, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;->Intel:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

    new-instance v0, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

    const/4 v6, 0x5

    const-string v7, "NVIDIA"

    invoke-direct {v0, v7, v6}, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;->NVIDIA:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

    new-instance v0, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

    const/4 v7, 0x6

    const-string v8, "Vivante"

    invoke-direct {v0, v8, v7}, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;->Vivante:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

    new-instance v0, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

    const/4 v8, 0x7

    const-string v9, "VideoCore"

    invoke-direct {v0, v9, v8}, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;->VideoCore:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

    const/16 v9, 0x8

    new-array v9, v9, [Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

    sget-object v10, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;->Unknown:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

    aput-object v10, v9, v1

    sget-object v1, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;->Adreno:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

    aput-object v1, v9, v2

    sget-object v1, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;->Mali:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

    aput-object v1, v9, v3

    sget-object v1, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;->PowerVR:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

    aput-object v1, v9, v4

    sget-object v1, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;->Intel:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

    aput-object v1, v9, v5

    sget-object v1, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;->NVIDIA:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

    aput-object v1, v9, v6

    sget-object v1, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;->Vivante:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

    aput-object v1, v9, v7

    aput-object v0, v9, v8

    sput-object v9, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;->$VALUES:[Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;
    .locals 1

    const-class v0, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;
    .locals 1

    sget-object v0, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;->$VALUES:[Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

    invoke-virtual {v0}, [Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

    return-object v0
.end method
